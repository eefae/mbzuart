//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Wed Mar 15 16:30:22 2023
//Host        : cx6 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (CLK_clk_n,
    CLK_clk_p,
    RST,
    uart_rtl_0_rxd,
    uart_rtl_0_txd);
  input CLK_clk_n;
  input CLK_clk_p;
  input RST;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;

  wire CLK_clk_n;
  wire CLK_clk_p;
  wire RST;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;

  top top_i
       (.CLK_clk_n(CLK_clk_n),
        .CLK_clk_p(CLK_clk_p),
        .RST(RST),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd));
endmodule
