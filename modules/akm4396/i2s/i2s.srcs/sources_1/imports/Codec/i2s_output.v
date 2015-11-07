`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2015 11:24:01 PM
// Design Name: 
// Module Name: i2s_output
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
// i2s protocol for passing data to codec
module i2s_output(
    input wire reset,
    input wire bick, 
    input wire lrck, 
    input wire [23:0] data_left, data_right,  // 24 bit fpga data
    input wire start,           // start bit for i2s
    output reg stop = 0,        // stop bit for i2s
    output reg sdata            // data that goes to codec
    );
    
     // state definitions
    parameter START = 2'b00;    // wait for start bit
    parameter LCH_DATA = 2'b01; // load left channel data
    parameter RCH_DATA = 2'b10; // load right channel data
    parameter STOP = 2'b11;     // stop loading data
    
    // additional registers and parameters
    reg [1:0] state = START;    // current state 
    reg [23:0] shiftreg = 0;    // shift register
    reg [4:0] count = 0;        // count for bit-wise data loading
    parameter DATA_COUNT = 23;   
   
    
    always @(negedge bick) begin
        case (state) 
            START: begin
            // initialize registers and wait for start assertion
                if (start) begin  
                    stop <= 0;          
                    count <= 0;
                    shiftreg <= data_left;
                    state <= LCH_DATA;           
                    end         
                end
            LCH_DATA: begin
            // begin shifting left data one bick cycle after falling edge of lrck
                count <= count + 1;
                shiftreg <= {shiftreg[22:0], 1'b0};
                sdata = shiftreg[23];           // MSB first
                if (count >= DATA_COUNT) begin  
                // reset registers and stop loading data when left data is done
                    count <= 0;
                    shiftreg <= data_right;
                    state <= STOP;
                    end
                end
            RCH_DATA: begin
            // begin shifting right data one bick cycle after rising edge of lrck
                count <= count + 1;
                shiftreg <= {shiftreg[22:0], 1'b0};
                sdata = shiftreg[23];
                if (!lrck | (count >= DATA_COUNT)) begin 
                // reset registers and set stop bit when right data is done
                    count <= 0;
                    shiftreg <= data_left;
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
