`timescale 1ns / 1ps

module Random_Access_Memory(
        input             clk_i,
        input             enable_i,
        input      [31:0] addr_i,
        input      [31:0] data_i,
        input             read_enable_i,
        input             write_enable_i,
        
        output reg [31:0] read_data_o,
        output reg        read_valid_o,
        output            busy_o
    );
    
    reg [31:0] mem[0:1024];
    initial $readmemb("./bootloader.qsm.bin", mem);

    assign busy_o = read_enable_i | write_enable_i;
    
    always @ (posedge clk_i) begin
        if (read_enable_i) begin
            read_data_o <= mem[addr_i / 4];
        end
        else if (write_enable_i) begin
            mem[addr_i / 4] <= data_i;
        end
    end

    always @ (posedge clk_i) begin
        if (read_enable_i)
            read_valid_o <= 1;
        else
            read_valid_o <= 0;
    end

endmodule
