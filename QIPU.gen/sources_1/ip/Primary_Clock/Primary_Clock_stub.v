// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Aug 12 05:28:39 2023
// Host        : TexPad running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/Primary_Clock/Primary_Clock_stub.v
// Design      : Primary_Clock
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Primary_Clock(clk50_out, clk100_out, reset, locked, clk_in)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in" */
/* synthesis syn_force_seq_prim="clk50_out" */
/* synthesis syn_force_seq_prim="clk100_out" */;
  output clk50_out /* synthesis syn_isclock = 1 */;
  output clk100_out /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in;
endmodule
