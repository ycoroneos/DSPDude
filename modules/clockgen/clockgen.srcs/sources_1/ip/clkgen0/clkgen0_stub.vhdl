-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Sat Oct 31 02:58:47 2015
-- Host        : asbestos running 64-bit Gentoo Base System release 2.2
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/ip/clkgen0/clkgen0_stub.vhdl
-- Design      : clkgen0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clkgen0 is
  Port ( 
    clk_100mhz : in STD_LOGIC;
    mclk : out STD_LOGIC;
    bclk : out STD_LOGIC;
    reset : in STD_LOGIC
  );

end clkgen0;

architecture stub of clkgen0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100mhz,mclk,bclk,reset";
begin
end;
