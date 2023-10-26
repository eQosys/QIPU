`timescale 1ns / 1ps
`include <Signals.vh>

module Control_Unit(
        input            clk_i,
        input            rst_i,
        input            mem_read_valid_i,
        input            mem_busy_i,
        input      [4:0] opcode_i,
        
        output reg [1:0] off_layout_o,
        output reg [3:0] alu_ctrl_o,
        output reg       alu_src1_sel_o,
        output reg [1:0] res_sel_o,
        output reg       reg_write_enable_o,
        output reg [1:0] imm_ex_mode_o,
        output reg       jmp_enable_o,

        output reg       instr_dec_enable_o,
        output reg       mem_addr_sel_o,
        output reg       mem_read_enable_o,
        output reg       mem_write_enable_o,
        output reg       pc_enable_o
    );
    
    reg [1:0] state;

    always @ (posedge clk_i) begin
        if (rst_i) begin
            off_layout_o       <= `OFF_LAYOUT_UNUSED;
            alu_ctrl_o         <= `ALU_CTRL_UNUSED;
            alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
            res_sel_o          <= `RES_SEL_UNUSED;
            reg_write_enable_o <= 0;
            imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
            jmp_enable_o       <= 0;
            instr_dec_enable_o <= 0;
            mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
            mem_read_enable_o  <= 0;
            mem_write_enable_o <= 0;
            pc_enable_o        <= 0;
            state              <= `CU_STATE_FETCH;
        end
        else begin
            case (state)
                `CU_STATE_FETCH: begin
                    reg_write_enable_o <= 0;
                    jmp_enable_o       <= 0;
                    instr_dec_enable_o <= 0;
                    mem_addr_sel_o     <= `MEM_ADDR_SEL_INSTR;
                    mem_read_enable_o  <= 1;
                    mem_write_enable_o <= 0;
                    pc_enable_o        <= 1;
                    state              <= `CU_STATE_EXECUTE;
                end
                `CU_STATE_EXECUTE: begin
                    if (mem_busy_i) begin
                        reg_write_enable_o <= 0;
                        jmp_enable_o       <= 0;
                        instr_dec_enable_o <= 1;
                        mem_read_enable_o  <= 0;
                        mem_write_enable_o <= 0;
                        pc_enable_o        <= 0;
                    end
                    else begin
                        case (opcode_i)
                            `OPCODE_ADD: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_ADD;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_SUB: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_SUB;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_AND: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_AND;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_OR: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_OR;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_XOR: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_XOR;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_SHL: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_SHL;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_SHR: begin
                                off_layout_o       <= `OFF_LAYOUT_NORMAL;
                                alu_ctrl_o         <= `ALU_CTRL_SHR;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_REG;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_JXX: begin
                                off_layout_o       <= `OFF_LAYOUT_SHORT;
                                alu_ctrl_o         <= `ALU_CTRL_ADD;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_ZERO;
                                res_sel_o          <= `RES_SEL_PC_NEXT;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 1;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_ST: begin
                                off_layout_o       <= `OFF_LAYOUT_LONG_SPLIT;
                                alu_ctrl_o         <= `ALU_CTRL_ADD;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_ZERO;
                                res_sel_o          <= `RES_SEL_ALU;
                                reg_write_enable_o <= 0;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_DATA;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 1;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_MEM_WRITE_WAIT;
                            end
                            `OPCODE_LD: begin
                                off_layout_o       <= `OFF_LAYOUT_LONG_CONT;
                                alu_ctrl_o         <= `ALU_CTRL_UNUSED;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
                                res_sel_o          <= `RES_SEL_MEM;
                                reg_write_enable_o <= 0;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_DATA;
                                mem_read_enable_o  <= 1;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_MEM_READ_WAIT;
                            end
                            `OPCODE_LUI: begin
                                off_layout_o       <= `OFF_LAYOUT_UNUSED;
                                alu_ctrl_o         <= `ALU_CTRL_UNUSED;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
                                res_sel_o          <= `RES_SEL_IMM;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UPPER;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_LLI: begin
                                off_layout_o       <= `OFF_LAYOUT_UNUSED;
                                alu_ctrl_o         <= `ALU_CTRL_UNUSED;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
                                res_sel_o          <= `RES_SEL_IMM;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_LOWER;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            `OPCODE_LI: begin
                                off_layout_o       <= `OFF_LAYOUT_UNUSED;
                                alu_ctrl_o         <= `ALU_CTRL_UNUSED;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
                                res_sel_o          <= `RES_SEL_IMM;
                                reg_write_enable_o <= 1;
                                imm_ex_mode_o      <= `IMM_EX_MODE_FULL;
                                jmp_enable_o       <= 0;

                                instr_dec_enable_o <= 0;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 0;
                                mem_write_enable_o <= 0;
                                pc_enable_o        <= 0;
                                state              <= `CU_STATE_FETCH;
                            end
                            default: begin
                                off_layout_o       <= `OFF_LAYOUT_UNUSED;
                                alu_ctrl_o         <= `ALU_CTRL_UNUSED;
                                alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
                                res_sel_o          <= `RES_SEL_UNUSED;
                                reg_write_enable_o <= 1'bz;
                                imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                                jmp_enable_o       <= 1'bz;

                                instr_dec_enable_o <= 1'bz;
                                mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                                mem_read_enable_o  <= 1'bz;
                                mem_write_enable_o <= 1'bz;
                                pc_enable_o        <= 1'bz;
                                //state              <= `CU_STATE_UNUSED;
                            end
                        endcase
                    end
                end
                `CU_STATE_MEM_READ_WAIT: begin
                    if (mem_busy_i) begin
                        reg_write_enable_o <= 0;
                        jmp_enable_o       <= 0;
                        instr_dec_enable_o <= 0;
                        mem_read_enable_o  <= 0;
                        mem_write_enable_o <= 0;
                        pc_enable_o        <= 0;
                    end
                    else begin
                        off_layout_o       <= `OFF_LAYOUT_LONG_CONT;
                        alu_ctrl_o         <= `ALU_CTRL_UNUSED;
                        alu_src1_sel_o     <= `ALU_SRC1_SEL_UNUSED;
                        res_sel_o          <= `RES_SEL_MEM;
                        reg_write_enable_o <= 1;
                        imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                        jmp_enable_o       <= 0;

                        instr_dec_enable_o <= 0;
                        mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                        mem_read_enable_o  <= 0;
                        mem_write_enable_o <= 0;
                        pc_enable_o        <= 0;
                        state              <= `CU_STATE_FETCH;
                    end
                end
                `CU_STATE_MEM_WRITE_WAIT: begin
                    if (mem_busy_i) begin
                        reg_write_enable_o <= 0;
                        jmp_enable_o       <= 0;
                        instr_dec_enable_o <= 0;
                        mem_read_enable_o  <= 0;
                        mem_write_enable_o <= 0;
                        pc_enable_o        <= 0;
                    end
                    else begin
                        off_layout_o       <= `OFF_LAYOUT_LONG_SPLIT;
                        alu_ctrl_o         <= `ALU_CTRL_ADD;
                        alu_src1_sel_o     <= `ALU_SRC1_SEL_ZERO;
                        res_sel_o          <= `RES_SEL_ALU;
                        reg_write_enable_o <= 0;
                        imm_ex_mode_o      <= `IMM_EX_MODE_UNUSED;
                        jmp_enable_o       <= 0;

                        instr_dec_enable_o <= 0;
                        mem_addr_sel_o     <= `MEM_ADDR_SEL_UNUSED;
                        mem_read_enable_o  <= 0;
                        mem_write_enable_o <= 0;
                        pc_enable_o        <= 0;
                        state              <= `CU_STATE_FETCH;
                    end
                end
                default: begin
                end
            endcase
        end
    end

endmodule
