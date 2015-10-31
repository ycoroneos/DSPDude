// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Oct 31 00:37:48 2015
// Host        : asbestos running 64-bit Gentoo Base System release 2.2
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/yanni/DSPDude/modules/akm4396/serial_comms/serial_comms.sim/sim_1/synth/func/serialcontroller_tb_func_synth.v
// Design      : serialcontroller
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATACOUNT = "16" *) 
(* NotValidForBitStream *)
module serialcontroller
   (serialclk,
    start,
    data,
    cs,
    shiftout);
  input serialclk;
  input start;
  input [15:0]data;
  output cs;
  output shiftout;

  wire [4:1]count0;
  wire \count[0]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire cs;
  wire cs_OBUF;
  wire cs_i_1_n_0;
  wire cs_i_2_n_0;
  wire [15:0]data;
  wire [15:15]data_IBUF;
  wire serialclk;
  wire serialclk_IBUF;
  wire serialclk_IBUF_BUFG;
  wire shiftout;
  wire shiftout_OBUF;
  wire \shiftreg[15]_i_1_n_0 ;
  wire start;
  wire start_IBUF;

  LUT6 #(
    .INIT(64'h00000000B9999999)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .I5(start_IBUF),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(count0[3]));
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \count[4]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(count0[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[0] 
       (.C(serialclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[1] 
       (.C(serialclk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(count0[1]),
        .Q(count_reg[1]),
        .R(start_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[2] 
       (.C(serialclk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(start_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[3] 
       (.C(serialclk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(count0[3]),
        .Q(count_reg[3]),
        .R(start_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[4] 
       (.C(serialclk_IBUF_BUFG),
        .CE(\count[4]_i_1_n_0 ),
        .D(count0[4]),
        .Q(count_reg[4]),
        .R(start_IBUF));
  OBUF cs_OBUF_inst
       (.I(cs_OBUF),
        .O(cs));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    cs_i_1
       (.I0(cs_OBUF),
        .I1(cs_i_2_n_0),
        .I2(start_IBUF),
        .O(cs_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    cs_i_2
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(cs_i_2_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    cs_reg
       (.C(serialclk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs_i_1_n_0),
        .Q(cs_OBUF),
        .R(1'b0));
  IBUF \data_IBUF[15]_inst 
       (.I(data[15]),
        .O(data_IBUF));
  BUFG serialclk_IBUF_BUFG_inst
       (.I(serialclk_IBUF),
        .O(serialclk_IBUF_BUFG));
  IBUF serialclk_IBUF_inst
       (.I(serialclk),
        .O(serialclk_IBUF));
  OBUF shiftout_OBUF_inst
       (.I(shiftout_OBUF),
        .O(shiftout));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \shiftreg[15]_i_1 
       (.I0(data_IBUF),
        .I1(start_IBUF),
        .I2(cs_i_2_n_0),
        .I3(shiftout_OBUF),
        .O(\shiftreg[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \shiftreg_reg[15] 
       (.C(serialclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shiftreg[15]_i_1_n_0 ),
        .Q(shiftout_OBUF),
        .R(1'b0));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
