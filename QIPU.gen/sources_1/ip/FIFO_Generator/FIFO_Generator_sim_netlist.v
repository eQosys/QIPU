// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Nov  7 15:07:34 2023
// Host        : TecArch running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/FIFO_Generator/FIFO_Generator_sim_netlist.v
// Design      : FIFO_Generator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FIFO_Generator,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module FIFO_Generator
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    wr_ack,
    empty,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  output wr_ack;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_ack;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "1" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "510" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "509" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  FIFO_Generator_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(wr_ack),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54304)
`pragma protect data_block
9hDwPxnw67TbwjqxHpJ9SP2eqFEem6TpxKjsA5PW7z0SRR/dGXOFQZ+UE9McuRBldpLh33TLaYFK
4nM1zR8RwyMPUNvOwV2cL7cJRD9TJP3v0JcNPiz8CUCu3aSXu5AUzqNsmCZvwH44zzfbEj9U8Wvk
EoPRLxY1CVQNM++q9Wl99qvVMAt5eajI4z3hAyLDCe1+CBKxMNPmtGDidgOKvcQbxhXQi1yFi70V
u3hejK2HItIcSZKlSzVwMVLI+vsAD1+dJ8vWld4LeCptESuAsEtUBfkWT1CAvPmMlEdG2kEDMh5R
kq/Hv6dl1loT5Qv7UQSIZUrecUuwiVInolrs0v6WnsCISFVVLKBu2zZAzKGxKFw7wd9rEizNBS2L
REM1Y6rnLkEE7dxGTyKjJa0HHwMQL2d/mPfc91g09bpG0WYAWWD23Di+ZE5c5I0owMfWW52IB8dH
hJI9WE2+jzb8pzgQgDR1bhYHUCIC7TK2do5aH5frJqaYwHqu7ZJC26epPch3IpOibP4VcLfviKo4
3fItcDl1poRVUpZ069XstRPyjUBrTFtSB2EWBPE7VWeJHvJYFSFKebOPWwHeSi1qOjg+bDFwmOm9
U+8uHfM9zmqRSU04EeTuVBQuuXfM7VC9MjeTAds9WyNWsU0ReYYlZ1XsCynwW4YQUiQ0DPfrmQcw
mY7KthjWC5k9itMclHcv7kPj/4eGNCYbxsmrIJ8TiTJ1Ss+wdV0nxtEC11EJs76Kk25LkQRWKLSb
dFKhortBBdzU2RHAfUZSicuT2lmgkDYaQIztSmj2zYX02fCSODjOxP+Qt+iKSSCoh+KpVzGhRZC2
wzm8KRPsfyCjq4tXf9QV4E3HLBEE+Coffykb5kni88I4K0Y/OhLalxP1zP5ptojLe13u9Be+TKaZ
0ro9zjzTAxQhVbTBW6amdz3l/08Uc8GfIkM+1FQLltf7J6dgO12brxMLdRc23NYy/ZwjXgk9u+Rl
7HUSCUym5QeuRtFO8C47DANGNh4wMTCN/299rzxR7XRJpsz3HhNu+N77fjxDNJ8RAGfLvpsBgJAe
To9ahDTAHYDuxgvVw2zC/maHO38Se7tJZGApZB4PGUhCG8X++n1WbATt02wZ2yJZPrSeTRezqagI
uUDPlheoKiOCW4mLTGRFwIhsA46k5K3sPrgniCCNeoL0EEnV826ujB2WkUV6Bj6FBPkK3LPmJrFJ
nmk3siNboVh7awnbypl4ZJZg4EDm3OKTak31r3WJt9fooa5FSVgM4Kq10nOK48XTutfj/6qvKQXp
HwMC+tDs2qTfkv3mCFCtAcMi8eDQDrezO9HCf4eeywz0aQXJN7C0mqQdPbrqRw55iM8H0IxGncCP
HuE2KaRDuC/mV1LFhtJoZCczIrBdWL8a9MWl3QQowBEkpsBUvE2boaZttMIh2qJeyFuYANgl6GQ7
zxwCevkt9iI7JXsYffPYY9F9VuNFOEzZkeD0hNjjmWh3yhjyy9gMuAXc0BTC0r8UI3LX5OQuHrXM
MX/JjHtYzpx8rufHX39fNh5Exi/FHlM6Y3usPRsaggvNqOCrlEJ712K/xoFHQQ30rBISIRV79AqA
TayTU7k42wsrTTt5UjQFhMai/rm1UWJzGBYmRngE8MY2sNw3nLPvV2mqv6p1A1MF4uFoMrkyl8yi
RhpRriwEL5xnFN4MH2gNkIAzCZwSPBNJyF0Xxxp8TK3IcoADfwF8d0APMyHjyQp+NHsYQIp3SHzo
LtFFdCmWh9kw3UHdLTx70FDiaCU5rIscojfoQQCC/yy5StC2Vu7WXH2JvFrMdyODGk6dCfUwuA4N
rRJmnUDbn5kCpY9uDcIr+BEltlvbJF0MVcEbMOqwJISkybZDwIdnp2o5TjHbjJ80hFxnCHd7nk5S
dvc7K7oHyi1nLAHKPk+Hv8TTzrmX8/tySHLkwmTPRyzqq9xEmHmoLc8ztLcromysmpYKc075R1bD
7MQERYrbOTimQYOj1HPDt/rgF8EBvqGYEuMnCreY6T6YL49o/ylWT1lD2Knvur54xZTXTHP6qLFe
RNfLOagidLGKHaI57uPboiHZNDmepQwLYFayqMKEJH5KizK62v/VcQD0k9tuw8EHQOdHgex10RZ5
/b+ZISNZCMz//tDxueGEcnz8+N/DUSnuysXVMTAgA4NAyWOX087176UiJw2R2En/N4DTiunTARDE
F2kSsC8HyXT8YHNN1A8juYD7kAHnK0JCwa8Ckg8ksX3cf0OQsCBLU35pxv+LWNumi5Xmy1UKfvPe
fnM6jNfODH03YtkrBUemE4dZy4Ijz/OWulSbXPcR4tBKXJX6P+SQPSbSjsp4nyM8RB1K0xy9UatV
8+fIkTJOX/rSSzaHMzBPPGNzoMlqof93PXosM++1DBUFq2AWAWCD7hH5d3fQd3uPMvPPLcMcTrIo
hJkP6y8QSkDi3/MaTy5uI8jTUZTjIHVIvsmw0K3Bc6nBW2jQp0vYR4zmAriCEKqRA5wzHfBV0p2e
cL7mIcDuVy2ThNwnQOlO8oQsxPulJ8O69Ckwx0hwD2YoZVedTGHr2i3tMy+Gj/C7WfAr+iEpz0gk
NKLHmVkLwjXMYv1d6Bbw3AhzuAYukYxcdt+xPbl2hYpIJhqyZDlaRwfK+YECYj6lW9/Dov4gCq8e
4hBUSJ+l3W/V7A/7IcUwqhBlQAoEwltP1V/1ZNs6PHnSmH1px2IVFzfelRsjpK51UM20Q5CNCVWg
cl7wa/++/+Xsx8vW8pl9AUygIBbDe7o4OLYdR9LQldyD8XnDD598mrB8gD8LbHenUtWxxET9aiRQ
SmD3cDvY3haL4ol7LICP+d23x7yAsFQXaKfnCl5gU55w9giIN/VtJcOHcZOKZGSmz6T7nFIBFNnq
hFB1PPVTqI0ZXERcn4rIWRTHva92yp9+1Uej5WHisI7Le4JnPHuCKSzyDEg4pJzmI9bI68MJsNyu
qWHrCciWo8uVHbh8E9IUOw64ykx4QTE530GQ9+FBLY2BstPTcRy5aw4uEKEknAFMdPgZQjVEFFB9
8njsDfvPHzCIM6jUod0lybzgaOhwmk7pxr3lgqLxWCDCcsVzQcyNo62WGP20/WOnyvsVSqA3u/ej
l2VZnXNyEbw2J2eBd56YHkrvXALe6rzSehXJJGjgkmGJP/fYHFPGiOpB1YlxFhS/9EgvF1+5LQxR
c4cl2Z5O4jUnJ9Z54kg8gMOh67b9jISsR0j1ciHkY15qG6o88REmIRM5nalgoeSRljbH1pyiQZeY
fpbzTKkDAwYGveBugNjx/QpeUC8AEr7rNDDQNbSgXoRofxXcDSBbqx0TdA7ua3e9rPwjP3pCgXle
X9o8Bt8qjc70DXrayaYvdJiQfoyZTS58cuXqmTiUP2NYvD7/oaGnBjR32owg5ojLG89Fm4giwsLd
ruI9zP7HLtQk+EsV1pWteARwGGQ6B+zeEjo+t4fWxUDfuAcugQIbEeV0beNqEXinLnprkQmEKdgt
R0r2LcUyAKy/+SLjXyOVds8Ndb7nZ3WPHBdqB1ut7yyHskflB7r+0/prAJJz8VEwEFUDnN9L17pS
KCrA5yRc7bAp6QbMqES7EpZmTuD26224ZHimRUuRzvEMgGIwwnU3qH9ykRSbDHTRaFgia26bguSH
OiVdHpQ18sYwFR7+58Kbk8n3s1UbSMVlAJQdxfHlLk4gPj9ezvz7y5q42Qr7TJasYHvkCp6UMkeb
oc9HEmXWpZS3M81LDh66RGQrQRvFORPYcSPf6jY+nAbQcb7AEYBFfBcenJF1FPkPS6tl/ENe72RX
pvY0rAMVUkmAe1Ds2xZXrKoBGpaC6SoPzxwEtBR8OA5QGuhmB/UraYc1WmylL3lEtWTdTqinhYl/
+iLCG2nH09uBmX/JYMHblC3w2zTFD4eb3KvS5BmGczIMfeCfiVU9Zym/kNq1O3br8L5Q/RXCRAJP
S2YdyuoaD8wrKz4QU/aeWKg6kL6m0KYNgWn73RNSScPrwEQyJBmvVQajSzUvbh1lB1koaT4F+BRR
0cmX9AasblLm0ollNUDHPJRfM0viXa8ngUEZ8payU9lZwRdpLgLoWczOz2qtaH+AGghykKSpdkJH
oP6blqwGqEeCGsnLWOvwkr5NcCnX/XtzHuJC0SBzxvgsqIVsylMYz7mTKfZxOAgziAlajZmd0Ikm
YCr+8eniMjA3iOB0Aua9A0CDHyjzzT7fOWL//xsWlHM9RzOmtuSkdqH3EWOSmbtbHlUQNFt9+3j4
bPNZe7esYHyiR6+dKoLsdaPY2CSnBt+Y2HtAxxFUo8nGkwT+ODHdb5tZ+zIWderrxbE594c37cWw
Mu3hRPx0q3Dlj0Hhfh7sZXALwKxq23AgsY71U8sMnySD9YcRJXJqVEqrLwX89go/S2D1DcwXZ04V
pvk5ofthHDiQGpMbDO1MX2DgdwUdnYc8a+z0UHSR1n8aHkSSkEwzu+4i9Brw3nGZ1NNl6/+yN/D5
1Kka2BcStO0uCl3fiOONwxOviMCtDuCzET6ww6O2kmorc1UUp+//qG4efl6QVkBvAN5R+ZM+BT48
vfWsWpUSObE69gy3gzeG6UaAhFATNNSq7ZbRn7V8LDmx8f/Pf7pXd7T5+rDT7mQ4kArRqS0hIwzU
5TtoAGUVilX0VF8w+61+R04cGwzxiOy+KbjsDfgNvbDj+sUc9NJos9Fau0VUbrBI7OFxZmWV9nYt
ombn8iA272b8WXzi2ABHycZmqJXPepXp57aqdOcnfIQeR4YpjjozicXE6846WbsZqMKiSA+YkUVr
jU5+XwFYtw05lTbjE4hF8mmswLmE2WoVMaCRgmBx0sjgcfUzkdo+a+m3AzyjgJBJmZUGDvDu3XfU
ciktgdsvHz8Tb3qXo2bP8nRpC5wvJKocNAD5wHINI3inBdnZvJH6G2khD+g8mf8NLzZKyJionRJF
1r68eyogIrywsTqGlv/azFSbLloT6FyrV/60DIP6rY8zE7+WIxzqBY4uJ9KkAmglxQ8PV+H6vv3G
0A2duCeZMupOfUbYnf7Sqqijs8TcDqbWk8tv9KymOBTj6rO9AFEl+Gr8vHfWyeHrcOrHZaMg5CTk
ORsBWYjDPisRUv5btiySRCqe7v6ef1mRXJmD2nDpk3k4x5k8Gyeq7EjBc9gDdMJbtUXeYiyoVszI
UoEi7K85c2l2CTUYuuVBskqpUTHU/Ih+L+5n9e/OEfWJeFj/6xbRSUAp+WTIJsPR7S7XWIY7Dbbm
UOewowF56tAxcHldsOhE//5uT+Vz7qNEZSKAkSXC0pXB0CeUCBtx6fKkRztlUKkZnGfH24TtoEmB
+5Mt0Z23CxaS7lM6Fjw/1YzXCC7EY6Cio1x+CiZzdIgfZB3MR0KEjgJzGFXgtOsqOkydMQDThvTU
pqw6pzXilRzA4FXcF+KlRA/A1nvhW7zrc5kI8gP6FAjlcEa5Mekp8l4zT089gKTfFDNwE2ZU2v//
AUPmsoK+TVGArIB9PpcpCaBT6M0vmX8ZgQtJiHeLpy3vXqW8aOBDUkxSEB0TOfszbDMhXw8FqigU
PEaoiTnqzuHisodTcixKeQJYb/buSqfCctRf1UDVccxBBFxqWQ1u5EpTd6/LK+Ai5J+yvaTfJPRj
WXaSGe+c4oU0LRBF50ObOGFy6NrBi2qVj+9bBkY1KTGnPfD/FN3lgULp8OioRkXOCufvLFv/u0SL
nAnx+pK7l2qWaL+PpZjlPSgAYDb9p9XqLimpR9N8tqTXp/Pjd+O18vD7IwipEEQN03kCSaYQK4Xy
kIqyKLTtSVI3rCtQoJlAsOLxRYw1izTXaLZDUNgXk6NI2RsG9n1zBifiTcf+BUdlclwSyjie60u/
wvnP4LuAAq+T+lQayxmOSzJhv83RTGQqkrA3nJBRnG22Pswvq5rs+dEW9G1ehbg0dnVR9rwr3UbH
KD29ustSYpPNeSPICXBc1CLLjjrR3cbERm6y5eERJ3iKERbFN3XQm4tcAsgWqvzQNVXBfvFgMAIe
sJRtilmnr0Fcm5OKDbZLn/Wh6KiR6kYk+LvWCOl4BLXh8OnGwOHKPHai6R11EDm6ovNmIsgnviGK
CwGP0WgRgnxCn5sXwrQG2NugrioKhF5I+WqkXyXqc9uek2zi+oWg6cAtl/cSMJ2XoULLiUsI+v7M
Ao6IF9bH0p/gliz8wzo71xrtK63xciG/bWbNeXmWbvbZUMFra6fjVGmoeI6RYDhSaq4N+UNaJySz
g/7WwnWsgGbht/F5IXnqUXIWIW2PbKA4IowHLU+4isfIzIOssiXV6o6FQNhUxqnbBpIUSFFONNFw
oNkQvwjrYYAG/POXHcNW1pk7rmXfeoYJnY2bN2xnrvfKWz2p037Zi/NwixqcIs2pnw+beZ1fhVHw
5h7qS62vP1eoJ/gBpqTG2UPgweavIM2z6tIqWP6cfJRIDrdApQkIk+HdMN+9tHj+uLlammqOhfez
RoFeYoADuQ5NNdUr88LLnARf2NFMKgYndkCpxBgn9IskHSJkeK0zb+b1DmjE2dQX6sh/ymyy2sFS
AKIMur3YovzwkLkRnjfeSM2o0W8mB4q5i97zu84K1sVLTCkeFtcKgRjPUh2z9pXidJc/8HB5TMGm
hwk9F6VjAm3znFACnGcGPwubTafOX8+27kg6iqattxrd3+gXoiM8S+0L6HIV8/1ElJ554Qsj1qcW
Wqn4MlW2gOOFfMfa/Bg6dZcUztlu2JtevTBCzmrFyua1aqqWoDWVmaKorKlH5jFQcju3TFe5T5n9
/Vs05/+7F7NzQ0dVMkn3saOfy9mIBEuRFxia4sbL207OSUlkva+xnsTORwNMHop+PAjHUC7UXE32
Hu4OA93aH+yBrnk2OXH8X6Nn1QpJLytG/pNQBtN7aD3gMvEAcaULmzqOO71t2NMROTonGzDArsN1
HSekglNPbaPneQOB/2zG1jGLfzHeH+LmDSWgmTSdVzQ+X90pL9qSW/fh4g5KrRShkwZXT+auQH/z
rTxNRImyIHoIwkz1Le0hEP/+0B/KD6MxYjhsZFhdLNdgOUye68LVWIXM+CntiCtfSJQ3LvJHP5dT
9PkYNhoUm1xKhMuIyt5dzt41pdCE1OaoTGU1A0N48ugKMVzI2GL0AZKQZim+0fKDETNALKWtunGH
CX+Dmo5lB8CWvrxfx/EQmUZ231bZ7QcGBzQuiXopVYYqGvKxkGQLGEvZ1eAog68Dy6kUdS04DKHd
2ofGpzp1j8jrGpQKvMlhtQpdudpe5ZTgXwgZ0eEul94ihLrw7hQSQdUD7CkjpmJfR6r7ddtIMi35
vdBTykifyPfbmmeHYA1TXA4v8RwB8ZEFylqT1TokRGsu7AzMua1Sg5gB9qM5woLBfWJU5pkiEmu6
X9Q+065eDC8J84HA1ukGU+g2td+M3sWcRqbzo0fzehoFu9pHFvSK093XyPTmsZZ6POM0ce1SF6tL
RE2KaWRgHOQH8t7SPlmJi+Nqyq+CiB2fE77VI9/eN81iqYyi3EQ2C0KnVNc405c/v/6oiacdkF4d
w/GZLIWhE1lBnIGAY7ubZEFQ3zej6+ArXJ4sEZcZah6ZTYOl6aqRsMdY37Bxgq1urKb+3icNrc9F
mmK+FnA3GmDWkxYPrYHEdiIwGotL0VzWlv1g0JJQILTZXQblT/ISXericYJNl/X7o8x8X9H2goC3
2iomADLMgmhRaRshkmkelisqYZ7hlVKgrj1/ULbSM5050+lrbfVgibFuysnroc/hsqWtrRHlJlUb
lLTtla1ObT1oXJOxoK0dH897eHrehqFABG8j9aNkoMbxBs70NUnILrfleajD6LW2hkyFj5/4JyvC
Q4BXsdEwXPnw7Vu/5FuDmXsatxBmtIvxH3PjTSHPHaapViQRjHifzs2Wc/G3Dr5LS5QW55PtAvOm
GJ49bM0vXf198/lDAWOWQNuKsV3HKjNHFEiKIsjh3+X4xGIXYs1pvuSpu16p5y+vyxp5JGtHyY9D
EgTgtZzMfvBZirFrT7eBRasvym61xXOqSxEJiuC5ohGDprYYmu21OsIslfUsy40Bfm3PC4K6lpHz
YkDMufAKgiFYnfrEh9HHElk7T/+wcrMbMyDVHMGxCKeuo0YrQ9WB8pB+Z1SzyjNf8293XsHsJc2Q
Cbb//vaN5q2ODMvUkiUjBRRbECQZMFaYHLGzrZZ2dk1rLEalbD3zpTkhVrcOJvwUtm90AZCqeWQ+
0nA6ChQ4/duF8m6E3bdOtkLfGPoaCdf+2R9GGlJ/B7IQcPRV7CKD44T9fOC6IFUMJSaZL18tB1N3
/07MoXx5GsfeBQza20T17qRyADkiBp4eh0AZM7T9H0jY52SQ6A6strfJ9iQLHCsY8Qj60TELI64G
+j6Swg7PQhSxuThlKYexX+kxl/fM+6puPfpuuy4rCsSZHfpmP71NIL+TvNPPb/ObGdMqZNCSCmwl
YR2NJjzVN8JSBseftnN0TaXYRSFRqo7setOPhgMZUw34ZT7vMgSZV+6k0jupNkkDU0ePg2Z8g4/B
2JwmX/0iF2BJZOLXIgpEADptxXHWBsn8II+a8eqjmz3he/WUYnZ2GEN0781cD2Kcdo9Bh9yCSjtN
m0PMJ8pOum3TotZlJ5mWElaHjGXyp6InVkECJbHtBqabnc1A01z3RGX2VaQHEYJiXGoDjOdK6Yd2
1lvpSDdm87zUajuUMgvoDtRIc8vDYolCbwlj/AtrxcB4aIjuXow3+HMs3KGD8KTbbgQmwLhUxCwm
KKJkDtqp7bOeJo2oSYyGUAHt3WAtix4bva06GdCbOgW0gsA4aVtWcst1Aoc3EHh3tpwOw0da/qwn
zWr30DX5lMnMTyuVlOBtve6egCcXBDqiUuMqBgWpdKWYDx9M7DR5FVdUQZ/OLYW1QfUQC2FTie10
FnJtxzgeaqZafenoo/fdUjnZxHyh6hUPQb+sYduc5VJ6W50OnvpB1YtIO5LhC8J0GWNGFUjLAJ4i
bgPWvQw+j3l6Xsawm/zPd6wMvs4kuALecIFEn/2F8UodGnSmFQRwR7Ln7F0wQltf/pX58YBcrNRV
8yK2lMhx4u7M3poAbW6CaVC/KIEHUgpLM/S+Dv6aBE75R9GtuXbH9Zs84oI7Y0y4koLsGhY3eXhg
0uRPrZML42cQ6LJY5vYi7wFVAGlWLuWuWDBs9KSn4DHZe5J00zDc0BzShZuWTdcNxcJl90wzM1gN
feHGzpmqhVJHf9aTBLVoohLfaL1Bps3Spr85/4u+mkQmpyBYhcfzo8UAO4kuJxtdwZca1NV5+zHK
xbyjCcBTuB0WEN188PntAm2U74y9/EerjJsr7RbZ2Qn+zafNFEoxY8ETqn0A/bFFrGYOxZ6jMHcp
e9vksaCDbXQQGqU7cqSq9sz+pKN66+HYGmdHIrtE5/daaz8VopdItVBbS8k6b/rxaN4d6kxAY/Yr
VR6Flu59M/N7ElZRrtVz6/fRVf3R2G6pKuufnmfFMkMiUfPyzu2cZjyT3tVEu+gxmoqSmImoY/dw
7PieZ6FnyqUsEs+Pc5kIquSFyK4PPW/vCGdjXVHgG70rctsQlZGjQ5Ko4IwT8q0iGt36RSNK0HPc
GD9ujGUKPyS/XZk/TabIr1/anZ0QaRXGiBtRN5Fmc8ltP46vKm1nlxglyB5U22UrOTmCFqaocmYB
mtnzkyqabKmZFc2+rP26xzOz2GbQPsA7V/IVQlD6WV24AG3sklxe/ZRjg4oO7ZqmEfb8NFDZWNhI
yacoof4/S8RUIGLT2wcQcmwgcCi8pd6EZMmT2IWPoXIA/LRfBp++ZiiwhnRXP+E2MPAiTxfQ7HmH
+uBazKWw8DsyEaZnN6G+A7KMdrbOGi8a5xlajRviQq/jHeeLfuK1x0S4sUwcQ33fIWHrg0rucDVf
5YGRhopDHVhuLjkX+vHce9iwh8Y/3iSbZE5Ks8FtNNn2aekrRyp5vmyBQ8WmlQgvpTHccto2iZMW
LM4njSyIQOM9b3zDwtBKLaSN9DU4fSkB/u5UJc+Mb04tK6hGFipoGFZHhW8z8Ot9ZDmpX5a3Y9iz
MIvKIiLtycfp0BavWNgGpVwh0wABa7XzgNFHzz828WJXfuiEjT/0UvNApi+FaSCPTm61re5mrRJq
xUN02kRVu21x1U4RlK3n6lbDscGtHd5TuUxBnfdKjIEql5ZBtWKvH/nPcOTR4+vgjjAR7jTeL7E+
6Zc6Ha2lD/k05qD/NEfFsGwIXZGDJMkPTgYJkMYIpiUOTApvEQnLr5HFX0+iSm5vtrBC87BUCYCF
H1hDgSkRNI2W6MpAjhu2DAoCVZfPak+SyfzDrPjq8yDiwpY0EitUY5qV/0QuldlOTbhk3JG8k/CQ
TEYRH2IxgoA/I/rxiKkahHBz2rqj0oo9VNRJO6rpK/U4Pmlzt0e+ZZHy+oybe06WtgjYyDAtKtAq
o228H9lDBGclqRiDBEH+8Edkr1LnjgZlFxXvvi3HS/WeynzdBcg9v5tEixTVZ7JzUD2A3DFx/hTT
j1DRiu1ErqPzdEBcJXEDrImHzLi1QFO+sZ5GBTLVMdo2bH+MLgbZ7O5w3TuoO/+HoG0YHlX5QqfM
A4d8UOt0wRC4UaBkbqyprvUtGzgwWppZXdkac0DHxzG02tpmpsF0+lVT+v2rgW15vfCB55SFEe9P
GCRKi72J+inIQ5ekg/+UQ0armi1oTCG7KahD5YYBuwiIySTDpGtEtI+N0AHbhI/mYdknT5RoDmoH
uc001Fene9g6rWNVSOztu/gcwaVrpUlqo1imUUDQYVcJdgK2gnSOwKSOvy8QSU/GZiAKPOY8zL8r
xaWkzuZK6r3qH1meBckAjYABEbMJMSaRZ16MGt0J7M4H4QCryVZS1bRQ5QST3a4titOjfnHJiTPD
9CSxqCCDNVKNFAG/sqvUoLmXOUzw3OCJ1WO7K7rzvqZqUIN9t8OkVpotuJGBDWUGijwcrHjMPMaz
XKnGgBpNtTYcAB1JbBBA0UNjo9pSblUNgqXPm9a81HD+HYVCYup4jHI0gwD9diKT3QlaycT7SNkA
amV0hYvGCkJiLlRv69GswQHd/H8/08tJyCcQAoNVsN6fTRzPOlxFoBbPtWzY89f6tm3S/yWI5LFA
LyWRbcCgoDFiycAVwgXsvC6sGCmDMkKyTHV/FqQxLl3zfTNyS2nLP7kLTCz3rNj9oDNoOFaEO1k1
cYmzTLPTBX2alZs+9pkn921wdJQK3oWKSxnzHaJuFw9xE+hnW5I5MwiTxfzDK8DSomGOLO+ZjBYp
uEgxdGQdG0rJO/xzW1qWQvKRkjiEDKRADAMFMZlzIFxoGupA5buKUT2Ily/ZfmNcR0eQ8DxXr/GM
vZQRrvbRaBniu9wFN9Mx8ndzXs3NCR5g2eVxw+Q5hlOqx1a0Raugwp9+Db5RmeySoS4rETzCHJsb
UC1eoHlfIyC03YpWHSsK0M7ZHTAhKowWP2d1odMxViyCdtiyWrUl1il/lJU45ojNGhq+Dn3Txllo
MmigGQ7FTefaAIGpc/Lh2k/LAhNAIbGSAp0Ns0hyUGk23h49ORGHnbFXRSLm3PDZaP8YOm4xb0s2
iVleWSR22HKXm5EQRLMe+BZm7GWFGnV/Xe4zN9JFtj8EvOtvmdhZdXc9IeM3woMV2UP8zt7mr/sq
fo+vJwbx2WurBh8vWtGVX3NHj5+1VNNbsHtfzIrc+Egbf34me9VWbtlPI9mBp/5vOGEP1tpkPQ0D
G/qxciP3nXs0wMiu+9a3XRSbsZx9VHM3bwRpzJNH1BNZAlV7cgvdJ0VWG6Z5Dz0MWuckk6Alrd/V
FvIdeDNVw9rGnHJrLaKDSbiz5KXBWhYFK5EVExzjO7xIJNnHlRjodwIN16xa/Mgqy+FfeyEeU7Nu
QMM3OnFvZ7DwBMTT0efnQ8Ap7ILZssdJ558nvd3ootKhOZ2f1UxoYHDKEvlD0ZrzUSoGAXoQNKor
nLVuaf1qJltMD37nH7GhG8xsazdjZSAg+LIw0mzFGtbnhG7EJD34P69sRzNBLhKx6VEeoE5ao4np
lDxl2eN/0MOjiFRBRno6Ldcclhh7Z01IBt32190OAuRrmBw/Q1GexI6tagDt0n/xQkcIwQsfsvcn
EF7Ai1wR3xnLEP3s7ErC0k7c6JiFPBpoiKaH6dEFuPD+3tXgHMg3jJDU3n+Ctwbi6c0wVu2iFd0U
oYxUzDy5WMvLYCBdkjAu2PDEm9xCpc+5K4cJ/tRlv1R1mVoYmtLouCOj714k4d/cH3QOY6mItFGa
hL++Lz+14izjTGvUAC4gytPvRcXZWM8fr+14EFwTUBSbmP5xNvGzA7CBty+/wY4l4AUz3Cv7q8oE
03V0IorQv6gCvUMy36flfGTmHr33ksCddwaSxHeqE4fTdNimh3rx9BkzsWhiAhNRVvOlWOv/1Ypn
SEWZZF40Mu2eOTTKH/UAXXqOeix3AjAcCZi7hYJFlqqQagd3hM/JUhintTYAjI95prdUpaHzSekO
aV3EfpF21zMOVJKQ4+RbE5+JocpaU0t5HkkSyXkJ4tL0NERTIdsMtoxzmyLEzqh3rKSRay9BNJQB
sdWWOMenoPoWHnbdUGRxhHz8UpT77Qgnp9zS0Q7Ha4bnkBx8R8U+h2JwYQ6roNuHuLhB+5kQ/9Eg
/vtsN7kvbuBm1RqF+RdqMO0rILmPAtck45xnTvs8QUyxpAzckm7tCVLZg2h2T9PJ7AhO+i9FCULV
QttCSiXiLe61zzERwkNdGWoBpoGmc6DrJ5oL8cSTjJEJkRz6idbSxJL51yOgC9HNUTh/LNCDKMnG
7tvGOtnYEvkjqB9Mh5lvvvMo34t7RDRgaucJwJrgip/nAQh2rCz6Jd4Gub4CxfAYwoDVBqO84joU
BbUMp1EePSlPRw5Pc3oNDdyNKcR9uoONnnEo1egxIKe7caCFKgJPevgqS1fhdLyJE0QwT8J+4XkT
f4LFjqziGnT0RyuJ2iYdi9egm2v8GjoEZPgNHb5VwQoRAdDyLukJxJCHStdJ1WUCDF/J/KNfgAih
KE8/SzJm2i6dGFA1EWt7ppRNQuuS1kGg5w3NnFun5/JNEuTWTeuV61Y+O7FZ1OMtzraQqkvjY13m
NlANSuYbB13bmg3xtldKC6j4iwKI4wLQiVAyZglumGA1QnvMf7/Xnkq90L7zqLPD8YZkIzvGUCS/
PQIR3xYUTjj+BjwIP+/UXGr6H23HTDcJA9P6TFL62aAKxslrN/Euj4TSzCXWrkRR8k3MkAUUeYst
un/iKfWc+O9pwdJSnwJxkzpVhWD8KhWtZCvglVph+fxfj/YqPrlGv5EazCww3Cdc6e4b8SLEU4r1
wo3Qg86yP5ET6kOUpuZi5F+xT0S0TqL0D9VBvTxe9nDqn0hJGePbpJHIPuv3dgvnbxMuE6FtnP30
+5KasPg3+TlQphJ+pysRRel1/PeuQj4xdx0iimA3/53+BRrcr63/kwWJbR0DvXP701DoOH8jhgE7
AGjX+9ENCY5DJP+MofLhuBE8Bwe/Wlz0RswjOBwXHjXWJPQ8Mg1ZNoNdqDhJ7ot2kPmm53huMlTr
/IGql9oU43H1XJKaIAOX83hRnfl1mV+6WVXvJnwIXwsWHDOe7xgee5BTRC/pstSRLBF+nQNzb3fl
44ORW+6MM8EbWIt6koz7Ujw7INjL6zPVYKhiyFDZgzGgVVhn5Y+72bi9ASO2z4a/2iBH7q7znfmE
GXVLosHZdhPyE2g/9bpw5ZgZd8nF7KkzDfSljLVL4ZyvYtCsljvqzcpzbDOp8YEWUtv3OVuNJu3r
cXxUYvVNs6GubtqUJq+/DqaRY+6mEoQJcTQkVwcXhpVTeaX2DuS9wRLUS80ETUL6dJA0cEimedjF
bQWU+KHsM/gDJZQ03uFKf2LIyLlrVE3aeKfUyrIUp3FJPUaVm69VIrPipMMPCCB7nMGN7FDLI4SK
GN2OtlTtIoEwUEfpHbCKqWtwbNZdRBkiNjVNr4BUyVi2I1onI9scIPawifuJsPoFL/JME/IBlo61
2Gp+n4dL3Jap6vha3g2+r7faqnwUPDhB6web2hZgs2Eah3PrIz0pc1n7sHcG0yLtCRsFZ9aDFjLr
ylfAT9DwcCkvXu//Ao3fC8XWLMcba+myO7WKfqO1Ed94JweIllFi29CISgy1y9YyxBVFJ4XhSl0l
rpHHpYb3LBTy11Dzhj6NOxuKEZGh6wXdmWTOrdX37pkR4WanbcrH7ssaGeQ90eFXfVFfLyZVPTvN
h8Pe/4r6RXnJMBwf/CaAvmVNyekmir9fPz1oogt//bqx+eDkorsd2woQtGoirmCZYUmXfnu88lyz
X4RaL9zA+AX6UULHG2liV6v1mrz1GcgX0/Q4/a9uCm9fBNMqC/nzRlF/ZVOV/OwuqAnViiEXWPSH
DlRj412t6d9q0JVVU/ACI1MA9CoyN8UZxCFtEt9np5M9jr7Ly0OMXATJ9c+C2dtyVkZp4EIwQ2lI
nUpwVC2GX7su+SbCfKc6ATiexHFcpAHWwQ3dDNDS9wIfnSa9z+55H2UAhDMtvsKsu4IQPO2PpkZF
Tc0Z3JdLU0LGdOP5LvO1xIqaW5RS8RqPEKvCqN3NjKHNZUKcftLH6DnF8mmbLCqhCYlITuE1JB3A
uA0Ti4pnB7t3VszCZUFhwfhI7UvEJvhClz4Dq+OoPpaVyJKf1dxas1zDjZvZzzJRUY8+fVCTYv+n
GU/BI34VvcgKaoEANdrT0Ja/W+33Nq/zz4pgQhCpG4tBlWinWijlS3+eO/vGFZGAh0Jdfbv4sy1X
DjnXZnUOn23xtQ+ErnMVn6AidR+MJRuoIIULthA3RN+1KFihLbTXL66Fnwb8BCy2aVjz2bYYNUd+
MZl/33u1+Vts8daZaX3QAvY+BV04HqkOx8g1qRQ82Tzoi6PUp4bGY8vBaZ0SEhEAPVKQZM+pceaK
1QxKr/5yNIIS4HlXD5mWQwmFvYl49dyuvff6h4Gzh/FZjQs0g1xWyF2Czw639qA/kWNfEiUhinKT
DZhKDzASJwUTN6OgGJO/8TVrCJGcm5DJsdupqQXu/+JyB1jNM+69aSNwNa/30G9VrmKZLUqu2xuM
MbAI4bPgQrLb0i67cYC6QJehnYRz2NSFeEiBcD026ihigITmwTVU/CAeEwjXdOYI1tN9nP1OBC4j
yVG2LA5+D2HmO4gzwtgc/BfUA4cfcPZclCjRL8TKNNrDgb5GhUlNv6vovyEFxDk8iq4kM+rqurri
z0IoIBjffYTqpWLd7W4YH61Y5ygjndvC76V+DadwQQp2Nt1uI3gY6QZr4aQeZ1FNU4VOFl4FgLcF
Pit2WRie2GWGnfcBRlIl6YzJShWOEBkucudFLAnk+BqbUyPk4NWm5CQC51SFbga2TSuA3ISVcim+
QkBnmNAMnC39XRJriFi4yGsDvmCTm5tKvIW42pdOxWmKKx9ThoGwr1o6y7zsQ0Cjx2cOU9GyXoBL
ADMb+Iek6FeacvI6XGn0otw4+ehQjuzXQsj/C0nj07SpuZLgaZXPQKW6n1hYkVj4IU2AAUTdLOsB
5g29eNMWu+OUMHO9USUfF5bD7Y1vH1Tm+6cdrT2MUObi6dLjAs3dM2xKk7+Ddraaz9OMO/ujwYXj
phx/rK9VTMDLfHHZuu0pJPxw2suLOQ/LDZWEbwwtogY1LFh6nmNMaKya6Znazy/+l4cMRwa0DWBw
2S0wj4mUCyOJl3ufZVkOogRZC5bnSj1ti/bOs3QSrzUfSscEoZ24vEYVwltu+0MVHU+OAJwg33SS
WakZiSsurGyROnVTwZirOdWZ4mPXPZF1b7B7Jx/mkxEy8wDCoxmjBgANos69rr1Uf6IRd2GSuOUL
f3W7qi2prmgJLl/2zGAQKMxKhynHDY71q1Dc1hSACXgXotAn8uuoe32m9v6WGk9kiBMM4L0C/yXL
9FM5QZY5ZhIe2v5mogt43ucvnovVmLCe70W3IWPzgf1KCJaMiILCsWfUlXe4XreEWOerup7GrSXI
Sgn5pKejgLYr46W6IXwhnAG163Ydyqfu6VWh2lhG6RK8pwO1AoEe7R/D+x42N6dsTPEgv536OPn1
389JjyK0FkIICTZAjBW2Ro19JugjL+MYXt2UMnETVG/8+LyjqhdFQIjGP4eWB/LmhdcGaAJ9R1fm
f7/fJMamKhs0KMlujmcSxmV/y64W2he82Mrd9QgbD2Jj72h7deD9pHJGr2IJOPhu/DxDAoPEl2JJ
8KAj62rTMkWEiZJHvwDQzJx+Su6H2YJdpk1kFP0Om7bh+G6U4p90D9zA+pIpqzWlGvltLwsboZh/
5N+ze+Q6vn8dZFWEX+kuX2QjGfV0a/wtPEw0OGjARIhrwlllUySUwp69prD/d0jYdXLUHxV6ql9a
o5t9qhVDQUJ0hh6NM5cC+sLywFuMlJgpD32DmfzBOuFR0aOJ7d0E++tJj4SA3Yw5M5HaF4AF3//1
F2nCMkcboeFSiCtG04A/sLiA5muk9uNhwikkQjC0J76Sz1dNr1DjRFgVzFeoqierRyz693weygVe
xkCxJVjZrOVIj4r8Fqf7wTMoJYRwH9haLFkztCu0ja5zs24kvLAH9nPFybctpC5qMV73QJ8NSmL/
V3F5Fsy8ROvkiBel8U6yCQlIbfLnO4MIpTmhEOlzn7DwJzp//zTcjT+Oi44H1TnBmJL/7RE/7xvI
guGpKWqkCdQ4Evg1TG+l+7aD5hFadhje2hANZ+EFc29Yo4T2yX/XM0Xh+oFavspUB7HXmJUFC4fg
cv8s3EqGT8qfI1PDO5+3hOGGgj3GqsyORkWLs0HUNQwpClUqfi3IUp6CSGjdbUHbAuaj5AebisZ5
2DjEQpNfg4S3l3+iWEHVcouhzT/stVF+RgVu+PKe1iHNaJcnUDtF0uKTtAQP8G/dFBte2CkTXq3a
epsE3D25/ztpm8skjI7yjFZToklZBSVgKiNUlrp/+WISbknfBdFSWC1d+2Cf8Lsf7NIZ3/mN0iHM
IdV5/0obQLosxKSbJlSnWw7N6ZQa06LEgUb6l5XLBGhqukunGICzDtag/QuSOLcSc3mQR9y6U9jA
qPyPeO5uiCZuqWagXghh/9EeJMc9PJF3ZcuYWXsPKunu0W91GpZnf0uMOuCfEpwnYHro719wlxvc
WirXe23OKTT0iPi9FsWz7g9s9n9h3sTs6DUG/FWq4X9D0GOHoO3C/qKPmox9NNEx0KW3Dla9nQ+h
c2HXKnsyvvn1tPkaXkz7KxAB62hvi1aMpFC1yFTES6wmdXRyDUCVsTN1RYhaMFHeI/1/QGlYkPQV
Bg24MQyo0nVmmTJ5DoF15EbRD/tH0K8wBLaCNytVKqPWfPiSgXD3QBGcm1Zo5Gx/cqGRrRWlXOL6
Ozg0mpRV8e1ukKDmfK9LGyhyDBwzl1s1SJXh9TLFQ0ZY/TVAJ37HTE4QlETsGK1ZGWv0eArhXSn7
vqfVrkB6kch8zDVQXhzrho3UdTS4vy9gusKBGgxfWLw/6sw8qj5ctzP6omqnymd6hN55l1i/Xf3Y
TIfkbgfCApY9j3Fy4fM1+xK+FblM2dFgBOVe7Ktp6b9owW52O3EJpDAuGkBFBi7AxMStjLpNnMcp
Co8uLdr0DBGeSO2y2II07vPgUApEa8Br+UMKAeVtNVKCC2g0l3sEJ7BKos5xGuyOnl04V+lQVSFh
XRPxiH5k/YW0QYxdLu7Wnm8WyPlCMnspY9CPPAOPfJ2CaeM+LDydVJS8gojtovJoh3+HT86zwhV0
hew5QkFUB5zLl4oeOyJXJbq89dO6BqWw/5ETf43IWUPjwt6dwp0NWXtSwGM4TyPsCbk8H5ha/fj9
gwxU00IplwGY3QWd/4zi6kM5zvSo1Fgl/9fk6DvMcnXSLLjd6HBjOY4h8bX7xj6CLT3TuW10kqDP
dcj5x+6ue9N7Iek74iTQ9BAGJzELSRo+QOSCt+qiZ4TipWX3uAeUST03x08PkjWhoLZUfza5yf1c
i6fzZfuD++wZlfUxO8lH9F66YzuSQQXuWuOELUr9pC0QoYyon4KqDpYBnXShrgsDZ1gT6N2SxZC6
g3+d9xeGR5Zg3VyuEeNdzmCItr8BcoTlWg6BIl21M9Nw/4hxQNJ1ktM9lJzAlzXqLRkm2wT+t7f6
GLlM99Cp1Wdk7XAtHLtXY+DQq+BXLpWnT95cVmJ8weMYjAZ64K6C5LolEPNNooventBm7Koqb56P
IvOvfaIyX4z5VVYfj0hyIfHwVzcIsOUf1egbX4WOJTyEoItChK8GrZ/iPD37BOUCi70PZMo/dwTG
UFzZM9MIuNhjbdAPIhAkwzfdBr6EJY7lt7vfGmsUG8a3ArgQNSHsjqfo+aPL/U0QJX51QnDVKOft
EywikApDpsCRE+VWWKjUBswLhBZ5vwOfQTCT6/maO0/LGuqdhqTJCZn7ge9T4feE2P+VqkPcSd1d
SGoN+lePr0TZ6JgQ7ZaZgZ0ZgTPxUiQnkDE2yUkskeAlE6P8sKwJ4xWy7W5MKiQt1VXaDczw29b2
/jE68FygJDfULws9In/zjA+BMn8fCzCiH3preRfWrwbvMO/8kE/zzS8jcqyKJfookLGWwF8KWoO1
WBJXu8QdS1L8vXNUGrR+ZyWdgplenPTPkoSb0bgWecQ3JXEYoLIIKia/GUb2aX5Qz7OFWLLDK8O+
GR/L9GQdkcnWnym1BeMiUVUdv12AGlvymH3jO67i22hgeEvwU3g/pCpivQR+T5H56y9cjC3KMM5r
PYIsanDjyJewvJZctQY1Ss4esRzfMfjpSi9fev7VwwlJJHArUbTWMSEgTlAqYYzXK6lvDdIsnCGX
WATGQts79YJbq3K4Di2BXshi1PVH8p4ibS6fxxP+0yQ2Utsr30NOenURNucCCiCzlSle+Pay6Arv
ShNyJE5SmwtX1C6jN3rHLCrBDUyQkpN2T/TM9bE8HIXcuz1vaNuJYJWMTMJe+Ipah/yg5Vj8PHSW
gYWuGGghyymV1ma+KwQXCOTWDVFm61mjwO3p6meibWylnSOEz37km12Oxp/hbJJdGAXAxL89jFDs
kAgqIkT5xqM6PaSwz85z9zBrXOlxjf3lA3iwyugo8plmjmYLBA1kweQ8kZ7SKJGqiX9DwMqtPpVK
krxlMi+B4sZqBpLSvShiJfPo6HWQchDdfAFrLgbP1QQavjx1o2wdAGCstnM5TaOqNNT7MswvqOGx
HaJ9fXb1BiXSnPGc43gzeE2eezhKiE44/Tdorrv750zvxygJKaGV5EmuNx74OtgW14bQlB/5+ipu
B6f5NzP1oweDEhUQjswm3cJfIXAB3O1LuLLZF1l4tfllT3n/fQB0+/PNaC8Z57IbXVEvxeq7Tm/Z
GRYGi1C1PLTSlqQXYUrV03Y14GadyyIi2vaTmM3ES0c7YhI0eCK9A9jmNMl3OsOUaSUt55g+UIsO
UGwRp6YKTcXprC4ZYAjHKaEVW+/i76IWj8kcQwsof4uKUMHzAXm/xuCYFyjLcfAOgFNTXxPg0zZG
Iyapsg4U+wO2bLMjIdiNcpVvciXYLoEDAHGAMFYg7FLPhEkFyJJby1BPEdCIukINuITB0A6VNVpS
LghpdC8YCUL3+RwoW+pBIVYOK4mSBSQrY+KpT58bxjX/Kib9utzmgxQQcyhc5rLIQYqCmz/U2yhw
s2wj1K2a9qsigs09h3xMPOoqwRs2B7Avan+oAruDAUHjGNm3S+8y7wteufwy7HpetYxQr8It+uO1
/R4mvfF2KjjQe+22czXKIeFzeXbF+et+K7nSde+VwIh8uuLrkam3WrsME31o1IRezWietjRfE7Yc
SFy2ntPIeDf8a0Ta2s9FZclYv3yHmrcOEoQYFSvAxwe14ZKwIk6u6HzmbmabUyqDtHo5IENXWgJV
1VhV+Ht0xyW4kvDzxkZZ9imHaG6N8FWfR2SVeSmlIjIxiEqgk4DwEu4x4xC9iw+49YIV03NfrOQz
rL4wHEBOlc6nRvctKdb/wOy/CanNViq52KrcbzYrLTY0O4wvPNQN9WQJStRteDotJT1/JduBVSxI
YkR9RX6xtDEvUW6in/4rZuGvPTapLdEPRFMA5MRDIBWfQykAdYLC9yWJCWOycgoX1fKSkgIJybmD
eDndIMAd2ZXSfpk62JvK6Ue5Py/l7Ou2ZY/lIFwQipzZtc8gXYnGwwUrB0ZDnECLKaK3dIyaw1Hb
GudKCz2MfdxWsadWI5YAArfMz/glCp+fvl0D25fMZz5fT/wj8ZTIcQ8a+ygBP6yq+3i6PB8oj/kX
A4CAwTRUI/SGnLCI/sMsJQyKH8JSRo7LGVasav3Pq80c792fG2ivGEDodzPF2xm108D4Jr0zzhKb
JE5uYBMpnIUZRPRvWMzREdHBdVfZZ00HM3s3mNhOsS6UmZust92uXLIqYgVS7eYwRQTyv8hqOk64
rAnKFydNKsp3w5kIG16eI499CrRLkaGDqrcw1Bb+wLSwiMenl/q3HNMDHcmWv5ma4DkNckJhosjV
CtaJADu5+Z/JSQjyCQi+dAmRBvOAuL/r8N4DtHfpa+Lv7VzWzoFdJaPqJjRAbNu8to3RrFtmS+CY
uDIt4xJDFXviZNYMPKd9oqG4CDIN7EphqvLtb5uWTR1XZ7bNUK5iQMqcwR6AjeBFo9gQWiP11++Q
ioO4l2NBQ2m8R47Tk+v5a2g6nNEBMB4/iI69TwpFFs6mKiGNebx82HpJuW3Zl23WRcgcUXKHqJLf
5CGlcllC1IZ/+N82vdheJjwyFmrDsAWCHm+amCNvCnZJJhNrpGP3Zr52Q++opFlZYGG8gou4KfZx
mW+aFEcEry+6p+mV+RPIjdILvFalFh0C5fxNPZCpnbFB+OKPrxzzU+l2ydhXI7IuV+Uu6IfhpFSA
naLkGlsHWAc010ZwyhMVjRE4p/DcbRJc95M7qlNWWXkcjq5vU2397v629ILjhUStfelLRpj+SWNo
aLYMp1VBWXI8olOZ2FkMP3kPX0HU8LqkAIaBDVy1UDunvJPtD86n58zt3lFjHTEddLbZLFw07eue
94M7krm1UZvjQwHXvAteCbWghj1zTHuDChJmsa63n2vUOIF94qKOfrVsKviWsTB9kqqdF3RZ8mkI
3ODHYUW0tLLLXEQpX/OhMLbm9lDsLzsrsCCSkW1DZQvbKXGmNkbKg2K7kPej1Nx2Nh7roJXJPYah
JyQnX+2i6xfQlwC+62pB9JJDrV+6sZMJz1Y9Ua+1f4hiRv4vZeqTQazzoUEL5TFVVWgxYZ1jYvTH
Ypt9CCPw1J8M7WVsw684PDoZY8qx9dbvFaWmclCJiwbGtokTUu2QA8AguxJjps2PDyOhabhitYpf
q153zmRWQJvoUsrkDifZxa5nSaxeBp0HsDphWApc0kUpYq4yyULXoWg+F53sQ3VixCXP7r44Dm8L
OkdbXduEbfuayIlhbjM5ivsRcKvFHtQ1szvpqHPfumlJw4uy2az6sbsACT9Ur5OCXDpBJ5F9AkAc
5KHLcsJ23BKVrnBL0yf8eSuFBgMRUzhkpx8FkYQpUK+YpPnBWF/dBeKc7/t5TQBKlpBWRmEza0y1
uLOOdXZ4CHoUFkglKjYSGdLy2AMPTDHqFhmCk0YV76dUlc792K0u2WZURzgzsA00ppJxDv4FqwH5
xEzgqGIpGIRNjmFG2XCFjDCWjH6GUHTcLQXamk3EGsGUxI8qADXM2aSP1Aq/R8oQDb3pfpaXTAxf
XaFstAkmYvtiDPGxLCEOH/xioD4OtPsYn/VsUiAdXoAAG24q3JkKIh4Auoad3SVkRzOVFvum61e1
I62xf595DPW1fdRVIQodZeO0kOT08xa8PWaZ9+3JE3WCrPPkawSfDPJGiHSS9lXyWtQjlGJw/Ulk
u12DmVsmr34FMFOuTVMQCQAf03t7lFC3BFHS0P5jgR2bEH5EYmqJxkr66C6lIae0rjb+KcPyiZbo
JqV4l+fMEnhFEb2hJg9Hfek4yB5rMUGA3xO2HHq1HAGWY+c/oNRtD9S7VsImy1zFGO5wjNfOCKVE
UlcvT1badRv+gZNfj23A0jjeLRXH2tHrTIoxEj8eb17yZhWU8E+5IBWkWtvAfqaDloHwwyMDWlyH
Dad22Y1MHnlGsjyZj/PyI53CPmEu+lR8yUKO+yhVr/lcowS7iccB2IdCcpuWRYwUVUuYi7nE4HHO
/mRUhLmtXP5tuIrscwRLcR6N16XfyNfNGPgRT6jtSMGKIO7lz46RKaP6RXxhDB/9Y0FlaiUAdfmJ
duCBWHwoBfj2MKz6rxhYtbK0yPxNx9cTIM2Q17jU7VCf0Un5c76YOeHsq+epd3iMuZ3cBgssw/J2
ZeclUy5OONptS8lvdPVvt61GGrWBB46HpvwO1iXbE/2h8kfEDJ1HhxCGYnkpKN+6tvGv0Qc3DS8R
qcjKS7KWYT92wfsk9GZwMYpMqraxz28eeamJCsqL6hE7i72nxlhlFJExQAsOONdzs8ZZLmXK/M7z
RFxmizsgXtzBFK/WG6Z7p6BadhX8y3Ypc0JKWuBAhdng6JVuhK8tdBt2MD/G+Td5JOZupBmKSCv6
e5GiI3fkBalwbc8eUrA16wfngFqp9IDyNHPVENQ9zqqUPXMTQU8UdgCsTdWlAwSlpYMtVI/0VvDo
rWBP31lJi2xG7k7s3KHFdQbt/22dblHvgZx6KWW/iC7vYhKPF5BeViQEPgOG6MVUJI35tPMnUOm1
fy8K5axNeoklkjPDdTJGAsncjMGohz2K8SkNF+uGyJL0rJ/lzUDAlMaT6Bdw6ShWJ0GIkH0qDduk
jmpQURW1MYthsF+LHOHpijIqNCNV9FtZxYsHbORsPFtqeNYWxUXsknHWQ6b3pZ1o9fktkW54z18f
HQTvgj7NA2V5PmPIXDS+mUL9r/43eM/vAwsAr0OWBi/gzNy1Bs+wHGHJzZh9LD9UdsExwfXo2n/6
gnLPynR26moCv5EqaQoPUlw6dSmfiEY3CDhZjl69ZPrTPFyk1uAcGyNnCE/Y2K4/Ps4gb0hs6CPY
IXq1lIq1EfodX4kUXrGNnpvdjpsuJVlWUpGn+vS/ybPI+DwvO1ZuokxUbRGgXWQeHBwx8WoG7LQD
xDcmttwcPisUc+/54y3CeiAGU1XntgZBBewkIDLz1OvRyHui7KtsfXIXvCFm4TH3QII7NcxlcZsu
mQSk1K9vzRJkPIg7oQ4x6KpDkMpmrzYi4+VgAw9NKZSZnJ0N/rxN55A5414MQab5klk8+Jp5KpaV
LGB6pKj8dBm40Aqcx2l+IBgdIVPZpxchTBxjbEkuHRkAxIRhlEm8unPganoiXOPIo18nDm/2Rbs3
i0ksJgZ4J8ezXBaTF36rL+xMVPfW5+uWGG2rNeXRMYB2T5EK1bPzb+2UTNrqk9LfhE1NV84YwJ77
W56hRXdwJYtKDnSppS6yxExXrjllleb+E45DX9e2WL754sgpsgRtfaKTh4WgdRzuFJ/Wo4m0Bs7v
j0yFAx/TGV8mMq4C5NCUekHHoj9L0V+nzkOQBHhD8BGR/YWUZpm9COKRMiz/tzSeUbUYKaOj0i8P
AmMMD4nO8bmW3wD7mkAvb27MPhiRjYuZ1Zd2Fmpq29+xTIsEIICB/fVmc2J2SKJGm0WvTeeQzKIu
Fiws/lBSU3FS2g9RJasPT7CqgGSkiyNeRLLtIWH5/odeBydoKpmffYMB+Mum9p0i1No4gu+RWuES
m8CwzqXhF/RFy/zR3UEnMdV50skBecP6tP8XpUL0kukLVSRbso53YWyxBXzpofXl0PyuKq7EMJfr
YLzzGKczcOmiJXO/G2jMlLinAgVbwm0jaq2Z8hDQ3vEhakq/a2cV0rTM+adSYlLIvSsKjGhaV8ZB
U+n4lypJTb+7pAOg4fK4WcjfrE/Fy2vRnSO78j4hUA7tQcitcqwhveijUZ7fIDHEPyWMOVwNueYT
Ck0IkpUFc5Y+vY+8gKpxfVlobadxinsNSkov5sRQk9gwkYXuBIv1+GD1szfh8yRUR4ADMnecHISj
/lKe8BtorxPm99lHKCXgz3AmHn+K7j2hGqYIUpbbz0KrRQhsX5X8Ce3jmwEp2EJR8ihypvn2rW1f
3nLWaN47l9Y08YmDnMy6hV8UwIewKL0XER8+hp1gIQQfMzL4p1/HTYpeLgZNTJ8LCaNxloch/x6I
WMLgvMLYGYFGsBBLZ+/K5A03Yb07SY0CEpFk5SeQHw1BBWuOzFMEGLlD1Lz5uCUK6ZXiMOuam0Vi
6Q6LlLMfMoaGm61SXgWPZhi8Eb7RcT4XYMxAFylXguuQ8C52vRS0U4ayP0lF58tEumbfvdk6Av1t
cu5n9IP128hTJmtJtQ5+ZK3oMjxxjm/NHrW2ugdnYQ/denc7vG30sDDdJe78voBk/+yYEGcn6Mcu
Xu+h+e4XtZtyAaI8GBRNtzKqdqTWZ4oSiMn85YQZ0A85ODQaK2tHke1KUAqF3Q6g+A5wIlmyTN5v
ReN2xiGLofX1YJJq8vqg10au3J1jn+fXc5REVxRGRaBQRd9Ax5iA4E1oxOOuwEJVIDYY3SzkVuvR
JM1uN/c8j2dYCNETMKaHFui6lbjIL9Dw4o+7ElkJ4hKytEiI0OfeGn4Cu999zNHxYrzyiJ2KBIOb
Xd4nbXhpo0C1RHQHGAI+sIcv1R7Kjtd7GEa92yBqpJbn9uvMhoLGzEoI1se/nBCuSY+VmM/Ht2no
sDl7v9QLNUfGoZRSTDMwDQVWSIx9j8C+ZZdYemAvLOOZPAINfvQQpFl80xhpGKJuyZwWfUbPVIf0
8ngC+O0/YM61gfBrXgbEq6RGwKjoNOoAlDAYKsv2gV3HsHMbIZ8pme4H9466JiNw4mCMoEQvPtL6
zwKyQwki6SPT6QEwi3LTkp2wVNmmdhd5LT2MwJy0dbNo5PmSRjdRPzrKcUPf43p8sh2uCYKeTBPO
Qnx5Lj3uHqTEPoaTb86fYWFV0nISiVRkS45C/rMrujB+xRstTtDclWcdFP2RYrl6niTH7twqnGaq
cyFmssnwXoJMXxFlUvXJpiZAwjV9VxKxfn9285U/oThqGZim1CmlFrZl1CH9rNVVmG4HUhMGZKCc
f/9WlhKaQOIWdTaHBFWwyu+cHFt2vYnue3l42o1gkd3rgIHt9cFv3TmE/oJEqeVoFrRbzy0UiI9v
R8LgbDdiEMOSoU+f6h+G0vWI/rqDAXG5yPZitskSurjlJGaAcndo0zxOpzko/isjeAyds9rhdfl+
zCqma879bMNQJQ7bxbD0SZHe4UCDsroryPuiBnDL3KTVxTVmCd+bUkIscbJ6RZyHja/whhbgpLYO
5d2HmcPr7nsbOF0sIVD1UjDSQ/qks8na8jSl6wmcTGp27dpHSTN1RcpddHZ1ACK2haZ1MFU6uSIx
2bTp3ghOCfZIOr7P9IdFy7Bq9hystCXiw2sfNHI9f2Cdl0kL3GYR47TuCzUUdseMKssOZixiG8cF
cQzSGR6mV8cvJfAERqZH3+o+3XsGDh7alazFiCo/FMyXbcz7sHh8ZfA4mE5FqMRqRpzlhngMn1lo
q5RHQsZb78jNbu0H5Eso7KUFKf+KBylcoEKiqnLG4TaksRG20IGg4WZMA+KV2u1RJ/fs7npBsnr7
IwsYc9Kpjga5BVdkzUvD7raLGAj6+GlSNf+GAYTHhjtFIFCx/k2pPmhDDvRX/o16tWuXHTxbtZb+
4Lu/pTJiOGwbWppF6Mo2tVXpjYOkiHHtxj8K0gksutd2ntCpg2Ac4wMTGC6ElYKbKBWU4YGFHA7Z
x8pN7J3kCBG2gFP+m1WfphLOUiSKwa2aLglgImDLLrD3GrVVusm7zm8cVLCeh7Ct8fpzyrakCiwU
Sk9ZFD697XSnlVAbXprId8SIHRLIDNyDjIg4WDPxJII+PYnzUmz0PK11biLv19hZJqrjg0E2dHRH
KxFcT26xc9LHCCJeLvNLC7USonWa40y6M7uDw9Ph42epLE/cXpgdGtbtBy/zGFGG/uhfZGcZ4wae
tadWCspfhcStn+eKNAyNfRWbchVI/iFy96+obmIZ/bJV0/1XPuje0uLXzHkwFuohO6LKesyy3eS6
x4UEO7tGR5Lv6AGztdaWFSIUCNXL7ccAi1SZnrSHda4DGgVYGyOSkdbOnmgHaadr06R2Y1L5kv8B
N0wacBU1jofSVPg5371Og6Gkg7mXWkA/Bcwx1Lrs2bdondVvhw7NtiGZqsaAXNhV8wcbOZsj9l56
fAausrfjb9VPDTfIEKSa6qGT7gxhh1WYu221BQeRrqoDjbxE5bfwZBrIEjIQN9BcVbIfufhUz0Sz
9bN6DczwkZKPD5IDN7bgBQQQu8Tw6E6h+wEeZAVHH6j00iZRHuF0uj2k6+4fIG3j2zMvUSHqV/TA
nGiIbMdgbjbng5WSv77VnM4b+tp3KP5x7QtT/YqgQrXKLbefNlct506g14CicXDG7yj3yFWz50IZ
1gY7SvA+QoSSAfir6ooV/THRvihWeUK+ub4i/Dr1sCd/+kDxqv2mxs1Cd1amOR/atRlJzMEK9b9y
C9ndf+KokdWVesH4bA1dkSb3HmPLtabKsouyQC8bkWDerN4Jdw87NNB/Ikh/tqOdccIOEFpHpBtG
fY9t9D6pKytsvszOPYgW9L8C3/oN6oinOB9NOE7BhBWjNVtTu5l/acHJfSe+iNY6vTEjjPd/5P7M
b9yYkxmf1OYYJYxf5FZww6XPR/47lPA0BtHni089GPLmfurZlFQ67d3OhXglSz3X+asag7e5x6PC
I5Bl1OONcxaJAj1nHdl9Gf0B+YkYkHD7LgikpPklgG49gwwsPKcgAoMLtfAFEHb45DIikjpa1rwp
f0qhmY661Ic7AW7SpQdGxfn8Bn+ub2N/5+UdFA1Ddjy16fUukHyKsHZEh9mttwO/N4EtmFuZ4aMY
aNzOYnMjxxgXHOUOf0dCuUKHggFgONNyisTJ3yuaGC3PosrimbzRxvGrWNtNlBhPmmkuyxi475Jy
TFm14h6H4O+tAH9Ppl7/qMkDjkyW+Rn4HvQgWUkKwIcq/pwxbwRH25AX0TJ+E9K0gbRcQkpM5zJV
06d9RFsTtxpNQ0Oq30rx4e9B1hNsOVapAoIKOmcpUGE3+9HSLnotA5XP9UumTKFW/9in7ql0G80O
iQUrNEjsbCiq1x4XGTIucciI0g++Qf4tly0dCfN/d99CKEAg5i5s3Wwdey0+UunG8VMxMJZTdpwf
UmXReuCf77TT5Qv0vWYxRduDxPm61jMpH1W+kEZvYv99ZEQ4hq9VWDQXdZsCufsBP/UjPgmHUQ3a
3XLhCKUQPyzXp5bED3pHL+jEEcm+3wtqr5bcEWH8e4r01xoJRxSZSJfpCS+nHKUbwn+Pe51QUlGh
j1eQmWNi871FKqQp2guLfGQvnBCkJn3HQ9GBPhaMjavjWRBSkI8oOLmwzuhaTEUUnmkiY1RtQ8b8
CIhBfMXuwHyqCQbWOHsGqKOF2404mKJaI/whPwdQrujYcBbfZbaC81Or+eorqRMKv9OYASt0W+lq
xujXwe4oTV4nNNjGJw0gxe7uGEs2KmP3X9nqiEH+MFzhL1xoeErlWSfGOJmguLvfoF/yDyvHNC8t
wcgvSypN6J6JflR/QZXXQ02CPPs02iXRdHHH+fn1YUn2PUEe+I+FnA7wflia2JB1VSsZdpWZysb+
K9yutN/Or8osjCGOQRYncZmBgmptTtNmRq0UuQYlW+y0yuZAUjycPHpEMJ9kXko2YJL01eajLr6H
+FcRaSI0kx4zWkglC4G2OdnSMsgwv3IOKHZjSYjKqMVRGQZuHmbyBnjvmu3+cUyuWa1Kp0mErjdn
E1I5AcKy61Mx3t7NtNktJQ+tKakYq/O6TMUrZdIr8ltUVn+64CZ2kiiy896DOQPx7G5X6cArzB/9
/XjAmGzIHtahju1u3iVSWpowiYS1E+j+njs+zwvIVJ9QqYAFrHZiWMTSFoukIu3Y9T8AMitG8Jaz
rhj0sa3TFFatIrun/vCS/gFEy6ENQx0VfdOkmlgKhQfGDcTaMzg6pKMRKmI+1rausQzsGKgjd6uI
LEpYpGWUIg1dNr1pHRMfeWjFSr2xF44O8HBxJlcG4lfCMGIGLlI9TAALz9IUdAuOSHOpaomQjDHI
RDzEFhyAh67O+TT6B1pntU3dwr+olPQPrpH28lKYnXcv4g6xkKLvUDb+4OugjMqC7Lb0z2poFWW8
jsKvDFdEvL2nlLEUc8DsluI4KHWnnnKlx3t6Yuv6o25z6xPVboxi7WK4HCynmp1Ff8wY+U1tXVZc
KqzsHOp8R1K9OcNCzJa24V9sauS20ZTCw7oGVNAJ1eCOVkdKz+ohsHqbxAMWYPL5jusGq7XrkkLx
dFJqOfRYPByZMF00/uAGlj+fXwAGjbLrMKg+NEjAEDSugrauzXcSheMWvM4gwkuxLsRdLw8nIbSJ
hm/UA9SAItd2mxqEyx6wWId4lYOW+EdVr9DES5tWDsn7sQ+anXx+S5GTkGnob+a/4tITpvDutpDA
g14qxNniQolbROGjiQGRHizgcvd00mDu9cNLlTJ410gTaFGLrKQmS2ErSJKgQ0I2RbH16aiVWpwO
ELzgsnz2IbqGZna+k8gElWEtb/nSY9lzATjBMGp0G4FAMFpM0fScBOhDefNBxCOIblDqmNoV3att
uksA7zRvn9UEllx4ZuvpKyOMjwX8tEz7i4JgfrGpBkdhmcmPEB0eXokHox1vrwqGYMqVwZ4gfxon
h7K+1kVXDcc5drx62NiW1MijhzK0riotlNzhUmnpocgvQS8Y2mFmNVVnfPd85xe4BruNiiGedj2S
d3csVMHZI6LQv32L305bCLBEtLaR6yIKwNbU32sgOyRXWi9c1oUb/80MOQYc+z001WS9qO3HD4C+
8+6SkHOTKRyK/hlmwFU+PW/P8pjeaNiHK4td688xS3F2xT5dDVviVrEAQ+BP7LiI0eCeKNhHhgB2
7TvHin+VM9OTv2nwV9wTaHzwx6k9L9qM4QLeW1OI9umLdLZFJbzZZe6uQn9mdMHIpIZvGMElJu/S
X6mmWaR/W7qtEN6YJpejol0qDvcwgupVGRi9p2hcuDxSP432SVn2j1bk8YVpkWf8BTJz2InI2fO4
bVOMmNByg++BtNENmjgK/5krYaHPzmYtJlFxbWSf/UgXE0+tFx6MHgeH9J25vttI/l9SyRd50Fd/
ACSg3LVM89ona9gN/XvQJfj1Ji940PDzKd5AH/0Qiw53/TTPLJ+8UpNuYQnLUj8ZvUqnXv1PQ3Hi
7ebki0/vQYxg+1SxY5iFIFhJDjODRuSTurUSn1gqSP6fF72NNZLbVaR3gMAjavNZ3JE4Xsp58U2J
G7IrTzjk8SoFPsBKLX2U+V+5k/3LBNXpawHekq9hHKOZDtZ5wPB3qaN1QK239nYM0b56vgnzUG33
uO2/5PajEAGMUebVGr1f3mRvJRwQKKlBsVDSDP523MaoLwy7hnYapVipYG74II/8kpQLp4o4OwNf
yjGYBGLFyAfMqFrV4e+AzoE8lsFSV8w4nKhINBCkmERsbsBFDtuJH1XIlJ75cNFJLSAM9NgBT9U7
q7YhGflTVqW47dqfh3aAIr6vWbB3h1ZOX2id1niAHUOuFDcovt6v1h4TGPoPZvuRM43d7AhVRjB5
428JtsCmA9sJOvN92806gN+TCuw+JZWMR9oBo9vntNVExesNI5eSj7YnRxYy00D9rk3pJzSh74DS
Gorx3W3gRjE/OCx2fJp0Wrnndx9UIN/8cqHt4skVm5iKIQ2eeruvITSdFDYiRpHyB2iUwlktO6Le
s5hPtfj6zdgL8jDlrA5aJJvA+hOLODK8On+L66puQmQTzhrWHo67rKfKJNFakjXOB+TS+FuROmlA
24p60m77xQ7p7l14FQCkYmSEF76QhC5LJDM+tg0wsbd1IrKsAznd9+tax05mr0to2XR5kYkpoe9/
Kxvy1T0ExMTg0dFTfNwdKHcsWZ/HXeX3QEpHBseu8wMWYsdO97oMwBG62GbClJMSvnX2+CWDLLeh
ytpZXsxfXO8x8fyZbtmznKoNC3LGPIGYlfx8FqsB8u1LYJXF5Gu+VWXcEVanVq+jTPzeUYtKch+c
7atNTSWEpPweNEBAPs3gxvgM3QQ/AxNIj6/f/2G2qvekDINAVV8UbtWSHl2SXSEiOhQ1xTX/Vv/m
ZVUwKDXuMUgELc5s4FXh1qO6Ed9iCXN08FOL+f1ZMaZBWyZTHrtD+KH0mnUvU1KMu2mBoAyAMwpP
Kt9ulnbL5iM/sdVU89nantt2XTOQE4tuxmafrDpoWjKzb1tljMzuTxD5FWGz+2kBghCRAu1sSPJS
MK01XRF/9WBx4Jrzyi+/9guXETth5CkLAHKOM9IoZzS91m7Ye8tsoH1aEudiy2RKhPPreO0viMqC
5qNc3QRJsDUCk4rKTxlIuVRAj/ZQBniyPct7K+Qv8nDvVHDBUOIYs7TCer07efyanDNmxskowB9x
fAG/dYOgt0UcEigLd8D4eYAa660Q49Q6eur7K99xU/TgxAR49H3Bmbwl9JYBNUMDyFgu7ldIXBMb
T7pikOvzWTv+Kust5k28qy674O66NF+/gghEujXZRZCfWJzYU3TK2EIDFGvODIKmtCALSej/ex8e
0IiCZOkxghJT7pwHYZqOf2W0KaznhYR7M/JHJeQENfG3mDioShZ9HJX58qXxDcAaPH9v+3TdU3FX
mVyHuL+XSRp26R3SzJbe0D06TeDvJ1TToQs3RvnT0txvdRC/q1xuOOzHNOQG7Kh+VX62IQA9Mxjy
5fHoUj4eYlq7e8Cti8rgC4liWBW+nhMxe4Wf05qQSl4w3inSBfMYBMTxVrBSHh8XmQFGoBK5yQEy
QbD0QF9/d6zTpHYl4Q7aD3PCChd/UQygDNRbpApwQejI/J2THhXhVls2JIojvNhYgPKCFuNEbla2
pjN/q9BA7VgLI10L9vqZYZQumlNSYkU6yMOdTKzxK0/8Z+e+ZU+OWdj7CdU0Ww3na/p59zazN4fR
NV1OuGFU6pCvZO1c6VXi468yw84kdmw34xn2kRbqoWlp3iy2kZkV18PyXDygDrQEM8MPObiwi54Y
sLFtAi6vSwD9S+Jq4fPoDHeXoMX0Oc5PQ2yBHvq7DpJcgXBoGkllViU/qDuAytP9qqZgVLjoS68Y
muSyBApKlt0R8hcCMyz+GDBa/HXeA+PsMqxO89pihDi3WJYqhHfZZz4627Ky9j/y7rwfN6G9CHi8
fI9VpJIAyCCFGQia9LrJtdcnMnl5DNGviPz4xhqtgRYF6AaY265eBgLknTEPbXSFO8Cp+xBFO2zq
AYzissJXHR+Dtpj5X/ZA+zr+ICIk+FRuG32Uy3SmesjbH83FdBVnXWdrvqDI2/T3Cr/VLWZq9RD4
u1M+iaenqQbb+qqBJ35JjfbtEOhclkPL1hMRy43fub26CN+PjCYiHjeIEqW3SOig4ZRM6aAmmlgy
9bt3uzzWq1HB9a4Rr5Q84/KOitmhZKlaXAwXuHfgl7XRvbkAp6bIq61SypKYFjYCWskQvyYHpTKj
ec9fR8I3GCE02YPn/G/Q3Rwg5UrcnBTIRSRc+3BC+YSzDL399CVnWoOFY2coeNTiFEURJ5vReHdw
Nu+E9rda9SHn0MMNYtwaJwLxRcOadoEOEXY8PEbh9YlvfQCsfZtaPU0qtlyemlwLklDI0s0ErVxS
JbckvS3wpwF4c0Fpl/t4MJLjzoXMtCyArnvd339k9KCCp+E6B9cQOpRG5JUwan3JApN0wLzsweyo
f9hhWJoq5Nn6mLRNiRPFEyG4gzAoGfd9z1I8mY9pIgu87l9hjBeAgBLEM3BSVUbEE98cvx9cVG2i
bnA6Ha5FwXRGUXwOX88aNDyzVzbJDSC/FCuatpjlWnn8FbRONlNtCxsvXTuXRUULv1Ay0q8zjRSU
3tFAe9vJMFNC0Z7OMj9fXP7/wp0rUeBP+K4GzVc1utgRCMwoxAIzJxRTkmCaOzFqYuZGGuo9TOHo
Oyi4mbt8SdZ/6X8Tblv8dG82p926iTCjqjoK2+gekIMUU/oLNUw6Vb61YxI+y4eEwMDoeqV7y6vj
OJU3+Z3idBM06vu5hbaXyt9912Au8NkLD2i+KpSlcQmf9tHOHIiJgPmEWZBPCi13qTT9GV0D17Sm
/UbhqDNlfiKVv7E+4HPOYwg3JXopzTaFkHDNkt7cHRvzT34QsZNPasQaAltVyJY9vmRIkqdFtSfQ
lln9u4Z+ARPPPlDwMiTb/+2rc1dvyJ2DpAk1xM0o9gVGLrjNKikZ1AzE+7kg7lUaWCHH9xbkQ02C
1ud6dXHOl0F/lxwtsCdKyQSRrELVIoFG/pae4kAv30N+82Qlc/2UuzE6YqubxgDtVaKKq9nATvXG
xR+JHd/jcjwrNyXueS+C1dbeOjhdxYzbNZJgPBvV/jbmPF6Gc8XmiUDzdVIMPPbxnmx153xfWHc8
Oj1A+yZqLEXcZxdSqAMxQJ5bzUyuRAKx7bsVzGt6azsQodYpZMoDVtH1XRJAVjojArjik8j8aJhi
b3oEFtEsD45b7uo8iyMJHHpQ3Eo6dB7TJmDYhmHnVvHlYEfHqFZw0HYVEzjzh6TPfWkmSNaScU0u
BHEvf3MtK9i/zvqTqQSuXeaBADN/hRPe0yhEEn4c1w8LW+p7L1eIVY0VlGvxJsilgsbUT6U8zrzQ
XhyzeyiHYQOgtooZhK3A1NRb5k+xKZi7XWMf/wZhWaJ5+q1wAM0fPUnp2mtjGj+TKoT9WQVKkiHE
aBjlXi9+r1knQprrfG74q1zjbMvN2imkZsC16e/qIiuRqTZA/PQI537xORF3mvfz6rlEVyk9S40n
5qeeFnbmcvXC2R/j6dNsqaxoZyPLKk2UrKPCYml+Wtabk1aDcH1neurNU6DaJyJrskEQhzB7uQ2Q
oWFhR/IeriWqTLK7+tftAxDJi30S1WkYRCuafMFYDAXxfdpqQw+Qqi3O9VqprFdWjhCfwBavxmHV
yk+Hqi1ZeFjCUwOO9tbECLzpz/z/ogK2BLLxjtpzEuv6ayIg5XnrF9Tw6Io3WZI4C4cRHyNsz7Qn
J/6M+dT8Zwev4r30cejgw/sqOl8PQYow6DFq4cCROtxVnnpAS2JDHJQcR5PnTtu9KgRKE3jv6H8L
fFTbna8Pud7Rqablco+0WN6oC9CG90AknSmwidUSAdonRiHuOMFmJ3E1dWGnwvQd76NqxlAOk1Lt
jVaPtO4bskPjI6wERHjiFKVJqcpKQw2cNdoQ0/4C4oMwuH6VCFricCjbbgT5CDWEX4Gh/hhG5bHA
ttwE9ooTHo1lTGMOhdtMK9cK1H2HiZFSj/ApHe4se/DfX/3BKcwLBvHu0rhhoRBLqz2lKpsCkFED
zEVJexKGBVLjVYIte57mA8uYG8pd0l1U8W/eKP3k/eobAYDqdMEIuV5ou0mwGlWfgjrJ8NlnsRZ3
atUyQSYKHr5B2l9TlKiaC0qPKNGEPMOmfqy0OnyvbXHQTeQGkjegKSesqDOcasQHq0qrsWn9GZWD
GEMMVcNl+Zwy2ZENOFI/+USFgb5kjGxpEDfmolRnK2U/puLWqPcYlWItwJXAhnzJchCiGJKsSY3Z
d5uHMwyC70EDDn3JnsntCsFLPp1eOxe4Xl7O9nAgleH2KYcjdXgASwUt0gISG30OApOWBC0LQYer
3bwyipl8vXexVT9pdonpm8gegKk4k4/6FabInoPT+S71w1V1ol4MlJ5y9tG0rW6kLviX6nISgHSk
/65E7xuzji2lVfqcj8oDEPtKB5bmApLn8804ymstM+4ksS3qR5Xx2XYvTkNxOADkTBLX0cW4VvmI
Y5FyI6L5KYmWE/AKe7gpq8HmXGt20c01vajSPX2vp9NzNtM7nMgcwI5/aAYg6rSGQupe0Phn5W0D
PL27DNle472DWfR2veS0x/mTViCJaGOGRTq65EcwXnqCePykPnpJKOlI/Bie4eRRMt768ZG+ai3P
miwFWrzOFZxLzJhqPhtK3waO/npgCZ47EFSHqau6jsGPRVixz7NKXvYhD0Of5JZ6hlEtGvAo3PLi
aAh0gRXbAoDKKmU9Ldc9RFjtS7E+nbdTBm12NXhIzP2Hs6uxK0MLtR96VJD11f4Cxvs7W8pFb4Vu
rW+CBbfCn/WQ7gSmzIO5/UcjYkpYr9DwiVpDRNxm5C7R0DFcLh5nD395Yn2MYAsK8d8D8kaKbs1c
4Vf/9nopsvLNt0ZqFuv94vSI5aRzi0SlVzbkU0f+Ei0beCqdX9S1QOEMmVAHedbQ+lxu8O1hkiEk
JDkP+VUkumi4GTHjbXLTbox+Hb5m13tWK0jdZSjwTXTtB9Z6PAWlnYEvDzENqHVt7yQMU4ZOy56A
FoyPblrWuY3aLMR97Rna8Rwq/r5rqJT3F42lfFjeiGNT6ajNMaYieY00sU1j4NsGTP42cjIPnG/z
uVUwXnBQmPAZOFa8ZoEJQZ8B59gDiRMv9Hl+aIK1LSlxtuEIoCKGylUGFeCZljXdo8goDWX4WOhn
JqM0ri/8WVzScGmjV/OiMS4C3ekChcxVFeP50NIcXoaiITl/efAiwPhDEuT97uBuubSEtwi1utSS
IvMMXtTrGAhaGbC7SUqbZv/biM23omZHZUqQIgLoPSeqh08HweQugD7GgNPQJSeEKAgWbYaABsbX
sIFKkM1SXlsBfwz6NmZZUy9lgHNbdrIj//XMPi+Z8imxn//OmXNVUjuY7qoiIGxNG2ERfdmjVnab
124V6rvRWPBhm2FPr/LXbQ0Rkn2py4fSDapdUIxzY6oxZ65Wc5t6oalS69kyh/0KaUkJXN6U/mZf
1r3vshvAsHzVd3Bmxhkmev/lIcMa7EZiljaDPUmloiDvtYkhvCE/gCdFEPk+e5Z7tn0gv0aIf/hz
5qNSF87VDqY7SxUBwLxTFySNNMP7QTuUR7Shu3+K9Drvlb+ljypXke2hiwH76k3KwMFPD+XySNmY
ElKayhSz3JBbcKx8aLk4/n6nvpnY75egz/pklMh1pYyLrRbz6mlkGtW6xza1aC9TpEmkpFWd/SbN
hxEUx3JFIFXfvxGsq/7uxkxaeUyqI7oSdSyu48zfUWD7j8LdeC8UVNI2y1FrSoNOqp9UaWR4oGz0
8j1WnLJZxUoJ4hqcxnNw12vYoQkx99J8UDwBvOOBWUOhcFaA/BfdVIno9rOM9iQvdBnZ8kOf9aBP
MWzrZVyk5oDbgu9G3YIcUeB6cZutcgLCxoLNyhSdrmhJ++vyVoHpJpNS5yuVF6EB7jBUWhDxz1uA
uFHswbDoQSeQw8mRIzZs04aLIKYFO+QjrJ+UFuSNsAVlW8P89BEQZyfof3iehk1skx7QBcAMCt16
b22y+QsnKd3towO/3grOpM+uc5XEq2RWnmkobu45fSll6rqPihNBz9XNj55voEJADjO1fDhlc/pP
9d3+yfdRm+/MTLxCuZi80gCZW5COoXhHGYL7i2A2RhuKv0f8fNm2EpIfIZd0v7TQ344jNqnX18Cc
KLBeyY+Mmdj2U9QsiwHLc7NHSbP3KvHT6q4RmPj++kXH4Bgj8wijFkKqE8ylt8UqaFBxZJg0LMOq
9rL0OLzVhPc07uvrirCzE3RxAbzgBPMwYLn+qEVPtsw+vNF9hq4KoxstTjBIO6HsWGS2yfohV9fP
bcCJJ8ZvWg9jmsczqHIc2UjvaUTwI9/2uZXCuXS1PqljEguLUg0ypQ2cr446EpRk9cXxCTYxugYl
K842EtQu+q607Nbh2jWDWt1KjlbYlBKPqUhONOLDbvZeRTkeCrMDWq9mOx3J88vnDCFtwtBNMlCb
LT1MQwWSpoecNRoYm7gw77sP5loQDl/AltE9tY99CzHwWQ+FwqfQFmPd8ITGSt9wHlcflyiUk9rH
n0KnICmXKcOWZT5bwXA8gJHVI79hdXDkXc2zpGZGJ6uzw/SdzCXbJ7U1tMItehCjdCoWMZwx8OsQ
gPZHD1YgUZcD0OlSeB/rfqb7+cqk3QOEf01ADpBl31MGCGs2vqCsrPOTpI5ML4s96hlTTBc0bjYd
2h9TtQcoxXrQL78saL47XFhpk11UBMVeHiYJ+vIxvyHDw4KYqjxbM1KNGAtdmCvcbjwrb7lzB4PY
CBx4Cffb/9LW6gF0v0pGOeUZX/gdgvWp68j8AqaXFIsLulAJLCSP89uRm0of7MZ2yiHyts1HOoFl
PM1Rgjlty8gdN2MO6rJH41Pu6yHm988iiDkpstALkRKp2u+xmWYEfGnxwRTk1lXq71R+IUND/48y
9qlPwZma032koY+VV6pTdfXfZ5OZ+1vow7EAHGZqEfHole4idKP/Gh3YRPoc+CW78W5rXCiej/Vq
rgr2cj3EsU60YgTp+ErUjIP3E/BaO5eNpmBZn/fbwwwHkbIzIYZdlk3d38W7xfce+tkAys7LDoDD
CsnoShcGHcPDdkvc4AwmTI2iTdOLlxWlVhUF6U/yN5vtYDmRTHPeen9y/Ktc2oLDByVweVgHRBUd
8NSBONLKv1EiD8RHGq/MfPNuq/7tLHdHYtp65xtLvV8KruPlBSap+ixMeyjcjKkFifqFRQBB613D
M3CvOLgB4AprNPBj7IqaB2Gl40T/nMWS30trUCgRO26L2xR/LFBJCeqZK7swmmZDMeinOReo3Z/D
q8BwDgX8Ff2tNMt7pmHy/reRdRHUc6SN/BZckASbdBjzFJoNUOVYnqPSm42AUEb3Oh6+UrTa7nPT
SgVonkfRE5DajbqB+F0y0gS+jIZkRwPDSCem6tVm+kmTML7QK1MhCAzPSelEisS2aEZjpDIT35h7
lsnfMsmrisAxr2mBEi9ONajZbj0nSops8AWwqJvX8Sn9DS8pXuSn7pbcHRMVKWr9eujK90n7CQeg
JnSXTFTX7UM7I1ADrGoJNyRdullx2shil39Y+nNhrRk8WshqJi7P6Kf5WwncRkta+NnHfYFS96Rx
cQPF1QNyTq1qO0ER5SL+jGVlEPxh9WvnVp4HQ6AKI2B01fQIVyqyo9n5r0WgfM2geEPXU2bTo60K
xTOzfMpG0u1J0P2GsGW0S/qO+ubAL1nLCwxrlO2umi+SUP+dn2DfE/RRUNvBjeg7KFOE1ZOwTsGb
LrFFgDbt+7uanFDnFRvnVVzfTVE48uNSsqX/1vkc7aiaOhTeXAwXuYq+T7aEfirXcnsnHUlbtelV
X1hieEQydbgFVBnZXnK/0ZU8PTPBCM/PRw067ij0dyifxPYGsKBMFoFddKz5KaCiEpx1UpBac2bV
mATQCFm24Kmiz0GpNBTXbEetbIa3iSOaCfEC1riI6f6ykBp4954/XUSm1/KJoU1z3voij4cQM9Cs
iA75xgojxKVODXmK9PD7XGaNqGyGqpj/g8ItX3U9Y62/a+At3lPF0wcnP63muQZwnL7/iXLDrvTy
kSt8XuXQX6Uk0FdxGL3+UlO2lvjxIJ9n310sM0gGgiRVIYDJXY2EZvglo7vgZruIlmq42pcTOLau
DOQV0+TWskLptHJXLRmOoI0ffezJy1ccd2t12PUePPnGrMeZABPIqj40vH902NagLVhCzG+lFAOu
W0yotWpG4kFvbAOkd4x20fannhhCr7qug4YcUNokHUN8e0yjaek2BRfHD3T5ob7Qrjce0keuD/j7
pWoBErhtbpMu5szT+/kq+2LFA2FXHt7JP75kMh195YG70WH3Bk5bH6MwW5mUikTLu9LgNCXsA2wt
Sjzopo89iyB35eEjwDa4CBm8PktclyEMtd3sg3acL3UjSPBwBC2gxUmDkltF/S+sJv+ucwXYtTHi
SmYS4zD7PJurHYIRffzpPpv/xq98iItTTLf8VYx4Ua/rcdnlwaKZoRQbg/B1FkJUMtqkT3/15b+Z
AChEsm0WKz4UTcexxBx4bRBNNYsaIBxyjH9L/YiyRa6jK2fnsIwlcDJvUX8jJMvnOtaix16Racz2
u31t2QOsdtknpzsRGJ5oO7JPDLmK6hG0O+nRLjlGamzd9Cmy7qbhtj1ibbtzWdmsvqH9hggBI5FL
6UiUlTgMFR5e0Ctn9Y5ISDhUY0ZZGFf2dxNoMAnxcbNwSZEi1eBNSTNxUC16q7uf56vtiRh5mEpW
inCVK0AtlK405bZMyIwOPOS2OnWpGtKYdqoRkTTQGnpKoOzYjooupPKYPFSLMd3Yj0Q4TzcZJnEW
nyAeCqbTj53zH2W1c9cmd0fZChREvmXVo6IGwid0iJcUQmG6aq1aKjIPTUwB8o0Wjp/cKv22ecNK
mk+kbAziv2dp7pYyxBccgjljvWlZ08FeW9R55A77wvNxpYw8DduaFMifoc1b7BHHsxI9ryRSm0Qj
nZ2AcsirNQDkk1sCrpqDKMTuFTd/OHe66IkoEWJxGj/OdSoGlgK6dDlDiRQzvG0KsGRHD7W/Tibm
/u2OgqUJ2hyni0g+pRjDq1t8JQ1m6AWXer2OHwXdTS1W6A4koIxclzcLccBnQEgEapW417KHaR2V
O34Zlg3Mq+CmFNXWDI7+fjm1TpNjQFSzZ+JvHv/3SnoruEwwf1mDgUWephLuiGxUZL1uyTqiJaAB
o+ROz5LEmkd87AZ8R7wjKRKAsHH3ULt4ofdmFcrZsccm0aB5gnRhUAkZFqOZEo0t7T0ItHKelEPm
nuvUeHaZhUIRcfebEi5Tm/jkGiun+/qwooKqdC6wCKNUpLOJ7XfJSbyrbRsRmSxTND+wQvZgdpcs
E+gTIuP7bkj7DCfKLmv1RaI7LJuPJySm6Rj5ILfNdJgKiSV7OaVcOJuPuvqbboHcuN+u2a3h57Qi
3cPmir7GT+tDA2v9JWtL8rBbF0kXJo0L77+O9igJdWhwD4yKLB2XaoJGBMmi+9d/EbAPEeNquEsA
e+FUnhhTIUtz+pQFkstVpXkRBD6HSKVO+5Z4eLXhLMHyg4TruQqMFI1fcP45z0OOLGxf86u18Tak
yrGsmX8h/O9T74+mH4NcuFSB2Dwxz7TPFI9sHwGtNwccCJypWSHkm7McrRuvestUkhR/8rPoJIlv
kT0sLRxgBmmIHOCqWqSldblvC5gvO036h3E+6a6dhya0y1D3ukcFsLNy/bIa7rHLNdnqqmaKcfOP
a+CpzVWyz3yLN46TPwHVCeyjP0Q14PfXI4MrZqNofs0E9uc8OwRs/7r5uBXqvebe5YdxUatpRzhF
9JOCebJmc8GzthT4/8YE/HVE1pCvkbsLa4RTsQ5kUKb7ev3l3LitXBfPnUpzL6iQmrEBgov+9oDt
9duFMr8CKD/cEhPxL4XKNvkoapLxEtkkWMt17+8jCoFG0XxlzNkDKEAMy00I8Yi2PF4umFaARo+f
ySPYnJKhy4tjdcyemQeOKqkjVpRem6KtEaZbl4ijVzhd6/cGCUjLUziH/hIPi1g5Mf4KPiV2QliO
hVfKeEoeaF7RPA2p0AF8IPtfCibapXXWEKof/bt8e5UwpgKNpqeayDUlU7UBi5f893ALDM0qt4wF
NKnJkpstL87WpgP/ghmNW4bS6hxKo6scyQ6715rJjrtWzW0RK6rfujCc6L9yoJtLZb+ME8lnYjZN
5SGjWBzbO2cRdVlCesrHtmNAptIidzl0WbaikjwNuTnnOdmFu26GUtNVpDtrluF+EUokOIiYc3Fc
Gxfl1BXoaPQi9G8nLtN25IqOFAK4lHzu4PHZqekhWxjl7Z/WYWlgvG+ELl9P8k2dY1IqkWtmlvId
GUcs2KZXOpl+vHWtSbSNqti+Ic3ahERqmAXyoUQMpb9SzGOyV2tlnB0TV9LW13ligrUkL7diS7Kc
5cTlhAbIMojb/iCGuXBfW8yT6z9dMAjHBOUK+PMGhHfHxB61y5WItJLMC0yuBog2A+qFxXCcwG/d
Vnupvp4OEH0aQPpN9mnMVgfQq5Uhl/U/y4iM4L5QkTcq4/8vxMHOW1pv0vClMx1y/RUn9DsZKLK4
x4GQAo0o/d36CN6XqdSLuZgNSorTm4T92NOcH7upA0tRR/9rg2wbY6rPGulWivFcvICQMw0ZweIk
Ft2Bo0PYciWLVlpHWNdvpTvB7PjZgzRXJlpz4wqMD87ufNEjCc55m+2G2tEXFZb0wamTl67AQF5/
mcZteyxgTQPBgjBIHtKdE9og7Udc0CIGaYC7VR88Co/DAZeA30XUetzAGMKbhCJ6SNgsci2L1I7Z
AsnsakF/jNHPBFLqIbt7VAJ5WrW5VB3L1Ag/ebXJOZQGV5o0N7sekEAImQSDbkvrbWj7TPPr1MJt
gBXFphQ0iNthbfsA3qeMiOq2qPqEAC7qDM7xz2j7MPelN3QZK5hOmG6Pyoj30qWADPQk6jv4BiiT
KwLBq4ZBN7e+3z4CJvpvtV+bD1dpHdveK0uc2HiN4c+pwn8+yGdBjZNqQ8Nd/x7krkI5f0BQEks9
zX+MPRpXwyv3aJSyWzTeHPfjyRwp1MY4KKcaI7hzegVCw4t11rwkB6RSzHLrW7Ffj0Z2uTnNkqdp
/Lz41p6JIMdZCqX0Dvchd/AWMYG/wKErcTke+aqY5P5zsqx4gRZQlC5yi+WFm+LIH3HdnYSDAijV
jT/LFdoVoIYdbFdnyEYvCd+JI/2L5ICTY6KLpuTgsGZcmLwj8KabI+A3KBzeLcgbrosPAo1ziPkR
CSITZNx5mNkUcYI42pXDuvGltaQC0wGSx85c+Mrab1F+hOZLgaXyD8g9hTFQywh8LQVwRuH5OpRS
ar2JySpDNvzmUVMvtjlPZ4v36wbbISUz+VfJM1p194QtvCXoKrtj3ljtbkL/6xlM41CDgVrtlSws
KTkXgCy3EuVMt/VmZoOL4NyoZu+uVm6h4jJPqg2DH19WyqM0ioEy1uBI9gSN50KkDmP4uZgf4WD3
HaPaqQguo8z3DPjf/Hqyc2czCsAND+WMwNlVUP66HMgmvTNT3sp1nTOKhpDSfk1SHfy3a1kW4p+p
KNfHnSa2Hn8dt39LEFB6xQPNThJxJknuVXtTLOObIREaJtKQj4w4XktzKecyR9QdH8kulE2LTGOR
hK3+MtxMR7BVdfQ7SNhQn7MGasX7GXSJwQ2GCQm2pLFXyGLBIMh98ZZAUXF0ZYZKsxQISrLY6+6x
IKj3Xyj2Tz6kR6mnNtyexc5Wag6BJxBmWyLJW4qOCsbrdnC05frUj5jU0OTwrBlDxPVaqDLhr/Nn
j7n/1yh7PQKjM4OKAvXAxkwTgg0F9OSS5PObGxTJiPPT1WizeTVD/gNdG89zrnR/1DK4uX39tTiP
5hSuItYB1MveZBUZ/fcwuSWcfmvEW7zNsxW2T/Um/Ua2meogTy9U9g3ieoyPnemvjInBmJXenl3u
dmNrhjDSOeRinpWjoaqvslMK7yi/auFIlAbxCju7+B5uEuKISyxKSVaV80gSKx1olE08soZEe7YY
/dasyJmsGb7M1bMEO8CeyZ+AfEdnYbTA1gnOnkPA9S9PQIZge6oQEuM6FE+uzdMAERU3KUakJVvz
2A+1bEJF73kBpbPTjRCrB1CeK7OoKB23qMECEHu4YfhfiBw+ZReLq570Av5C7WyGQ+mdPndXPi+H
G/0b0XTUmVz1PlyvdXmiTftAOXcNGAIpR80YhkhyvDBp2uYvH2i2yb85j2YPoxn+5JWcdNvx+u4D
tqqyJg6BPxC7elk6W+cZCpa0Ao4mQGtsUa4N+Q3f6wkowIMc7+GkjiYN3eDW+xJCFcXPNvfRUa5u
vYB6k/bImWMwXuOzOJfohbBT5k1q0XIBvf2P7CeO3Ffl/uYQAcZv3VnlBSq2n96ZtKv6tCoyfGNR
IZxMqBj5gc4gnheADgeCc0bC2uWYUG9d7oUtHigZ9nKxy0E5nDrHbhTdTo1w5yw0hVnWkjiiCck5
ZWpeh74crqHDSsviE6ytYryP2ifRhMaeuVDazPKabBs0QCM2iX/udfHqovCvDqctC+hkmMkuQV8a
Z0qrQgCUX9KCUjini2TNytk9+/KdSQvwCqi1UhPl2ATqzjhzAVqGXrf4VUi/EzP1xv7t/5qBQCMy
jgMzHqTPPnKOWR8nZUwOLG8QwrPRkGetw9NGEnYpwfEOhg1epEw38Xo7/ByJXCFnfonpldbROLVR
BjAWn57zeuK3VegkQ38xy3GUnbgghJ4lj7M5dVLUNQ1wbUWU/lOVJK99EANXEpxkVpc+JkbhULkd
TE6HvFX7MAuS4G/Fw2bk+WI2Ep7EvOVslxU2ZdXkc+JAbyVo5jKyuGYEoIxq8ogQYjv5stpQqHRw
UomgM48FkJagwy5yznRdNWgHTqVvr/xe4vp8vJXUReQioceIVU8Ag1YUUkliPNo40nsVkeIpbnNd
7SygglK1Mg1JKNOz5iPNmLd+9e8XL8U+4qogFSqaMujFtGmG9fTodbaRDx8+JE9mLgOOKZmTAIPQ
nPeGqEscz4TcA+hLLKb4eauV7lWNIgCJigeM3fpz73bzxgnmYQv9/+mP3/vdDuDCeD1ioYTd5XKc
pkk315h+NwknA0YOAtQPGz2s1m+BnG2MEUFsyUAtPSsMJqTA4AGfo1xTH2dJec+CWEkJWBAriPuT
RnFsGrNHgA94uB5ObDfKwpREZEOgrs56JZMEMFLfL9Ijcj3M7uiIAUXRbIdH4VlsWJ+vmZ6jRzHe
D0n3bP+4ne4PBBm2MHQEG5clA64kXIoFfwMqy9qerjIsyQDTo9sVah9/LzbB1Bpn85MS4mdDgyDU
QQ1G6JhOfT6gxj85EedQtickulIHTbmtRn5+opsZNhoPayzgXMXwy2qEQBINnexd1AOwLO/DNG6i
AfP8t0Bf8hQzMaeiCyKOnhPbf1SMZ4H+TLYRfcEodNcL19yyuZg02kiBul0YS8+nf/o9xLh4O2ai
dWL8fcupOZtSEUteMKiCQrcbjiR2/K98o7MmKhOCVn64GxDAAEy1Z7+mv5JIzjnZK1MS3MlqgrWb
EvEAebEvRjg2sI1UAszAYB3MSA/LJ480R4dTJkaa6uUWhUuRT/dHg5eY08gIojKGoTVWIggEUCow
8tF8x8lfUHs20NImeiEbdeFPMzQxBRkIrgL890cxt785LQkEdNIBo0jX9MHd/iHt16WxSbemz9ya
4+u0161AFT+L3/mkk2MSGEQdDOvEkBMRM+UFMPFZC1Ey6eDL3WgAp54MVdjmAEAbmbR2SSz8uubi
g0jgz9QSjYCsf/aup/4Xnq9hhTKq1K+aIABsIj+xOyVrm8brMo7rPwW91cD2ge3Or69RjPUT1acM
U4HcdD+n7/AIPxdRIZcAiQEMO9atqXcd+WUTHPJYn37w7Dv1SyOaUMSiuKV/qsZhW5cvv5vx7GXB
2neocjhSHvj6/Q23wN+lpDmPP51bHUUn9l3duCURxh7yWoEfNFhJOmwwEquMzFDgZebgG/f0UHa/
ba9NsdSB6E4VDB6ZwEcVtxL5ylZx19UuvN9x/3wm3MD1hgm/gFroN8ZW3GwXqfpERY5IyiSK54Os
2MPjbYOAUBUhC7BCSwWSdKyDq6WMWggA85QTFB0BzTkBuFH23YU6eCsOPeC5WuFgOpoi2lliKFgj
yeydUbrlQV+XLBCT00HJOKLVtEPF1wXDxopZliY09mXTUq/MJ9MFAdS+D16vzEyy7MNIHgkhwhtE
mYDiQXOMpEhXPnt/Uah0jVn/CmwQgR3nMJThM+AmltB9M0idN9P0yLgKX3SzBUcUstpB8MaUrHU1
qF9ARsMWfmbiSGaDAxPHjq1fEnN7jDibw7NlXm3/W9bo9FIzX0V3XDDrn8BHx+VJmesK5xA76Bcb
eqA3WXHTWEmaPgOgHZG9l7i2l/RGOit00NQGxll0UT5oCj3gmlmK2IuY7Z7upoaBVABRbqULmVku
X86+2x6vRE4Pb4Tjs0CoxSEBD7Tb3JZle7ctg9qo6bMvIOFgqZHXfvYLMMB/el8FWKju2Wd5VevI
/nPCAh5Pxky20KN6It1pNG2IB0QoX1Wti4SqZDW4T0pbaTC8gLOOnHJOzBfA1m6m8EgLdjeDH+jc
fOhYWIqdjbyPChmcYDf5IvBQ2U3xh/MfuT1WcM7R2iA/QTLwGT0mlnY3RZT9dlGGUvKlkaF5YPuJ
KjcfTxtoIGLUn5EablQrrU9EAW067jtFZrEJ1zkecaIPiTOXWfxzWrMdkIiDGUj/kWzHiOcaQD/l
GGWBj+ewCm6pAiCE5MpvSHLjYtYC0TfHBzUnKNs16SaQzZ4Va2HKRLIV5qWSv3IXP6Z2HNJUzcr3
KZeHLKzGswGsRHXwhTDFl8Qst8g7fGd9bFujDMlpILPeVsMX2eT5ZjBI3jLDFngtbU/cr3tMRawu
84xtNOS+DkqRk5T1OgXWeY/3gds2/XaZO6HYrnwwmPMfcodQfANhxKCuvKzzO3N6PzaK1l0a1Q8u
TI6HDNqWiOrTEViP/WYjWh2BD1Hp0+ldPTMr83+15Uy7quyE1iLHBaH7wZr1BJuBe8WhecPEXb0A
CnjpPCm4sR2rnDpSS7/hoXEY/3C+uwnBMQ1j2Idx7xENuhv0sHt8QrGfYvursW9gG/Kr2hMF8OJ6
O3D8g5SL42mKj+d7MBfulyrxHLBSuLJD7ilOk7byovYqH7NMk9VtkrNuYppL8k63ik6JyAbjT+9I
AlW9+95LwYsNTnbUlbR1dIAAYPeUpCc60P4T7JFzM7OjXg57NTerlXOs8kNEKYMtn0PM+U134kkK
xPuXcYtOyU5bz7BU0UbEcDynVmCJnLRfkBaSwMB4ApLRusf/U8BuaqXEsU40CVRFTqeYWlj5sKLm
7ppKzwiissR992h9XQdyXEVEmBk3xP9Z3BGE3dYe9pJICoqRbGgtLUbpYEXuA9xWcStWfObu7EWM
7K9AwmJjU0B6gTBIaoY76rTlcGzrSE7A8pFG3pSYQNhi5EXHJmBcTZWiNZsL19u5EWyWWs6eCUCA
+0fNSbRxoveZNFG8/b3tPyuSK89dQV3EtG682tryDZmgKbo3b7xvgNvz2G9fTQsIDKMoMXtSlOlq
BPhzzhbbxJKFljqnMXyeL/gdiwB0XHZgRmcY/2wnawqefKmh2HF+aAXE3MgdY/V9J5cehKzpFiBG
+7eqOITKEp3KH7D6QAUoVNVtHNVvRskya3xPKS8Af5v+Fw60PpHX9jdoU2K/rzpIaDapak6nq8yF
CjkQ56vCqxA71nx6HCiSuul6+xCh0NCQoIdq2XJIYL+pvUAY2c01kKX9BwqbyVW8Dj33+rY8QJ5w
jhmaB/WDVZbUEBbfmwF0ESABNgCYurLc9DemV9kPjuFWPrtBtIwwtZkrVP1b2QbP+BWAneTyyqhI
9zOVpTKv/UdYGUwlL4XCPt2EXFofyBPr2lIVy/0kb7LL5wp0dUKStc6GtQjjAyuzoqMWEaAOZ/Ro
HLMHF4j9+69HLxL7yeNH9W4v9uF9N+cseMHianR0G+g3elvS+h0X/KuEniG4pX3bwBiyTXGJqBxX
bBbP4zILE6/xXMtj6hMwg4W1QyvzccvTzMPCW4v59t1aZJkSfQBkRlejj071vp6p1b5ex4vnwQpS
A2RZOMsbzLqEZM4B89E5BTgMNKBtgMgRIQ3opoAmCu3/5+vcx3NDKtcp+ByrQx2+HY5uhNQqj2aq
RfxE+7jS7zTqD6ptyjp2GbKRZosD5Yxu1afCYpRUwjzaZmJ1P6KQCWd2I5tUIA3GqA+gDDElmCCC
/ugDrxII6N3ju9pnBsP1XbH/4CJyfeySBGFTcjtvbs6SnET83h/hduJdAuRNrcsDp40XIX+WoOzE
Y/dlNYFMYce/8Vc9xsywOcdZkuzoFq8nwJrwao1wb/CH9w/IFB5UckFiT9zSKjTqu3ANqf947Q9k
5JyAZEis3jI8D9XctL7Wcs0V7hqGZQQYAGIbic5yUW31Da4zU1fmYusrdKQjhO0ZRPjM/eMJUgEn
IgP4cVha+3FA+Z26cN/i6sNxm2Xf/eddLDEjxxDEefUcjevkCo7kmiuBQnK9IUZhqFMGM7rtBbOD
2tpTG392CRF54ENXC6eML4dda6ZX9Cm3NZRmqTKq0FvCPjIGJ4kPxWSKPALnC9Z4wAPrx+XMoKjy
hbcsGcyvGCDYSuiCBpBmgzdz2KJhlnGYeuALDDsvToysOFQ7LYd4LmwKyECIryRQSUE3YZlpEd4D
aEBSGifKndLnbKxoMQ7N9gQjYccdQgDzycseNjgUwd7kHK4/VTTD943b1ubDgDBfQ66EA5AHr9sT
7/Z8lzrr5EWQDUyh/gQ47P9fbDDcuKhnzYKbQynKh35mxnY9980UgdvCKBQGzL7lLJ7j+W1m8NsR
D4X4AGv0qKTBtYBU7aDH5y9wwt9UIMSbI8SK1sZVv1Il34wDUlL2Ss70mtRZ6/fmiJrP1AktsKzg
QLYbD8KwVOko9lAleqFPXmJEzZ/7xb9wZMs1ZG9Rs46UOmd6VNCjMv8qiBU+FXwRfeQly7P0gkN4
3L9Gzu5irjLFmpju1aBkS7wV1aHPbJ6nxWMnFhjWVazfM2zb2nnRC39yP+noLY9A8SfUHhERFUIi
PHoaiqtittHHYgiFXk1d1v1KgiBiJ86mE96uUOiFTgDzzB1+njF5YtO0bbybwvhkcUiExolSxDma
V9ywEHP9xgBprvfm7eMJbHG+wg2m69XmQof3MJ5xrIJw/ky9JRpbQ2DpbktKeqNGrGogoFkz9WuX
Hvv2j2HZMxld/DJpRiX7wmBwiRBgYFC0qYBUx5qV8MUESGkHGMAUuXKlqKke8+o+NXrcipCxWZ1T
Fz8MuSoC+5hBFYJBRsWhj9X9YjR4/0lrZat+z8thKU4U2oEQS+do/nQwfhgzVPGeKFqTMaKaKknn
F2AGBgua6s+Je//0fJXNnxRt5zj3BWpDntnL7GDJ9MkYSDWdlJcRYZGsoT6SGxBtbo1MAPyElmrm
0xJ132tw01+lRddecVnOSY2X4UX4zphWTtUhorzeTgeks35tUPgtrRhx22v65ltCm54oHad9FqYG
SCYFWTcsldMs17wUeVb0/RkCD/loFh/eU4oMiegQSDNycf8MWU8AsMSE4RCcedNQhE1W8UmCdTBK
H+cW2eAUkeNm8sMr8W5Wfnu5TgOcfyQGzTpth+Vbdoixh2xX6LbxcPI8qPqX/yX9pY9ctksn3MhZ
40fA/WJyvTAxoYn/O1fFzKdyFisg8T306eoBXJz8nRWBZu6/9BTy44m2d0Xt6QgPG9j7X6286o0B
QHE3pe2jahGRnKeBueOkj2isUQy/mv0orbcyRdjYznBx8MUanTD3ZsU5vwE198liMpgf9XqQ6WsJ
rUrNp6GGh5kjv59DCSr7LBhlMDaaeZODreQbod1BDVX0ou9gAB8Kx8yhj+aJCTT5xG+OleKFrRO6
RkPTs48ZaLMKza1/PB+8NXku29SZlpvgnVBWmlUDogHV93PR3bBd3rJafzFqCCbNDikMcpcB58Mw
XOu0kCf5TSJzThZXxlod+hPmlVlPutbeFbHreEP3V8LkJd0GCXn/U6bIWly5QTudF8LQ58+oZp2q
wR1R1P/RbnhEnh69BKyOcMmDlOrYsNSbwRq0B+RDPDrhuX669NUQoyKtje6e4s8mUVCIXMD/dbOi
ERPnPpdmysm/244otFj28uUWXdoMAGCxv+ejdQjM17V6gIa40tUryENdWeGvuD9DSnHfLpDApiGY
y/oAEWZIe6i0elWxmy87VfW0+paNC68AY71sTK+MMVUvsdf4odHbyTjtFpvu2v13ewmlExb4dpD6
YHhd7I4IwA+PnFeYI+mWzB/6+tYKPxXCVC+MBZjuLMnnhp2PuBKdo9XnDpVjfkSFKrM/FJ/qaV5a
GTipFKOSxipOe141GMZmf6TvdN6KUME8jG6+nQNy201UeCCnBo498jdyAjlBN29jcdfZzPCGEWb9
5IzdSuiZkN+NHDybwWYRPx7ikP/FPx5PoHlYzwJwOvfbsvyxGuHZj2vJ5OThGvfLvY7NeDIPfmhv
crZnRFnsBBjLgR80qVkroXrk4/ddQFBdbPVavDKzY9QVEQSHFMcSaOEVsLOC4IBCdTJrKA5JfAn+
xPQOIIE6CUv8e5nDW/L50+iPjZfRDWHhkEILie3ABCmra8RHHHDE4l98aFVEdSETw6VlMeaIG36D
KXFPwcTE3D24gxOv8up/wfLsuhFJPmTqAYol+Hbu2Q52jItWVVUfVPZqhYWK4aNl/Aqm8UmfBsPQ
38l3JXcjADoZbuJBfJ2y1P+rHMpMOwqwBKNn7OYds5qXO5/hlxaG7DxPAH05BAjnfPD1g4qcap2T
zmlyfMYm/0slm0S7gpBUweuHCl0rF96BhpmtGAOWMeeJt8eD3JUgGk8t0VNeKJgp7l0KTwLWpLhK
EG3vRSyvkl6wgePy/g/HTaz/U0GQpPAoJ4vYdr3kHCSTuFxOh8lErNKGHcpgpX3thSO7wNlbHZQ6
zUqPfC7WWJ3orymmUKsI56cphVMEzqrp4rcnsoCZAUZm73HsjYjBT9YpPpZZbAYavfn3YPkhoxek
PHUVzs/4PzGLPhy8MrA+clC20ifGCwrrybm8lZwWAzGVMIgd7U+pyYUADX/++2lD+ZuNWpQ6P5JI
iNFx5sCrzqGYB/3NHc1fZnK7M2Jmq8vaPlvDT+GxsgyKyEPbO+i+agqKBNYofPfgsbNX7CobD9HR
oKB25SHjumT96K7FrVUBye2r7ohXuLl0dKRPK9OHeHuJiCnp8JOk6IXXDNIBikDGGoDFKZqMOMOv
a+M2cIT5RlYmlyCvpwYFN7cmbL3/hj7ovBdKjr6goYynGDTm/BQ8QdVBTNawrVv0RCZXClIialwD
K2KZjj2ibNgHPGArcC5YbEFfKMOD/kQZXFgmYB8KrFe8W7OYbAgUSQLv00RTWjAA9qQ4jHrwJ3V+
F4UXirC1J+F7jgRRek0D9WXaHylPKi67uSOgd/orYRpxyBBxrAnls62uthxiO2c8Rv2hPJs2iDE3
8S4sPTjbD90IKqrpdpEARnjKaibedQbhbhTRfm2bSz5CTKa5Hu4ZnBV3iiU7k/cnpyWbFu+hnLe/
GDSpGxN7Zjc5+AEIR/1/GK5INqQkE1rWsiKp5b7C+5hMc6GZrQzXidW1WDWgLu0Se4zHA5DoPORV
jsW1Xl4AAp9IHr3DsnMjbFKULnFpPO0jmo1NvVhEQCIfPabvpKIQlZZNwY+kUC/Cb0xKbC4Gifzi
jel1DZZkE28vOJuw4PBehuDtQMXSyQjUJHYb6gXaeTDVYyVKvbN3aIk61dQhIUESxI3Hb6fHerHu
uZunP6hXXTcKYEqKM9CkNMR2S8moMyn1daZtecTMGgA49L2DWdwYQZzU7W2V7M0AmGxjPEli/b+S
rPp1ma0bH1UO5n5rr1afRWFZp6NUl9Ju6kJySe75wHYOTld8y1oR2UZ3fgj0C8s5NHtW12fGv5Ma
dz8jkptNhy86BfJkx2nwmtU2aJwzYOIyeohUqCe0X4xcTfsvALCiafopyYNhKaz9wSJ1KpThdTIh
G5g7cvZWHNEQ2z9eYSrXSO2u1petZr6hqvQRvcN1LH9lbrLcyZXIs28LedI04KatOhmRZr6by8aM
d4bDc0/KpzQ5KZu9IrG4OgalCU1WvzKkNoxqvUekucMt9OdKde/KNZg/khggXQ06IzVc5a3ISuAG
PxNKuz4KytQ+ONe99Q6Ak7z5Kt0zIkQQTJS9k2X3ZVpC/wxnlC13DRo26+ri1I6OrcBNmIdyizoo
K1/GI1Qa8zMxIGBl8X7jaD0Rs9PYseVmI7PvRx+a/yqJtKZnczl4A1mXu1Ji0AmkWJ80xxqJFWgN
z85yjfktzo1ztdJ0a4T2HXP/ymyumM1C8j5MS+9uKpHQmratzNv72WtoC/7Hil8ROWFF24A3ncEh
ITBRhyeBm1EzZ7gD5o0MGbaOddwwlc5xjztJOKzqgtYCTy+AxmGW7fbz837jaLVjjT3ocXlADhxz
FIUPORJChDsKsUDF1dYV4zlqRke1j/hzbtLPCXvOynwRXsiJ+hucuP1BFPlYH70A/2gONcIuBJPF
ZgSKBx7tRsrVm7pU+Lm/ItgU1YGEcBDdjd/mISRuAaZMkl0MsA52SsZYDIBBCCmVvNBTBB07TvVN
oyEiim3XWnRto9r9yQHwyGranfM6AwOfpv+YV5yhvzpA/AyFW5cbjt3HOTa2QGJoFWoPzjeVvmB1
WT90xJoToQ/xd1UcS51UayUBOCoHtnfgqCc79z9Nitmawm3NKidC6fSlkq2N8FKAlaI3c6g0YZIc
uc/8NgYzKnI4bxTIbNEABn0c6ExvcfiHvbDuOZ111CkPogbNeC+uB56Vnjp9NJPG5OCmIP4T8y2x
GJby4J/HbciIWZOQkljbByK0UiwrfeV2MJ/CW8S6lBKud7iuO8XH5ImBjaFp47gIUmAInefV/GNd
yfoLe+etuhLsClwInkLDZc8iAZ3DASNS4Wmo3fzdqD7q4tEb2AC86E+iYSiZY94Qs5B5Xg+iDrUY
rGhq31OdkjUYX4c4PwCVxg6bI+9gnwlh27+96R9cKz9qIJAAW9GitkBKtN/11MehYXh3Plm8n0E7
IAFiDZkiPHz29VEllRt7wl2We+0+9gN3c/N9Bi9Ek7uOSI9C6pQw/F6QgyIX9ZrFGxqkNDO/SSEc
ISn951vuOC6xkFS9yi1j5MBF78LAkGiPblxQwC2kxYywwI2LowwKG1YxZc30KRDvzUm0B09f/1JC
GgLHaXuUSo+PTD6S7UZZ7P0ofr3LN98v4NHio/w9FXG4dYdcBVM3K6qPXvYE2pLii2TFK0obm8r5
Yrb44uMRwgCwfj5/+96tiegMErggjHGj1ZBsWZBkWp95a/xl5huIHHxZXZC5wtuUQLNGFniYcgZH
TbwHZ47iFarahwCC9bHRP+9BPmpTPNfoZMBHgjWh+VLhHTTZlrISSlq6TLdepm8orRgxFQ7Lh0ZV
JzD5Kf3aDRnDm6qCKxNSlFahgVxCzOCI3yOUHb46LP5eFhv/ggJaSYdkKvzGWADk862lQCOH5YTw
qQQN+fYRZlkbpIj7L8KRhsSldS9tlKRN/Y98TRihbEoReTRc11+cqgeBdMXx2lz9P3lKclNhti9Q
KQqoMYFp02gVUWCxvaGQIv3ADNvec6T9fnMzV8Wa98H34KuwJPbe7pSc3JPE/zdMV/db3zJgO3Eg
AiOxl4TnTbvF8TUn34fO6fb9OpBQ+/TSQwbtQ3Q9qUzVU4+/TshilvLqRtXQqaXv2MJlGYGJ2Bfi
Esmm73SMLnEzY35g0ATSBN6S0NhFU61gtPQxpo30i9GBfyyXgOpPmxuYYw7VZqh9GQtOv9MoANlt
KNFaIlknK+tuV4lrATnWSLiQFsWbnPfR4kL/WovO7/Ryo1eApNvfBzmJVYzmk7wV7cCWWlTm53HK
jQcoM3fGYXyuIH0vWuQwBeaQ+Ja5kHhJhvkVmVWFH1pbae6m72QANeok4QZStJo4skmGZaqUeezJ
0Ad6gEc03EP7dtTfVlYyc1HCuB1oQFsIGQ4no8LaVq4tVWZFmwDzy2+8modOC38svaXpxpSD+eNY
kZMei0m+PKOJeeWPeAZxhcHW+oRl1FcyscdHlji6ju8ju6Hj3/uUxEQz2Q3fIFCmB6ySGJBES7TV
LHZ6d43S0SPDXvCbCqiRN9BTMV7MbaEaHVGnoLAF2npBmFAJlvL/AfMDY4snlFuhjGS+TQKKxAVH
OnUHK9SmieZ35A+7oMK0OCS3IV/Njuu4uEKL+J7xSeLCiMpBXk4ClrRFW3QzBxYZr7O3SAVxSLOv
X9Z5CARC1fsDH9/vG7+eJTlGETu05XXjapUHAcYzb0Ujmh3K1De//h0HAwFtuWHmwUVgGdInQNOw
N2P373hjcfgjHVPEvSa9UrZrOmZZEnFeWIKPMcTbS7IP36DQzxJs+wvSeOzrSCUb8pksGo/fhjNk
oJYLZKQlydG+a/pt2buypQBQu9s6e5YUup41my1PRHMO9BG2FKQEt7b9fC0eqy/w71/pMxlnlAv9
4v541ukPUGI3KunfJmgh1WijrB3syxSrKNgnvm+CJtYxET0pZeNfTUbxV5kHk5/0g++fblhNus7m
X/DhhwcnZHULXqSaZVmAGc/wWks97gb3nLpsaA+yZEB79OgYhblvqB/65bE1BXzOBHlugbfvpvI+
xuiOq34SQdd61vDvMfaxwqgoKnjU9oRF4IZJ6MNxidpWu5fpGg/S3K2mS/jY3wTSKElPZmw1HT9v
xb9vyadDRIa0b8cCahtPDOexzN1OtXdlamThbmU91dDhpDlc9etIFN91ffBzXCEhtVQ31kfMbzSN
oijJqZ+7bOJegMGyv6KhSyTrz96ypWJHRbCca5oWCDb2UYmI4wAHo+sazi8iLOxD6sJw+11v4zAS
Lo447MlnVJrG99iFkupgRViA5Biu2m0ugK9ref3LEqKpgNn2dL7uoYan85WpqUgkjYPdU9MpAtDS
mjX/qN4HPUronIHcd+3I9dva9w3mUJgdAJ8l01D3w2lIg8l8bjQeUNn/Xwsbk98uvB/RpQwnbmHb
Ea9x7w4fAijyuI2+40bZez2R7kumwyXmVd686urYCIP/s99qO/4fgei9wCTBXOI2AtZBkLEGoDZ8
td7XHrwEqADhaOFA3jGMILXAkznYbIa66/XUM/10ukrZ/zYj/udyuT7lojjNanpO1quXPonCDUkp
5xtsyQngLHlRO1kbAHG4cKHMl2Ltiwk7bKN0VOvdmqsTxb5ZNHsBd6Sy4QBgZqEui1UPOsiqPye0
cw5rC8+AKPgiHgt5OyDzyfBU5Xw1MzYPLh0YYZEEzZzeFoAiEqdbbAGEAqCfk7M9P6Jdvrmwa1yr
TEz9JH3pxcoQgoeM+BtwyCipmlOxltfg3lpSNiLVDWevaTSFB0lLl6CCVd8a3QaTYTXlsTrr6Gmg
JfCFIerpsxcdwzk58PVTrZh4ObYoI3AmU+kKoN8nriWY0Qx0oqFo86bjwOMMyrg+IvDErCoSIGNd
tOBbhYdicxPPIxQJuoaTWMjDlVXwSpNiYv7DVsUdprwroi2vPEeYRh57dCdXLcTTsnBZBZswx5Ys
LUFVm0KPsqJMD8Ri3P01LQ2XbZld7D38IbCvnt9wK4+Ci3PcOE7sktNVhyMzO8CnyL/uC9Jcuz+A
cOGIcr9Bx7LT9RLjsqS4FLbTKN7XvxKuOJEnwwCi+5qMQ5yIBClgm6iHUfF1oTukH7yDAYIPPm5Y
7+dJeumWLObYL6yvsEhXHD4ckOH4c7hoUPBgK1WNmiVuu2wHAzfw5OlKj/jQGo5yFSBw4RGOdFkJ
gMqF81HlpQM169bgEUDV0/NuTDOFXqt7llULjl8zgrvF1ytm3tf4eVYcIY8B4aqMbfw/v3cgsJJY
624jm4wAUbPcP3VuOX19fsc65RkAp5X2njzlzYVnZltD4Mac8Rpi8uBAvfe3zvCCloe+MuwArjjM
Ecz2v5uXipqoqwUW9F7+yxmRFBAIqr3BueiSyTlpXBFgDtFyh1r98sVlA4tQuDkejOPDjKG/igcR
LFMyfLMHjp0BPxUv9HG0woKyvty0TDC8oIOgB985XR9SqEzs7ML6XheAdPUj4k0VmpUZ4BY4Zcv3
b6pYaUDNbfXB0v6uV5XmkOVw6tvOhHmlnuF4lj8Sfn0O7bGQtr3dICYp39onxtNBXHAJLEgwKmse
PMxFRFq2x02GcAC4Y1E6xTPZSnOp7CkwyZgxbZcoLsM0ptqIpwG1SBh1TDJzzRj5KNOPeElBe9+K
yBWgMqUxwqvzm/6SJlEL6jrla80/sA8ZEhtD6e++BotRXmPXmB0lmGiSGzTdbBBZhvXA6oRVShOS
5+j6zxle6ZePF71Smz2UPz0XD2GVZK0iR8zSxBzEe027XJ1NZmF0gXD935fKoxCAYaDINVmOgMyS
zcxnffxW+bIkXK4i+iXAB5tyu9E2RSgU7ugg3+SalBSqxgUA37WUPnLdlUj1iIeuvDH4dV9WaebA
QeDWYGGjnR3SIWDRXIy7H6Eo4q9tCB8OI6nZ+/70kJ/GsgNwnkXhxg6fs3NIFkWn0/ikQpamzd9/
0/5AfiQ/intCmjg55ZUm0o8r/lyYjITB24t8dp87jL2duqkB/UNl5bAk1KgPtB25oYViLbrxVYEl
CtqpCxZt23ss1/nzWb3D3uAdQGZxRBER8yb6sDTwzLP6h8um2PFBm6bcOWuu/OsrW+EB8s7pn0OE
xXkP0T3A9BfyptJHN3we+NacNAH3CmpBZZQQdcJmhxW+7F6dnwEvdrpPz89FvL2nU9XV3rx8hZ8y
DH78bnqBdWqevC2AnqSquI05oPauWjpAy/lA5J3ZIN1dc5g0F1PSREceSfEYABoNhIt/DYgHCimA
YVFRLJf39vBbLsSofW7B3b3OMeuT1D8i+jQf4K33DAVykhfLqWQYGJ30sOW/ue7R0x0mB4d7RfIL
4w7/oBRfAS7TJVfI+fhtOTPVgSBLg4zIJi7V5al1xBYrWozXOom5wkKuJ51zECIqrcJjr1O3m7k6
hcirkPpYQd2EJGGjB+C+fixJb0iii/1Jui1OU75hHQwkp8XtzHgI3hS62q6dLtac5zE55U/kpNPc
4RXjGkNXrF44NmhNnOWdhN4Eb2R8/niOkt3EaqgdQ3Sm2GpyTwyUvnr46o9BGchT6yZ2N9iZVFxb
FdjOS+X2uL0YSRfkZ4Xi0Z1420fi1sRpUyKt8MCkT6JP84Bc4KEpGYiIuHUXYbTMXLeP3V29P5TM
6CuifFnUZnw1lSYS4ZvjVPch7dNKtBTEd1U6A/q1WeSu5h7Numgq2W9T6Y0sA/qSBw4yoUhnQiv+
3q2mJ72R6ohjL2JJg2hA6I+6sbrMpagd3IeyIjHd/zH8kzLxUqEel3mfkBpi6jSCeONwX1+L8ntd
fdpCRst/21JsP/J+ZJdqLv2Icxxu513IPDHZ4MoolSlrtmSBARvhE7SE4kR5eRRGH7CFQKdLgHmi
5PKUkJdwxLMNfOguFUNy8j1Rt8BFrgW56emyaKH6a4G1JsaNSP1LI5vchzR8WUPjspDubgvxv1jO
XExZhLIejEw5z+L/NedVAS41ZSNmbohFkXzkO+PB/NFgApbjfjIVye3KTK+Ia8Msp1hQQ8Xzq7QC
oAzEO8YEyvM0ovu12vsT1/fqGyqDF62bhhw8T150Vi0ybLn4LJRnFR6EV17Hpc2GFBPPJD7FzeP9
NIdl77kR5mU/5gz4G8XR1lfaahYSVgfN1st7POD6QF1BmuGCm1w2MbItV0RT14jAzfINg8pDO7Bi
eYaKbgom2nxSvMcwqQk4oIKqMqBG5uyQpv+MZqhojWGAS4GsX3fKCtLGrpmcn5Mo+OnhlWtJFLb0
dObzgvjGwmaRc+/CmmKQQiXM1ocE7L/DdxHqhf8Os5Ja4X+ANqY82m1F3aiXdbWZ8c9a/EMMw00O
2EvB07NFMWSeSRGK+/4MwGp0CXJFxyaoxLiH2Atxnpm56aAKfRQgLG5VsGn213Ht0JIKbKMbGJBg
jwlnO7SZBFjoz0ZFLi5SM2Y9jwg1uMcx86IuPBknSPmc8Al2lkZ+LUZpnaWXmc7DSU7Ngop5cMji
gXj/iDBZTvU+m1vyWkQ2RqOvkOn0utmmt8pImWFMlALQ+navmUYsBZoHSj60rbjTbYljeB7DNY09
Q92D6yowcijbJDwwTydNok5KU29JjhMOVsNN6HhWlLee1NfmNdKRcEa9nvqoXhgfLM+qf0j0jrt1
DtvUsDwTZJTLaAe8/V9YgSfcWS9MCc6SfFYm/L1WdMCksv5RGIMJm5EvOezI1yLxxG0dw0fGKU0v
7kWXpw877zTomfunezdtgCi89LNR5k4H5VEpp5k9nqYpZ0g9T5Vgu3SsdKQaei1ISVQ+8wfiV3Eo
E27pLd/Fsf9gvmF6iXPDwWnokZat03XLjrvrO8GYuWF8deLhZUp5l9ICTkUM263wuJTeP/w7NNH+
9s8hAVEkYNtfSjRskyrndt0hI8LiTbESplDLhMyfVbvdB2z0Xkmru8bgeYJicpuAuEJDW3MuZTXQ
PYc57B3wsN1UQfEU13sWzcW8imYwYHS2lraJdhooED1EY9lBfCz8LbhG3Igd/AzP4Xer3g9pE3Qb
2GWZWByPtQPxhuWSLQT9J2MdevqZOC6u+zyA94A8hLRxBiv8nQvAzYNkFTXk9V7k8uq/k6w7YM8S
5QfiGADIx+6fwFoGE/CC9qvNukc0K9h23MfIGd9sm80oDzpuG0Jbl3bvdB7BZ/R7IZk43CvJ6lxm
7ZmhC+LkJjwZ5y6tfOoVJUpB3VIMWD3WRGqus1jKY4tHzKuiAkRrHo+V06Wu1umYBllLAwuYoHEn
bEuNaDbrKWqRLRqpiD6jQasNAdcdyjgkktdz65iXJedyqRIykbijvB+IA7dRnIWRkKCKrIsQaG+m
30nfgF7fsvDCBjCmf/QOc6/8KYwIkavPVXvCzayQuX2yYDPz/ezUmVQjYQOU5/+1c3ADNZqc6VZS
3W0nEIqfJ5RiJmQ669NWvIE3Y9x7xmM8cOt3D4PCyf3TBXmAgUMziOyv5p1Dm09ycwVs1ToADi4T
9IAyu2YnxrZWCr13+WzKvbWwVVQQJbGn9cbovdOcX9trFFZafzRc7NXeFL9wuGhppuJ+prw0Iqp1
wRbkGuTmbAZcqJqjzum/gS/icKK9BMS9QjfgogkBy2PWc61pcY8Q0V0kcixRfeQsxTcO+dB5w1Fl
BV/9E40GbZYk0e5lVeshNhcLndfG0CMXM3LkCeFqYvGh/dVjHfH+DxpWfQqI1kb53hlxbQlfD79+
hRY1GM44FMYgZTv4saAGJQEIg9PFouoISyCocRHjfv+9inr638LEZXkCeiSX0R/p0oz+KNEKELoy
zkDTGCXTAwHe6ekVMwrxHkirZ6EkryaNZocQf3byglfVReJrgrtWpxzrke07ai00RCWmHjLzzRkP
zyUexsu6WHEy9uKdH3m6G+1robP79LZzUTrFrlTscDe+FEJEx8RRus6yrlA5ulk/zuczVkvziy2e
aQ2Kb35T7oun66I1u2+iOjjT3e0cSKGDZuEIrRy6KuwX+rYS3eSB5dC7PsBe4v7XPpvUUZE/28dZ
K2cfeoldVl9ccPAFyaj5xyKB3rRTDVCBDo3oGYrTmzOguVY+mePz2GbvExeyE5d14Pur+5dEnnoG
qm2JVJNvlQy34+rEZ6KI7378MYLG91TOQkxr+ilBnumokIDXoiKmcrg8v8Kg9ih7Wd/k4rguPrFc
jypNW+kk9CPQqYe+L0ngdaxMJlgtoJs1uaYcqoTwK0ObijudfQtbzY4GM1Hbeq0sv0/243uiV+F8
KGq7do2TGfvKhIZ/OdthpyxCanyqqWlEm0U5Gx3Jxf1fneWszW0xJdx2K5CrKNO9RNCIZerxhWcx
Az0rvKEVC6EXmgZtP1NdzAKnwsTk7zDweWC3zV3In0IjsDgaDcuDt5yJIf+lsgoHTcdbd9HwcvM+
3yRFf+V6RloHHkC5YJQXcAIOu4NYE5UsdvkrUPuw5Fwf4rsGOC7wcgICuu8iea+SafNFpRa2BnBI
ca9WW1FvGQlMLTePDMpZXZIoX55uVrIwJ6no8oFFz/n3aiSRjWwptHH12VvOg7EqyCjrq3qIwnaJ
ECPSlB7b9KMAeO1hjtmhu1emHCU7snlt+6S3KMDV2sasnM43Mv7FIUlMqzqJMHuHMhd/Ic0ONHNt
mYNXIa2XI1X5Q69jkIZczBx9fITXZJwwv43wxmKjr9mvUlOhQWZCdr3trRwpHwA8nxJLb4NBG7Ko
CydWPh8kLHbZgaansTXg92ncCPng0xGIN77ZLW8MOXqrx6E0/OzdDK5bp1MbBNplR5HRSh6zalvh
1u8MshNEOGTfCxFmyLbPI0qF+RO4W+KlU/DmH8NvDOckyLE2gq4ZNVQWmBQKv/pgvMXfk0w+0KLd
HETqC2frzgUJLzB7OtAoblVaSf/2cw/0uWNx3weLixnWY/Kb03B7thlKYJv+NE0FiD0uTSZCu0Wx
+ThL9/MaBJMjru3F7/29XZrdMUVKrtU26RYxdFsJbkiS+Bnl8kMRLkgFdPjYrny7An0Jjv5pbVI+
lvmvYVHuPCCm3lHo/sHldU54YMBg1B1/xfW7u4XaAx5yUeISq6tSZeqOg2gVRHLpZWPb84T+/sE/
s8LZ7lO5eyJbBQtlnFgOo699DPXHa41VmfDK/6lU94mDlBCx/7XTIfV0FoI75THLc4HQtmJwKcx9
y4ZY46v86hUockYvhVIFO2+JjUgLbo1HSFrQ8IhU06dEGyTMhxde10UNQK9uBlQU8XJz925FQC5I
h/d+h9ZfIKSTEItSgJFxlZuUcQlTLGN6F1x8S5eLnjUjGavYUqPsNxm95PY299yds7nFlacGo9A9
VV7Wozh20RMIy8XfBkT47IL18WV1PUcRsGL7nqf0ZV6dbYLTt6z24CcDel6RnYpw/mmUi65DQSEg
Pqh5MA7MbARuwrZuvbEZgspqckedQGg9RvRSctDDfeaRs4N5LCgF3I0NHzlERtg7T62HSVrHOLZv
KcUlNOKexAjPb1wmeb4092M52Q+of1HkyhS8hXV92TZ4HM76G56ZADLOwhasY60fY/0rnX+W3rs1
XPb74vYYb7WE77q2N+UDLdYyR8Oek90ZUDzm3UEVtOvlRPCS8PLz4tFa2kl8EDRp66bDBvL5i4bi
lfPo92ETk/XRvHLaKuWNKPZDMlZv4ialwoAnMcp11MGxo4/rSf29HkLHv0qYrfYfzmlZgV4yPvhB
ueudufntNZQDzAAcC6H4kQ+w8f9x6EYot61JhGlqezdEGd6gbtN6pMWkeH7c2Gfume5kxVhPBxPn
HwlxCqX2/Bk547nNDTf3UtOP+D6R+A9b2jB3j4FdHtZoIqckffxUdJ3Y8cvq9oZLPqBmSeBnq98N
aooJRrYZQ6LtBZ4M2PKtKhrQ4g3fFk5Sm4bLC3nZdprTEMfbQ1f3p8SWcjO14NVfK34BHY8A5N7K
Atr4O6xJWukXdnHLAD6g2MihF8tkCtPbt9BRTfh8rIMZ9E9HWPsRYxfcrOi8RKJfthfbpgrHtWWb
AH0kp4XxFNRQTseEN1mTESzJnVG6Sl1OohaZTssq0CQoSe89tr4vegKgXcxD25QDB+unUD/mQMlL
m3Gr0U5dMBGbz9AxCMJD3rK0zs27qz1uuC4abgk6ffvk1Ey4Q+hsxoMgj1wWJZv6Rlvu20b4179E
QrVfGcYIEIrcNngoffn1kA5jG+Apna42vCLq9lNcaFgIDlbmW+mrGqkfCuRQjA/ODnMVAkdfLWFv
VMfvX+qltaRGaEuN1OLLL169ZTbFRM21wh/0Q/Jbjy753tkLvvDv/qcFsRMuGY9aGXJIxwWPogWQ
h90f9gTDGdFOb0xoPzrRaSs2k40lWYpJgxtfNeXqoVurCWEB+7Y6Xu/uwdRGLWZwyb5u0QEnkYXw
lz6Zxko7LzsevU8ixrOLHxFGzaLNNZiDvtgeIObw+0WVQ5VADonXFJJUqpq+2ySpMlkj3Qob3xW0
Rv4E0C1dS34Z0FMW+bamVGdbKNx9WRhuDxDTZOtn7nC+efwlOEQXmQbA/IcNR2gPv/zOaAK2GvUj
fx60mT0MO0rcZHnXfdleepYhMr4iazMBcVLxiWCW6Wc+ci29wXuO/ynHJPT2uVX0/wswzdYTNSyN
zQO4FZ9RPqD7H8rGbga1SYjW86RjLMYxcrDvCztL5qdU+Dg+YLGaJ3/I0FJbPKCshhhY3NPlJlj2
SgU5CxgkdnqTPo2/XCHuWb7/pWWOZwqI9u3tHrqgJ1AvM1h5DnzfGI1iHV1AtN1GcgQ18eCVpomJ
me4ThAznk4v4B/ohndZXrurk0uIb1PJCV1XrDLtWxHT/o3WP0j4yFtGu7nXIpOSngDWZNwMaa+5g
6Z4shwq8lPMD1bu0VM3025VjQQC4Qkn7y/ONz4Pw89q4rpDKZYP9NXoDn3izbbMzwhRcG8b6+cIf
0lIrBk6OQWgXmB0IZzUyTTT0hbvYJlHMQS5kIqMYHVsEuxdsSu8v3d5HLqsxnKqUnbVyy2JlfwSB
i5+WcnjLBc3UWGTpD1V3+DLN4MFk8ePDUHFDvgQyt88IF2Uw35RxDlFb+unlFUn99ZlFM3H1e41N
TlbTte7818bOujvsWNkjZfvJ8IqMC+laGulevR3KhYPx+UIzfqsTsiMp6EtXqOOwXtUmIgsekPrw
PxYEG19/QAaZg8T0E53QjGJew7btFPlTDsFq/fprQ9HBKdkj28nT6DTyUAHp0fOUtPD2CHJmShNL
AiIYFMTyPVZwXwL9LIcLKdEktOIZHBV5OJOlaLaxiLkPVvaSWdUZDMVjixtde8o+fbCzR35glMiR
vKdHBcvsa5pa5nYCzlFTe+ZYxfJX4IheUavGfUYYgEdyijXisFFMoeS6ys3Ul1djJ9LQ75aA+i/E
GyWMbUt9wYOt2z5EiS/C/W0394X5M292IScT1LXZ9XLen34S9LzQoYREhepSWmjJHgzV8HRC/TvY
+fzhKdPRvLq6WBCWYwN/zsccsMn/yjLNAweW/oUmX3sKLwLsqi/BfiTQUyUiWRABQCnwCbIqWAz2
5bOUC6jGG4RisN/0FAnqYcOgyy4t+KAej4gaUPFaW/B4fYRcsgZFecFZL4pRJW1oPA+/CxwoaEmg
VDzRfJw/RqvAZEn6tlrOqiILE+bZBioaYarTTQDhpgytqanwkEUWJiW1TDWBVYz39KsoU8oUdu20
PfhTVgNrRmzjsLzn1hmQflu3QtnTsmdmWx6eWKtD7HCeHokE/HwYA/Gc+xJ+nRkDCOFJiX38O6j1
qdslNbIWlASEaPp7JLdLh3RvF75lGg/h3J+6GTTx7NrFeq4cwnHmnSecR2d4IXSR/UtZLYNfDNFU
v/8CujQuHvYEUvzg44Pe8QLTWCWxFkl0Wd5kXuLoYxn662VYMGKl+mLGBTmE/F5n7Io1sV93L6xy
GQr6xcNUkPvWw4pq2JorwH22vPGhZ/wIti6y8ooXdAFCiJxFcaO9RrPX73PXaXCaTW02tM8Uyrt6
7fy81TSgw6sWOqWUXzgIAP7GsbfzaZ5lu7scPULdftVhTHV93ivj29keCuXbFg25txNb4RCPkst+
S2H0DMdb7nw4VuuwesEcWk+N29hydwwQInUlNyh5qwjLX9+B0A3hoDL9jS3LLeEzxiR5yKyb6I8c
qWJHEdUAZCAgmP4g2Y+IbLIv3dZR+Ca/KT5733btFIF341LFCfM7p2nT2q9hMEX5slyG7ktxGjCS
w8S5lA1Npyi7Jpk9PDXZsrdYL6jnpiIdMgE4eA9opY3cR1pQ5AiSNgZuz8qX1YcQMWABomG2QUlo
Ciox39BL1s4XzH2c1mH6CPdQuVmOTG521LveVEbCw62B0IpP9ucpHF5hXP60TrzoNdWs5gv82r5c
TxA1fAvb9O0xMkGReGDCvrf7KUCVlo7PLoXmKeX0FFfm078wAYu4zWrr9VMKr1qDxq8/3o0OwVhp
/iWH0g/J485mCz9Is3L+xWESnS1YaKMVR2oOSF2nM4fvQK/8UbV+GuIjEnW8HyeNYSaFkgGCMuN5
FzqtR7CQYzOPoLyYQ0JA+KJjln5qbvRgiIhiRvQjI0bDCji0TJafHsSc1n699S0kUoa5mae+Kg78
OXNRRXbWTKavk31uGALD4T3eMKwYshWHO5VdOyiRnmBOpS0OHWUHIAoOiBQBGF9ZkruyMb0MZHcI
kd4VAnp7nJmsrPhb92ICCKHH3DXcY4bcS3aGeJXqkghmKylPUIPF7hEG4e+V/77xUuNN4NANVh4a
MS5YHgpW/kYbLqLRyIlj/5VZ/k3K9Qnl0LuKKYfYK7nqBMlan5pIwPCQqVfIGft+FxTi2gQnk3jZ
l2sqq3I8xcQ1MHbf3JrvS8r3o6/qclufcecRA0IIfQk6vhea9jIHKlBcUvh4UE4OZoeEMgoVhk+Y
C0rU8KWVgl6nCOUC73NFYDtbbeU3+y5d+mvikGiW9GqkXLvAaDkWgzlSCaoJvlH4prWC6DvxScwS
p+s7iQiXl7iHx4PbPlVnGABt/2deicWdmOiEmGHAh0d3NKBTaubEz4ZAtWN2khVN9qugvZ6iEXr0
F86xbQ7xFsMYVXxRNQQO/kjLmIfEbJ8eylA9k4Yk8T2a6y7LLSM2tQrJRFklQO+JAViPq5WseKL/
njyn4aXdsZboCt3BAmrQS8FxyA0BNjBFnZb26C4nRsvRLa+x6ZQ18+q/Uz0+6jyPhs0Y4RZTiyJO
PphxM9IZuUEeZSnXLIDO+/Bs77VSDHXK1YE/C+nCEEMFcFn37/cvHp/pOi7dUw9CiqhmkQJsDa+U
fPFvB0xuXY4mchfajp+TfB5jek+l/0dFx1M7LRloIukl6k9l4NWTXDqlLRJ1xaBH+wo9op7By7ll
mKhg2MyJUxs3JS0UuAW7EVNx41TJ9eyDJsxd2raoqYkRycIzQWzqdJA4zaxca1Vgn52ty5uAdMqj
N/DEqYr56gTWm7oziSu1yP1afKaXuQB3+nwJaMV45Ghd07+kqzDi9xtgLPV29rwef0lV2XmnMRvE
UFrodmgUbKlNPijxXpzvq0EG0jFIaYmhOO3q1MwKPIU9vbDNb7WbXaf2+bYjs+jDbu31HjohXNa/
7fCzXvT3GLlT8Cx/7eIiUt1V1WpNectPLm1H+101bwnSvsjfsDIE+W0HUAMuFSIubiaqH2ZkKDkU
gY9wbn70Cyn7YzSpyYSieVSXDrj/LJkrXt522/kJMs0lglgdkcfhb2oje1JAfdHcnqKXX6IsaLMT
rvVUe7idJbqIQHMJE+iKAeT4WikGBybktHaT7IUy3gMlGrO9wgF4aKoabOIjxNJuW8ng1zGCuxcg
f3KD/wUEYR2IbDTUGDVVLbpoxBaswkwa83XilTWhDnn9EJyQKGJ0dNNghCEaokeSyAepcVc97wj9
WZj6z1vORt/ICA7LZWLuhz13mP0M+O/qV8XCBoVsfuqIbjzlyRT0ASn419+rNk3+9stoS5MMLhJl
t9B0LHtV5DW66fNM1f/hWTgL+pqaTTWdzRf8rXuKpYXlvC3plnUZXc76+V2en3BaDEgBn6LUuwlk
rRx1dAbLspBivuJAjirI90oQ1OtHKSfbyl42B8VCk+shxXSAivX/myXi1R1vxSkY3ud2FyDQmTrn
eZYo8Wm5LxtTYynPrPLyp9YDFbrixxuGUUMHFKsFHODIBjS97bSpJaj/qf0R8ZAN2otOSG/xnQBM
l0PBTmokk5G55Sr4PgQwf+b/juopWViZkkyKr802mYXq8+UAwuBrrv2fRPx2uY/F9CW1caN6EVWk
Scq41rTcNa7fzIKGPPvkz+R6xHqTItIGcy7MB1kmkulCvGE7aNpP1oSBuElgZ3ZslYRxR6edtlJo
l8GbB6xCyhMPObpJEWoklwqwHDCv8y6E5axE7Qtn0orFPX4thvNGdXV+xvFbMRYWi20sF6zE1+2/
r6iJUYc0IxiUAvMS2rH7WrEIBD3OWkuRSuAUm/Ew+oOWG+mce5pmyjmMHxE+Mfo31CKrGEU8JR3A
2oPj5GyaKgWq7iCpeORBNyk43RwX7mWa64aWFtA6U+4sR9w2dXWkRgOhPm2s8J8uc9ebruIeR7Sh
ra+4xRZYVYdcP3oN9514RON7Lb0aciQRdJd0ZVsIZe3YtmKZDd29y1jFwvBehod+LIaOeo3OfF8/
2yjrJZJmnMhrCZktA43dJJagOM17jpYxxjUoJYLG/h9izg4QsEzVPLbkemJRAODpNEaTQd2d2I4v
yfKuivNWW4qF2fddhrD1YaJda82rzg3DeZbnww0Umft9FBXFW2TwJdkuSLMSfRRRRKiUWXyfFUEi
Gup1wUCEq5Qx+PtnI0/q12nHDEqYfRXBHHgS5wD0Gxs7rQsM9mlff582TlmU4pihOWKqT/JWpl2R
dbtym12qnVIQWvuLvszdHrWbuTjVDNqhZFpl5j1Pof5EqtM8Ft2Taqmcnahw2H+Hnq2GIComa2Mm
lzmA2G1hrH8B55pYaijQNLFVxQhopwAYOyJ48lE7pYw9XumU8xwqV/cuKg1P8yQZvTEsgPTox/OF
S+U0M1J/rYLGa/AzqfxAKHl3JmqkzHR+8FJokS9hMpuEwjVf4bWkMOJ8tfChKgnq+zr5xldKABM1
CbFsEcGM0BVP/HqqEj2DQx65CQHiv8u/vYz1IMJBW/Sy7Rnqj64Tdfb3B1Qyo9U9ZHSiv+Fq9Luw
fIwLwZ9NFkz90QXPKQL3ZyOxdfuM/91EDK48MhpvXCeQAiKw85ynDbK+zhhA5q2zGHJ6LLJE+qji
sKXxV9Bq9xQjcE2Bsn6W6z5BqXRTZLC6qPpB/1GpnKJuDvWdjolGS8CcHe0YL7R9E5GlRV9YbGVR
frsTGTkz/h7t2YAKRifV9YtRApkHjwbTfWlUDtOEVMgsUCYpUph/05Vzpc8O6ykSuFPe2JoXHkpP
gEY/2yfy6TVgpTdALs+AsiNkNeMsTjDOWp780qtIzqfQR/y7zPQPOKdM78WQ33BhOKkwyDpbwXlm
1iiVQ2qs/W7TC/v96d9WsdRdrq8OXDYTRIUw+B0r39RgI8l6rfqSF+v4rVYcxUl4+nOwwOvESfpd
xm5FjhNqJ7In/0np6xnRy4mbwaZ/KKTQYCHFRS3bMgwpMXVxWaqWPIz2KSyzFoxsiIW1/5HPqiBY
uBvZNB13bk1xSOjHg2F+tvXsxAanPmvzQCSl43bZFaTaEFwdoyfFTgthMEgQrQcA1TLmjjub+894
eVFYvx0vFsl9u5zrBvdEh5Dgky/xgVs1D5E09wtgexVrf5Y407H57zzsXxnjPSl8qfW4wyq+HsdA
Wpq6cTI7uvimPwQ3QgAQJPCYE6Rhyib5gCVOlYfQ7r6Q8iTEEym2a2vhK4peTeKH+XNLSpvPEoru
7bj8123ieENAY6fv1TNaWZqrVZ+ulMFM2gzFSryVYFRmzLUf5UykT2ysb0ZqPhB2IAgoqftLZOw1
YBM+e1p+f4Dg1TQedkDmil02jppTW2zoemhNN0PFE3EdVLFa8wYEk+cnpIs//UFvMStHmjQzOBPb
0ET5TSSc62/d+2JT3xn40D83yojncLIuTRYxSExwLLx8lX0k8DbPc9ohrttTjSyCh0ggwOWahHIy
Sx+bCS1CI4VoOJi0VE3kMRwWp26Vk4TCZWEaEwYkapF6dQ0AgVl9KbOjPkGBoADKl3tjnMHXuVku
ce6CwifcNEdL3r5MeOU879+ck0bmEyjCBKUSD1zGKu3GoiYTcUwp+5vSh5En36pXQc+jEIjuX2K2
hYBWJkY3xwLmYcZndYCLpOCDfoWrc3T5XtuI1KTNIY+Ammbfgx+fJEyJM5/po1Ohi3x22xcrnGAo
Hj3a6Mydzw3yIzx9BsTKL6eqF67JVpMHHXqDmLKmsGEG4+hssEhnAiQp6qzfPLp3TbL4N9IlioVn
cCVjR3a+MFZicsle9uLDb7zPYROyU7uRQmOwRVsx2MCrZ/aB57Bw3/Izn4DBDvhMPGmbgJPKTFHN
e6J1QTp1CwhRkKiOKTib/prx1JA3Q/mZ3I4FbkdEoUhCjtz3Qf9Bx6Kl3HKnjle3ioGNFZMIdSgC
2l466K9HzlG60U7WFlhgqI1kVmEIkP+ecoY6B4CAKPk/EXpVTTZUa97SbdShtkM374fP6rWYGOti
IRXSwd4tvrr1/6iNtEgwhk9h7kt4KR03H9kjQODda5OAOCjlipQy4UwnoDJZMFh9XAWv6AtHGSAI
G97x9Jo3gBG/0k8E18SyJ6pDPR5X2XhVH9Obc3N8abA1Qx5DSuiWUVA58DIW564RcHJD/RjmpW28
Nb46hdqhcQ+nXfnHt5Q55cRJDbs8J8X8l2bR49rx2jg3x2pW2c7Nfda5WK4Wns7h649eefZZWnyy
QUj+lcvGPAeJx+UtbhpVFkDY0ddbvFdbfforkTV1FiGpIpa253IWxpVUg1FeFajs/NA3oOnBhQ/C
0VSHOh2THdNzljb4QsNkaVFo+2SaaNfCgXW/R/iJxr7y2Y69H7oY/h2Gn6PRsTxXbeCIawryS/5E
4HBZWLTEeArEsDHdK695fryXk3XMP1UQb2ol9ddRZp/r29p5o37PtARNOPs3bs1NqInJZjrEPEKC
QiBOd5tbTm+72shToMsDM7STnMiUqSGbTgMxbLkMhQMRw0hUU1mpq2cq9gApmK59TtP+b4tq9hGk
0zt9DXSYDMwSU57tTVHcHPCIgxeHr+bONbB4wtCazIj9MrMEsyN69anTotvOld91veP/78pXAI5r
igYppIZrcMReUeT2mQYN2ruzRhUdHKhHd5dfAsJbIvN0Uv1XrYVnec9JFIy95rQhrnPpAX1CbSyT
ELIh9rft5N1LKLj1OtQQUu0XjPQ3WhD8ooHiroKsTo0DTLNRX6CF6WZmGqVyRjhDLys2p4pE6vZZ
XX1V4YSvHjyby2cTjBMQi9zt8VMAOooFHwvm0kzJFQbxM3y6cyu5YElYCre8q/P0BnoFXDLzAahq
mHsiAY4ZkS/nwkdlCVZWOBo2ea5YSP3j//RCFBHZk0pyG46SIqBQuuIINyEirAwTH50+5Ct0ZqNw
waCgH9BqhvsOnh8FcbHw/OU+/rxquRdMRuMae2ozEOQof0zDk7Qir89Rv5Dw4UszSixNcu/pazIr
qhRd47p6/tw85FwmblFe8sj8wlCysa2H5QjXLPGCLOaB+sD75RWmZIzia6YqNtL6JcxWw97l9ljW
6Yau0a3ovuR4TypUtOFpFEwJW2G3IGMx21sozMRSTvRgikdauiBWGX3KdTfRTSX/ZY5KyVGSDD8T
Cqgt851QRFF+oLTN31PlLSSIEz2LjZgVITbvCxySbk1gCw9qErZHslBicRiXI/zXnh8Q/VAW7EgS
LXkQQvtKCHSY68q+KH2Z+aofBXbkpu4juFP4ES735JkHsWY32tQ/b6K8ivF1fUGdurfoLJhSPuin
sWjkz8D+qdopn2vVyOhFYBHvrsWPEM1nvbp1I3AkFmdmRvLbyTxkEz7Uk4y4H0352IHnfsRXxtFJ
ea4fVSHvGzzXCZ7tPr3IWJMR2chb/OQr3Py3Y0amhZPVHhANAZUByoUtQhZ8dUYqVf1uYrmoSA1p
7nDDpelDFWoBGHdrCbFrMI7MVwSvhLxt3DfhM8GX+XYG8kj5u6qMaPtEGBlazd6hIosWo19el1Pa
XMpdbRw+DW/vqMMZgUSzdUtYnpGnN203CH24E385EOd9zJaA8/R48Hvv82P6F+/AEhBNm6iP6Zke
RKMgz7528vlRYtw6+4jVujpg3nPlqEtVBl7EaibQzK6a4UnHTiyHvzf+KqF9ukjNCRMvn+LNDyWa
txdtWr7ZW+s1F1a6jZu/qvhIk2XkkKESfOiMVV2qXEdSUPiqo31TQ+1z/cFZtoZzUsa1Nz9/Lzf7
WenhD1ZvY4w1xbmICD8u1bCF4Ma0Rj8eb1IlVuZmsdR1q0xlsQxCv+U2z0eBk4gU+q+doNPMSLv2
8oSkj0DEPaE4wMUilVm0glwCnsyezkjhUzk61zL4XENL6ELWQgqviQHhus7/QROI+LF2Cnns6lyr
HnZCxtYXNddj1gkFEpkafJWDYeC5Wfafv2UCJJeZY7IB9wKgo4V3MlbdCbONi5EYkKrOEQEa55Ui
be7C/VAopwvQxyZrY3LhOTLJN6ajsF4i/bQELpIvG+H0dDC21qFtSbp8EvP7FknZQzMPm+9AwemW
fbCEpIz+VDxAdZsMfJo4OTVB0ECX02CY7ouQWjvPPEgtxNgNVLaL5H8Vko5Ff4lhijfwSUC1Y5fv
spdknC6kAJZlb4229wYjixmFZLBsG9xNLUWQviAHG2Cxv20AOhzUoNwdFAcV4dZdhofhPMF8KtoU
My5PLSTSBrLCoYn0138EIijt/LBsLBWlZ5/W1KsUoIw29c72VAasVk6YgJnyXN6oa/CC9Mbojta7
vSI19VvTaVV9hVIrCctyRo2VyEgmpo1RLkgJsubGhaFLz5uXMEWgsVNiizGj4tHTEcDnBu+KmGM0
TJ/9I6t99dWyEde5JTi25uIaSEnDOcOf02eAWcFqi8J9CcQoeMimrQgF+8d9GpPgmi7fAgCPO5XM
X2gD2xz78b9v07R5/krKedTb5YXVyXfDuJEPIEbXLNKS7B5JsOWUWaStv6DgkvH38wpZ+QlVMHD3
rkRcUUJEJMWbyeIbdMR23WvYTLVYusE2sz7jtDXGxyxBFWArN/XniYgAgnUai2jXJBsVX/qTCJ5G
bw66aVIOTwx3ozkKECDWMkpx+cvMfpvGE0rOjlw58TnYfSp0GKsUe8allhNDsjV2txGkWyRTQ6wo
K3Q9WSpn/SyuSYbhgfsuQw9H0yvJc3c+6u1jnERsPg/TvUSts+08mP8m7oj2Z28b82YQCa5eerGs
eIebb5YFfwcCM3cVcNjlwSTsv4JOqdcc4ne2gT8U+Yq8u+lzVDp1gxm/E1T+Ypusqe9K3K/DqzRC
blBFFKmJ1e43HNm3MsocUKgy8WMgMhkVjY1zUP1Q6WDbO2orGFQQ23iXkn6ki5UtmrrlxxGnuic9
VdTl+c+wv20xEo9NvlFYefTliIsF7J4cgER/RzFlbWsSWyvM53UJlDkHEt+rpJ9btL43I1jWk6+6
sPXFo3axr+Hf3ptyNS2V1mIq6V/hJ5KGd1/8NI/EQdmiAwtP3YszclpA4lbqtDoWO3xZyNXmCEvL
q0d1EXTzfVbmmFYDMhMPwZhSclymB5b6A78jutNbv8crlVVldG121ZW4MPbvNisOs7mJwgH0QvF8
3DOB18AkXZcBdlaHiX29gA9w5a4pxk8XgIpiaOOJkA9QahMynuAAyNjoc1Xalua14fSWvh092eYo
DhCpzgC/IW6ZAwp7dM88/UHqAXF7qpD0hMUYr434uOu087OcE5yZgvtZGcpbzYBx2EFcvVOFGb53
ARYVHjIPIvyPbQzdgrRn5tH5aE/KhKrd5YHge551Cc276E+CDVJjXxrDglSxg23XFbviCTdzZ79M
yjdMUgkdW4SLmwn3iemgV91E9dcHH03i6iJ03MpXG5PmnGbckP++H+oPDXGfgU0AsY85GVHZ8I16
JhSLTZywdMQZGfVWMRkRfBFlc937pNtSkKoLmkRevq6E+bhCbexfR1zWtuDwKHcO9V1P111rVe7N
fzBg3DvsoUHJCTxPpCxUw8Xe24fCgK3sIh7FndCb8lef1xHwvn6ylJC3T/4/8hHvI7Hai0d7dPDI
WUWyxZto8nQBHsPZhDF+rJDq3SBdKAZuxHKULLmTexwM46UNueFrR/YZjimnHx9f3VLjLjKjkNdU
b1/DTZwccWXyViSiexpozr1os6gIzFBu0fzSnOY5k+4dWwnXNll+M9716L45HyyTHzOSXq+M+K9l
+STeiioP81g8Ab6DBwqKAORisDdwQGhh0GshoOwuLXuuHNaHoGTkzTNqM9z4vK1lrJy9d5IuItcR
0SzjwHakzlpm3RaR9ayjYW6fPgj4KO1KIOmaG6/Hx4/gKaKsBCtRvLUT/AqjxR9C8QZYSqrK/phj
ZR9RRxJZIuszEuQ5b1yTAPKhAwOXoHx5Y0XlTPzQvMHoVIL7bWf/AHKvQ9JebNvSu0DVkYLDHOh2
hav8fTJQqBTfsUV5JyoRokGLp/j+bYG/wgtRf7SbBs5T376WuO3Zy58yoN6JwTgDPk6GbVZ8zQys
BhPUhZ/xZp5SwFU6fv/kD8nUqoCSgLyy/8UFuWhMeCfqMCtqGDH41kSFC570yDmCpDYMydzRB87k
8CmfP8yNU+uMsq5dULdjG9I5vV312vatWwV2QdZ62E8JOGzbj0rX+f2ZNOF9l/KRVZoSdEYd3AOF
to7/Rl27sE6sjplIeC6jRRgJnMrc+YLtlPGdifplucDl8bgYH9a7Vrd/ruwcAfbohxtxiIecIi3s
E9Ah+dYCr988wjhjqAJOLhbEhgc1FAiuVUmoimXA607RS5ikm09TpF8qkPJu7+pizKYh1+LHXSRy
DIAf4uyF9JOqkmmm7gE+WJ8fFGLWWEtzHhY4nRthopzrg9yMAZVwd7FJTKkfE2Hk/iRwpnPue86n
zBl8FLA61CxvarmzREOO6oQ8uV4E2krNTJPW7BlawRD1c9rN0/i5r2pVHfztLYg9+YayUO+Pxl9q
yg5TOde9YmNfE9TiFdDAJXAGFz8ZUPFR1KyXajT3TJzL2J0B3mUZZuB3lj/peS44U/jnkSiD1lmz
LzWnLoQlgHL462QgfWQ8rp+1UugttfMSkrmGT7G8irmpFyPP/+5TRmuRK+6fOHMaGmYsk8KQ6YNW
BnrWW9YCOfL0Oxd94WOuLXaS5WPecHwqamVeqO5z6W+JJIYNXlGMCxzlNUpfK0lGSXp61MMXQd+e
8P2/Yq4/SzmUyD4Igozqn5PJ3b7Ktim40wLq1n4a2QRGjI/nez/kp5GgQx0QWxu6ikJMHhBayE3E
0ZeEJpqXKVCbmPxQnCGDq4dbTxMbWl4oRl/TZ4dFApVtQT6yuMHwGyK+9EeF+yUSdcgDgMLK6zCl
v4J4FEjBF62fGRhrW1obP8ofZE1eUZKdsRL1qu8AicGDFFx+pWd//vkWyJb41fXQqwwS3WddKla0
zsnevglmxhY19l8rK9c/0D/3yLR5LzDXIPhOXIs0SmL1/PACaOSUaHu0fQExUGLeXVf/gE1JkzBg
KqZYCjc6AzunFSW1nzcvAHW7LXb8thjC1qUhUwd1C8tEKQvf6CACP3ThK+FDNmcDq3c7JorasYD7
PhUSKZCPlnG5gg42RRK0LMjvRECNTzIItXyQvUdz0hefUPEEEjcZh9sAFDtfZP06TcmTNcs8zSGm
qVgXk+49wOKX7VJMTOXfUyo21kLwWDyUJS4qhgQpz6/7h3XuKutfL6QVoHE96awsBuPssqlzXHzF
lTEgL9tOvpWjgHoFzbdFedT1gNGP7xWlUumoxNNA9mOOUWoqKtQD+hekwoU76AbstcobZMY46zyl
ZzllYP8wf1dhqAI266Rdj9hlAwgf9mdRsVHoWGcj8+2Hhx9Qpt6TElLOqHwrr0ThSb7rx8ArsuD0
VKYEWvu1/sRc8pHbIjdcSx0ZAM7QcN6FXs5SRFM4cRhHD8l0Lxm5jpGWtlSu66YjXIvatmzRAvi/
ePLQQaAY4Mo2iLJKFm2eIxWOCdso6wUelzDspmslozG2vArF6wrsTaQIbZJoVNfPUsf/6gmTCJjw
tus42ugfuwCshGxscyT6SHYMf0j3kd23xhaBwxPNqz3IUMl7ifo/AXZ51HZ3u/0q/7rVVXR0NvVc
fplzV4sY784RPIgZ7PSfXgA/azWFsO6kMJUdEaeP653VZvnEhF74A+0XMxPkL5jp/avi/P5UdqwU
CSX+P0QeenVz6nbFwJwR6njZfkXYCnxFJU2BlgqHw2/BX2AYPLplPgP1IpbKwpxwGnxNeKB6yG7u
g9a6xleTQ6Rhu3c4J5MDIgbgDb3tL9wqAyfAJhHC7MmsgYgLjRHbf2rP//v8D2yyaqeuKbjCNWsz
Nvq5Jw/WXn42wqZgbxVl61YVfWY24c5KyXWXZQ9Y6Co+zV4w8nJOPlAFgjsS8IPR+1MvH5rhznhr
RiwNQi+SUaoPUw5uhrpPYOG2/hdLG1YmRtOh/wFQX1v9/UMSjOR8AFs79rfakz4uAqFuORRsL+Ox
wnxo1BAFrvmcohjH81XVb2j7DmJjg8fL4+Hcr/+xmp+cAjDvM40zhbBMb+ojrjn3BwbvzP16djqp
ZDZEJ7LuuJ/tCG4kzwhg68ZwEIAT+kHmr1iqRejGsL6RVMFde1nVYbo4ZxE6cvp8BRJ0G7hsY+xm
fxJ0/cwXQ0HIcZYCwNqAhXY5ug4NWvT7lFwFsRZRMV5m1oxnxsFbHwUUz07+V97DkU6fCLMyOpIS
zHo+HFeRA0EfzCgFAbQCXkZKbcEg4Rjibojwja6+D93loN1PGAhPZZouxke4E6fnyUuB2zwqQ3n4
6jBMIcsd6zkNqbd947SR+7Vg94J97xNnANhq4hRvbM0dsrGCzujwnx4+RIbFVKZUYZPURBpJOXGt
vW9MJm6fW2XlK01R3vPqSKInvQ1kcCh6ZPoX0yONoftYc39MIh3hIkz9oLALC4ENHdhX4P/1lscO
f6hdv23qw647nMlhmeed4od/xlXbhCDiSA3V+caZxPJatwEvtMz2wqzF0I6bqvqptrkloo9I3AXo
hNtBGOAsG6xZA+dylADwZ/HAqkQT7Vf1fILxEuZ+mM4TTfVqy9dxYO3+wWDns15C9ibW1EUROcUJ
tinf9899Z39q0fnynOaioUyq3mhtS3NRnQTE8nKO9gE2T+4uAFm/VTxl+dZGtafAFzm1fc0Df0dO
ko50WzkNrdXu8Bm9m3WNlPLEeJHLJDc9hBb5Bp2UsrBifLmdt+AvDfDOFb7pNMXz3SJ58sKhscRj
JLi2SC5Lc80psS2oA5E6OW6pddNQYL8KAZ30TL97KjqX8px5w0VrTuamCrS9AdQuoxg4DbC0neO9
ZghhgeCsaEZsHibxO9ljmWfaKPCEd2jStqWhBd/hjVNFePR9X+MzYg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
