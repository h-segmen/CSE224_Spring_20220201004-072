module zero2five_counter (an,
    clk,
    rst,
    count,
    seg);
 output an;
 input clk;
 input rst;
 output [3:0] count;
 output [6:0] seg;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire clknet_0_clk;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__nor3b_1 _18_ (.A(net3),
    .B(net5),
    .C_N(net4),
    .Y(_08_));
 sky130_fd_sc_hd__nor2_1 _19_ (.A(net2),
    .B(_08_),
    .Y(_00_));
 sky130_fd_sc_hd__xor2_1 _20_ (.A(net3),
    .B(net2),
    .X(_01_));
 sky130_fd_sc_hd__or4b_1 _21_ (.A(net3),
    .B(net2),
    .C(net5),
    .D_N(net4),
    .X(_09_));
 sky130_fd_sc_hd__nand3_1 _22_ (.A(net3),
    .B(net2),
    .C(net4),
    .Y(_10_));
 sky130_fd_sc_hd__a21o_1 _23_ (.A1(net3),
    .A2(net2),
    .B1(net4),
    .X(_11_));
 sky130_fd_sc_hd__and3_1 _24_ (.A(_09_),
    .B(_10_),
    .C(_11_),
    .X(_12_));
 sky130_fd_sc_hd__clkbuf_1 _25_ (.A(_12_),
    .X(_02_));
 sky130_fd_sc_hd__xnor2_1 _26_ (.A(net5),
    .B(_10_),
    .Y(_03_));
 sky130_fd_sc_hd__or4b_1 _27_ (.A(net3),
    .B(net4),
    .C(net5),
    .D_N(net2),
    .X(_13_));
 sky130_fd_sc_hd__a21oi_1 _28_ (.A1(net3),
    .A2(net4),
    .B1(net5),
    .Y(_14_));
 sky130_fd_sc_hd__nand3_1 _29_ (.A(_09_),
    .B(_13_),
    .C(_14_),
    .Y(net9));
 sky130_fd_sc_hd__or2_1 _30_ (.A(net4),
    .B(net5),
    .X(_15_));
 sky130_fd_sc_hd__a21bo_1 _31_ (.A1(net2),
    .A2(_15_),
    .B1_N(_14_),
    .X(net7));
 sky130_fd_sc_hd__inv_2 _32_ (.A(net3),
    .Y(_16_));
 sky130_fd_sc_hd__o21ai_1 _33_ (.A1(_16_),
    .A2(net2),
    .B1(_14_),
    .Y(net8));
 sky130_fd_sc_hd__or3_1 _34_ (.A(net2),
    .B(net4),
    .C(net5),
    .X(_17_));
 sky130_fd_sc_hd__buf_1 _35_ (.A(_17_),
    .X(net10));
 sky130_fd_sc_hd__o21ba_1 _36_ (.A1(net3),
    .A2(net10),
    .B1_N(_08_),
    .X(net11));
 sky130_fd_sc_hd__o21ba_1 _37_ (.A1(_16_),
    .A2(_15_),
    .B1_N(_08_),
    .X(net12));
 sky130_fd_sc_hd__inv_2 _38_ (.A(net1),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _39_ (.A(net1),
    .Y(_05_));
 sky130_fd_sc_hd__inv_2 _40_ (.A(net1),
    .Y(_06_));
 sky130_fd_sc_hd__inv_2 _41_ (.A(net1),
    .Y(_07_));
 sky130_fd_sc_hd__dfrtp_4 _42_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .RESET_B(_04_),
    .Q(net2));
 sky130_fd_sc_hd__dfrtp_4 _43_ (.CLK(clknet_1_0__leaf_clk),
    .D(_01_),
    .RESET_B(_05_),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_4 _44_ (.CLK(clknet_1_0__leaf_clk),
    .D(_02_),
    .RESET_B(_06_),
    .Q(net4));
 sky130_fd_sc_hd__dfrtp_4 _45_ (.CLK(clknet_1_1__leaf_clk),
    .D(_03_),
    .RESET_B(_07_),
    .Q(net5));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_1 _47_ (.A(net9),
    .X(net6));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_32 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__buf_1 output2 (.A(net2),
    .X(count[0]));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(count[1]));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(count[2]));
 sky130_fd_sc_hd__buf_1 output5 (.A(net5),
    .X(count[3]));
 sky130_fd_sc_hd__buf_1 output6 (.A(net6),
    .X(seg[0]));
 sky130_fd_sc_hd__buf_1 output7 (.A(net7),
    .X(seg[1]));
 sky130_fd_sc_hd__buf_1 output8 (.A(net8),
    .X(seg[2]));
 sky130_fd_sc_hd__buf_1 output9 (.A(net9),
    .X(seg[3]));
 sky130_fd_sc_hd__buf_1 output10 (.A(net10),
    .X(seg[4]));
 sky130_fd_sc_hd__buf_1 output11 (.A(net11),
    .X(seg[5]));
 sky130_fd_sc_hd__buf_1 output12 (.A(net12),
    .X(seg[6]));
 sky130_fd_sc_hd__conb_1 zero2five_counter_13 (.LO(net13));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_ef_sc_hd__decap_12 FILLER_0_0_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_20 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_34 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_40 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_13 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_37 ();
 assign an = net13;
endmodule
