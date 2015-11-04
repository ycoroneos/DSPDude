`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2015 11:32:48 PM
// Design Name: 
// Module Name: tonegen
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
///////////////////////////////////////////////////////////////////////////////
//
// generate PCM data for a sine wave. i have no clue what frequency
//
///////////////////////////////////////////////////////////////////////////////

module tonegen (
  input wire clock,
  input wire ready,
  output reg [23:0] pcm_data
);
   reg [8:0] index;

   initial begin
      index <= 8'h00;
      // synthesis attribute init of index is "00";
      pcm_data <= 24'h000000;
      // synthesis attribute init of pcm_data is "00000";
   end
   
   always @(posedge clock) begin
      if (ready) index <= index+1;
   end
   
   // one cycle of a sinewave in 64 20-bit samples
   always @(index) begin
      case (index[5:0])
        6'h00: pcm_data <= 24'h000000;
        6'h01: pcm_data <= 24'h0C8BD0;
        6'h02: pcm_data <= 24'h18F8B0;
        6'h03: pcm_data <= 24'h252800;
        6'h04: pcm_data <= 24'h30FBC0;
        6'h05: pcm_data <= 24'h3C56B0;
        6'h06: pcm_data <= 24'h471CE0;
        6'h07: pcm_data <= 24'h5133C0;
        6'h08: pcm_data <= 24'h5A8270;
        6'h09: pcm_data <= 24'h62F200;
        6'h0A: pcm_data <= 24'h6A6D90;
        6'h0B: pcm_data <= 24'h70E2C0;
        6'h0C: pcm_data <= 24'h7641A0;
        6'h0D: pcm_data <= 24'h7A7D00;
        6'h0E: pcm_data <= 24'h7D8A50;
        6'h0F: pcm_data <= 24'h7F6230;
        6'h10: pcm_data <= 24'h7FFFF0;
        6'h11: pcm_data <= 24'h7F6230;
        6'h12: pcm_data <= 24'h7D8A50;
        6'h13: pcm_data <= 24'h7A7D00;
        6'h14: pcm_data <= 24'h7641A0;
        6'h15: pcm_data <= 24'h70E2C0;
        6'h16: pcm_data <= 24'h6A6D90;
        6'h17: pcm_data <= 24'h62F200;
        6'h18: pcm_data <= 24'h5A8270;
        6'h19: pcm_data <= 24'h5133C0;
        6'h1A: pcm_data <= 24'h471CE0;
        6'h1B: pcm_data <= 24'h3C56B0;
        6'h1C: pcm_data <= 24'h30FBC0;
        6'h1D: pcm_data <= 24'h252800;
        6'h1E: pcm_data <= 24'h18F8B0;
        6'h1F: pcm_data <= 24'h0C8BD0;
        6'h20: pcm_data <= 24'h000000;
        6'h21: pcm_data <= 24'hF37430;
        6'h22: pcm_data <= 24'hE70750;
        6'h23: pcm_data <= 24'hDAD800;
        6'h24: pcm_data <= 24'hCF0440;
        6'h25: pcm_data <= 24'hC3A950;
        6'h26: pcm_data <= 24'hB8E320;
        6'h27: pcm_data <= 24'hAECC40;
        6'h28: pcm_data <= 24'hA57D90;
        6'h29: pcm_data <= 24'h9D0E00;
        6'h2A: pcm_data <= 24'h959270;
        6'h2B: pcm_data <= 24'h8F1D40;
        6'h2C: pcm_data <= 24'h89BE60;
        6'h2D: pcm_data <= 24'h858300;
        6'h2E: pcm_data <= 24'h8275B0;
        6'h2F: pcm_data <= 24'h809DD0;
        6'h30: pcm_data <= 24'h800000;
        6'h31: pcm_data <= 24'h809DD0;
        6'h32: pcm_data <= 24'h8275B0;
        6'h33: pcm_data <= 24'h858300;
        6'h34: pcm_data <= 24'h89BE60;
        6'h35: pcm_data <= 24'h8F1D40;
        6'h36: pcm_data <= 24'h959270;
        6'h37: pcm_data <= 24'h9D0E00;
        6'h38: pcm_data <= 24'hA57D90;
        6'h39: pcm_data <= 24'hAECC40;
        6'h3A: pcm_data <= 24'hB8E320;
        6'h3B: pcm_data <= 24'hC3A950;
        6'h3C: pcm_data <= 24'hCF0440;
        6'h3D: pcm_data <= 24'hDAD800;
        6'h3E: pcm_data <= 24'hE70750;
        6'h3F: pcm_data <= 24'hF37430;
      endcase // case(index[5:0])
   end // always @ (index)
endmodule