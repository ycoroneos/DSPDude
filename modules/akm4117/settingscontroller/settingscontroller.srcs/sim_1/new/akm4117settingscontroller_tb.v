`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2015 11:54:00 PM
// Design Name: 
// Module Name: akm4117settingscontroller_tb
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

module akm4117settingscontroller_tb(
    );
    
    // Inputs
    reg fsmclk;
    reg reset;
    
    // Outputs
    wire [15:0] data;
    wire spistart;
    wire PDN;
    wire idle;
    
    // Instantiate UUT
    akm4117settingscontroller uut(
        .fsmclk(fsmclk),
        .reset(reset),
        .data(data),
        .spistart(spistart),
        .PDN(PDN),
        .idle(idle)
    );
    
    always #10 fsmclk = !fsmclk;
        initial begin
            // Initialize Inputs
            fsmclk = 0;
            reset = 0;
           
            
    
            #100;
            reset = 1;
            #20;
            reset = 0;
            end
endmodule
