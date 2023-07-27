`timescale 1ns / 1ps

module QIPU_Processor(
        input ext_clock,
        input [4:0] dpad_btns_in,
        input [15:0] slide_switches_in,
        output [15:0] slide_leds_out
    );
    
    wire slow_clock;
    reg [22:0] slow_clock_counter;
    assign slow_clock = slow_clock_counter[22];
    always @ (posedge ext_clock) begin
        slow_clock_counter <= slow_clock_counter + 1;
    end
    
    reg [31:0] value_a;
    reg [31:0] value_b;
    always @ (posedge slow_clock) begin
        case (dpad_btns_in)
            5'b00010: value_a[15:0] <= slide_switches_in;
            5'b00100: value_b[15:0] <= slide_switches_in;
            5'b01000: value_b[31:16] <= slide_switches_in;
            5'b10000: value_a[31:16] <= slide_switches_in;
        endcase
    end
    
    wire [31:0] sum;
    
    Subtractor adder (
        .a_in (value_a),
        .b_in (value_b),
        .carry_out (),
        .diff_out (sum)
    );
    
    assign slide_leds_out = dpad_btns_in[0] ? sum[31:16] : sum[15:0];
    
endmodule
