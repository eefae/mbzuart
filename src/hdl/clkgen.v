`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 03:34:16 PM
// Design Name: 
// Module Name: clkgen
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

`timescale 1ns/1ps

module clkgen(clk_p, clk_n, reset_p, reset_n
    );
 
output clk_p;
output clk_n;
output reset_p;
output reset_n;

       
reg clk_p;
reg clk_n;
reg reset_p;
reg reset_n;

// Declare a clock period constant.
parameter ClockPeriod = 3; // 300Mhz
//parameter ClockPeriod = 10; // 100Mhz
parameter ResetPeriod = 1000; // 300Mhz

initial begin
    clk_p = 1'b0;
    clk_n = 1'b1;
   
end

initial begin
    reset_p = 1;
    #(ResetPeriod) reset_p = 0;
end



initial begin
    reset_n = 0;
    #(ResetPeriod) reset_n = 1;
end

 
 
// Clock Generation method 2:
always begin
    #(ClockPeriod / 2) clk_p = ~clk_p;
end

always begin
    #(ClockPeriod / 2) clk_n = ~clk_n;
end
 


endmodule


