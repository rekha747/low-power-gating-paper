#!/bin/bash
# usage:  D=/path/to/folder_with_the_files  ./run_fpga_arr.sh
# The folder D must contain: mac_baseline.v mac_cg.v mac_oi.v clk_gate_fpga.v clk.xdc
#                            mac_array.v tb_arr.v   (and saif.tcl, flow_arr.tcl, pwr_arr.tcl)
: "${D:?set D to the folder that holds the files}"
VIVADO_SETTINGS=${VIVADO_SETTINGS:-/tools/Xilinx/Downloads/Vivado/2024.2/settings64.sh}
WK=$HOME/vivado_work_arr
mkdir -p $WK $HOME/vivado_tmp
export TMPDIR=$HOME/vivado_tmp
export D
source "$VIVADO_SETTINGS" || { echo "cannot source $VIVADO_SETTINGS (set VIVADO_SETTINGS)"; exit 1; }
cd $WK
cp $D/saif.tcl $D/flow_arr.tcl $D/pwr_arr.tcl .
# the implemented netlist has no parameters, so the testbench must not override them
sed 's/#(\.W(W), \.ACC_W(ACC_W)) //' $D/tb_arr.v > $D/tb_arr_gl.v
declare -A SUM

for N in 2 4; do
  for T in mac_baseline mac_cg mac_oi; do
    vivado -mode batch -nojournal -nolog -source flow_arr.tcl -tclargs $T $N > flow_${T}_N$N.log 2>&1
    if ! grep -q "FLOW DONE" flow_${T}_N$N.log; then
      echo "flow failed for $T N=$N. Last errors:"; grep -E "ERROR|CRITICAL" flow_${T}_N$N.log | head -5
      echo "(full log: $WK/flow_${T}_N$N.log)"; exit 1
    fi
    echo "$T N=$N implemented. Registers: $(grep -E '\| Slice Registers ' $D/arr_util_${T}_N$N.rpt | head -1 | awk -F'|' '{print $3}')  LUTs: $(grep -E '\| Slice LUTs ' $D/arr_util_${T}_N$N.rpt | head -1 | awk -F'|' '{print $3}')"
    REGS=$(grep -E '\| Slice Registers ' $D/arr_util_${T}_N$N.rpt | head -1 | awk -F'|' '{print $3}' | tr -d ' ')
    EXPREGS=$((38*N+3))
    if [ "$REGS" != "$EXPREGS" ]; then
      echo "WARNING: $T N=$N has $REGS registers, expected $EXPREGS: copies were merged, results for this design are not comparable"
    fi
    xvlog -d DUT=mac_array $D/tb_arr_gl.v $D/arr_${T}_N${N}_funcsim.v $XILINX_VIVADO/data/verilog/src/glbl.v > xvlog_${T}_N$N.log 2>&1 \
      || { echo "xvlog failed for $T N=$N (see $WK/xvlog_${T}_N$N.log)"; exit 1; }
    xelab -debug typical -L unisims_ver tb glbl -s sim_${T}_N$N > xelab_${T}_N$N.log 2>&1 \
      || { echo "xelab failed for $T N=$N (see $WK/xelab_${T}_N$N.log)"; exit 1; }
    for U in 10 50 90; do
      rm -f $D/arr_${T}_N${N}_$U.saif
      SAIF=$D/arr_${T}_N${N}_$U.saif xsim sim_${T}_N$N -testplusarg DUTY=$U -tclbatch saif.tcl > xsim_${T}_N${N}_$U.log 2>&1
      SUM[$N,$U,$T]=$(grep -o 'CHECKSUM [0-9a-f]*' xsim_${T}_N${N}_$U.log | head -1)
      if [ ! -s $D/arr_${T}_N${N}_$U.saif ]; then
        echo "no SAIF written for $T N=$N duty $U (see $WK/xsim_${T}_N${N}_$U.log)"; exit 1
      fi
      vivado -mode batch -nojournal -nolog -source pwr_arr.tcl -tclargs $T $N $U > vivado_${T}_N${N}_$U.log 2>&1
      if [ ! -f $D/arr_vpower_${T}_N${N}_$U.rpt ]; then
        echo "no power report for $T N=$N duty $U (see $WK/vivado_${T}_N${N}_$U.log)"; exit 1
      fi
      echo "$T N=$N duty $U  ${SUM[$N,$U,$T]}  | $(grep -iE 'Dynamic \(W\)' $D/arr_vpower_${T}_N${N}_$U.rpt | head -1 | tr -s ' ') | $(grep -iE 'Design Nets Matched' $D/arr_vpower_${T}_N${N}_$U.rpt | head -1 | tr -s ' ')"
    done
  done
  for U in 10 50 90; do
    if [ "${SUM[$N,$U,mac_baseline]}" = "${SUM[$N,$U,mac_cg]}" ] && [ "${SUM[$N,$U,mac_baseline]}" = "${SUM[$N,$U,mac_oi]}" ] && [ -n "${SUM[$N,$U,mac_baseline]}" ]; then
      echo "N=$N duty $U: outputs identical for all three designs (good)"
    else
      echo "N=$N duty $U: OUTPUT CHECKSUMS DIFFER between designs: do not trust this size"
    fi
  done
done
echo ALL DONE
