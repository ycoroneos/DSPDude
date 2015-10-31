`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2015 11:41:46 PM
// Design Name: 
// Module Name: serialcontroller
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


module serialcontroller(
input wire serialclk, start,
input wire [15:0] data,
output reg cs=1,
output wire shiftout
    );
    parameter DATACOUNT=16;
    parameter RESET_STATE=3'b000;
    parameter WAITFOR_START_STATE=3'b001;
    parameter OUTPUT_STATE=3'b011;
    reg [3:0] curstate=RESET_STATE;
    reg [4:0] count=0;
    reg [15:0] shiftreg=16'h0000;
    assign shiftout=shiftreg[15]; //msb first
    
    always @(negedge serialclk)
    begin
        case(curstate)
            RESET_STATE:
                begin
                cs <=1;
                //shiftreg<=0;
                count<=0;
                curstate<=WAITFOR_START_STATE;
                end
            WAITFOR_START_STATE:
                begin
                if(start)
                    begin
                    curstate<=OUTPUT_STATE;
                    //shiftreg<=16'hFFFF;
                    shiftreg<=data;
                    cs<=0;
                    end
                end
            OUTPUT_STATE:
                begin
                count<=count+1;
                if (count>=(DATACOUNT-2))
                    curstate<=RESET_STATE;
                shiftreg<={shiftreg[14:0],1'b0};
                end
            endcase
    end
endmodule
