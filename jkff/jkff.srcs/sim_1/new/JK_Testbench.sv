`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: JK_Testbench
//////////////////////////////////////////////////////////////////////////////////


module JK_Testbench();

logic J,K,Clr,Clk,Q,Qbar;

JK_Test U0(.J(J), .K(K), .Clr(Clr), .Clk(Clk), .Q(Q), .Qbar(Qbar));

always #30 Clk = ~Clk;

initial begin
    Clk = 1'b0;
    Clr = 1'b1;
    J = 1'b0;
    K = 1'b0;
    
   #10 Clr = 1'b0;
   #10 J = 1'b1;
   #50 
   J = 1'b0;
   K = 1'b1;
   #30
   J = 1'b1;
   K = 1'b1;
   #100
   $finish;
end
endmodule
