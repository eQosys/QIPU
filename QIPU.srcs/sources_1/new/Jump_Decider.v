`timescale 1ns / 1ps

module Jump_Decider(
        input       jmp_enable_i,
        input [3:0] jmp_cond_i,
        input       is_zero_i,
        input       is_neg_i,
        
        output      do_jmp_o
    );
    
    localparam JMP_COND_ZERO               = 4'b0000;
    localparam JMP_COND_NOT_ZERO           = 4'b0001;
    localparam JMP_COND_GREATER_ZERO       = 4'b0010;
    localparam JMP_COND_LESS_ZERO          = 4'b0011;
    localparam JMP_COND_GREATER_EQUAL_ZERO = 4'b0100;
    localparam JMP_COND_LESS_EQUAL_ZERO    = 4'b0101;
    
    reg should_jmp;
    
    assign do_jmp_o = jmp_enable_i & should_jmp;
    
    always @ (*) begin
        case (jmp_cond_i)
            JMP_COND_ZERO:               should_jmp <= is_zero_i;
            JMP_COND_NOT_ZERO:           should_jmp <= ~is_zero_i;
            JMP_COND_GREATER_ZERO:       should_jmp <= ~is_neg_i & ~is_zero_i;
            JMP_COND_LESS_ZERO:          should_jmp <= is_neg_i;
            JMP_COND_GREATER_EQUAL_ZERO: should_jmp <= ~is_neg_i;
            JMP_COND_LESS_EQUAL_ZERO:    should_jmp <= is_neg_i | is_zero_i;
            default:                     should_jmp <= 1'bz;
        endcase
    end
endmodule
