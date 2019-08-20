-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
-- Date        : Wed Aug 16 00:58:22 2017
-- Host        : liucheng-laptop running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/liucheng/gitrepo/QuickDough/cgra/auto-cgra/prj/cgra.srcs/sources_1/ip/mac/mac_stub.vhdl
-- Design      : mac
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mac is
  Port ( 
    CLK : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end mac;

architecture stub of mac is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SEL[0:0],A[17:0],B[17:0],C[47:0],P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0_12,Vivado 2016.2";
begin
end;
