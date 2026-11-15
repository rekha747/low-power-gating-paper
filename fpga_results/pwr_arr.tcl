# usage: vivado -mode batch -source pwr_arr.tcl -tclargs <inner module> <N> <duty>
lassign $argv inner n duty
set d $::env(D)
open_checkpoint $d/arr_${inner}_N${n}_routed.dcp
read_saif -strip_path tb/dut $d/arr_${inner}_N${n}_$duty.saif
set base $d/arr_vpower_${inner}_N${n}_$duty
report_power -file $base.rpt
# extra output formats: may carry more digits than the text report (not guaranteed)
catch {report_power -rpx $base.rpx}
catch {report_power -xpe $base.xpe}
