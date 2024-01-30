`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: JK_Test
//////////////////////////////////////////////////////////////////////////////////


module JK_Test(
    input J,
    input K,
    input Clk,
    input Clr,
    output logic Q,
    output logic Qbar
    );
    
    assign Qbar = ~Q;
    
    always_ff @(posedge Clk or posedge Clr) begin
        if(Clr) begin
            Q <= 1'b0;
            Qbar <= 1'b1;
        end
        else begin
            case({J,K})
                2'b00: begin
                // No change
                    Q <= Q; 
                end
                2'b01: begin
                    Q <= 1'b0;
                end
                2'b10: begin
                    Q <= 1'b1;
                end
                2'b11: begin
                    Q <= ~Q;
                end
            endcase
        end
    end
endmodule
