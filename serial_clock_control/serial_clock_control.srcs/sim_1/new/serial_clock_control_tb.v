`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2015 08:31:05 PM
// Design Name: 
// Module Name: serial_clock_control_tb
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


module serial_clock_control_tb(

    );
    reg clk100mhz;
    reg serial_clk;
    reg reset;
    
    wire akm_mclk, akm_lrclk, akm_bclk;//, serial_clk;
    wire serial_start;
    wire [15:0] serial_data;
    wire cs, shiftout;
    wire PDN, idle;
    //clockgen0 clocks(.reset(reset), .akm_mclk(akm_mclk), .akm_lrclk(akm_lrclk), .akm_bclk(akm_bclk), .serial_clk(serial_clk));
    serialcontroller serial(.serialclk(serial_clk), .start(serial_start), .data(serial_data), .cs(cs), .shiftout(shiftout));
    akm4396settingscontroller controllerfsm(.reset(reset), .clk100mhz(clk100mhz), .done(cs), .data(serial_data), .start(serial_start), .PDN(PDN), .idle(idle));
    
    always #5 clk100mhz = !clk100mhz;
    always #52000 serial_clk = !serial_clk;
    initial
    begin
        clk100mhz=0;
        serial_clk=0;
        reset=1;
        
        #10;
        reset=0;
    end
endmodule
