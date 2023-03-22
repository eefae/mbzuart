
#open_project ./hw.xpr
close_sim
set_property target_simulator XSim [current_project]

add_files -fileset sim_tb -norecurse ../../export/sw_helloworld.elf
set_property SCOPED_TO_REF top [get_files -all -of_objects [get_fileset sim_tb] {sw_helloworld.elf}]

launch_simulation -simset [get_filesets sim_tb ]

# create_wave_config
# add_wave /tb/clkgen/*
# add_wave /tb/DUT/top_i/*

open_wave_config ../../scripts/xsim_tb.wcfg
run 2000 us


open_vcd xsim_dump.vcd
log_vcd /tb/DUT/top_i/*
run 600 us
#run all
close_vcd

#close_sim


#quit


