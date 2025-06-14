`timescale 1ns / 1ps

module ProgramCounter(clk, rst, ctrl, isBranch, isJump, equal, target ,PC);
    
    input clk; 
    input rst; 
    input ctrl;
    input isBranch;
    input isJump;
    input equal;
    input [31:0] target;
    output reg [4:0] PC;
    
    always @(posedge clk or posedge rst) begin
        if (rst)
            PC <= 0;
        else if (isJump)
            PC <= target[4:0];
        else if (isBranch && equal)
            PC <= target[4:0];
        else if (ctrl)
            PC <= PC + 4;
    end
endmodule

