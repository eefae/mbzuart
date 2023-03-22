`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2023 01:25:28 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb ();


initial begin
  	$timeformat(-3,0,"ms",10);
  	`ifdef VCS
    		$dumpfile("tb.vcd");
    		$dumpvars(1, tb.DUT);
  	`else
    		$dumpfile("tb.vcd");
    		$dumpvars(1, tb.DUT);
  	`endif
end

wire reset_p, reset_n;
wire clk_p, clk_n;

clkgen clkgen (
    .clk_n (clk_n),
    .clk_p (clk_p),
    .reset_p (reset_p),
    .reset_n (reset_n)
);


top_wrapper DUT (
   	.CLK_clk_n (clk_n),
    	.CLK_clk_p (clk_p),
	.RST (reset_n)
);

endmodule

