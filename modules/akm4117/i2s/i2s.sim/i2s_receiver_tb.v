`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2015 03:45:33 PM
// Design Name: 
// Module Name: i2s_receiver_tb
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


module i2s_receiver_tb(
    );
    // Inputs
    reg reset;
    reg bick;
    reg lrck;
    reg start;
    reg sdto;
        
    // Outputs
    wire stop;
    wire [23:0] data_left, data_right;
        
    // Instantiate the Unit Under Test (UUT)
    i2s_receiver uut (
        .reset(reset), 
        .bick(bick),
        .lrck(lrck),
        .start(start), 
        .data_left(data_left),
        .data_right(data_right),
        .stop(stop),
        .sdto(sdto)
        );
        
    always #10 bick = !bick;
    always #800 lrck = !lrck;
    initial begin
        // Initialize Inputs
        reset = 0;
        bick = 0;
        lrck = 0;
        start = 1;
        sdto = 0;
        
        #100;
        start=0;
        sdto=1;
        #20;
        start=1;
        #100;
        start=0;
        sdto=0;
        #20;
        start=1;
        sdto=1;
        #20;
        sdto=0;
        #40;
        sdto=1;
        #600;
        sdto=0;
        #40;
        sdto=1;
        #20;
        sdto=0;
                
        end
endmodule
