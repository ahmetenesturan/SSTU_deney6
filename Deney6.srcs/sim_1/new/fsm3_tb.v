`timescale 1ns / 1ps

module fsm3_tb;

    reg x, clk;
    wire z;

    pattern_detector pd_tb(x,clk,z);

    initial begin
        clk = 0; x = 0;
        #8; x = 1;
        #20; x = 1;
        #20; x = 0;
        #20; x = 0;
        #20; x = 1;
        #20; x = 0;
        #20; x = 1;
        #20; x = 0;
        #20; x = 0;
        #20; x = 0;
        #20; x = 1;
        #20; x = 0;
        #20; x = 0;
        #20; x = 1;
        #20; x = 0;
        #20; x = 1;
        #20; x = 1;
        #20; x = 1;
        #20; x = 0;
        #20; x = 1;
        #20; x = 1;
        #20; x = 0;
        #20; x = 0;
        #20;
        $finish;
    end

    always begin
        #10 clk = ~clk;
    end

endmodule
