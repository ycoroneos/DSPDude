`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: yo mama
// 
// Create Date: 10/31/2015 02:46:19 AM
// Design Name: 
// Module Name: clockmaker
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

//mclk is 24.5760MHz
//lrclk is 192KHz
//bclk is 9.216MHz
//serial_clk is 9.6KHz

module clockmaker(
input wire clk100MHz, reset,
output wire akm_mclk, akm_lrclk, akm_bclk, serial_clk
    );
    clkgen0 someclocks(.clk_100mhz(clk100mhz), .mclk(akm_mclk), .bclk(akm_bclk), .reset(reset));
    slowdivider #(.LOGLENGTH(15), .COUNTVAL(10400)) lrclkgen(.clk100mhz(clk100mhz), .reset(reset), .newclk(akm_lrclk)); //9.6khz
    slowdivider #(.LOGLENGTH(9), .COUNTVAL(520)) serialclkgen(.clk100mhz(clk100mhz), .reset(reset), .newclk(serial_clk)); //9.6khz
endmodule
