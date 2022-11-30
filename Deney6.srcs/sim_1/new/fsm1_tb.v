`timescale 1ns / 1ps
module fsm1_tb;

    reg clk, x;
    wire z;

    fsm1 fsm1_mod(x,clk,z);

    initial begin
        clk = 0;
        x = 0; #15;
        x = 1; #20;
        x = 0; #20;
        x = 0; #20;
        x = 1; #20;
        x = 1; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 0; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        x = 1; #20;
        $finish;
    end

    always begin
        #10;
        clk = ~clk;
    end

endmodule
