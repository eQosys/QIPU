-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Fri Oct 27 00:24:22 2023
-- Host        : TecArch running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/Clock_Manager/Clock_Manager_stub.vhdl
-- Design      : Clock_Manager
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock_Manager is
  Port ( 
    clk_cpu_o : out STD_LOGIC;
    clk_vga_o : out STD_LOGIC;
    clk_i : in STD_LOGIC
  );

end Clock_Manager;

architecture stub of Clock_Manager is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_cpu_o,clk_vga_o,clk_i";
begin
end;
