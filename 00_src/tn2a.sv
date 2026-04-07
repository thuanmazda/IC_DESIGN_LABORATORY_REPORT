`timescale 1ns/1ns

module tn2a (
    input  logic [7:0] data,
    input  logic       clk,
    input  logic       rst,
    input  logic       Sel,
    output logic [7:0] out,
    output logic       carry,
    output logic       overflow
);
    logic [7:0] next_S;
    logic       next_Co, next_Ov;

    tn1 adder_sub (.A(out),.B(data),.Sel(Sel),.S(next_S),.Co(next_Co),.Ov(next_Ov));
	always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            out      <= 8'h00;
            carry    <= 1'b0;
            overflow <= 1'b0;
        end else begin
            out      <= next_S;
            carry    <= next_Co;
            overflow <= next_Ov;
        end
    end
endmodule