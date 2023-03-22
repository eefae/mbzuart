
# open_project ./hw.xpr
# close_sim

set_property target_simulator XSim [current_project]


add_files -fileset sim_tb -norecurse ../../export/sw_custom.elf
set_property SCOPED_TO_REF top [get_files -all -of_objects [get_fileset sim_tb] {sw_custom.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sim_tb] {sw_custom.elf}]

# add_files -fileset sim_tb -norecurse ../../export/apps.elf
# set_property SCOPED_TO_REF top [get_files -all -of_objects [get_fileset sim_tb] {apps.elf}]
# set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sim_tb] {apps.elf}]

launch_simulation -simset [get_filesets sim_tb ]

# create_wave_config
# add_wave /tb/clkgen/*
# add_wave /tb/DUT/top_i/*

open_wave_config ../../scripts/xsim_tb.wcfg
run 5 us


#close_sim


#quit


