vivado -mode tcl
open_hw_manager
connect_hw_server -url localhost:3121 -allow_non_jtag
current_hw_target [get_hw_targets */xilinx_tcf/Xilinx/192.168.1.225:2542]
set_property PARAM.FREQUENCY 10000000 [get_hw_targets */xilinx_tcf/Xilinx/192.168.1.225:2542]
open_hw_target
current_hw_device [get_hw_devices xcvu19p_0]
set_property PROGRAM.FILE {./program.bit} [get_hw_devices xcvu19p_0]
program_hw_devices [get_hw_devices xcvu19p_0]
