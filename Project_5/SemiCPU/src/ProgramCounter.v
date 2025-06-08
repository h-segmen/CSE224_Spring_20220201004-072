`timescale 1ns / 1ps

module ProgramCounter(clk, rst, ctrl, PC);
    
    input clk; 
    input rst; 
    input ctrl;
    output reg [4:0] PC;
    
    always @(posedge clk or posedge rst) begin
        if (rst)
            PC <= 0;
        else if (ctrl)
            PC <= PC + 4;
    end
endmodule

