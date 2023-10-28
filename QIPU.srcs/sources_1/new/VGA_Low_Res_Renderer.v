`timescale 1ns / 1ps

module VGA_Low_Res_Renderer(
        input  [ 9:0] h_counter_i,
        input  [ 9:0] v_counter_i,

        output [11:0] color_o,

        output [16:0] vram_addr_o,
        input  [ 7:0] vram_data_i
    );

    reg  [11:0] color_lookup_table[0:255];
    wire [ 7:0] color_idx;

    initial begin
        $readmemb("./default_color_lookup_table.bin", color_lookup_table);
    end

    assign vram_addr_o = { h_counter_i[9:1], v_counter_i[8:1] };
    assign color_idx   = vram_data_i;
    assign color_o     = color_lookup_table[color_idx];

endmodule
