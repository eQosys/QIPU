`timescale 1ns / 1ps

module QIPU_Processor(
        input ext_clock,
        input [4:0] dpad_btns_in,
        input [15:0] slide_switches_in,
        output [15:0] slide_leds_out,
        output [3:0] seven_seg_anodes_out,
        output [7:0] seven_seg_cathodes_out
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
    wire doJump_wire;
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
    
    
    
    
    reg [20:0] clock_counter;
    
    always @ (posedge ext_clock) begin
        clock_counter <= clock_counter + 1;
    end
    
    reg [31:0] debouncer;
    always @ (posedge clock_counter[20]) begin
        debouncer <= (debouncer << 1) | {31'b0, dpad_btns_in[3]};
    end
    
    wire manual_clock;
    assign manual_clock = debouncer == {32{1'b1}};
    
    reg [31:0] slide_instruction;
    always @ (posedge dpad_btns_in[2]) begin
        slide_instruction[15:0] <= slide_switches_in;
    end
    always @ (posedge dpad_btns_in[4]) begin
        slide_instruction[31:16] <= slide_switches_in;
    end
    
    Seven_Segment_Display ssd (
        .clk_in (ext_clock),
        .value_in (programCounter_wire / 4),
        .anode_out (seven_seg_anodes_out),
        .cathode_out (seven_seg_cathodes_out)
    );
    
    // LEFT   -> SET HIGH BITS OF INSTRUCTION
    // RIGHT  -> SET LOW BITS OF INSTRUCTION
    // MID    -> WRITE INSTRUCTION
    // TOP    -> SELECT DEBUG REGISTER
    // BUTTOM -> CLOCK
    
    
    
    
    Program_Counter programCounter (
        .clk_in (manual_clock),
        .jmpEnable_in (doJump_wire),
        .relJmp_in (instruction_wire[relativeJump_offset + relativeJump_width - 1 : relativeJump_offset]),
        .pc_jmp_in (dataA_wire),
        .pc_out (programCounter_wire)
    );
    
    Instruction_Memory instructionMemory (
        .address_in (programCounter_wire),
        .instruction_out (instruction_wire),
        .writeEnable_in (dpad_btns_in[0]),
        .addrToWrite_in (slide_switches_in[4:0]),
        .instrToWrite_in (slide_instruction)
    );
    
    Controller controller (
        .opcode_in (instruction_wire[opcode_offset + opcode_width - 1 : opcode_offset]),
        .jmpCond_in (instruction_wire[condition_offset + condition_width - 1 : condition_offset]),
        .offsetSelect_in (instruction_wire[offsetSelect_offset + offsetSelect_width - 1 : offsetSelect_offset]),
        .isZero_in (aluIsZero_wire),
        .isNeg_in (aluIsNeg_wire),
        .aluControl_out (aluControl_wire),
        .doJump_out (doJump_wire),
        .regWriteEnable_out (regWriteEnable_wire),
        .memWriteEnable_out (memWriteEnable_wire),
        .offsetEnableA_out (offsetEnableA_wire),
        .offsetEnableB_out (offsetEnableB_wire),
        .aluSrcASelect_out (aluSrcASelect_wire),
        .offsetLayout_out (offsetLayout_wire),
        .resultSelect_out (resultSelect_wire),
        .immExtendMode_out (immExtendMode_wire)
    );
    
    Immediate_Extender immediateExtender (
        .extendMode_in (immExtendMode_wire),
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
    
    wire [31:0] debugData_wire;
    
    Register_Bank registerBank (
        .clk_in (manual_clock),
        .regA_in (instruction_wire[regSrc1_offset + regSrc1_width - 1 : regSrc1_offset]),
        .regB_in (instruction_wire[regSrc2_offset + regSrc2_width - 1 : regSrc2_offset]),
        .regW_in (instruction_wire[regDest_offset + regDest_width - 1 : regDest_offset]),
        .writeData_in (regWriteData_wire),
        .writeEnable_in (regWriteEnable_wire),
        .dataA_out (regA_wire),
        .dataB_out (regB_wire),
        .debugRegSelect_in (dpad_btns_in[1]),
        .debugReg_in (slide_switches_in[3:0]),
        .debugData_out (debugData_wire)
    );
    
    assign slide_leds_out = debugData_wire[15:0];
    
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
    
    Data_Memory dataMemory (
        .clk_in (manual_clock),
        .address_in (dataA_wire),
        .writeEnable_in (memWriteEnable_wire),
        .writeData_in (dataB_wire),
        .data_out (memReadData_wire)
    );
    
    Multiplexer resultMultiplexer (
        .select_in (resultSelect_wire),
        .a_in (aluResult_wire),
        .b_in (memReadData_wire),
        .c_in (immediate_wire),
        .d_in (32'bz),
        .res_out (regWriteData_wire)
    );

endmodule
