`timescale 1ns / 1ps
module fsm2(input x, input clk, output reg Z);

    wire z,q1,q2,q3,a;
    reg Q1,Q2,Q3,A;

    assign z = A & Q1;
    assign q1 = A & Q2;
    assign q2 = A;
    assign q3 = !x;
    assign a = x ^ Q3;



    initial begin
        Q1 <= 0;
        Q2 <= 0;
        Q3 <= 0;
        A <= 0;
        Z <= 0;
    end

    always @(posedge clk) begin
        Q1 <= q1;
        Q2 <= q2;
        Q3 <= q3;
        A <= a;
        Z <= z;
    end

endmodule
