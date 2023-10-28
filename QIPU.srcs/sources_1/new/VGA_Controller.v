`timescale 1ns / 1ps

module VGA_Controller(
        input             clk_cpu_i,
        input             clk_vga_i,
        //input             rst_i,
        input      [31:0] addr_i,
        input      [31:0] write_data_i,
        input             read_enable_i,
        input             write_enable_i,

        output reg [31:0] read_data_o,
        output            busy_o,

        output      [16:0] vram_addr_o,
        input       [ 7:0] vram_data_i,
        
        output [3:0]      hw_red_o,
        output [3:0]      hw_green_o,
        output [3:0]      hw_blue_o,
        output            hw_hsync_o,
        output            hw_vsync_o
    );
    
    localparam HORZ_FRONT_PORCH = 16;
    localparam HORZ_BACK_PORCH  = 48;
    localparam HORZ_PULSE_WIDTH = 96;
    localparam HORZ_PIXEL_COUNT = 640;
    
    localparam VERT_FRONT_PORCH = 10;
    localparam VERT_BACK_PORCH  = 29;
    localparam VERT_PULSE_WIDTH = 2;
    localparam VERT_PIXEL_COUNT = 480;
    
    localparam HORZ_SYNC_BEGIN = HORZ_PIXEL_COUNT + HORZ_FRONT_PORCH;
    localparam HORZ_SYNC_END   = HORZ_SYNC_BEGIN  + HORZ_PULSE_WIDTH;
    localparam HORZ_SYNC_TOTAL = HORZ_SYNC_END    + HORZ_BACK_PORCH;
    
    localparam VERT_SYNC_BEGIN = VERT_PIXEL_COUNT + VERT_FRONT_PORCH;
    localparam VERT_SYNC_END   = VERT_SYNC_BEGIN  + VERT_PULSE_WIDTH;
    localparam VERT_SYNC_TOTAL = VERT_SYNC_END    + VERT_BACK_PORCH;
    

    reg  [11:0] color_lookup_table[0:255];
    reg  [ 9:0] h_counter;
    reg  [ 9:0] v_counter;
    wire        display_enable;
    wire [ 7:0] color_id;
    wire [11:0] output_color;


    initial h_counter = 0;
    initial v_counter = 0;

    integer i;
    integer j;
    initial begin
        $readmemb("./default_color_lookup_table.bin", color_lookup_table);
    end

    
    assign vram_addr_o    = { h_counter[9:1], v_counter[8:1] };
    assign display_enable = ( h_counter < HORZ_PIXEL_COUNT) && (v_counter < VERT_PIXEL_COUNT );
    assign output_color   = display_enable ? color_lookup_table[vram_data_i] : 12'b0;

    assign hw_red_o       = output_color[11:8];
    assign hw_green_o     = output_color[ 7:4];
    assign hw_blue_o      = output_color[ 3:0];

    assign hw_hsync_o = ~((HORZ_SYNC_BEGIN <= h_counter) && (h_counter < HORZ_SYNC_END));
    assign hw_vsync_o = ~((VERT_SYNC_BEGIN <= v_counter) && (v_counter < VERT_SYNC_END));
    
    always @ (posedge clk_vga_i) begin
        if (h_counter == HORZ_SYNC_TOTAL - 1) begin
            h_counter <= 0;
            
            if (v_counter == VERT_SYNC_TOTAL - 1) begin
                v_counter <= 0;
            end
            else begin
                v_counter <= v_counter + 1;
            end
        end
        else begin
            h_counter <= h_counter + 1;
        end
    end
    
endmodule
