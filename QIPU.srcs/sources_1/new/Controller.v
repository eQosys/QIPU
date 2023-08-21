`timescale 1ns / 1ps

module Controller(
        input [4:0] opcode_in,
        input [22:0] intCode_in,
        input [3:0] jmpCond_in,
        input isRelJmp_in,
        input offsetSelect_in,
        input isZero_in,
        input isNeg_in,
        output reg [2:0] aluControl_out,
        output reg doJump_out,
        output reg isRelJmp_out,
        output reg regWriteEnable_out,
        output reg memWriteEnable_out,
        output reg offsetEnableA_out,
        output reg offsetEnableB_out,
        output reg aluSrcASelect_out,
        output reg [1:0] offsetLayout_out,
        output reg [1:0] resultSelect_out,
        output reg [1:0] immExtendMode_out,
        output reg switchToRAM_out
    );
    
    initial begin
        aluControl_out = 0;
        doJump_out = 0;
        regWriteEnable_out = 0;
        memWriteEnable_out = 0;
        offsetEnableA_out = 0;
        offsetEnableB_out = 0;
        aluSrcASelect_out = 0;
        offsetLayout_out = 0;
        resultSelect_out = 0;
        immExtendMode_out = 0;
        switchToRAM_out = 0;
    end
    
    localparam opcode_add = 5'b00000;
    localparam opcode_sub = 5'b00001;
    localparam opcode_and = 5'b00010;
    localparam opcode_or  = 5'b00011;
    localparam opcode_xor = 5'b00100;
    localparam opcode_shl = 5'b00101;
    localparam opcode_shr = 5'b00110;
    localparam opcode_jxx = 5'b00111;
    localparam opcode_st  = 5'b01000;
    localparam opcode_ld  = 5'b01001;
    localparam opcode_lui = 5'b01010;
    localparam opcode_lli = 5'b01011;
    localparam opcode_li  = 5'b01100;
    localparam opcode_int = 5'b01101;
    
    localparam aluControl_unused = 3'bzzz;
    localparam aluControl_add    = 3'b000;
    localparam aluControl_sub    = 3'b001;
    localparam aluControl_and    = 3'b010;
    localparam aluControl_or     = 3'b011;
    localparam aluControl_xor    = 3'b100;
    localparam aluControl_shl    = 3'b101;
    localparam aluControl_shr    = 3'b110;
    
    localparam offsetLayout_unused         = 2'bzz;
    localparam offsetLayout_normal         = 2'b00;
    localparam offsetLayout_short          = 2'b01;
    localparam offsetLayout_longContinuous = 2'b10;
    localparam offsetLayout_longSplit      = 2'b11;
    
    localparam immExtendMode_unused = 2'b00;
    localparam immExtendMode_upper  = 2'b01;
    localparam immExtendMode_lower  = 2'b10;
    localparam immExtendMode_full   = 2'b11;
    
    localparam resultSelect_unused  = 2'bzz;
    localparam resultSelect_alu     = 2'b00;
    localparam resultSelect_mem     = 2'b01;
    localparam resultSelect_imm     = 2'b10;
    localparam resultSelect_jmpAddr = 2'b11;
    
    localparam aluSrcASelect_unused = 1'bz;
    localparam aluSrcASelect_reg    = 1'b0;
    localparam aluSrcASelect_zero   = 1'b1;
    
    localparam jmpCond_zero         = 4'b0000;
    localparam jmpCond_notZero      = 4'b0001;
    localparam jmpCond_greaterZero  = 4'b0010;
    localparam jmpCond_lessZero     = 4'b0011;
    localparam jmpCond_greaterEqual = 4'b0100;
    localparam jmpCond_lessEqual    = 4'b0101;
    
    localparam intCode_exitBootloader = 4'b000000;
    
    always @ (*) begin
        case (opcode_in)
            opcode_add: begin // add
                aluControl_out <= aluControl_add;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_sub: begin // sub
                aluControl_out <= aluControl_sub;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_and: begin // and
                aluControl_out <= aluControl_and;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_or: begin // or
                aluControl_out <= aluControl_or;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_xor: begin // xor
                aluControl_out <= aluControl_xor;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_shl: begin // shl
                aluControl_out <= aluControl_shl;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_shr: begin // shr
                aluControl_out <= aluControl_shr;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_jxx: begin // jxx
                aluControl_out <= aluControl_add;
                case (jmpCond_in)
                    jmpCond_zero:         doJump_out <= isZero_in; // zero
                    jmpCond_notZero:      doJump_out <= ~isZero_in; // not zero
                    jmpCond_greaterZero:  doJump_out <= ~isNeg_in & ~isZero_in; // greater than zero
                    jmpCond_lessZero:     doJump_out <= isNeg_in; // less than zero
                    jmpCond_greaterEqual: doJump_out <= ~isNeg_in; // greater than or equal to zero
                    jmpCond_lessEqual:    doJump_out <= isNeg_in | isZero_in; // less than or equal to zero
                    default: doJump_out <= 0;
                endcase
                isRelJmp_out <= isRelJmp_in;
                regWriteEnable_out <= doJump_out;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_zero;
                offsetLayout_out <= offsetLayout_short;
                resultSelect_out <= resultSelect_jmpAddr;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_st: begin // st
                aluControl_out <= aluControl_add;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 0;
                memWriteEnable_out <= 1;
                aluSrcASelect_out <= aluSrcASelect_zero;
                offsetLayout_out <= offsetLayout_longSplit;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_ld: begin // ld
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_longContinuous;
                resultSelect_out <= resultSelect_mem;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
            opcode_lui: begin // lui
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_imm;
                immExtendMode_out <= immExtendMode_upper;
                switchToRAM_out <= 0;
                end
            opcode_lli: begin // lli
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_imm;
                immExtendMode_out <= immExtendMode_lower;
                switchToRAM_out <= 0;
                end
            opcode_li: begin // li
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                isRelJmp_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_imm;
                immExtendMode_out <= immExtendMode_full;
                switchToRAM_out <= 0;
                end
            opcode_int: begin // int                
                case (intCode_in)
                    intCode_exitBootloader: begin // exit bootloader
                        aluControl_out <= aluControl_and;
                        doJump_out <= 1;
                        isRelJmp_out <= 0;
                        regWriteEnable_out <= 0;
                        memWriteEnable_out <= 0;
                        aluSrcASelect_out <= aluSrcASelect_zero;
                        offsetLayout_out <= offsetLayout_short;
                        resultSelect_out <= resultSelect_jmpAddr;
                        immExtendMode_out <= immExtendMode_unused;
                        switchToRAM_out <= 1;
                        end
                    default: begin
                        aluControl_out <= aluControl_unused;
                        doJump_out <= 0;
                        isRelJmp_out <= 0;
                        regWriteEnable_out <= 0;
                        memWriteEnable_out <= 0;
                        aluSrcASelect_out <= aluSrcASelect_unused;
                        offsetLayout_out <= offsetLayout_unused;
                        resultSelect_out <= resultSelect_unused;
                        immExtendMode_out <= immExtendMode_unused;
                        switchToRAM_out <= 0;
                        end
                endcase
                end
            default: begin
                aluControl_out <= aluControl_unused;
                doJump_out <= 1'bz;
                isRelJmp_out <= 1'bz;
                regWriteEnable_out <= 1'bz;
                memWriteEnable_out <= 1'bz;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_unused;
                immExtendMode_out <= immExtendMode_unused;
                switchToRAM_out <= 0;
                end
        endcase
        
       offsetEnableA_out <= offsetSelect_in == 0;
       offsetEnableB_out <= offsetSelect_in == 1;
    end
    
endmodule
