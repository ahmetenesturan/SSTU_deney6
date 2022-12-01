`timescale 1ns / 1ps

module D_FF(input D, CLK, output Q, Qn);
    reg FF;
    assign Q = FF;
    assign Qn = ~FF;
    
    always @(posedge CLK) begin
        FF = D;
    end
endmodule

module fsm1(input x, input clk, output z);

    wire z,q1,q2,q3;
    reg Q1,Q2,Q3;

    assign z = (!x & !Q1 & Q2 & Q3) | (x & Q1 & Q3);
    assign q1 = (x & Q2 & !Q3) | (x & Q1);
    assign q2 = (!Q1 & Q3) | x;
    assign q3 = (!x & Q2) | (!x & Q1 & Q3) | (x & Q1);

    //D_FF flip_flop(z, clk, z);

    initial begin
        Q1 <= 1;
        Q2 <= 0;
        Q3 <= 0;
    end

    always @(posedge clk) begin
        Q1 <= q1;
        Q2 <= q2;
        Q3 <= q3;
        Z <= z;
    end


endmodule
