`timescale 1ns / 1ps

module Register_Bank(
        input clk_in,
        input stall_in,
        input [3:0] regA_in,
        input [3:0] regB_in,
        input [3:0] regW_in,
        input [31:0] writeData_in,
        input writeEnable_in,
        input [4:0] dpadBtns_in,
        input [15:0] slideSwitches_in,
        output [31:0] dataA_out,
        output [31:0] dataB_out,
        output [15:0] slideLEDs_out,
        output reg [3:0] sevenSegAnodes_out,
        output reg [7:0] sevenSegCathodes_out
    );
    
    localparam reg_zero = 4'b0000;
    localparam reg_gp   = 4'b0001;
    localparam reg_sp   = 4'b0010;
    localparam reg_bp   = 4'b0011;
    localparam reg_ra   = 4'b0100;
    localparam reg_r0   = 4'b0101;
    localparam reg_r1   = 4'b0110;
    localparam reg_r2   = 4'b0111;
    localparam reg_r3   = 4'b1000;
    localparam reg_r4   = 4'b1001;
    localparam reg_r5   = 4'b1010;
    localparam reg_r6   = 4'b1011;
    localparam reg_r7   = 4'b1100;
    localparam reg_rinp = 4'b1101;
    localparam reg_rssd = 4'b1110;
    localparam reg_rled = 4'b1111;
    
    reg [31:0] bank[15:0];
    
    initial bank[0] = 0;

    // Default register operations
    assign dataA_out = bank[regA_in];
    assign dataB_out = bank[regB_in];
    
    always @ (posedge clk_in) begin
        if (!stall_in)
            case (regW_in)
                reg_rinp: begin
                    bank[reg_rinp] <= {11'b0, dpadBtns_in, slideSwitches_in};
                    end
                reg_zero: begin
                    bank[reg_zero] <= 0;
                    end
                default: begin
                    if (writeEnable_in == 1)
                        bank[regW_in] <= writeData_in;
                    end
            endcase
    end
    
    // Output LEDs, register mapped
    assign slideLEDs_out = bank[reg_rled][15:0];
    
    // Seven segment display, register mapped
    reg [1:0] ssdRefreshCounter;
    always @ (posedge clk_in) begin
        ssdRefreshCounter <= ssdRefreshCounter + 1;
    end
    
    always @ (*) begin
        case (ssdRefreshCounter[1:0])
            2'b00: begin
                sevenSegAnodes_out = 4'b0111;
                sevenSegCathodes_out = ~bank[reg_rssd][7:0];
                end
            2'b01: begin
                sevenSegAnodes_out = 4'b1011;
                sevenSegCathodes_out = ~bank[reg_rssd][15:8];
                end
            2'b10: begin
                sevenSegAnodes_out = 4'b1101;
                sevenSegCathodes_out = ~bank[reg_rssd][23:16];
                end
            2'b11: begin
                sevenSegAnodes_out = 4'b1110;
                sevenSegCathodes_out = ~bank[reg_rssd][31:24];
                end
        endcase
    end
    
endmodule
