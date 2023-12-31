`timescale 1ns / 1ps

module Memory_Bus(
        input             read_enable_i,
        input             write_enable_i,
        input      [31:0] addr_i,
        
        output reg [31:0] read_data_o,
        output reg        busy_o,
        
        output            ram_read_enable_o,
        output            ram_write_enable_o,
        input      [31:0] ram_read_data_i,
        input             ram_busy_i,

        output            ssd_read_enable_o,
        output            ssd_write_enable_o,
        input      [31:0] ssd_read_data_i,
        input             ssd_busy_i,

        output            eio_read_enable_o,
        output            eio_write_enable_o,
        input      [31:0] eio_read_data_i,
        input             eio_busy_i,

        output            vrm_read_enable_o,
        output            vrm_write_enable_o,
        input      [31:0] vrm_read_data_i,
        input             vrm_busy_i,

        output            vga_read_enable_o,
        output            vga_write_enable_o,
        input      [31:0] vga_read_data_i,
        input             vga_busy_i,

        output            uar_read_enable_o,
        output            uar_write_enable_o,
        input      [31:0] uar_read_data_i,
        input             uar_busy_i
    );
    
    localparam ENABLE_ID_UNUSED = 4'bzzzz;
    localparam ENABLE_ID_RAM    = 4'b0000;
    localparam ENABLE_ID_SSD    = 4'b0001;
    localparam ENABLE_ID_EIO    = 4'b0010;
    localparam ENABLE_ID_VRM    = 4'b0011;
    localparam ENABLE_ID_VGA    = 4'b0100;
    localparam ENABLE_ID_UAR    = 4'b0101;
    
    //                         32'b................................;
    localparam ADDR_MASK_RAM = 32'b00000000zzzzzzzzzzzzzzzzzzzzzzzz;
    localparam ADDR_MASK_VRM = 32'b00000001000000zzzzzzzzzzzzzzzzzz;
    localparam ADDR_MASK_VGA = 32'b00000001000001zzzzzzzzzzzzzzzzzz;
    localparam ADDR_MASK_SSD = 32'b11111111111111111111111111111101;
    localparam ADDR_MASK_EIO = 32'b11111111111111111111111111111110;
    localparam ADDR_MASK_UAR = 32'b11111111111111111111111111111111;

    reg  [3:0] enable_id;
    wire       ram_select = (enable_id == ENABLE_ID_RAM);
    wire       ssd_select = (enable_id == ENABLE_ID_SSD);
    wire       eio_select = (enable_id == ENABLE_ID_EIO);
    wire       vrm_select = (enable_id == ENABLE_ID_VRM);
    wire       vga_select = (enable_id == ENABLE_ID_VGA);
    wire       uar_select = (enable_id == ENABLE_ID_UAR);
    
    assign ram_read_enable_o = ram_select & read_enable_i;
    assign ram_write_enable_o = ram_select & write_enable_i;

    assign ssd_read_enable_o = ssd_select & read_enable_i;
    assign ssd_write_enable_o = ssd_select & write_enable_i;

    assign eio_read_enable_o = eio_select & read_enable_i;
    assign eio_write_enable_o = eio_select & write_enable_i;

    assign vrm_read_enable_o = vrm_select & read_enable_i;
    assign vrm_write_enable_o = vrm_select & write_enable_i;

    assign vga_read_enable_o = vga_select & read_enable_i;
    assign vga_write_enable_o = vga_select & write_enable_i;

    assign uar_read_enable_o = uar_select & read_enable_i;
    assign uar_write_enable_o = uar_select & write_enable_i;

    always @ (*) begin
        casez (addr_i)
            ADDR_MASK_RAM: begin
                enable_id    <= ENABLE_ID_RAM;
                read_data_o  <= ram_read_data_i;
                busy_o       <= ram_busy_i;
            end
            ADDR_MASK_SSD: begin
                enable_id    <= ENABLE_ID_SSD;
                read_data_o  <= ssd_read_data_i;
                busy_o       <= ssd_busy_i;
            end
            ADDR_MASK_EIO: begin
                enable_id    <= ENABLE_ID_EIO;
                read_data_o  <= eio_read_data_i;
                busy_o       <= eio_busy_i;
            end
            ADDR_MASK_VRM: begin
                enable_id    <= ENABLE_ID_VRM;
                read_data_o  <= vrm_read_data_i;
                busy_o       <= vrm_busy_i;
            end
            ADDR_MASK_VGA: begin
                enable_id    <= ENABLE_ID_VGA;
                read_data_o  <= vga_read_data_i;
                busy_o       <= vga_busy_i;
            end
            ADDR_MASK_UAR: begin
                enable_id    <= ENABLE_ID_UAR;
                read_data_o  <= uar_read_data_i;
                busy_o       <= uar_busy_i;
            end
            default: begin
                enable_id    <= ENABLE_ID_UNUSED;
                read_data_o  <= 32'bz;
                busy_o       <= 0;
            end
        endcase
    end
    
endmodule
