`timescale 1ns / 1ps

module Program_Counter(
        input             clk_i,
        input             rst_i,
        input             enable_i,
        input             do_jmp_i,
        input             is_rel_jmp_i,
        input      [31:0] jmp_addr_i,
        
        output reg [31:0] pc_o,
        output     [31:0] pc_next_o
    );
    
    wire [31:0] pc_jmp;
    
    assign pc_next_o = pc_o + 4;
    assign pc_jmp  = is_rel_jmp_i ? (pc_o + jmp_addr_i) : jmp_addr_i;
    
    always @ (posedge clk_i) begin
        if (rst_i)
            pc_o <= 0;
        else if (enable_i)
            pc_o <= do_jmp_i ? pc_jmp : pc_next_o;
    end
    
endmodule
