// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Nov  7 15:07:30 2023
// Host        : TecArch running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/Clock_Manager/Clock_Manager_stub.v
// Design      : Clock_Manager
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Clock_Manager(clk_100_o, clk_cpu_o, clk_vga_o, clk_i)
/* synthesis syn_black_box black_box_pad_pin="clk_i" */
/* synthesis syn_force_seq_prim="clk_100_o" */
/* synthesis syn_force_seq_prim="clk_cpu_o" */
/* synthesis syn_force_seq_prim="clk_vga_o" */;
  output clk_100_o /* synthesis syn_isclock = 1 */;
  output clk_cpu_o /* synthesis syn_isclock = 1 */;
  output clk_vga_o /* synthesis syn_isclock = 1 */;
  input clk_i;
endmodule
