// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Dec  1 10:47:02 2022
// Host        : aet-linux running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ahmetenesturan/Projects/SSTU/Deney6/Deney6.sim/sim_1/impl/func/xsim/fsm1_tb_func_impl.v
// Design      : fsm2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "2bcd8e4c" *) 
(* NotValidForBitStream *)
module fsm2
   (x,
    clk,
    Z);
  input x;
  input clk;
  output Z;

  wire A;
  wire Q1;
  wire Q2;
  wire Q3;
  wire Z;
  wire Z_OBUF;
  wire a;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire q1;
  wire q3;
  wire x;
  wire x_IBUF;
  wire z;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    A_i_1
       (.I0(Q3),
        .I1(x_IBUF),
        .O(a));
  FDRE #(
    .INIT(1'b0)) 
    A_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a),
        .Q(A),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Q1_i_1
       (.I0(A),
        .I1(Q2),
        .O(q1));
  FDRE #(
    .INIT(1'b0)) 
    Q1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1),
        .Q(Q1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Q2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(A),
        .Q(Q2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    Q3_i_1
       (.I0(x_IBUF),
        .O(q3));
  FDRE #(
    .INIT(1'b0)) 
    Q3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q3),
        .Q(Q3),
        .R(1'b0));
  OBUF Z_OBUF_inst
       (.I(Z_OBUF),
        .O(Z));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Z_i_1
       (.I0(A),
        .I1(Q1),
        .O(z));
  FDRE #(
    .INIT(1'b0)) 
    Z_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(z),
        .Q(Z_OBUF),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    x_IBUF_inst
       (.I(x),
        .O(x_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
