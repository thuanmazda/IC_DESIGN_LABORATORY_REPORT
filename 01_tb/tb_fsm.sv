`timescale 1ns/1ns

module tb_fsm();
    logic clk;
    logic rst;
    logic w;
    logic z_onehot;
    logic z_binary;
	fsm_onehot u1 (.clk(clk), .rst(rst), .w(w), .z(z_onehot));
	fsm_binary u2 (.clk(clk), .rst(rst), .w(w), .z(z_binary));


    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
	    $dumpfile("tb_fsm.vcd");
	    $dumpvars(0,tb_fsm);
        w = 0; rst = 1; #10;
	    rst = 0; #30;
	    w = 1; #10;
	    w = 0; #40;
	    w = 1; #50;
	    w = 0; #10; 
	    rst = 1; #10;
	    rst = 0; #50;
        $display("Simulation Finished!");
        $finish;
    end

    initial begin
        $monitor("Time=%0t | rst=%b | w=%b | z_onehot=%b | z_binary=%b", $time, rst, w, z_onehot,
        z_binary);
    end
endmodule