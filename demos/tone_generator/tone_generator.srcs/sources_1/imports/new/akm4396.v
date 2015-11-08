`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2015 06:11:49 PM
// Design Name: 
// Module Name: akm4396
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


module akm4396settingscontroller(
input wire fsmclk,
input wire reset,
input wire done,
output reg [15:0] data,
output reg spistart=1'b0,
output reg PDN=1'b0,
output reg idle=0
//output wire [20:0] statedisplay
    );
    //data order is C1,C0,R/W,A4,A3,A2,A1,A0,D7,D6.D5,D4,D3,D2,D1,D0
    parameter CONTROL2_DEFAULT_QUADSPEED = 16'b0010000110011010;
    parameter CONTROL1_MODE3_RSTN_AUTO_SETTING = 16'b0010000010001110;
    parameter CONTROL1_MODE3_AUTO_SETTING = 16'b0010000010001111;
    parameter CONTROL3_DEFAULT = 16'b0010001000000000;
    parameter LCH_FULL_VOLUME = 16'b0010001111111111;
    parameter RCH_FULL_VOLUME = 16'b0010010011111111;
   
    reg [3:0] curstate=0;
    
    always @(posedge fsmclk)
    begin
        if(reset)
            begin
            curstate<=0;
            idle <= 0;
            end
        else
            begin
            case(curstate)
            0: //reset state
                begin
                PDN<=0;
                curstate<=curstate+1;
                end
            1: //PDN high
                begin
                PDN<=1;
                curstate<=curstate+1;
                end
            2: //shift in control data
                begin
                data<=CONTROL2_DEFAULT_QUADSPEED;
                spistart<=1;
                curstate<=curstate+1;
                end
             3:
                begin
                spistart<=0;
                curstate<=curstate+1;
                end
             4:
                begin
                data<=CONTROL1_MODE3_RSTN_AUTO_SETTING;
                spistart<=1;
                curstate<=curstate+1;
                end
             5: 
                begin
                spistart<=0;
                curstate<=curstate+1;
                end
             6:
                begin
                data<=CONTROL1_MODE3_AUTO_SETTING;
                spistart<=1;
                curstate<=curstate+1;
                end
             7:
                begin
                spistart<=0;
                idle<=1;
                end
            endcase
            end
    end
    
    
endmodule
