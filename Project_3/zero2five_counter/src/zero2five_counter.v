`timescale 1ns / 1ps

module zero2five_counter(clk, rst, count, an, seg);
    
    input clk;
    input rst;
    output reg [3:0] count;
    output an;
    output reg [6:0] seg;
    
    assign an = 1'b0;

    always @(posedge clk or posedge rst) 
    begin
        if (rst)
            count <= 4'd0;
        else if (count == 4)
            count <= 4'd0;
        else
            count <= count + 1;
    end
    
    always @(count)
    begin
    case(count)
    4'd0: seg = 7'b1000000;
    4'd1: seg = 7'b1111001;
    4'd2: seg = 7'b0100100;
    4'd3: seg = 7'b0110000;
    4'd4: seg = 7'b0011001;
    4'd5: seg = 7'b0010010;
    default: seg = 7'b1111111;
    endcase
    end
    
endmodule

