`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2015 11:56:28 PM
// Design Name: 
// Module Name: serialcontroller_tb
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


module serialcontroller_tb(

    );
    
    
    // Inputs
        reg serialclk;
        reg start;
        reg [15:0] data;
    
        // Outputs
        wire cs;
        wire shiftout;
        wire outclk;
    
        // Instantiate the Unit Under Test (UUT)
        serialcontroller uut (
            .serialclk(serialclk), 
            .start(start), 
            .data(data),
            .cs(cs),
            .shiftout(shiftout),
            .outclk(outclk)
        );
    
        always #10 serialclk = !serialclk;
        initial begin
            // Initialize Inputs
            serialclk = 0;
            start = 0;
            data = 0;
    
            #100;
            start=1;
            data=16'hBABE;
            #100;
            start=0;
        end
endmodule
