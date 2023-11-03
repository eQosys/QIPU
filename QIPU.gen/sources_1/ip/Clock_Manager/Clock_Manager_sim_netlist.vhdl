-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Fri Nov  3 04:31:46 2023
-- Host        : TecArch running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/Clock_Manager/Clock_Manager_sim_netlist.vhdl
-- Design      : Clock_Manager
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clock_Manager_clk_wiz is
  port (
    clk_100_o : out STD_LOGIC;
    clk_cpu_o : out STD_LOGIC;
    clk_vga_o : out STD_LOGIC;
    clk_i : in STD_LOGIC
  );
end Clock_Manager_clk_wiz;

architecture STRUCTURE of Clock_Manager_clk_wiz is
  signal clk_100_o_Clock_Manager : STD_LOGIC;
  signal clk_100_o_Clock_Manager_en_clk : STD_LOGIC;
  signal clk_cpu_o_Clock_Manager : STD_LOGIC;
  signal clk_cpu_o_Clock_Manager_en_clk : STD_LOGIC;
  signal clk_i_Clock_Manager : STD_LOGIC;
  signal clk_vga_o_Clock_Manager : STD_LOGIC;
  signal clk_vga_o_Clock_Manager_en_clk : STD_LOGIC;
  signal clkfbout_Clock_Manager : STD_LOGIC;
  signal clkfbout_buf_Clock_Manager : STD_LOGIC;
  signal locked_int : STD_LOGIC;
  signal seq_reg1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of seq_reg1 : signal is "true";
  attribute async_reg : string;
  attribute async_reg of seq_reg1 : signal is "true";
  signal seq_reg2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of seq_reg2 : signal is "true";
  attribute async_reg of seq_reg2 : signal is "true";
  signal seq_reg3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of seq_reg3 : signal is "true";
  attribute async_reg of seq_reg3 : signal is "true";
  signal NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clkout1_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of clkout1_buf : label is "CE:CE0 I:I0 GND:S1,IGNORE0,CE1 VCC:S0,IGNORE1,I1";
  attribute BOX_TYPE of clkout1_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkout2_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP of clkout2_buf : label is "CE:CE0 I:I0 GND:S1,IGNORE0,CE1 VCC:S0,IGNORE1,I1";
  attribute BOX_TYPE of clkout2_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkout3_buf : label is "BUFGCE";
  attribute XILINX_TRANSFORM_PINMAP of clkout3_buf : label is "CE:CE0 I:I0 GND:S1,IGNORE0,CE1 VCC:S0,IGNORE1,I1";
  attribute BOX_TYPE of clkout3_buf_en : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \seq_reg1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \seq_reg1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \seq_reg1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \seq_reg2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[0]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[1]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[2]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[3]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[4]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[5]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[6]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \seq_reg3_reg[7]\ : label is std.standard.true;
  attribute KEEP of \seq_reg3_reg[7]\ : label is "yes";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_Clock_Manager,
      O => clkfbout_buf_Clock_Manager
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_i,
      O => clk_i_Clock_Manager
    );
clkout1_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE0 => seq_reg1(7),
      CE1 => '0',
      I0 => clk_100_o_Clock_Manager,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => clk_100_o,
      S0 => '1',
      S1 => '0'
    );
clkout1_buf_en: unisim.vcomponents.BUFH
     port map (
      I => clk_100_o_Clock_Manager,
      O => clk_100_o_Clock_Manager_en_clk
    );
clkout2_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE0 => seq_reg2(7),
      CE1 => '0',
      I0 => clk_cpu_o_Clock_Manager,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => clk_cpu_o,
      S0 => '1',
      S1 => '0'
    );
clkout2_buf_en: unisim.vcomponents.BUFH
     port map (
      I => clk_cpu_o_Clock_Manager,
      O => clk_cpu_o_Clock_Manager_en_clk
    );
clkout3_buf: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE0 => seq_reg3(7),
      CE1 => '0',
      I0 => clk_vga_o_Clock_Manager,
      I1 => '1',
      IGNORE0 => '0',
      IGNORE1 => '1',
      O => clk_vga_o,
      S0 => '1',
      S1 => '0'
    );
clkout3_buf_en: unisim.vcomponents.BUFH
     port map (
      I => clk_vga_o_Clock_Manager,
      O => clk_vga_o_Clock_Manager_en_clk
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 12,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 12,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 24,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 11,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_Clock_Manager,
      CLKFBOUT => clkfbout_Clock_Manager,
      CLKIN1 => clk_i_Clock_Manager,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_100_o_Clock_Manager,
      CLKOUT1 => clk_cpu_o_Clock_Manager,
      CLKOUT2 => clk_vga_o_Clock_Manager,
      CLKOUT3 => NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked_int,
      PWRDWN => '0',
      RST => '0'
    );
\seq_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => locked_int,
      Q => seq_reg1(0),
      R => '0'
    );
\seq_reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(0),
      Q => seq_reg1(1),
      R => '0'
    );
\seq_reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(1),
      Q => seq_reg1(2),
      R => '0'
    );
\seq_reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(2),
      Q => seq_reg1(3),
      R => '0'
    );
\seq_reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(3),
      Q => seq_reg1(4),
      R => '0'
    );
\seq_reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(4),
      Q => seq_reg1(5),
      R => '0'
    );
\seq_reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(5),
      Q => seq_reg1(6),
      R => '0'
    );
\seq_reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg1(6),
      Q => seq_reg1(7),
      R => '0'
    );
\seq_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => locked_int,
      Q => seq_reg2(0),
      R => '0'
    );
\seq_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(0),
      Q => seq_reg2(1),
      R => '0'
    );
\seq_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(1),
      Q => seq_reg2(2),
      R => '0'
    );
\seq_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(2),
      Q => seq_reg2(3),
      R => '0'
    );
\seq_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(3),
      Q => seq_reg2(4),
      R => '0'
    );
\seq_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(4),
      Q => seq_reg2(5),
      R => '0'
    );
\seq_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(5),
      Q => seq_reg2(6),
      R => '0'
    );
\seq_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_cpu_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg2(6),
      Q => seq_reg2(7),
      R => '0'
    );
\seq_reg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => locked_int,
      Q => seq_reg3(0),
      R => '0'
    );
\seq_reg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(0),
      Q => seq_reg3(1),
      R => '0'
    );
\seq_reg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(1),
      Q => seq_reg3(2),
      R => '0'
    );
\seq_reg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(2),
      Q => seq_reg3(3),
      R => '0'
    );
\seq_reg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(3),
      Q => seq_reg3(4),
      R => '0'
    );
\seq_reg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(4),
      Q => seq_reg3(5),
      R => '0'
    );
\seq_reg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(5),
      Q => seq_reg3(6),
      R => '0'
    );
\seq_reg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga_o_Clock_Manager_en_clk,
      CE => '1',
      D => seq_reg3(6),
      Q => seq_reg3(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clock_Manager is
  port (
    clk_100_o : out STD_LOGIC;
    clk_cpu_o : out STD_LOGIC;
    clk_vga_o : out STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Clock_Manager : entity is true;
end Clock_Manager;

architecture STRUCTURE of Clock_Manager is
begin
inst: entity work.Clock_Manager_clk_wiz
     port map (
      clk_100_o => clk_100_o,
      clk_cpu_o => clk_cpu_o,
      clk_i => clk_i,
      clk_vga_o => clk_vga_o
    );
end STRUCTURE;
