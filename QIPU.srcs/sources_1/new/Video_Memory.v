`timescale 1ns / 1ps

module Video_Memory(
        input             clk_cpu_i,
        input             clk_vga_i,
        //input             rst_i,
        input      [31:0] addr_i,
        input      [31:0] write_data_i,
        input             read_enable_i,
        input             write_enable_i,

        output reg [31:0] read_data_o,
        output            busy_o,

        input      [16:0] vga_ctrl_addr_i,
        output reg [ 7:0] vga_ctrl_data_o
    );

    reg [ 7:0] vram[0:320*240];

    wire [16:0] addr            = ({ 8'b0, addr_i[         16:8] } * 240 ) + { 9'b0, addr_i         [7:0] };
    wire [16:0] vga_ctrl_addr   = ({ 8'b0, vga_ctrl_addr_i[16:8] } * 240 ) + { 9'b0, vga_ctrl_addr_i[7:0] };
    wire [ 7:0] write_data = write_data_i[7:0];

    assign busy_o = read_enable_i | write_enable_i;

    always @ (posedge clk_cpu_i) begin
        if (read_enable_i)
            read_data_o <= { 24'b0, vram[addr] };
        else
        if (write_enable_i)
            vram[addr] <= write_data;
    end
    
    always @ (posedge clk_vga_i) begin
        vga_ctrl_data_o <= vram[vga_ctrl_addr];
    end
endmodule
