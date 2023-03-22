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


module tb(

    );
endmodule


initial begin
  $timeformat(-3,0,"ms",10);
  `ifdef VCS
    $dumpfile("comp_mb_preset.vcd");
    $dumpvars(1, demo_tb.DUT);
  //$dumpports(demo_tb.DUT, "comp_mb_preset.vcd");
  //$dumpfile("full_comp_mb_preset.vcd");
  //$dumpvars(0, demo_tb.DUT);
  `else
  `ifdef INCA
    $dumpports(demo_tb.DUT, "tb.vcd");
  //$dumpfile("full_comp_mb_preset.vcd");
  //$dumpvars(0, demo_tb.DUT);
  `else
  `ifdef MODEL_TECH
    $dumpports(demo_tb.DUT, "tb.vcd");
  //$dumpfile("full_comp_mb_preset.vcd");
  //$dumpvars(0, demo_tb.DUT);
  `else
    $dumpfile("tb.vcd");
    $dumpvars(1, demo_tb.DUT);
  //$dumpfile("full_comp_mb_preset.vcd");
  //$dumpvars(0, demo_tb.DUT);
  `endif
  `endif
  `endif
end
