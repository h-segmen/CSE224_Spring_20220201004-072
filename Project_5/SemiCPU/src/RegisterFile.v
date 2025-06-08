`timescale 1ns / 1ps

module RegisterFile ( CLK, WE3, A1, A2, A3, WD3, RD1, RD2);

    input wire CLK;
    input wire WE3;
    input wire [4:0] A1, A2, A3;
    input wire [31:0] WD3;
    output wire [31:0] RD1, RD2;
    
    reg [31:0] registers[31:0];

    //Read
    assign RD1 = registers[A1];
    assign RD2 = registers[A2];

    //Write
    always @(posedge CLK) begin
        if (WE3)
            registers[A3] <= WD3;
    end
endmodule
