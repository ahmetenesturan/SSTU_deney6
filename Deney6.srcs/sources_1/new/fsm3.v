`timescale 1ns / 1ps

module pattern_detector(input x, input clk, output reg z);

// 1 -> 10 -> 101 -> 1011 -> 10110 -> 101101
// 1 -> 10 -> 100 -> 1001 -> 10010 -> 100100
// and a start state
// total 11 states
// start, 1,10,101,100,1011,1001,10110,10010,101101,100100

    //parameter o = 4'd0,
    //o_z = 4'd1,
    //o_z_o = 4'd2,
    //o_z_z = 4'd3, 
    //o_z_o_o = 4'd4,
    //o_z_z_o = 4'd5,
    //o_z_o_o_z = 4'd6,
    //o_z_z_o_z

    parameter s_start = 4'd0,
    s_1 = 4'd1,
    s_10 = 4'd2,
    s_101 = 4'd3, 
    s_100 = 4'd4,
    s_1011 = 4'd5,
    s_1001 = 4'd6,
    s_10110 = 4'd7,
    s_10010 = 4'd8,
    s_101101 = 4'd9,
    s_100100 = 4'd10;

    reg [3:0] state;

    always @(posedge clk) begin

        case(state)
            s_start: begin
                if(x == 1) begin
                    state <= s_1;
                    z <= 0;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end

            s_1: begin
                if(x == 1) begin
                    state <= s_start;
                    z <= 0;
                end
                else begin
                    state <= s_10;
                    z <= 0;
                end
            end

            s_10: begin
                if(x == 1) begin
                    state <= s_101;
                    z <= 0;
                end
                else begin
                    state <= s_100;
                    z <= 0;
                end
            end

            s_101: begin
                if(x == 1) begin
                    state <= s_1011;
                    z <= 0;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end

            s_100: begin
                if(x == 1) begin
                    state <= s_1001;
                    z <= 0;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end

            s_1011: begin
                if(x == 1) begin
                    state <= s_start;
                    z <= 0;
                end
                else begin
                    state <= s_10110;
                    z <= 0;
                end
            end

            s_1001: begin
                if(x == 1) begin
                    state <= s_start;
                    z <= 0;
                end
                else begin
                    state <= s_10010;
                    z <= 0;
                end
            end

            s_10110: begin
                if(x == 1) begin
                    state <= s_101101;
                    z <= 1;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end

            s_10010: begin
                if(x == 1) begin
                    state <= s_start;
                    z <= 0;
                end
                else begin
                    state <= s_100100;
                    z <= 1;
                end
            end

            s_101101: begin
                if(x == 1) begin
                    state <= s_1;
                    z <= 0;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end

            s_100100: begin
                if(x == 1) begin
                    state <= s_1;
                    z <= 0;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end

            default: begin
                if(x == 1) begin
                    state <= s_1;
                    z <= 0;
                end
                else begin
                    state <= s_start;
                    z <= 0;
                end
            end
        endcase
    end
endmodule
