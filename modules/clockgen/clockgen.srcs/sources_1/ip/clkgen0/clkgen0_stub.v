// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Oct 31 17:07:15 2015
// Host        : asbestos running 64-bit Gentoo Base System release 2.2
// Command     : write_verilog -force -mode synth_stub
//               /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/ip/clkgen0/clkgen0_stub.v
// Design      : clkgen0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clkgen0(clk_100mhz, mclk, bclk, reset)
/* synthesis syn_black_box black_box_pad_pin="clk_100mhz,mclk,bclk,reset" */;
  input clk_100mhz;
  output mclk;
  output bclk;
  input reset;
endmodule
