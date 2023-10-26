`timescale 1ns / 1ps

module Memory_Address_Selector(
        input        addr_sel_i,
        input [31:0] instr_addr_i,
        input [31:0] data_addr_i,
        
        output [31:0] addr_o
    );
    
    assign addr_o = (addr_sel_i == `MEM_ADDR_SEL_INSTR) ? instr_addr_i : data_addr_i;
endmodule
