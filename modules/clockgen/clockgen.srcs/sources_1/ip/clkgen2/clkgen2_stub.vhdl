-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Sat Oct 31 16:14:02 2015
-- Host        : asbestos running 64-bit Gentoo Base System release 2.2
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yanni/DSPDude/modules/clockgen/clockgen.srcs/sources_1/ip/clkgen2/clkgen2_stub.vhdl
-- Design      : clkgen2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clkgen2 is
  Port ( 
    clk100mhz : in STD_LOGIC;
    clk9_216mhz : out STD_LOGIC;
    reset : in STD_LOGIC
  );

end clkgen2;

architecture stub of clkgen2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk100mhz,clk9_216mhz,reset";
begin
end;
