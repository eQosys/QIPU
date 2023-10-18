`timescale 1ns / 1ps

module QIPU_Processor(
        input ext_clock,
        input [4:0] dpad_btns_in,
        input [15:0] slide_switches_in,
        output [15:0] slide_leds_out,
        output [3:0] seven_seg_anodes_out,
        output [7:0] seven_seg_cathodes_out
    );
    
    wire clk50_wire;
    wire clk100_wire;
    
    Primary_Clock primClock (
        .clk50_out (clk50_wire),
        .clk100_out (clk100_wire),
        .reset (0),
        .clk_in (ext_clock)
    );
    
    localparam opcode_offset = 0;
    localparam opcode_width = 5;
    
    localparam regDest_offset = 5;
    localparam regDest_width = 4;
    
    localparam condition_offset = 5;
    localparam condition_width = 4;
    
    localparam offsetSelect_offset = 9;
    localparam offsetSelect_width = 1;
    
    localparam regSrc1_offset = 10;
    localparam regSrc1_width = 4;
    
    localparam regSrc2_offset = 14;
    localparam regSrc2_width = 4;
    
    localparam immediate_offset = 9;
    localparam immediate_width = 23;
    
    localparam offsetNormal_offset = 18;
    localparam offsetNormal_width = 14;
    
    localparam offsetShort_offset = 18;
    localparam offsetShort_width = 13;
    
    localparam offsetLongContinuous_offset = 14;
    localparam offsetLongContinuous_width = 18;
    
    localparam offsetLongSplitUpper_offset = 18;
    localparam offsetLongSplitUpper_width = 14;
    
    localparam offsetLongSplitLower_offset = 5;
    localparam offsetLongSplitLower_width = 4;
    
    localparam relativeJump_offset = 31;
    localparam relativeJump_width = 1;
    
   
    wire [31:0] programCounter_wire;
    wire [31:0] programCounterNext_wire;
    wire [31:0] programCounterJump_wire;
    wire doJump_wire;
    wire isRelJmp_wire;
    wire switchToRAM_wire;
    wire isRAMSelected_wire;
    wire [31:0] instrBROM_wire;
    wire [31:0] dataBROM_wire;
    wire [31:0] instrRAM_wire;
    wire [31:0] dataRAM_wire;
    wire [31:0] instruction_wire;
    wire [31:0] immediate_wire;
    wire [2:0] aluControl_wire;
    wire aluIsZero_wire;
    wire aluIsNeg_wire;
    wire regWriteEnable_wire;
    wire memWriteEnable_wire;
    wire [31:0] offset_wire;
    wire [31:0] regA_wire;
    wire [31:0] regB_wire;
    wire [31:0] regWriteData_wire;
    wire [31:0] memReadData_wire;
    wire [31:0] dataA_wire;
    wire [31:0] dataB_wire;
    wire [31:0] aluResult_wire;
    wire offsetEnableA_wire;
    wire offsetEnableB_wire;
    wire aluSrcASelect_wire;
    wire [1:0] offsetLayout_wire;
    wire [1:0] resultSelect_wire;
    wire [1:0] immExtendMode_wire;
    wire stall_wire;
    
    assign stall_wire = 0;
    
    
    Program_Incrementer programIncrementer (
        .pc_in (programCounter_wire),
        .pc_out (programCounterNext_wire)
    );
    
    Program_Jump_Calculator programJumpCalculator (
        .relJmp_in (isRelJmp_wire),
        .pc_in (programCounter_wire),
        .jmpAddress_in (dataA_wire),
        .pc_out (programCounterJump_wire)
    );
    
    Program_Counter programCounter (
        .clk_in (clk50_wire),
        .stall_in (stall_wire),
        .jmpEnable_in (doJump_wire),
        .pc_next_in (programCounterNext_wire),
        .pc_jmp_in (programCounterJump_wire),
        .pc_out (programCounter_wire)
    );
    
    Bootloader_ROM brom (
        .dataAddress_in (dataA_wire),
        .instrAddress_in (programCounter_wire),
        .data_out (dataBROM_wire),
        .instruction_out (instrBROM_wire)
    );
    
    Random_Access_Memory ram (
        .clk_in (clk50_wire),
        .writeEnable_in (memWriteEnable_wire),
        .dataAddress_in (dataA_wire),
        .writeData_in (regWriteData_wire),
        .instrAddress_in (programCounter_wire),
        .data_out (dataRAM_wire),
        .instruction_out (instrRAM_wire)
    );
    
    RAM_Selector ramSelect (
        .clk_in (clk50_wire),
        .switchToRAM_in (switchToRAM_wire),
        .dataBROM_in (dataBROM_wire),
        .instrBROM_in (instrBROM_wire),
        .dataRAM_in (dataRAM_wire),
        .instrRAM_in (instrRAM_wire),
        .isRAMSelected_out (isRAMSelected_wire),
        .data_out (memReadData_wire),
        .instruction_out (instruction_wire)
    );
    
    Memory_Controller memControl (
        .clk_in (clk50_wire),
        .addr_in (),
        .ramSelect_out (),
        .sdSelect_out (),
        .videoSelect_out ()
    );
    
    Controller controller (
        .opcode_in (instruction_wire[opcode_offset + opcode_width - 1 : opcode_offset]),
        .intCode_in (instruction_wire[immediate_offset + immediate_width - 1 : immediate_offset]),
        .jmpCond_in (instruction_wire[condition_offset + condition_width - 1 : condition_offset]),
        .isRelJmp_in (instruction_wire[relativeJump_offset + relativeJump_width - 1 : relativeJump_offset]),
        .offsetSelect_in (instruction_wire[offsetSelect_offset + offsetSelect_width - 1 : offsetSelect_offset]),
        .isZero_in (aluIsZero_wire),
        .isNeg_in (aluIsNeg_wire),
        .aluControl_out (aluControl_wire),
        .doJump_out (doJump_wire),
        .isRelJmp_out (isRelJmp_wire),
        .regWriteEnable_out (regWriteEnable_wire),
        .memWriteEnable_out (memWriteEnable_wire),
        .offsetEnableA_out (offsetEnableA_wire),
        .offsetEnableB_out (offsetEnableB_wire),
        .aluSrcASelect_out (aluSrcASelect_wire),
        .offsetLayout_out (offsetLayout_wire),
        .resultSelect_out (resultSelect_wire),
        .immExtendMode_out (immExtendMode_wire),
        .switchToRAM_out (switchToRAM_wire)
    );
    
    Immediate_Extender immediateExtender (
        .extendMode_in (immExtendMode_wire),
        .regA_in (regA_wire),
        .imm_in (instruction_wire[immediate_offset + immediate_width - 1 : immediate_offset]),
        .imm_out (immediate_wire)
    );
    
    Offset_Layout_Selector (
        .offsetLayout_in (offsetLayout_wire),
        .offsetNormal_in (instruction_wire[offsetNormal_offset + offsetNormal_width - 1 : offsetNormal_offset]),
        .offsetShort_in (instruction_wire[offsetShort_offset + offsetShort_width - 1 : offsetShort_offset]),
        .offsetLongContinuous_in (instruction_wire[offsetLongContinuous_offset + offsetLongContinuous_width - 1 : offsetLongContinuous_offset]),
        .offsetLongSplitUpper_in (instruction_wire[offsetLongSplitUpper_offset + offsetLongSplitUpper_width - 1 : offsetLongSplitUpper_offset]),
        .offsetLongSplitLower_in (instruction_wire[offsetLongSplitLower_offset + offsetLongSplitLower_width - 1 : offsetLongSplitLower_offset]),
        .offset_out (offset_wire)
    );
    
    Register_Bank registerBank (
        .clk_in (clk50_wire),
        .stall_in (stall_wire),
        .regA_in (instruction_wire[regSrc1_offset + regSrc1_width - 1 : regSrc1_offset]),
        .regB_in (instruction_wire[regSrc2_offset + regSrc2_width - 1 : regSrc2_offset]),
        .regW_in (doJump_wire ? 4'b0100 : instruction_wire[regDest_offset + regDest_width - 1 : regDest_offset]),
        .writeData_in (regWriteData_wire),
        .writeEnable_in (regWriteEnable_wire),
        .isRAMSelected_in (isRAMSelected_wire),
        .dpadBtns_in (dpad_btns_in),
        .slideSwitches_in (slide_switches_in),
        .dataA_out (regA_wire),
        .dataB_out (regB_wire),
        .slideLEDs_out (slide_leds_out),
        .sevenSegAnodes_out (seven_seg_anodes_out),
        .sevenSegCathodes_out (seven_seg_cathodes_out)
    );
    
    Offset_Applicator offsetApplicatorA (
        .offsetEnable_in (offsetEnableA_wire),
        .data_in (regA_wire),
        .offset_in (offset_wire),
        .result_out (dataA_wire)
    );
    
    Offset_Applicator offsetApplicatorB (
        .offsetEnable_in (offsetEnableB_wire),
        .data_in (regB_wire),
        .offset_in (offset_wire),
        .result_out (dataB_wire)
    );
    
    ALU alu (
        .a_in (aluSrcASelect_wire ? 32'b0 : dataA_wire),
        .b_in (dataB_wire),
        .alu_control_in (aluControl_wire),
        .res_out (aluResult_wire),
        .is_zero_out (aluIsZero_wire),
        .is_neg_out (aluIsNeg_wire)
    );
    
    Multiplexer resultMultiplexer (
        .select_in (resultSelect_wire),
        .a_in (aluResult_wire),
        .b_in (memReadData_wire),
        .c_in (immediate_wire),
        .d_in (programCounterJump_wire),
        .res_out (regWriteData_wire)
    );

endmodule
