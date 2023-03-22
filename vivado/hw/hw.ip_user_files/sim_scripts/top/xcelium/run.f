-makelib xcelium_lib/xpm -sv \
  "/eda/xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/eda/xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/eda/xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_11 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_dlmb_v10_0/sim/top_dlmb_v10_0.vhd" \
  "../../../bd/top/ip/top_ilmb_v10_0/sim/top_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_20 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/a8d1/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_dlmb_bram_if_cntlr_0/sim/top_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/top/ip/top_ilmb_bram_if_cntlr_0/sim/top_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_lmb_bram_0/sim/top_lmb_bram_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_rst_clk_wiz_1_100M_0/sim/top_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_clk_wiz_1_0/top_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/top/ip/top_clk_wiz_1_0/top_clk_wiz_1_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_22 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/3865/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_mdm_1_0/sim/top_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_8 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/5058/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_microblaze_0_0/sim/top_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_26 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_xbar_0/sim/top_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_29 \
  "../../../../hw.gen/sources_1/bd/top/ipshared/f22f/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_axi_uartlite_0_0/sim/top_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/sim/top.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

