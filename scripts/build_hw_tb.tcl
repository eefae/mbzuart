
#launch_simulation
#
create_fileset -simset sim_tb
generate_vcd_ports {/top_wrapper}
run 500 ns
close_vcd -ports
create_testbench -name tb -add_to_simset sim_tb -set_as_top
