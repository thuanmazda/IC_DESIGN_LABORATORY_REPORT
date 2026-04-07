`timescale 1ns/1ns
module tb_tn2b;
    logic [7:0] data;
    logic       clk;
    logic       rst;
    logic       Sel;
    logic [7:0] out;
    logic       carry;
    logic       overflow;

    tn2b dut (.data(data),.clk(clk),.rst(rst),.Sel(Sel),.out(out),.carry(carry),.overflow(overflow));
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $dumpfile("tb_tn2b.vcd");
        $dumpvars(0, tb_tn2b);
        
        rst = 0; Sel = 0; data = 8'h00; #5 rst = 1; #5 rst = 0;    
        $display("--- Bat dau mo phong Accumulator (Sel=0: Add, Sel=1: Sub) ---"); 
        data = 8'h70; #10;
        data = 8'h25; #10;
    	data = 8'h5A; #10;
        data = 8'h30; #10;
        data = 8'h1F; #10;
        data = 8'h90; #10; 
        data = 8'hE8; #10;
    	data = 8'h80; #10;
     	#15;
        $display("--- Ket thuc mo phong ---");
        $finish;
    end

   initial begin
        $monitor("Time=%0t | rst=%b | Sel=%b | Data_In=%h | Accumulator_Out=%h | Co=%b | Ov=%b", 
                 $time, rst, Sel, data, out, carry, overflow);
    end

endmodule