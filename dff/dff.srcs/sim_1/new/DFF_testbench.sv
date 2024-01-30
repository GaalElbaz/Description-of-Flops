`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: DFF_testbench
// 
//////////////////////////////////////////////////////////////////////////////////


module DFF_testbench();

logic D, Clr, Clk, Q,Qbar;

DFF_Test U0 (.D(D), .Clk(Clk), .Clr(Clr), .Q(Q), .Qbar(Qbar));

always #25 Clk = ~Clk;

initial begin
    Clk = 1'b0;
    Clr = 1'b0;
    D = 1'b0;
    #10 Clr = 1'b1;
    #5 Clr = 1'b0;
    #20 D = 1'b1;
    #50 D = 1'b0;
    #100 D = 1'b1;
    #50 D = 1'b0;
    $finish;
end
endmodule
