// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Oct 31 21:19:30 2015
// Host        : asbestos running 64-bit Gentoo Base System release 2.2
// Command     : write_verilog -force -mode synth_stub
//               /home/yanni/DSPDude/modules/spdif_decoder/spdif_decoder.srcs/sources_1/ip/spdif_0/spdif_0_stub.v
// Design      : spdif_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spdif_v2_0,Vivado 2015.2" *)
module spdif_0(aud_clk_i, spdif_interrupt, s_axi_aclk, s_axi_aresetn, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, spdif_i, m_axis_aclk, m_axis_aresetn, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tid)
/* synthesis syn_black_box black_box_pad_pin="aud_clk_i,spdif_interrupt,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[8:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,spdif_i,m_axis_aclk,m_axis_aresetn,m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tid[2:0]" */;
  input aud_clk_i;
  output spdif_interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input spdif_i;
  input m_axis_aclk;
  input m_axis_aresetn;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [2:0]m_axis_tid;
endmodule
