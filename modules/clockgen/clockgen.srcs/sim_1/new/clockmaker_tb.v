`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2015 03:06:46 PM
// Design Name: 
// Module Name: clockmaker_tb
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

module clockmaker_tb(
    );
    //inputs
    reg clk100mhz,reset;
    //outputs
    wire akm_mclk, akm_lrclk, akm_bclk, serial_clk;
    
    clockmaker uut(.clk100mhz(clk100mhz), .reset(reset), .akm_mclk(akm_mclk), .akm_lrclk(akm_lrclk), .akm_bclk(akm_bclk), .serial_clk(serial_clk));
    always #5 clk100mhz = !clk100mhz; //make a 100mhz clock
    
    initial
    begin
        clk100mhz=0;
        reset=1;
        
        #10;
        reset=0;
    end
endmodule
