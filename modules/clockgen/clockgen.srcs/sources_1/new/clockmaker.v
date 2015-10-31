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
input wire clk100mhz, reset,
output wire akm_mclk, akm_lrclk, akm_bclk, serial_clk
    );
    wire baseclk; //base clock to divide down for lrclk and serialclk
    clkgen0 someclocks(.clk_100mhz(clk100mhz), .mclk(akm_mclk), .reset(reset)); //akm_mclk is exactly 24.5760mhz
    clkgen1 baseclkgen(.clk100mhz(clk100mhz), .clk9_6mhz(baseclk), .reset(reset)); //baseclk is exactly 9.6MHz
    clkgen2 bclkgen(.clk100mhz(clk100mhz), .clk9_216mhz(akm_bclk), .reset(reset)); //akm_bitclk is exactly 9.216mhz
    slowdivider #(.LOGLENGTH(6), .COUNTVAL(25)) lrclkgen(.inclk(baseclk), .reset(reset), .newclk(akm_lrclk)); //lrclk is exactly 192KHz
    slowdivider #(.LOGLENGTH(10), .COUNTVAL(500)) serialclkgen(.inclk(baseclk), .reset(reset), .newclk(serial_clk)); //serial_clk is exactly 9.6khz
endmodule
