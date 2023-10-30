// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Oct 30 21:19:52 2023
// Host        : TecArch running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tecstylos/dev/QIPU/QIPU.gen/sources_1/ip/FIFO_Generator/FIFO_Generator_sim_netlist.v
// Design      : FIFO_Generator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FIFO_Generator,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
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
  FIFO_Generator_fifo_generator_v13_2_8 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54304)
`pragma protect data_block
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
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
