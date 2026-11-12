#!/bin/bash
# usage: ./run_power.sh <design> <duty>   e.g. ./run_power.sh mac_baseline 50
D=$1; U=$2
BASE=$HOME/Desktop/low_power
case $D in
  mac_baseline) F=RTL;;
  mac_cg) F=clock_gating;;
  mac_oi) F=operand_isolation;;
esac
R=$(ls -d $BASE/$F/runs/*/final)
LIB=$(find ~/.volare -name "sky130_fd_sc_hd__tt_025C_1v80.lib" -path "*sky130A*" | head -1)
docker run --rm --user $(id -u):$(id -g) -v $HOME:$HOME -w $BASE/sim \
  -e ODB=$R/odb/$D.odb -e LIB=$LIB -e SDC=$R/sdc/$D.sdc -e SPEF=$R/spef/nom/$D.nom.spef \
  -e VCD=$BASE/sim/${D}_$U.vcd \
  ghcr.io/efabless/openlane2:2.3.10 openroad -exit power.tcl > power_${D}_$U.rpt 2>&1
echo "$D $U done"
