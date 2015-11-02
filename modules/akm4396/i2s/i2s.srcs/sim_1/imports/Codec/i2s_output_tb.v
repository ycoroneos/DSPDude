`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2015 12:52:27 AM
// Design Name: 
// Module Name: i2s_output_tb
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


module i2s_output_tb(

    );
    // Inputs
    reg reset;
    reg bick;
    reg lrck;
    reg start;
    reg [23:0] data_left, data_right;
        
    // Outputs
    wire stop;
    wire sdata;
        
    // Instantiate the Unit Under Test (UUT)
    i2s_output uut (
        .reset(reset), 
        .bick(bick),
        .lrck(lrck),
        .start(start), 
        .data_left(data_left),
        .data_right(data_right),
        .stop(stop),
        .sdata(sdata)
        );
        
    always #10 bick = !bick;
    always #800 lrck = !lrck;
    initial begin
        // Initialize Inputs
        reset = 0;
        bick = 0;
        lrck = 0;
        start = 0;
        data_left = 0;
        data_right = 0;
        
        #100;
        start=1;
        data_left=24'hBAB1E5;
        data_right=24'h7171E5;
        #20;
        start=0;
        #100;
        start=1;
        #20;
        start=0;
        end
endmodule
