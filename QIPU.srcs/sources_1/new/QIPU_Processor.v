`timescale 1ns / 1ps

`define KEEP_HIERARCHY_TOGGLE "no"

module QIPU_Processor(
        input         hw_clk_i,
        
        input  [ 4:0] hw_dpad_btns_i,
        input  [15:0] hw_slide_switches_i,
        output [15:0] hw_slide_leds_o,
        
        output [ 3:0] hw_svn_seg_anodes_o,
        output [ 7:0] hw_svn_seg_cathodes_o,
        
        output [ 3:0] hw_vga_red_o,
        output [ 3:0] hw_vga_green_o,
        output [ 3:0] hw_vga_blue_o,
        output        hw_vga_hsync_o,
        output        hw_vga_vsync_o,

        input         hw_uart_rx_i,
        output        hw_uart_tx_o
    );
    
    wire reset;
    
    // clock_manager
    wire clk_100;
    wire clk_cpu;
    wire clk_vga;
    
    // program_counter
    wire [31:0] pc;
    wire [31:0] pc_next;
    
    // instruction_decoder
    wire [ 4:0] instr_opcode;
    wire [ 3:0] instr_reg_dest;
    wire [ 3:0] instr_jmp_cond;
    wire        instr_off_sel;
    wire [ 3:0] instr_reg_src1;
    wire [ 3:0] instr_reg_src2;
    wire [22:0] instr_imm;
    wire [13:0] instr_off_normal;
    wire [12:0] instr_off_short;
    wire [17:0] instr_off_long_cont;
    wire [17:0] instr_off_long_split;
    wire        instr_rel_jmp;
    
    // control_unit
    wire        instr_dec_enable;
    wire [ 1:0] off_layout;
    wire        mem_addr_sel;
    wire        mem_read_enable;
    wire        mem_write_enable;
    wire [ 3:0] alu_ctrl;
    wire        alu_src1_sel;
    wire [ 1:0] res_sel;
    wire        reg_write_enable;
    wire [ 1:0] imm_ex_mode;
    wire        pc_enable;
    wire        jmp_enable;
    
    // register_bank
    wire [31:0] raw_src1;
    wire [31:0] raw_src2;
    
    // offset_applicator
    wire [31:0] src1;
    wire [31:0] src2;
    
    // immediate_extender
    wire [31:0] imm;
    
    // alu
    wire [31:0] alu_res;
    wire        alu_is_zero;
    wire        alu_is_neg;
    
    // jump_decider
    wire        do_jmp;
    
    // memory_address_selector
    wire [31:0] mem_addr;
    
    // memory_bus
    wire [31:0] mem_read_data;
    wire        mem_busy;
    //////////////////////////////////////
    wire        mem_ram_read_enable;
    wire        mem_ram_write_enable;
    wire        mem_ssd_read_enable;
    wire        mem_ssd_write_enable;
    wire        mem_eio_read_enable;
    wire        mem_eio_write_enable;
    wire        mem_vrm_read_enable;
    wire        mem_vrm_write_enable;
    wire        mem_vga_read_enable;
    wire        mem_vga_write_enable;
    wire        mem_uar_read_enable;
    wire        mem_uar_write_enable;
    
    // result_selector
    wire [31:0] result;
    
    // random_access_memory
    wire [31:0] mem_ram_read_data;
    wire        mem_ram_busy;

    // seven_segment_display
    wire [31:0] mem_ssd_read_data;
    wire        mem_ssd_busy;

    // easy_io
    wire [31:0] mem_eio_read_data;
    wire        mem_eio_busy;

    // video_memory
    wire [31:0] mem_vrm_read_data;
    wire        mem_vrm_busy;
    wire [ 7:0] vram_vga_data;

    // vga_controller
    wire [31:0] mem_vga_read_data;
    wire        mem_vga_busy;
    wire [ 8:0] vga_vram_x;
    wire [ 8:0] vga_vram_y;

    // uart_controller
    wire [31:0] mem_uar_read_data;
    wire        mem_uar_busy;
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Initial_Reset initial_reset (
        .clk_i (clk_cpu),
        
        .rst_o (reset)
    );
    
    Clock_Manager clock_manager (
        .clk_i     (hw_clk_i),
        
        .clk_100_o (clk_100),
        .clk_cpu_o (clk_cpu),
        .clk_vga_o (clk_vga)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Program_Counter program_counter (
        .clk_i        (clk_cpu),
        .rst_i        (reset),
        .enable_i     (pc_enable),
        .do_jmp_i     (do_jmp),
        .is_rel_jmp_i (instr_rel_jmp),
        .jmp_addr_i   (src1),
        
        .pc_o         (pc),
        .pc_next_o    (pc_next)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Instruction_Decoder instruction_decoder (
        .clk_i            (clk_cpu),
        .rst_i            (reset),
        .enable_i         (instr_dec_enable),
        .instr_i          (mem_read_data),
        
        .opcode_o         (instr_opcode),
        .reg_dest_o       (instr_reg_dest),
        .jmp_cond_o       (instr_jmp_cond),
        .off_sel_o        (instr_off_sel),
        .reg_src1_o       (instr_reg_src1),
        .reg_src2_o       (instr_reg_src2),
        .imm_o            (instr_imm),
        .off_normal_o     (instr_off_normal),
        .off_short_o      (instr_off_short),
        .off_long_cont_o  (instr_off_long_cont),
        .off_long_split_o (instr_off_long_split),
        .rel_jmp_o        (instr_rel_jmp)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Control_Unit control_unit (
        .clk_i              (clk_cpu),
        .rst_i              (reset),
        .mem_busy_i         (mem_busy),
        .opcode_i           (instr_opcode),
        
        .instr_dec_enable_o (instr_dec_enable),
        .off_layout_o       (off_layout),
        .mem_addr_sel_o     (mem_addr_sel),
        .mem_read_enable_o  (mem_read_enable),
        .mem_write_enable_o (mem_write_enable),
        .alu_ctrl_o         (alu_ctrl),
        .alu_src1_sel_o     (alu_src1_sel),
        .res_sel_o          (res_sel),
        .reg_write_enable_o (reg_write_enable),
        .imm_ex_mode_o      (imm_ex_mode),
        .pc_enable_o        (pc_enable),
        .jmp_enable_o       (jmp_enable)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Register_Bank register_bank (
        .clk_i          (clk_cpu),
        .rst_i          (reset),
        .reg_src1_i     (instr_reg_src1),
        .reg_src2_i     (instr_reg_src2),
        .reg_dest_i     (instr_reg_dest),
        .write_data_i   (result),
        .write_enable_i (reg_write_enable),
        
        .data_src1_o    (raw_src1),
        .data_src2_o    (raw_src2)
    );
   
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Offset_Applicator offset_applicator (
        .layout_i         (off_layout),
        .off_normal_i     (instr_off_normal),
        .off_short_i      (instr_off_short),
        .off_long_cont_i  (instr_off_long_cont),
        .off_long_split_i (instr_off_long_split),
        .off_sel_i        (instr_off_sel),
        .src1_i           (raw_src1),
        .src2_i           (raw_src2),
        
        .src1_o           (src1),
        .src2_o           (src2)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Immediate_Extender immediate_extender (
        .ex_mode_i (imm_ex_mode),
        .data_i    (raw_src1),
        .imm_i     (instr_imm),
        
        .data_o    (imm)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    ALU alu (
        .alu_ctrl_i (alu_ctrl),
        .src1_sel_i (alu_src1_sel),
        .src1_i     (src1),
        .src2_i     (src2),
        
        .res_o      (alu_res),
        .is_zero_o  (alu_is_zero),
        .is_neg_o   (alu_is_neg)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Jump_Decider jump_decider (
        .jmp_enable_i (jmp_enable),
        .jmp_cond_i   (instr_jmp_cond),
        .is_zero_i    (alu_is_zero),
        .is_neg_i     (alu_is_neg),
        
        .do_jmp_o     (do_jmp)
    );

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Multiplexer_x4 result_selector (
        .sel_i     (res_sel),
        .data_00_i (alu_res),
        .data_01_i (mem_read_data),
        .data_10_i (imm),
        .data_11_i (pc_next),
        
        .data_o    (result)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Memory_Address_Selector memory_address_selector (
        .addr_sel_i   (mem_addr_sel),
        .instr_addr_i (pc),
        .data_addr_i  (src1),
        .addr_o       (mem_addr)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Memory_Bus memory_bus (
        .read_enable_i      (mem_read_enable),
        .write_enable_i     (mem_write_enable),
        .addr_i             (mem_addr),
        
        .read_data_o        (mem_read_data),
        .busy_o             (mem_busy),
        
        .ram_read_enable_o  (mem_ram_read_enable),
        .ram_write_enable_o (mem_ram_write_enable),
        .ram_read_data_i    (mem_ram_read_data),
        .ram_busy_i         (mem_ram_busy),

        .ssd_read_enable_o  (mem_ssd_read_enable),
        .ssd_write_enable_o (mem_ssd_write_enable),
        .ssd_read_data_i    (mem_ssd_read_data),
        .ssd_busy_i         (mem_ssd_busy),

        .eio_read_enable_o  (mem_eio_read_enable),
        .eio_write_enable_o (mem_eio_write_enable),
        .eio_read_data_i    (mem_eio_read_data),
        .eio_busy_i         (mem_eio_busy),

        .vrm_read_enable_o  (mem_vrm_read_enable),
        .vrm_write_enable_o (mem_vrm_write_enable),
        .vrm_read_data_i    (mem_vrm_read_data),
        .vrm_busy_i         (mem_vrm_busy),

        .vga_read_enable_o  (mem_vga_read_enable),
        .vga_write_enable_o (mem_vga_write_enable),
        .vga_read_data_i    (mem_vga_read_data),
        .vga_busy_i         (mem_vga_busy),

        .uar_read_enable_o  (mem_uar_read_enable),
        .uar_write_enable_o (mem_uar_write_enable),
        .uar_read_data_i    (mem_uar_read_data),
        .uar_busy_i         (mem_uar_busy)
    );
    
    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Random_Access_Memory random_access_memory (
        .clk_i          (clk_cpu),
        //.rst_i          (reset),
        .addr_i         (mem_addr),
        .write_data_i   (result),
        .read_enable_i  (mem_ram_read_enable),
        .write_enable_i (mem_ram_write_enable),
        
        .read_data_o    (mem_ram_read_data),
        .busy_o         (mem_ram_busy)
    );

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Seven_Segment_Display seven_segment_display (
        .clk_i          (clk_cpu),
        .rst_i          (reset),
        //.addr_i         (mem_addr),
        .write_data_i   (result),
        .read_enable_i  (mem_ssd_read_enable),
        .write_enable_i (mem_ssd_write_enable),

        .read_data_o    (mem_ssd_read_data),
        .busy_o         (mem_ssd_busy),

        .hw_anodes_o    (hw_svn_seg_anodes_o),
        .hw_cathodes_o  (hw_svn_seg_cathodes_o)
    );

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Easy_IO easy_io (
        .clk_i               (clk_cpu),
        .rst_i               (reset),
        //.addr_i              (mem_addr),
        .write_data_i        (result),
        .read_enable_i       (mem_eio_read_enable),
        .write_enable_i      (mem_eio_write_enable),
        
        .read_data_o         (mem_eio_read_data),
        .busy_o              (mem_eio_busy),
        
        .hw_dpad_btns_i      (hw_dpad_btns_i),
        .hw_slide_switches_i (hw_slide_switches_i),
        .hw_slide_leds_o     (hw_slide_leds_o)
    );

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    Video_Memory video_memory (
        .clk_cpu_i          (clk_cpu),
        .clk_vga_i          (clk_vga),
        //.rst_i              (reset),
        .addr_i             (mem_addr),
        .write_data_i       (result),
        .read_enable_i      (mem_vrm_read_enable),
        .write_enable_i     (mem_vrm_write_enable),

        .read_data_o        (mem_vrm_read_data),
        .busy_o             (mem_vrm_busy),

        .vga_ctrl_x_i       (vga_vram_x),
        .vga_ctrl_y_i       (vga_vram_y),
        .vga_ctrl_data_o    (vram_vga_data)
    );

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    VGA_Controller vga_controller (
        .clk_cpu_i          (clk_cpu),
        .clk_vga_i          (clk_vga),
        .rst_i              (reset),
        //.addr_i             (mem_addr),
        .write_data_i       (result),
        .read_enable_i      (mem_vga_read_enable),
        .write_enable_i     (mem_vga_write_enable),
        
        .read_data_o        (mem_vga_read_data),
        .busy_o             (mem_vga_busy),

        .vram_x_o           (vga_vram_x),
        .vram_y_o           (vga_vram_y),
        .vram_data_i        (vram_vga_data),

        .hw_red_o           (hw_vga_red_o),
        .hw_green_o         (hw_vga_green_o),
        .hw_blue_o          (hw_vga_blue_o),
        .hw_hsync_o         (hw_vga_hsync_o),
        .hw_vsync_o         (hw_vga_vsync_o)
    );

    UART_Controller uart_controller (
        .clk_i              (clk_cpu),
        .clk_100_i          (clk_100),
        .rst_i              (reset),
        //.addr_i           (mem_addr),
        .write_data_i       (result),
        .read_enable_i      (mem_uar_read_enable),
        .write_enable_i     (mem_uar_write_enable),

        .read_data_o        (mem_uar_read_data),
        .busy_o             (mem_uar_busy),

        .hw_uart_rx_i       (hw_uart_rx_i),
        .hw_uart_tx_o       (hw_uart_tx_o)
    );

endmodule
