`timescale 1ns / 1ps

module Register_Bank(
        input         clk_i,
        input         rst_i,
        input  [ 3:0] reg_src1_i,
        input  [ 3:0] reg_src2_i,
        input  [ 3:0] reg_dest_i,
        input  [31:0] write_data_i,
        input         write_enable_i,
        
        output [31:0] data_src1_o,
        output [31:0] data_src2_o
    );
    
    integer i;
    reg [31:0] bank[0:15];
    
    assign data_src1_o = bank[reg_src1_i];
    assign data_src2_o = bank[reg_src2_i];
    
    always @ (posedge clk_i) begin
        if (rst_i) begin
            for (i=0;i<16;i=i+1)
                bank[i] <= 0;
        end
        else if (write_enable_i && (reg_dest_i != 0)) begin
            bank[reg_dest_i] <= write_data_i;
        end
    end
endmodule
