# usage: vivado -mode batch -source flow_arr.tcl -tclargs <inner module> <N>
lassign $argv inner n
set d $::env(D)
read_verilog [list $d/mac_baseline.v $d/mac_cg.v $d/mac_oi.v $d/clk_gate_fpga.v $d/mac_array.v]
read_xdc $d/clk.xdc
synth_design -top mac_array -part xc7a200tfbg676-2 -verilog_define INNER=$inner -generic N=$n
opt_design
place_design
route_design
write_checkpoint -force $d/arr_${inner}_N${n}_routed.dcp
write_verilog -mode funcsim -force $d/arr_${inner}_N${n}_funcsim.v
report_utilization -file $d/arr_util_${inner}_N${n}.rpt
report_timing_summary -file $d/arr_timing_${inner}_N${n}.rpt
puts "FLOW DONE: $inner N=$n"
