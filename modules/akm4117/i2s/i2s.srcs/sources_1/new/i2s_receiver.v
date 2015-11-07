`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2015 03:03:25 PM
// Design Name: 
// Module Name: i2s_receiver
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
// takes AKM4117 IC receiver i2s and converts it into a 24bit number for fpga
module i2s_receiver(
    input wire reset,
    input wire bick, 
    input wire lrck, 
    input wire sdto,            // i2s data from ic receiver
    input wire start,           // start bit for i2s
    output reg stop = 0,        // stop bit for i2s
    output reg [23:0] data_left, data_right    // data that goes to fpga
    );
    
     // state definitions
    parameter START = 2'b00;    // wait for start bit
    parameter LCH_DATA = 2'b01; // load left channel data
    parameter RCH_DATA = 2'b10; // load right channel data
    parameter STOP = 2'b11;     // stop loading data
    
    // additional registers and parameters
    reg [1:0] state = START;    // current state 
    reg [23:0] shiftreg_l = 24'b0;    // shift registers
    reg [23:0] shiftreg_r = 24'b0;
    reg [4:0] count = 0;        // count for bit-wise data loading
    parameter DATA_COUNT = 24;   
   
    
    always @(negedge bick) begin
        case (state) 
            START: begin
            // initialize registers and wait for start assertion
                if (start) begin  
                    stop <= 0;          
                    count <= 0;
                    shiftreg_l <= 24'b0;
                    state <= LCH_DATA;           
                    end         
                end
            LCH_DATA: begin
            // begin shifting left data one bick cycle after falling edge of lrck
                count <= count + 1;
                shiftreg_l <= {shiftreg_l[22:0], sdto};
                if (count >= DATA_COUNT) begin  
                // reset registers and stop loading data when left data is done
                    data_left <= shiftreg_l;
                    count <= 0;
                    shiftreg_r <= 24'b0;
                    state <= STOP;
                    end
                end
            RCH_DATA: begin
            // begin shifting right data one bick cycle after rising edge of lrck
                count <= count + 1;
                shiftreg_r <= {shiftreg_r[22:0], sdto};
                if (!lrck | (count >= DATA_COUNT)) begin 
                // reset registers and set stop bit when right data is done
                    data_right = shiftreg_r;
                    count <= 0;
                    shiftreg_l <= 24'b0;
                    stop <= 1;
                    state <= STOP;
                    end
                end
            STOP: begin
            // if right data hasn't been loaded wait for rising edge of lrck
                if (!stop & lrck)
                    state <= RCH_DATA;
                else if (stop)
                    state <= START;
                end
            default: state <= START;
            endcase  
        end            
endmodule
