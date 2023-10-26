`timescale 1ns / 1ps

module Memory_Bus(
        input      [31:0] addr_i,
        
        output reg [31:0] read_data_o,
        output reg        read_valid_o,
        output reg        busy_o,
        
        output            ram_enable_o,
        input      [31:0] ram_read_data_i,
        input             ram_read_valid_i,
        input             ram_busy_i
    );
    
    localparam ENABLE_ID_UNUSED = 4'bzzzz;
    localparam ENABLE_ID_RAM    = 4'b0000;
    
    reg enable_id;
    
    assign ram_enable_o = (enable_id == ENABLE_ID_RAM);
    
    //                         32'b................................;
    localparam ADDR_MASK_RAM = 32'b00000000zzzzzzzzzzzzzzzzzzzzzzzz;
    
    always @ (*) begin
        casez (addr_i)
            ADDR_MASK_RAM: begin
                enable_id    <= ENABLE_ID_RAM;
                read_data_o  <= ram_read_data_i;
                read_valid_o <= ram_read_valid_i;
                busy_o       <= ram_busy_i;
            end
            default: begin
                enable_id    <= ENABLE_ID_UNUSED;
                read_data_o  <= 32'bz;
                read_valid_o <= 0;
                busy_o       <= 0;
            end
        endcase
    end
    
endmodule
