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
input wire clk100mhz,
input wire reset,
input wire done,
output reg [15:0] data,
output reg start=1'b0,
output reg PDN=1'b0,
output reg idle=0,
output wire [20:0] statedisplay
    );
    //data order is C1,C0,R/W,A4,A3,A2,A1,A0,D7,D6.D5,D4,D3,D2,D1,D0
    parameter CONTROL2_DEFAULT_QUADSPEED = 16'b0010000110011010;
    parameter CONTROL1_MODE3_RSTN_AUTO_SETTING = 16'b0010000010000110;
    parameter CONTROL1_MODE3_AUTO_SETTING = 16'b0010000011000111;
    parameter CONTROL3_DEFAULT = 16'b0010001000000000;
    parameter LCH_FULL_VOLUME = 16'b0010001111111111;
    parameter RCH_FULL_VOLUME = 16'b0010010011111111;
    
    parameter PDNCOUNT=301; //larger than it needs to be
    parameter SERIALCOUNT=10; //how long to wait before looking for the done signal
    
    parameter RESET_STATE =                                     21'b000000000000000000001; //PDN goes low for 150ns
    parameter RESET_BRINGUP_STATE =                             21'b000000000000000000010; //PDN becomes high for 150ns
    parameter CONFIG_REG2_STATE =                               21'b000000000000000000100;//configure register Control 2, sampling speed set to quad
    parameter CONFIG_REG2_STATE_WAITFOR_DONE_LOW=               21'b000000000000000001000;//configure register Control 2, sampling speed set to quad
    parameter CONFIG_REG2_STATE_WAITFOR_DONE_HIGH=              21'b000000000000000010000;//configure register Control 2, sampling speed set to quad
    parameter CONFIG_REG1_TIMING_RESET_STATE=                   21'b000000000000000100000;//internal timing reset=0
    parameter CONFIG_REG1_TIMING_RESET_STATE_WAITFOR_DONE_LOW=  21'b000000000000001000000;//internal timing reset=0
    parameter CONFIG_REG1_TIMING_RESET_STATE_WAITFOR_DONE_HIGH= 21'b000000000000010000000;//internal timing reset=0
    parameter CONFIG_REG1_STATE=                                21'b000000000000100000000;//configure register Control 1
    parameter CONFIG_REG1_STATE_WAITFOR_DONE_LOW=               21'b000000000001000000000;//configure register Control 1
    parameter CONFIG_REG1_STATE_WAITFOR_DONE_HIGH=              21'b000000000010000000000;//configure register Control 1
    parameter CONFIG_REG3_STATE=                                21'b000000000100000000000;
    parameter CONFIG_REG3_STATE_WAITFOR_DONE_LOW=               21'b000000001000000000000;
    parameter CONFIG_REG3_STATE_WAITFOR_DONE_HIGH=              21'b000000010000000000000;
    parameter CONFIG_LCH_STATE=                                 21'b000000100000000000000;
    parameter CONFIG_LCH_STATE_WAITFOR_DONE_LOW=                21'b000001000000000000000;
    parameter CONFIG_LCH_STATE_WAITFOR_DONE_HIGH=               21'b000010000000000000000;
    parameter CONFIG_RCH_STATE=                                 21'b000100000000000000000;
    parameter CONFIG_RCH_STATE_WAITFOR_DONE_LOW=                21'b001000000000000000000;
    parameter CONFIG_RCH_STATE_WAITFOR_DONE_HIGH=               21'b010000000000000000000;
    parameter RUNNING_STATE=                                    21'b100000000000000000000;
    
    assign statedisplay=curstate;
    reg [20:0] curstate=RESET_STATE;
    reg [9:0] count=0;
    
    always @(posedge clk100mhz)
    begin
        if (reset)
            begin
            curstate<=RESET_STATE;
            count <=0;
            idle <=0;
            end
        else
            begin
                case(curstate)
                RESET_STATE:
                    //set pdn=0 and wait for PDNCOUNT
                    begin
                    if (count>=PDNCOUNT)
                        begin
                        curstate<=RESET_BRINGUP_STATE;
                        count <=0;
                        end
                    PDN <=0;
                    count <=count+1;
                    idle <=0;
                    end
                RESET_BRINGUP_STATE:
                    //set pdn=1 and wait for PDNCOUNT
                    begin
                    if (count>=PDNCOUNT)
                        begin
                        curstate<=CONFIG_REG2_STATE;
                        count <=0;
                        end
                    PDN <=1;
                    count <=count+1;
                    end
                CONFIG_REG2_STATE:
                    begin
                    data<=CONTROL2_DEFAULT_QUADSPEED;
                    start<=1;
                    curstate<=CONFIG_REG2_STATE_WAITFOR_DONE_LOW;
                    end
                CONFIG_REG2_STATE_WAITFOR_DONE_LOW:
                    begin
                        if (!done)
                            curstate<=CONFIG_REG2_STATE_WAITFOR_DONE_HIGH;
                    end
                CONFIG_REG2_STATE_WAITFOR_DONE_HIGH:
                    begin
                    start<=0;
                        if (done)
                            curstate<=CONFIG_REG1_TIMING_RESET_STATE;
                    end
                CONFIG_REG1_TIMING_RESET_STATE:
                    begin
                    //when changing to quadspeed, RSTN bit must be toggled
                    data<=CONTROL1_MODE3_RSTN_AUTO_SETTING;
                    start<=1;
                    curstate<=CONFIG_REG1_TIMING_RESET_STATE_WAITFOR_DONE_LOW;
                    end
                CONFIG_REG1_TIMING_RESET_STATE_WAITFOR_DONE_LOW:
                    begin
                    if (!done)
                        curstate<=CONFIG_REG1_TIMING_RESET_STATE_WAITFOR_DONE_HIGH;                      
                    end
                CONFIG_REG1_TIMING_RESET_STATE_WAITFOR_DONE_HIGH:
                    begin
                    start<=0;
                        if(done)
                            curstate<=CONFIG_REG1_STATE;
                    end
                CONFIG_REG1_STATE:
                    begin
                    data<=CONTROL1_MODE3_AUTO_SETTING;
                    start<=1;
                    curstate<=CONFIG_REG1_STATE_WAITFOR_DONE_LOW;
                    end
                CONFIG_REG1_STATE_WAITFOR_DONE_LOW:
                    begin
                    if (!done)
                        curstate<=CONFIG_REG1_STATE_WAITFOR_DONE_HIGH;                      
                    end
                CONFIG_REG1_STATE_WAITFOR_DONE_HIGH:
                    begin
                    start <=0;
                    if (done)
                        curstate<=CONFIG_REG3_STATE;
                    end
                CONFIG_REG3_STATE:
                    begin
                    start<=1;
                    data<=CONTROL3_DEFAULT;
                    curstate<=CONFIG_REG3_STATE_WAITFOR_DONE_LOW;
                    end
                CONFIG_REG3_STATE_WAITFOR_DONE_LOW:
                    begin
                    if (!done)
                        curstate<=CONFIG_REG3_STATE_WAITFOR_DONE_HIGH;  
                    end
                CONFIG_REG3_STATE_WAITFOR_DONE_HIGH:
                    begin
                    start<=0;
                    if (done)
                        curstate<=CONFIG_LCH_STATE;
                    end
                CONFIG_LCH_STATE:
                    begin
                    data<=LCH_FULL_VOLUME;
                    start<=1;
                    curstate<=CONFIG_LCH_STATE_WAITFOR_DONE_LOW;
                    end
                CONFIG_LCH_STATE_WAITFOR_DONE_LOW:
                    begin
                    if (!done)
                        curstate<=CONFIG_LCH_STATE_WAITFOR_DONE_HIGH;
                    end
                CONFIG_LCH_STATE_WAITFOR_DONE_HIGH:
                    begin
                    start<=0;
                    if (done)
                        curstate<=CONFIG_RCH_STATE;
                    end
                CONFIG_RCH_STATE:
                    begin
                    data<=RCH_FULL_VOLUME;
                    start<=1;
                    curstate<=CONFIG_RCH_STATE_WAITFOR_DONE_LOW;
                    end
                CONFIG_RCH_STATE_WAITFOR_DONE_LOW:
                    begin
                    if (!done)
                        curstate<=CONFIG_RCH_STATE_WAITFOR_DONE_HIGH;
                    end
                CONFIG_RCH_STATE_WAITFOR_DONE_HIGH:
                    begin
                    start<=0;
                    if (done)
                        curstate<=RUNNING_STATE;
                    end
                RUNNING_STATE:
                    begin
                    //flash a light or something idk
                    idle<=1;
                    end
                endcase
            end
    end
    
endmodule
