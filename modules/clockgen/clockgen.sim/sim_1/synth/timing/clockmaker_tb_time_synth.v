// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Oct 31 15:13:56 2015
// Host        : asbestos running 64-bit Gentoo Base System release 2.2
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/yanni/DSPDude/modules/clockgen/clockgen.sim/sim_1/synth/timing/clockmaker_tb_time_synth.v
// Design      : clockmaker
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CORE_GENERATION_INFO = "clkgen0,clk_wiz_v5_1,{component_name=clkgen0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=PLL,num_out_clk=1,clkin1_period=10.0,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=false,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module clkgen0
   (clk_100mhz,
    mclk,
    reset);
  input clk_100mhz;
  output mclk;
  input reset;

  (* IBUF_LOW_PWR *) wire clk_100mhz;
  wire mclk;
  wire reset;

  clkgen0_clkgen0_clk_wiz inst
       (.clk_100mhz(clk_100mhz),
        .mclk(mclk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clkgen0_clk_wiz" *) 
module clkgen0_clkgen0_clk_wiz
   (clk_100mhz,
    mclk,
    reset);
  input clk_100mhz;
  output mclk;
  input reset;

  wire clk_100mhz;
  wire clkfbout_buf_clkgen0;
  wire clkfbout_clkgen0;
  wire mclk;
  wire mclk_clkgen0;
  wire reset;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire NLW_plle2_adv_inst_LOCKED_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clkgen0),
        .O(clkfbout_buf_clkgen0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(mclk_clkgen0),
        .O(mclk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(29),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(59),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(2),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_clkgen0),
        .CLKFBOUT(clkfbout_clkgen0),
        .CLKIN1(clk_100mhz),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(mclk_clkgen0),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_plle2_adv_inst_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* CORE_GENERATION_INFO = "clkgen1,clk_wiz_v5_1,{component_name=clkgen1,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.0,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=false,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module clkgen1
   (clk100mhz,
    clk9_6mhz,
    reset);
  input clk100mhz;
  output clk9_6mhz;
  input reset;

  (* IBUF_LOW_PWR *) wire clk100mhz;
  wire clk9_6mhz;
  wire reset;

  clkgen1_clkgen1_clk_wiz inst
       (.clk100mhz(clk100mhz),
        .clk9_6mhz(clk9_6mhz),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clkgen1_clk_wiz" *) 
module clkgen1_clkgen1_clk_wiz
   (clk100mhz,
    clk9_6mhz,
    reset);
  input clk100mhz;
  output clk9_6mhz;
  input reset;

  wire clk100mhz;
  wire clk9_6mhz;
  wire clk9_6mhz_clkgen1;
  wire clkfbout_buf_clkgen1;
  wire clkfbout_clkgen1;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clkgen1),
        .O(clkfbout_buf_clkgen1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk9_6mhz_clkgen1),
        .O(clk9_6mhz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(49.500000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(103.125000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clkgen1),
        .CLKFBOUT(clkfbout_clkgen1),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk100mhz),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk9_6mhz_clkgen1),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* CORE_GENERATION_INFO = "clkgen2,clk_wiz_v5_1,{component_name=clkgen2,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.0,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=false,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module clkgen2
   (clk100mhz,
    clk9_216mhz,
    reset);
  input clk100mhz;
  output clk9_216mhz;
  input reset;

  (* IBUF_LOW_PWR *) wire clk100mhz;
  wire clk9_216mhz;
  wire reset;

  clkgen2_clkgen2_clk_wiz inst
       (.clk100mhz(clk100mhz),
        .clk9_216mhz(clk9_216mhz),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clkgen2_clk_wiz" *) 
module clkgen2_clkgen2_clk_wiz
   (clk100mhz,
    clk9_216mhz,
    reset);
  input clk100mhz;
  output clk9_216mhz;
  input reset;

  wire clk100mhz;
  wire clk9_216mhz;
  wire clk9_216mhz_clkgen2;
  wire clkfbout_buf_clkgen2;
  wire clkfbout_clkgen2;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clkgen2),
        .O(clkfbout_buf_clkgen2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk9_216mhz_clkgen2),
        .O(clk9_216mhz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(63.625000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(98.625000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(7),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clkgen2),
        .CLKFBOUT(clkfbout_clkgen2),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk100mhz),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk9_216mhz_clkgen2),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* NotValidForBitStream *)
module clockmaker
   (clk100MHz,
    reset,
    akm_mclk,
    akm_lrclk,
    akm_bclk,
    serial_clk);
  input clk100MHz;
  input reset;
  output akm_mclk;
  output akm_lrclk;
  output akm_bclk;
  output serial_clk;

  wire akm_bclk;
  wire akm_bclk_OBUF;
  wire akm_lrclk;
  wire akm_lrclk_OBUF;
  wire akm_mclk;
  wire akm_mclk_OBUF;
  wire baseclk;
  wire reset;
  wire reset_IBUF;
  wire serial_clk;
  wire serial_clk_OBUF;

initial begin
 $sdf_annotate("clockmaker_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF akm_bclk_OBUF_inst
       (.I(akm_bclk_OBUF),
        .O(akm_bclk));
  OBUF akm_lrclk_OBUF_inst
       (.I(akm_lrclk_OBUF),
        .O(akm_lrclk));
  OBUF akm_mclk_OBUF_inst
       (.I(akm_mclk_OBUF),
        .O(akm_mclk));
  clkgen1 baseclkgen
       (.clk100mhz(1'b0),
        .clk9_6mhz(baseclk),
        .reset(reset_IBUF));
  clkgen2 bclkgen
       (.clk100mhz(1'b0),
        .clk9_216mhz(akm_bclk_OBUF),
        .reset(reset_IBUF));
  slowdivider lrclkgen
       (.CLK(baseclk),
        .SR(reset_IBUF),
        .akm_lrclk_OBUF(akm_lrclk_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF serial_clk_OBUF_inst
       (.I(serial_clk_OBUF),
        .O(serial_clk));
  slowdivider__parameterized0 serialclkgen
       (.CLK(baseclk),
        .SR(reset_IBUF),
        .serial_clk_OBUF(serial_clk_OBUF));
  clkgen0 someclocks
       (.clk_100mhz(1'b0),
        .mclk(akm_mclk_OBUF),
        .reset(reset_IBUF));
endmodule

module slowdivider
   (akm_lrclk_OBUF,
    SR,
    CLK);
  output akm_lrclk_OBUF;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire akm_lrclk_OBUF;
  wire [6:0]count;
  wire \count[5]_i_2__0_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire [6:0]count_0;
  wire output_reg_i_1_n_0;
  wire output_reg_i_2_n_0;

  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F0B)) 
    \count[0]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(\count[6]_i_2_n_0 ),
        .I4(count[6]),
        .I5(count[3]),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'h00FFFF0000FEFF00)) 
    \count[1]_i_1__0 
       (.I0(\count[6]_i_2_n_0 ),
        .I1(count[6]),
        .I2(count[3]),
        .I3(count[0]),
        .I4(count[1]),
        .I5(count[2]),
        .O(count_0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .I3(count[3]),
        .O(count_0[3]));
  LUT6 #(
    .INIT(64'hFFF0FFF011F0FFF0)) 
    \count[4]_i_1 
       (.I0(count[5]),
        .I1(count[2]),
        .I2(\count[5]_i_2__0_n_0 ),
        .I3(count[4]),
        .I4(count[1]),
        .I5(\count[5]_i_3_n_0 ),
        .O(count_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8F858F8)) 
    \count[5]_i_1 
       (.I0(count[4]),
        .I1(\count[5]_i_2__0_n_0 ),
        .I2(count[5]),
        .I3(count[1]),
        .I4(\count[5]_i_3_n_0 ),
        .O(count_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count[5]_i_2__0 
       (.I0(count[3]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[1]),
        .O(\count[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5FFE)) 
    \count[5]_i_3 
       (.I0(count[2]),
        .I1(count[6]),
        .I2(count[3]),
        .I3(count[0]),
        .O(\count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \count[6]_i_1__0 
       (.I0(count[6]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(count[3]),
        .I3(count[0]),
        .I4(count[2]),
        .I5(count[1]),
        .O(count_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2 
       (.I0(count[4]),
        .I1(count[5]),
        .O(\count[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[0]),
        .Q(count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[1]),
        .Q(count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[2]),
        .Q(count[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[3]),
        .Q(count[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[4]),
        .Q(count[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[5]),
        .Q(count[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_0[6]),
        .Q(count[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    output_reg_i_1
       (.I0(output_reg_i_2_n_0),
        .I1(count[1]),
        .I2(count[2]),
        .I3(count[5]),
        .I4(count[4]),
        .I5(akm_lrclk_OBUF),
        .O(output_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    output_reg_i_2
       (.I0(count[6]),
        .I1(count[3]),
        .I2(count[0]),
        .O(output_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    output_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(output_reg_i_1_n_0),
        .Q(akm_lrclk_OBUF),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "slowdivider" *) 
module slowdivider__parameterized0
   (serial_clk_OBUF,
    SR,
    CLK);
  output serial_clk_OBUF;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire [10:0]count;
  wire \count[10]_i_2_n_0 ;
  wire \count[10]_i_3_n_0 ;
  wire \count[10]_i_4_n_0 ;
  wire \count[10]_i_5_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[9]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire output_reg_i_1__0_n_0;
  wire serial_clk_OBUF;

  LUT6 #(
    .INIT(64'h00000000FFFBFFFF)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count[10]_i_3_n_0 ),
        .I5(\count_reg_n_0_[0] ),
        .O(count[0]));
  LUT5 #(
    .INIT(32'h0BB0B0B0)) 
    \count[10]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[10] ),
        .I3(\count[10]_i_4_n_0 ),
        .I4(\count[10]_i_5_n_0 ),
        .O(count[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \count[10]_i_2 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \count[10]_i_3 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[6] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\count_reg_n_0_[8] ),
        .O(\count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count[10]_i_4 
       (.I0(\count_reg_n_0_[9] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .O(\count[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[10]_i_5 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\count[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(count[2]));
  LUT6 #(
    .INIT(64'h0BB0B0B0B0B0B0B0)) 
    \count[3]_i_1__0 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[3]));
  LUT6 #(
    .INIT(64'h0BB0B0B0B0B0B0B0)) 
    \count[4]_i_1__0 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count[5]_i_2_n_0 ),
        .O(count[4]));
  LUT6 #(
    .INIT(64'h0BB0B0B0B0B0B0B0)) 
    \count[5]_i_1__0 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count[8]_i_2_n_0 ),
        .I5(\count[5]_i_2_n_0 ),
        .O(count[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_2 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0BB0)) 
    \count[6]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count[10]_i_5_n_0 ),
        .O(count[6]));
  LUT6 #(
    .INIT(64'hB0B0B0B00BB0B0B0)) 
    \count[7]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[6] ),
        .I4(\count[8]_i_2_n_0 ),
        .I5(\count[8]_i_3_n_0 ),
        .O(count[7]));
  LUT6 #(
    .INIT(64'hB0B0B0B00BB0B0B0)) 
    \count[8]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count[9]_i_2_n_0 ),
        .I4(\count[8]_i_2_n_0 ),
        .I5(\count[8]_i_3_n_0 ),
        .O(count[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_2 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .O(\count[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[8]_i_3 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0BB0B0B0B0B0B0B0)) 
    \count[9]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(\count[10]_i_3_n_0 ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count[9]_i_2_n_0 ),
        .I5(\count[10]_i_5_n_0 ),
        .O(count[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_2 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[6] ),
        .O(\count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    output_reg_i_1__0
       (.I0(serial_clk_OBUF),
        .I1(\count[10]_i_2_n_0 ),
        .I2(\count[10]_i_3_n_0 ),
        .O(output_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    output_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(output_reg_i_1__0_n_0),
        .Q(serial_clk_OBUF),
        .R(SR));
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
