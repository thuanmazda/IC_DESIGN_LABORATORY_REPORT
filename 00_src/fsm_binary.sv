`timescale 1ns/1ns
module fsm_binary (
    input  logic clk,
    input  logic rst,
    input  logic w,
    output logic z
);

    logic [3:0] state, next_state;

    localparam logic [3:0] A = 4'b0000, B = 4'b0001,C = 4'b0010, D = 4'b0011, E = 4'b0100, 
    F = 4'b0101, G = 4'b0110, H = 4'b0111, I = 4'b1000;

    always_ff @(posedge clk) begin
        if (rst)
            state <= A;
        else
            state <= next_state;
    end

    assign next_state =
        (state == A) ? (w ? F : B) :
        (state == B) ? (w ? F : C) :
        (state == C) ? (w ? F : D) :
        (state == D) ? (w ? F : E) :
        (state == E) ? (w ? F : E) :
        (state == F) ? (w ? G : B) :
        (state == G) ? (w ? H : B) :
        (state == H) ? (w ? I : B) :
        (state == I) ? (w ? I : B) :
        A;

    assign z = (state == E) || (state == I);

endmodule