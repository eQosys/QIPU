-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Mon Aug 21 20:12:11 2023
-- Host        : TecArch running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/Primary_Clock/Primary_Clock_stub.vhdl
-- Design      : Primary_Clock
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Primary_Clock is
  Port ( 
    clk50_out : out STD_LOGIC;
    clk100_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end Primary_Clock;

architecture stub of Primary_Clock is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk50_out,clk100_out,reset,clk_in";
begin
end;
