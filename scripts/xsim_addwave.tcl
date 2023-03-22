
#open_project ./hw.xpr
set_property target_simulator XSim [current_project]

launch_simulation -simset [get_filesets sim_tb ]

# create_wave_config
# add_wave /tb/clkgen/*
# add_wave /tb/DUT/top_i/*

open_wave_config ../scripts/xsim_tb.wcfg
run 600 us



#open_vcd xsim_dump.vcd
#log_vcd /design_1_wrapper/*
#run 600 us
#run all
#close_vcd

close_sim


#quit


