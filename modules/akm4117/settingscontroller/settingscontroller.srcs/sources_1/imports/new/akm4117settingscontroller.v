`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2015 10:27:05 PM
// Design Name: 
// Module Name: akm4117settingscontroller
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


module akm4117settingscontroller(
    input wire fsmclk,
    input wire reset,
    output reg [15:0] data,
    output reg spistart = 0,
    output reg PDN = 0,
    output reg idle = 0
    );
    
    //data order is C1,C0,R/W,A4,A3,A2,A1,A0,D7,D6.D5,D4,D3,D2,D1,D0
    parameter CONTROL0_CLOCK_SOURCE =       16'b0010000000001111;   // select PLL as master clock source
    parameter CONTROL1_CLOCK_FREQ =         16'b0010000101000000;   // select master clk for PLL mode, fs = 192kHz
    parameter CONTROL2_FORMAT_SETTING =     16'b0010001000001101;   // select I2S as comm format and channel 1 for fs
    parameter CONTROL3_INT_0 =              16'b0010001111111111;   // enable all the interrupts on INT0
   

    reg [4:0] state = 0; 
    
    always @(posedge fsmclk)
        begin
        if (reset)
            begin
            state <= 0;
            spistart <= 0;
            idle <= 0;
            end
        else
            begin
            case(state)
            0: //reset state
                begin
                PDN <= 0;
                state <= state + 1;
                end
            1: //PDN high
                begin
                PDN <= 1;
                state <= state + 1;
                end
            2: //shift in control data
                begin
                data <= CONTROL0_CLOCK_SOURCE;
                spistart <= 1;
                state <= state + 1;
                end
            3:
                begin
                spistart <= 0;
                state <= state +1 ;
                end
            4:
                begin
                data <= CONTROL1_CLOCK_FREQ;
                spistart <= 1;
                state <= state + 1;
                end
            5: 
                begin
                spistart <= 0;
                state <= state + 1;
                end
            6:
                begin
                data <= CONTROL2_FORMAT_SETTING;
                spistart <= 1;
                state <= state + 1;
                end
            7: 
                begin
                spistart <= 0;
                state <= state + 1;
                end
            8:
                begin
                data <= CONTROL3_INT_0;
                spistart <= 1;
                state <= state + 1;
                end
            9:
                begin
                spistart <= 0;
                idle <= 1;
                end
            endcase
            end
        end
endmodule
