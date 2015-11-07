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
//bclk is 12.2880MHz
//serial_clk is 9.6KHz

module clockmaker(
input wire clk100mhz, reset,
output wire akm_mclk, akm_lrclk, akm_bclk, serial_clk
    );
    clkgen0 someclocks(.clk_100mhz(clk100mhz), .mclk(akm_mclk), .bclk(akm_bclk), .reset(reset)); //akm_mclk is exactly 24.5760mhz, bclk is exactly 12.2880MHz
    slowdivider #(.LOGLENGTH(7), .COUNTVAL(64)) lrclkgen(.inclk(akm_mclk), .reset(reset), .newclk(akm_lrclk)); //lrclk is exactly 192KHz
    slowdivider #(.LOGLENGTH(11), .COUNTVAL(1280)) serialclkgen(.inclk(akm_mclk), .reset(reset), .newclk(serial_clk)); //serial_clk is exactly 9.6KHz
endmodule
