vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/lmb_v10_v3_0_11
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_20
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_22
vlib questa_lib/msim/microblaze_v11_0_8
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_25
vlib questa_lib/msim/fifo_generator_v13_2_6
vlib questa_lib/msim/axi_data_fifo_v2_1_24
vlib questa_lib/msim/axi_crossbar_v2_1_26
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_29

vmap xpm questa_lib/msim/xpm
vmap lmb_v10_v3_0_11 questa_lib/msim/lmb_v10_v3_0_11
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_bram_if_cntlr_v4_0_20 questa_lib/msim/lmb_bram_if_cntlr_v4_0_20
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_22 questa_lib/msim/mdm_v3_2_22
vmap microblaze_v11_0_8 questa_lib/msim/microblaze_v11_0_8
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 questa_lib/msim/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 questa_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 questa_lib/msim/axi_crossbar_v2_1_26
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_29 questa_lib/msim/axi_uartlite_v2_0_29

vlog -work xpm -64 -incr -mfcu -sv "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"/eda/xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/eda/xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/eda/xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lmb_v10_v3_0_11 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_dlmb_v10_0/sim/top_dlmb_v10_0.vhd" \
"../../../bd/top/ip/top_ilmb_v10_0/sim/top_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_20 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/a8d1/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_dlmb_bram_if_cntlr_0/sim/top_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/top/ip/top_ilmb_bram_if_cntlr_0/sim/top_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_5 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../bd/top/ip/top_lmb_bram_0/sim/top_lmb_bram_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_rst_clk_wiz_1_100M_0/sim/top_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../bd/top/ip/top_clk_wiz_1_0/top_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/top/ip/top_clk_wiz_1_0/top_clk_wiz_1_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_22 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/3865/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_mdm_1_0/sim/top_mdm_1_0.vhd" \

vcom -work microblaze_v11_0_8 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/5058/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_microblaze_0_0/sim/top_microblaze_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26 -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../../hw.gen/sources_1/bd/top/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../bd/top/ip/top_xbar_0/sim/top_xbar_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_29 -64 -93 \
"../../../../hw.gen/sources_1/bd/top/ipshared/f22f/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_axi_uartlite_0_0/sim/top_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/62b6" "+incdir+../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl" \
"../../../bd/top/sim/top.v" \

vlog -work xil_defaultlib \
"glbl.v"

