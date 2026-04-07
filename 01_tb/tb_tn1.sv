`timescale 1ns/1ns

module tb_tn1;
    logic [7:0] A, B;
    logic Sel;
    logic [7:0] S;
    logic Co, Ov;

    tn1 dut (.A(A),.B(B),.Sel(Sel),.S(S),.Co(Co),.Ov(Ov));

    initial begin
	    $dumpfile("tb_tn1.vcd");
	    $dumpvars(0, tb_tn1);
	
	Sel = 0; A = 8'h00; B = 8'h00; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 0; A = 8'h28; B = 8'h57; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 0; A = 8'hFE; B = 8'h07; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 0; A = 8'h8C; B = 8'hAB; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 0; A = 8'h01; B = 8'h7F; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 1; A = 8'h00; B = 8'h00; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 1; A = 8'h43; B = 8'h25; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 1; A = 8'h34; B = 8'h8C; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 1; A = 8'h80; B = 8'h01; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
        Sel = 1; A = 8'h7F; B = 8'hFF; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);
	Sel = 1; A = 8'h05; B = 8'hFF; #10;
        $display("Time=%0t | Sel=%b A=%h B=%h | S=%h Co=%b Ov=%b", $time, Sel, A, B, S, Co, Ov);

        $finish;
    end
endmodule