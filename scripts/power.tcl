read_db      $::env(ODB)
read_liberty $::env(LIB)
read_sdc     $::env(SDC)
read_spef    $::env(SPEF)
read_vcd -scope tb/dut $::env(VCD)
report_power
