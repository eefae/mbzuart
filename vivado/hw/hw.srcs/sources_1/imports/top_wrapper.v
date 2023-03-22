//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Wed Feb 15 18:02:58 2023
//Host        : eric-pc running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (CLK_clk_n,
    CLK_clk_p,
    RST);
  input CLK_clk_n;
  input CLK_clk_p;
  input RST;

  wire CLK_clk_n;
  wire CLK_clk_p;
  wire RST;

  top top_i
       (.CLK_clk_n(CLK_clk_n),
        .CLK_clk_p(CLK_clk_p),
        .RST(RST));
endmodule
