`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2015 03:40:49 PM
// Design Name: 
// Module Name: nexys4
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


module nexys4(
input CLK100MHZ, //input clock
input RESET, //switches
output [4:1] JA //output ports
    );
    wire akm_mclk;//, akm_lrclk, akm_bclk, serial_clk;
    assign JA[1]=akm_mclk;
    assign JA[2]=akm_lrclk;
    assign JA[3]=akm_bclk;
    assign JA[4]=serial_clk;
    clockmaker clocks(.clk100mhz(CLK100MHZ), .reset(RESET), .akm_mclk(akm_mclk), .akm_lrclk(akm_lrclk), .akm_bclk(akm_bclk), .serial_clk(serial_clk));
endmodule
