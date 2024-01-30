`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: TFF_Testbench
//////////////////////////////////////////////////////////////////////////////////


module TFF_Testbench();

logic T,Clk,Clr,Q,Qbar;

TFF_Test U0(.Clr(Clr), .Clk(Clk), .T(T), .Q(Q), .Qbar(Qbar));

always #25 Clk = ~Clk;

initial begin
    Clk = 1'b0;
    Clr = 1'b1;
    T = 1'b0;
    #10
    Clr = 1'b0;
    #40
    T = 1'b1;
    #50
    T = 1'b0;
    #100
    T = 1'b1;
    #200
    $finish;
    
end


endmodule
