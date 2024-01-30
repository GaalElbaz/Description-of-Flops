`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: TFF_Test
//////////////////////////////////////////////////////////////////////////////////


module TFF_Test(
    input T,
    input Clr,
    input Clk,
    output logic Q,
    output logic Qbar
    );
    
    assign Qbar = ~Q;
    
    always_ff @(posedge Clk or posedge Clr) begin
        if(Clr) begin
            Q <= 1'b0;
        end
        else begin 
            case(T)
                1'b0: Q <= Q;
                1'b1: Q <= ~Q;
            endcase
        end
    end
endmodule
