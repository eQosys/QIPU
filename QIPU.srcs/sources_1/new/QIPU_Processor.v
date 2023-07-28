`timescale 1ns / 1ps

module QIPU_Processor(
        input ext_clock,
        input [4:0] dpad_btns_in,
        input [15:0] slide_switches_in,
        output reg [15:0] slide_leds_out
    );
    
    wire slow_clock;
    reg [22:0] slow_clock_counter;
    assign slow_clock = slow_clock_counter[22];
    always @ (posedge ext_clock) begin
        slow_clock_counter <= slow_clock_counter + 1;
    end
    
    reg [31:0] value_a;
    reg [31:0] value_b;
    reg [2:0] alu_control;
    always @ (posedge slow_clock) begin
        case (dpad_btns_in)
            5'b10000: value_a[15:0] <= slide_switches_in;   // LEFT PRESSED         -> SET LOWER HALF OF A
            5'b10001: value_a[31:16] <= slide_switches_in;  // LEFT & MID PRESSED   -> SET UPPER HALF OF A
            5'b00100: value_b[15:0] <= slide_switches_in;   // RIGHT PRESSED        -> SET LOWER HALF OF B
            5'b00101: value_b[31:16] <= slide_switches_in;  // RIGHT & MID PRESSED  -> SET UPPER HALF OF B
            5'b01000: alu_control <= slide_switches_in[2:0]; // BOTTOM PRESSED      -> SET ALU CONTROL
        endcase
    end
    
    wire [31:0] result;
    wire [1:0] status_flags;
    ALU alu(
        .a_in (value_a),
        .b_in (value_b),
        .alu_control_in (alu_control),
        .res_out (result),
        .is_zero_out (status_flags[0]),
        .is_neg_out (status_flags[1])
    );
    
    always @ (*) begin
        case (dpad_btns_in)
            5'b00000: slide_leds_out <= result[15:0];               // NOTHING PRESSED  -> VIEW LOWER HALF of RESULT
            5'b00001: slide_leds_out <= result[31:16];               // MIDDLE PRESSED  -> VIEW UPPER HALF of RESULT
            5'b00010: slide_leds_out <= {{14{1'b0}}, status_flags}; // TOP PRESSED      -> VIEW STATUS FLAGS
            default:  slide_leds_out <= {32{slow_clock}};
        endcase
    end

endmodule
