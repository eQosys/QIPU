`timescale 1ns / 1ps

module VGA_Low_Res_Renderer(
        input  [10:0] h_counter_i,
        input  [10:0] v_counter_i,

        output [11:0] color_o,

        output [ 8:0] vram_x_o,
        output [ 8:0] vram_y_o,
        input  [ 7:0] vram_data_i
    );

    // 320x240

    reg  [11:0] color_lookup_table[0:255];
    wire [ 7:0] color_idx;

    initial begin
        $readmemb("./default_color_lookup_table.bin", color_lookup_table);
    end

    assign vram_x_o    = h_counter_i / 4; // 1/4th of display resolution
    assign vram_y_o    = v_counter_i / 4; // 1/4th of display resolution
    assign color_idx   = vram_data_i;
    assign color_o     = color_lookup_table[color_idx];

endmodule
