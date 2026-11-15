open_saif $::env(SAIF)
log_saif [get_objects -r /tb/dut/*]
run all
close_saif
quit
