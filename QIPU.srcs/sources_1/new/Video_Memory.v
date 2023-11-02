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

        input      [ 8:0] vga_ctrl_x_i,
        input      [ 8:0] vga_ctrl_y_i,
        output reg [ 7:0] vga_ctrl_data_o
    );

    localparam VRAM_SIZE = 320 * 240 * 2;

    reg  [ 7:0] vram[0:VRAM_SIZE-1];
    wire [ 7:0] write_data = write_data_i[7:0];
    wire [17:0] addr_cpu;
    wire [17:0] addr_vga_ctrl;

    assign busy_o = read_enable_i | write_enable_i;

    always @ (posedge clk_cpu_i) begin
        if (read_enable_i)
            read_data_o <= { 24'b0, vram[addr_cpu] };
        else
        if (write_enable_i)
            vram[addr_cpu] <= write_data;
    end
    
    always @ (posedge clk_vga_i) begin
        vga_ctrl_data_o <= vram[addr_vga_ctrl];
    end

    Video_Memory_Address_Calculator vram_addr_calc_cpu (
        .x_i           (addr_i[17:9]),
        .y_i           (addr_i[8:0]),
        .addr_o        (addr_cpu)
    );

    Video_Memory_Address_Calculator vram_addr_calc_vga_ctrl (
        .x_i           (vga_ctrl_x_i),
        .y_i           (vga_ctrl_y_i),
        .addr_o        (addr_vga_ctrl)
    );
endmodule
