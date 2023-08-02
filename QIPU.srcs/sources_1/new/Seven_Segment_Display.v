`timescale 1ns / 1ps

module Seven_Segment_Display(
    input clk_in,
    input [15:0] value_in,
    output reg [3:0] anode_out,
    output reg [7:0] cathode_out
    );
    
    reg [3:0] LED_BCD;
    
    reg [19:0] refresh_counter;
    always @ (posedge clk_in) begin
        refresh_counter <= refresh_counter + 1;
    end
    
    always @ (*) begin
        case (refresh_counter[19:18])
            2'b00: begin
                anode_out = 4'b0111;
                LED_BCD = value_in / 1000;
                end
            2'b01: begin
                anode_out = 4'b1011;
                LED_BCD = (value_in % 1000) / 100;
                end
            2'b10: begin
                anode_out = 4'b1101;
                LED_BCD = ((value_in % 1000) % 100) / 10;
                end
            2'b11: begin
                anode_out = 4'b1110;
                LED_BCD = ((value_in % 1000) % 100) % 10;
                end
        endcase
    end
    
    always @ (*) begin
        case (LED_BCD)
            4'b0000: cathode_out = 8'b10000001;
            4'b0001: cathode_out = 8'b11001111;
            4'b0010: cathode_out = 8'b10010010;
            4'b0011: cathode_out = 8'b10000110;
            4'b0100: cathode_out = 8'b11001100;
            4'b0101: cathode_out = 8'b10100100;
            4'b0110: cathode_out = 8'b10100000;
            4'b0111: cathode_out = 8'b10001111;
            4'b1000: cathode_out = 8'b10000000;
            4'b1001: cathode_out = 8'b10000100;
            default: cathode_out = 8'b10000001;
        endcase
    end
endmodule
