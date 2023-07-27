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
            5'b10000: value_a[15:0] <= slide_switches_in;   // LEFT PRESSED
            5'b10001: value_a[31:16] <= slide_switches_in;  // LEFT & MID PRESSED
            5'b00100: value_b[15:0] <= slide_switches_in;   // RIGHT PRESSED
            5'b00101: value_b[31:16] <= slide_switches_in;  // RIGHT & MID PRESSED
        endcase
    end
    
    wire [31:0] sum;
    wire [31:0] diff;
    
    Adder adder (
        .a_in (value_a),
        .b_in (value_b),
        .carry_out (),
        .sum_out (sum)
    );
    
    Subtractor subtractor (
        .a_in (value_a),
        .b_in (value_b),
        .carry_out (),
        .diff_out (diff)
    );
    
    wire [31:0] result;
    
    assign result = dpad_btns_in[3] ? diff : sum;
    
    assign slide_leds_out = dpad_btns_in[0] ? result[31:16] : result[15:0];
    
endmodule
