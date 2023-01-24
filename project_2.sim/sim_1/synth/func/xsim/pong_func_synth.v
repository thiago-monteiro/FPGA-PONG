// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 23 18:25:15 2023
// Host        : Thiagos-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Thiago
//               Monteiro/Downloads/project_2/project_2.sim/sim_1/synth/func/xsim/pong_func_synth.v}
// Design      : pong
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hvsync_generator
   (vga_h_sync_OBUF,
    vga_v_sync_OBUF,
    vga_R0,
    vga_G0,
    ResetCollision0,
    ball_inY_reg,
    ball_inX_reg,
    CollisionY1_reg,
    CollisionY2_reg,
    CollisionX2_reg,
    CollisionX1_reg,
    clk_IBUF_BUFG,
    Q,
    vga_R_reg,
    ball_inX,
    ball_inY,
    vga_R_reg_i_13_0,
    vga_R_reg_i_16_0,
    vga_R_reg_i_11_0,
    vga_R_reg_i_13_1,
    ball_inX_reg_i_3_0,
    ball_inY_reg_i_3_0,
    CollisionX1_i_4_0,
    CollisionY2_i_4_0,
    CollisionY2_reg_i_2_0,
    S,
    ball_inY_reg_0,
    CollisionY1,
    CollisionY2,
    CollisionX2,
    CollisionX1);
  output vga_h_sync_OBUF;
  output vga_v_sync_OBUF;
  output vga_R0;
  output vga_G0;
  output ResetCollision0;
  output ball_inY_reg;
  output ball_inX_reg;
  output CollisionY1_reg;
  output CollisionY2_reg;
  output CollisionX2_reg;
  output CollisionX1_reg;
  input clk_IBUF_BUFG;
  input [8:0]Q;
  input vga_R_reg;
  input ball_inX;
  input ball_inY;
  input vga_R_reg_i_13_0;
  input vga_R_reg_i_16_0;
  input vga_R_reg_i_11_0;
  input vga_R_reg_i_13_1;
  input [9:0]ball_inX_reg_i_3_0;
  input [8:0]ball_inY_reg_i_3_0;
  input CollisionX1_i_4_0;
  input CollisionY2_i_4_0;
  input CollisionY2_reg_i_2_0;
  input [0:0]S;
  input [0:0]ball_inY_reg_0;
  input CollisionY1;
  input CollisionY2;
  input CollisionX2;
  input CollisionX1;

  wire CollisionX1;
  wire CollisionX11;
  wire CollisionX1_i_4_0;
  wire CollisionX1_i_4_n_0;
  wire CollisionX1_i_5_n_0;
  wire CollisionX1_i_6_n_0;
  wire CollisionX1_i_7_n_0;
  wire CollisionX1_reg;
  wire CollisionX1_reg_i_2_n_1;
  wire CollisionX1_reg_i_2_n_2;
  wire CollisionX1_reg_i_2_n_3;
  wire CollisionX2;
  wire CollisionX2_reg;
  wire CollisionY1;
  wire CollisionY12;
  wire CollisionY1_reg;
  wire CollisionY2;
  wire CollisionY2_i_3_n_0;
  wire CollisionY2_i_4_0;
  wire CollisionY2_i_4_n_0;
  wire CollisionY2_i_5_n_0;
  wire CollisionY2_i_6_n_0;
  wire CollisionY2_i_7_n_0;
  wire CollisionY2_reg;
  wire CollisionY2_reg_i_2_0;
  wire CollisionY2_reg_i_2_n_1;
  wire CollisionY2_reg_i_2_n_2;
  wire CollisionY2_reg_i_2_n_3;
  wire \CounterX[0]_i_1_n_0 ;
  wire \CounterX[2]_i_1_n_0 ;
  wire \CounterX[4]_i_1_n_0 ;
  wire \CounterX[6]_i_1_n_0 ;
  wire \CounterX[6]_i_2_n_0 ;
  wire \CounterX[7]_i_1_n_0 ;
  wire \CounterX_reg_n_0_[0] ;
  wire \CounterX_reg_n_0_[1] ;
  wire \CounterX_reg_n_0_[2] ;
  wire CounterXmaxed;
  wire \CounterY[8]_i_2_n_0 ;
  wire \CounterY_reg_n_0_[0] ;
  wire \CounterY_reg_n_0_[1] ;
  wire \CounterY_reg_n_0_[2] ;
  wire [8:0]Q;
  wire ResetCollision0;
  wire ResetCollision_i_2_n_0;
  wire ResetCollision_i_3_n_0;
  wire [0:0]S;
  wire ball_inX;
  wire ball_inX1;
  wire ball_inX_i_10_n_0;
  wire ball_inX_i_11_n_0;
  wire ball_inX_i_14_n_0;
  wire ball_inX_i_4_n_0;
  wire ball_inX_i_5_n_0;
  wire ball_inX_i_6_n_0;
  wire ball_inX_i_7_n_0;
  wire ball_inX_i_8_n_0;
  wire ball_inX_i_9_n_0;
  wire ball_inX_reg;
  wire ball_inX_reg_i_2_n_0;
  wire ball_inX_reg_i_2_n_1;
  wire ball_inX_reg_i_2_n_2;
  wire ball_inX_reg_i_2_n_3;
  wire [9:0]ball_inX_reg_i_3_0;
  wire ball_inX_reg_i_3_n_1;
  wire ball_inX_reg_i_3_n_2;
  wire ball_inX_reg_i_3_n_3;
  wire ball_inY;
  wire ball_inY0;
  wire ball_inY1;
  wire ball_inY_i_10_n_0;
  wire ball_inY_i_12_n_0;
  wire ball_inY_i_5_n_0;
  wire ball_inY_i_6_n_0;
  wire ball_inY_i_7_n_0;
  wire ball_inY_i_8_n_0;
  wire ball_inY_i_9_n_0;
  wire ball_inY_reg;
  wire [0:0]ball_inY_reg_0;
  wire ball_inY_reg_i_2_n_1;
  wire ball_inY_reg_i_2_n_2;
  wire ball_inY_reg_i_2_n_3;
  wire [8:0]ball_inY_reg_i_3_0;
  wire ball_inY_reg_i_3_n_2;
  wire ball_inY_reg_i_3_n_3;
  wire clk_IBUF_BUFG;
  wire inDisplayArea;
  wire inDisplayArea_i_1_n_0;
  wire inDisplayArea_i_2_n_0;
  wire [9:1]p_0_in;
  wire p_0_in__0;
  wire [8:0]p_0_in__0__0;
  wire [5:0]p_1_in;
  wire [6:0]p_2_in;
  wire paddle1;
  wire paddle16_in;
  wire vga_G0;
  wire vga_G_i_2_n_0;
  wire vga_G_i_3_n_0;
  wire vga_R0;
  wire vga_R_i_12_n_0;
  wire vga_R_i_14_n_0;
  wire vga_R_i_15_n_0;
  wire vga_R_i_17_n_0;
  wire vga_R_i_18_n_0;
  wire vga_R_i_19_n_0;
  wire vga_R_i_20_n_0;
  wire vga_R_i_21_n_0;
  wire vga_R_i_22_n_0;
  wire vga_R_i_23_n_0;
  wire vga_R_i_24_n_0;
  wire vga_R_i_25_n_0;
  wire vga_R_i_26_n_0;
  wire vga_R_i_27_n_0;
  wire vga_R_i_28_n_0;
  wire vga_R_i_29_n_0;
  wire vga_R_i_30_n_0;
  wire vga_R_i_31_n_0;
  wire vga_R_i_32_n_0;
  wire vga_R_i_33_n_0;
  wire vga_R_i_34_n_0;
  wire vga_R_i_3_n_0;
  wire vga_R_i_4_n_0;
  wire vga_R_i_5_n_0;
  wire vga_R_i_6_n_0;
  wire vga_R_i_7_n_0;
  wire vga_R_i_8_n_0;
  wire vga_R_i_9_n_0;
  wire vga_R_reg;
  wire vga_R_reg_i_11_0;
  wire vga_R_reg_i_13_0;
  wire vga_R_reg_i_13_1;
  wire vga_R_reg_i_13_n_0;
  wire vga_R_reg_i_13_n_1;
  wire vga_R_reg_i_13_n_2;
  wire vga_R_reg_i_13_n_3;
  wire vga_R_reg_i_16_0;
  wire vga_R_reg_i_16_n_0;
  wire vga_R_reg_i_16_n_1;
  wire vga_R_reg_i_16_n_2;
  wire vga_R_reg_i_16_n_3;
  wire vga_VS_inv_i_1_n_0;
  wire vga_VS_inv_i_2_n_0;
  wire vga_h_sync_OBUF;
  wire vga_v_sync_OBUF;
  wire [3:0]NLW_CollisionX1_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_CollisionY2_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_ball_inX_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_ball_inX_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_ball_inY_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_ball_inY_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_ball_inY_reg_i_3_O_UNCONNECTED;
  wire [3:1]NLW_vga_R_reg_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_vga_R_reg_i_10_O_UNCONNECTED;
  wire [3:1]NLW_vga_R_reg_i_11_CO_UNCONNECTED;
  wire [3:0]NLW_vga_R_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_vga_R_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_vga_R_reg_i_16_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    CollisionX1_i_1
       (.I0(vga_R_i_4_n_0),
        .I1(vga_G_i_2_n_0),
        .I2(vga_G_i_3_n_0),
        .I3(ball_inX1),
        .I4(CollisionX11),
        .I5(CollisionX1),
        .O(CollisionX1_reg));
  LUT6 #(
    .INIT(64'h2888888882222222)) 
    CollisionX1_i_4
       (.I0(CollisionX1_i_7_n_0),
        .I1(p_1_in[3]),
        .I2(ball_inY_reg_i_3_0[4]),
        .I3(ball_inY_reg_i_3_0[5]),
        .I4(ball_inY_reg_i_3_0[3]),
        .I5(ball_inY_reg_i_3_0[6]),
        .O(CollisionX1_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000842121480000)) 
    CollisionX1_i_5
       (.I0(ball_inY_reg_i_3_0[5]),
        .I1(ball_inY_reg_i_3_0[4]),
        .I2(p_1_in[2]),
        .I3(p_1_in[1]),
        .I4(ball_inY_reg_i_3_0[3]),
        .I5(p_1_in[0]),
        .O(CollisionX1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CollisionX1_i_6
       (.I0(ball_inY_reg_i_3_0[2]),
        .I1(\CounterY_reg_n_0_[2] ),
        .I2(ball_inY_reg_i_3_0[1]),
        .I3(\CounterY_reg_n_0_[1] ),
        .I4(\CounterY_reg_n_0_[0] ),
        .I5(ball_inY_reg_i_3_0[0]),
        .O(CollisionX1_i_6_n_0));
  LUT6 #(
    .INIT(64'h8148884424122211)) 
    CollisionX1_i_7
       (.I0(p_1_in[4]),
        .I1(p_1_in[5]),
        .I2(CollisionX1_i_4_0),
        .I3(ball_inY_reg_i_3_0[7]),
        .I4(ball_inY_reg_i_3_0[3]),
        .I5(ball_inY_reg_i_3_0[8]),
        .O(CollisionX1_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 CollisionX1_reg_i_2
       (.CI(1'b0),
        .CO({CollisionX11,CollisionX1_reg_i_2_n_1,CollisionX1_reg_i_2_n_2,CollisionX1_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CollisionX1_reg_i_2_O_UNCONNECTED[3:0]),
        .S({S,CollisionX1_i_4_n_0,CollisionX1_i_5_n_0,CollisionX1_i_6_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    CollisionX2_i_1
       (.I0(vga_R_i_4_n_0),
        .I1(vga_G_i_2_n_0),
        .I2(vga_G_i_3_n_0),
        .I3(ball_inX_reg_i_2_n_0),
        .I4(CollisionX11),
        .I5(CollisionX2),
        .O(CollisionX2_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    CollisionY1_i_1
       (.I0(vga_R_i_4_n_0),
        .I1(vga_G_i_2_n_0),
        .I2(vga_G_i_3_n_0),
        .I3(ball_inY0),
        .I4(CollisionY12),
        .I5(CollisionY1),
        .O(CollisionY1_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    CollisionY2_i_1
       (.I0(vga_R_i_4_n_0),
        .I1(vga_G_i_2_n_0),
        .I2(vga_G_i_3_n_0),
        .I3(ball_inY1),
        .I4(CollisionY12),
        .I5(CollisionY2),
        .O(CollisionY2_reg));
  LUT4 #(
    .INIT(16'hA651)) 
    CollisionY2_i_3
       (.I0(ball_inX_reg_i_3_0[9]),
        .I1(ball_inX_reg_i_3_0[3]),
        .I2(CollisionY2_reg_i_2_0),
        .I3(p_2_in[6]),
        .O(CollisionY2_i_3_n_0));
  LUT6 #(
    .INIT(64'h2888888882222222)) 
    CollisionY2_i_4
       (.I0(CollisionY2_i_7_n_0),
        .I1(p_2_in[3]),
        .I2(ball_inX_reg_i_3_0[4]),
        .I3(ball_inX_reg_i_3_0[5]),
        .I4(ball_inX_reg_i_3_0[3]),
        .I5(ball_inX_reg_i_3_0[6]),
        .O(CollisionY2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000842121480000)) 
    CollisionY2_i_5
       (.I0(ball_inX_reg_i_3_0[5]),
        .I1(ball_inX_reg_i_3_0[4]),
        .I2(p_2_in[2]),
        .I3(p_2_in[1]),
        .I4(ball_inX_reg_i_3_0[3]),
        .I5(p_2_in[0]),
        .O(CollisionY2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CollisionY2_i_6
       (.I0(ball_inX_reg_i_3_0[2]),
        .I1(\CounterX_reg_n_0_[2] ),
        .I2(ball_inX_reg_i_3_0[1]),
        .I3(\CounterX_reg_n_0_[1] ),
        .I4(\CounterX_reg_n_0_[0] ),
        .I5(ball_inX_reg_i_3_0[0]),
        .O(CollisionY2_i_6_n_0));
  LUT6 #(
    .INIT(64'h8148884424122211)) 
    CollisionY2_i_7
       (.I0(p_2_in[4]),
        .I1(p_2_in[5]),
        .I2(CollisionY2_i_4_0),
        .I3(ball_inX_reg_i_3_0[7]),
        .I4(ball_inX_reg_i_3_0[3]),
        .I5(ball_inX_reg_i_3_0[8]),
        .O(CollisionY2_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 CollisionY2_reg_i_2
       (.CI(1'b0),
        .CO({CollisionY12,CollisionY2_reg_i_2_n_1,CollisionY2_reg_i_2_n_2,CollisionY2_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CollisionY2_reg_i_2_O_UNCONNECTED[3:0]),
        .S({CollisionY2_i_3_n_0,CollisionY2_i_4_n_0,CollisionY2_i_5_n_0,CollisionY2_i_6_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CounterX[0]_i_1 
       (.I0(\CounterX_reg_n_0_[0] ),
        .O(\CounterX[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CounterX[1]_i_1 
       (.I0(\CounterX_reg_n_0_[0] ),
        .I1(\CounterX_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CounterX[2]_i_1 
       (.I0(\CounterX_reg_n_0_[1] ),
        .I1(\CounterX_reg_n_0_[0] ),
        .I2(\CounterX_reg_n_0_[2] ),
        .O(\CounterX[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CounterX[3]_i_1 
       (.I0(\CounterX_reg_n_0_[0] ),
        .I1(\CounterX_reg_n_0_[1] ),
        .I2(\CounterX_reg_n_0_[2] ),
        .I3(p_2_in[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CounterX[4]_i_1 
       (.I0(\CounterX_reg_n_0_[0] ),
        .I1(\CounterX_reg_n_0_[1] ),
        .I2(\CounterX_reg_n_0_[2] ),
        .I3(p_2_in[0]),
        .I4(p_2_in[1]),
        .O(\CounterX[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CounterX[5]_i_1 
       (.I0(p_2_in[0]),
        .I1(\CounterX_reg_n_0_[2] ),
        .I2(\CounterX_reg_n_0_[1] ),
        .I3(\CounterX_reg_n_0_[0] ),
        .I4(p_2_in[1]),
        .I5(p_2_in[2]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \CounterX[6]_i_1 
       (.I0(p_2_in[1]),
        .I1(p_2_in[2]),
        .I2(p_2_in[0]),
        .I3(\CounterX_reg_n_0_[2] ),
        .I4(\CounterX[6]_i_2_n_0 ),
        .I5(p_2_in[3]),
        .O(\CounterX[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \CounterX[6]_i_2 
       (.I0(\CounterX_reg_n_0_[0] ),
        .I1(\CounterX_reg_n_0_[1] ),
        .O(\CounterX[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CounterX[7]_i_1 
       (.I0(inDisplayArea_i_2_n_0),
        .I1(p_2_in[4]),
        .O(\CounterX[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \CounterX[8]_i_1 
       (.I0(inDisplayArea_i_2_n_0),
        .I1(p_2_in[4]),
        .I2(p_2_in[5]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h0200)) 
    \CounterX[9]_i_1 
       (.I0(p_2_in[4]),
        .I1(inDisplayArea_i_2_n_0),
        .I2(p_2_in[5]),
        .I3(p_2_in[6]),
        .O(CounterXmaxed));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \CounterX[9]_i_2 
       (.I0(inDisplayArea_i_2_n_0),
        .I1(p_2_in[4]),
        .I2(p_2_in[5]),
        .I3(p_2_in[6]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CounterX[0]_i_1_n_0 ),
        .Q(\CounterX_reg_n_0_[0] ),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\CounterX_reg_n_0_[1] ),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CounterX[2]_i_1_n_0 ),
        .Q(\CounterX_reg_n_0_[2] ),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_2_in[0]),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CounterX[4]_i_1_n_0 ),
        .Q(p_2_in[1]),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_2_in[2]),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CounterX[6]_i_1_n_0 ),
        .Q(p_2_in[3]),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CounterX[7]_i_1_n_0 ),
        .Q(p_2_in[4]),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_2_in[5]),
        .R(CounterXmaxed));
  FDRE #(
    .INIT(1'b0)) 
    \CounterX_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(p_2_in[6]),
        .R(CounterXmaxed));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CounterY[0]_i_1 
       (.I0(\CounterY_reg_n_0_[0] ),
        .O(p_0_in__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CounterY[1]_i_1 
       (.I0(\CounterY_reg_n_0_[0] ),
        .I1(\CounterY_reg_n_0_[1] ),
        .O(p_0_in__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CounterY[2]_i_1 
       (.I0(\CounterY_reg_n_0_[1] ),
        .I1(\CounterY_reg_n_0_[0] ),
        .I2(\CounterY_reg_n_0_[2] ),
        .O(p_0_in__0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CounterY[3]_i_1 
       (.I0(\CounterY_reg_n_0_[2] ),
        .I1(\CounterY_reg_n_0_[0] ),
        .I2(\CounterY_reg_n_0_[1] ),
        .I3(p_1_in[0]),
        .O(p_0_in__0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CounterY[4]_i_1 
       (.I0(\CounterY_reg_n_0_[2] ),
        .I1(\CounterY_reg_n_0_[1] ),
        .I2(\CounterY_reg_n_0_[0] ),
        .I3(p_1_in[0]),
        .I4(p_1_in[1]),
        .O(p_0_in__0__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CounterY[5]_i_1 
       (.I0(\CounterY_reg_n_0_[2] ),
        .I1(p_1_in[1]),
        .I2(\CounterY_reg_n_0_[1] ),
        .I3(\CounterY_reg_n_0_[0] ),
        .I4(p_1_in[0]),
        .I5(p_1_in[2]),
        .O(p_0_in__0__0[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \CounterY[6]_i_1 
       (.I0(p_1_in[2]),
        .I1(\CounterY[8]_i_2_n_0 ),
        .I2(p_1_in[3]),
        .O(p_0_in__0__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CounterY[7]_i_1 
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(\CounterY[8]_i_2_n_0 ),
        .I3(p_1_in[4]),
        .O(p_0_in__0__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CounterY[8]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[4]),
        .I3(\CounterY[8]_i_2_n_0 ),
        .I4(p_1_in[5]),
        .O(p_0_in__0__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \CounterY[8]_i_2 
       (.I0(p_1_in[0]),
        .I1(\CounterY_reg_n_0_[0] ),
        .I2(\CounterY_reg_n_0_[1] ),
        .I3(p_1_in[1]),
        .I4(\CounterY_reg_n_0_[2] ),
        .O(\CounterY[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[0]),
        .Q(\CounterY_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[1]),
        .Q(\CounterY_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[2]),
        .Q(\CounterY_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[3]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[4]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[5]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[6]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[7]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CounterY_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(CounterXmaxed),
        .D(p_0_in__0__0[8]),
        .Q(p_1_in[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    ResetCollision_i_1
       (.I0(ResetCollision_i_2_n_0),
        .I1(ResetCollision_i_3_n_0),
        .I2(vga_VS_inv_i_2_n_0),
        .I3(p_1_in[1]),
        .I4(\CounterY_reg_n_0_[2] ),
        .I5(\CounterY_reg_n_0_[0] ),
        .O(ResetCollision0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ResetCollision_i_2
       (.I0(p_2_in[3]),
        .I1(p_2_in[4]),
        .I2(p_2_in[1]),
        .I3(p_2_in[2]),
        .I4(p_2_in[6]),
        .I5(p_2_in[5]),
        .O(ResetCollision_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ResetCollision_i_3
       (.I0(\CounterX_reg_n_0_[0] ),
        .I1(\CounterX_reg_n_0_[1] ),
        .I2(\CounterY_reg_n_0_[1] ),
        .I3(p_1_in[0]),
        .I4(p_2_in[0]),
        .I5(\CounterX_reg_n_0_[2] ),
        .O(ResetCollision_i_3_n_0));
  LUT4 #(
    .INIT(16'h7444)) 
    ball_inX_i_1
       (.I0(ball_inX_reg_i_2_n_0),
        .I1(ball_inX),
        .I2(ball_inY),
        .I3(ball_inX1),
        .O(ball_inX_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inX_i_10
       (.I0(ball_inX_reg_i_3_0[5]),
        .I1(p_2_in[2]),
        .I2(ball_inX_reg_i_3_0[4]),
        .I3(p_2_in[1]),
        .I4(p_2_in[0]),
        .I5(ball_inX_reg_i_3_0[3]),
        .O(ball_inX_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inX_i_11
       (.I0(ball_inX_reg_i_3_0[2]),
        .I1(\CounterX_reg_n_0_[2] ),
        .I2(ball_inX_reg_i_3_0[1]),
        .I3(\CounterX_reg_n_0_[1] ),
        .I4(\CounterX_reg_n_0_[0] ),
        .I5(ball_inX_reg_i_3_0[0]),
        .O(ball_inX_i_11_n_0));
  LUT4 #(
    .INIT(16'h6A95)) 
    ball_inX_i_14
       (.I0(ball_inX_reg_i_3_0[6]),
        .I1(ball_inX_reg_i_3_0[4]),
        .I2(ball_inX_reg_i_3_0[5]),
        .I3(p_2_in[3]),
        .O(ball_inX_i_14_n_0));
  LUT3 #(
    .INIT(8'h86)) 
    ball_inX_i_4
       (.I0(p_2_in[6]),
        .I1(CollisionY2_reg_i_2_0),
        .I2(ball_inX_reg_i_3_0[9]),
        .O(ball_inX_i_4_n_0));
  LUT6 #(
    .INIT(64'h8241182400000000)) 
    ball_inX_i_5
       (.I0(ball_inX_reg_i_3_0[8]),
        .I1(CollisionY2_i_4_0),
        .I2(ball_inX_reg_i_3_0[7]),
        .I3(p_2_in[5]),
        .I4(p_2_in[4]),
        .I5(ball_inX_i_14_n_0),
        .O(ball_inX_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000900909900000)) 
    ball_inX_i_6
       (.I0(ball_inX_reg_i_3_0[3]),
        .I1(p_2_in[0]),
        .I2(ball_inX_reg_i_3_0[5]),
        .I3(p_2_in[2]),
        .I4(ball_inX_reg_i_3_0[4]),
        .I5(p_2_in[1]),
        .O(ball_inX_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inX_i_7
       (.I0(ball_inX_reg_i_3_0[2]),
        .I1(\CounterX_reg_n_0_[2] ),
        .I2(ball_inX_reg_i_3_0[1]),
        .I3(\CounterX_reg_n_0_[1] ),
        .I4(\CounterX_reg_n_0_[0] ),
        .I5(ball_inX_reg_i_3_0[0]),
        .O(ball_inX_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ball_inX_i_8
       (.I0(ball_inX_reg_i_3_0[9]),
        .I1(p_2_in[6]),
        .O(ball_inX_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inX_i_9
       (.I0(ball_inX_reg_i_3_0[8]),
        .I1(p_2_in[5]),
        .I2(ball_inX_reg_i_3_0[7]),
        .I3(p_2_in[4]),
        .I4(p_2_in[3]),
        .I5(ball_inX_reg_i_3_0[6]),
        .O(ball_inX_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ball_inX_reg_i_2
       (.CI(1'b0),
        .CO({ball_inX_reg_i_2_n_0,ball_inX_reg_i_2_n_1,ball_inX_reg_i_2_n_2,ball_inX_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ball_inX_reg_i_2_O_UNCONNECTED[3:0]),
        .S({ball_inX_i_4_n_0,ball_inX_i_5_n_0,ball_inX_i_6_n_0,ball_inX_i_7_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ball_inX_reg_i_3
       (.CI(1'b0),
        .CO({ball_inX1,ball_inX_reg_i_3_n_1,ball_inX_reg_i_3_n_2,ball_inX_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ball_inX_reg_i_3_O_UNCONNECTED[3:0]),
        .S({ball_inX_i_8_n_0,ball_inX_i_9_n_0,ball_inX_i_10_n_0,ball_inX_i_11_n_0}));
  LUT3 #(
    .INIT(8'h74)) 
    ball_inY_i_1
       (.I0(ball_inY1),
        .I1(ball_inY),
        .I2(ball_inY0),
        .O(ball_inY_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inY_i_10
       (.I0(ball_inY_reg_i_3_0[2]),
        .I1(\CounterY_reg_n_0_[2] ),
        .I2(ball_inY_reg_i_3_0[1]),
        .I3(\CounterY_reg_n_0_[1] ),
        .I4(\CounterY_reg_n_0_[0] ),
        .I5(ball_inY_reg_i_3_0[0]),
        .O(ball_inY_i_10_n_0));
  LUT4 #(
    .INIT(16'h6A95)) 
    ball_inY_i_12
       (.I0(ball_inY_reg_i_3_0[6]),
        .I1(ball_inY_reg_i_3_0[4]),
        .I2(ball_inY_reg_i_3_0[5]),
        .I3(p_1_in[3]),
        .O(ball_inY_i_12_n_0));
  LUT6 #(
    .INIT(64'h8241182400000000)) 
    ball_inY_i_5
       (.I0(ball_inY_reg_i_3_0[8]),
        .I1(CollisionX1_i_4_0),
        .I2(ball_inY_reg_i_3_0[7]),
        .I3(p_1_in[5]),
        .I4(p_1_in[4]),
        .I5(ball_inY_i_12_n_0),
        .O(ball_inY_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000099090090000)) 
    ball_inY_i_6
       (.I0(ball_inY_reg_i_3_0[3]),
        .I1(p_1_in[0]),
        .I2(ball_inY_reg_i_3_0[5]),
        .I3(p_1_in[2]),
        .I4(p_1_in[1]),
        .I5(ball_inY_reg_i_3_0[4]),
        .O(ball_inY_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inY_i_7
       (.I0(ball_inY_reg_i_3_0[2]),
        .I1(\CounterY_reg_n_0_[2] ),
        .I2(ball_inY_reg_i_3_0[1]),
        .I3(\CounterY_reg_n_0_[1] ),
        .I4(\CounterY_reg_n_0_[0] ),
        .I5(ball_inY_reg_i_3_0[0]),
        .O(ball_inY_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inY_i_8
       (.I0(ball_inY_reg_i_3_0[8]),
        .I1(p_1_in[5]),
        .I2(ball_inY_reg_i_3_0[7]),
        .I3(p_1_in[4]),
        .I4(p_1_in[3]),
        .I5(ball_inY_reg_i_3_0[6]),
        .O(ball_inY_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ball_inY_i_9
       (.I0(ball_inY_reg_i_3_0[5]),
        .I1(p_1_in[2]),
        .I2(p_1_in[1]),
        .I3(ball_inY_reg_i_3_0[4]),
        .I4(p_1_in[0]),
        .I5(ball_inY_reg_i_3_0[3]),
        .O(ball_inY_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ball_inY_reg_i_2
       (.CI(1'b0),
        .CO({ball_inY1,ball_inY_reg_i_2_n_1,ball_inY_reg_i_2_n_2,ball_inY_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ball_inY_reg_i_2_O_UNCONNECTED[3:0]),
        .S({ball_inY_reg_0,ball_inY_i_5_n_0,ball_inY_i_6_n_0,ball_inY_i_7_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ball_inY_reg_i_3
       (.CI(1'b0),
        .CO({NLW_ball_inY_reg_i_3_CO_UNCONNECTED[3],ball_inY0,ball_inY_reg_i_3_n_2,ball_inY_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ball_inY_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,ball_inY_i_8_n_0,ball_inY_i_9_n_0,ball_inY_i_10_n_0}));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAA2AAA2)) 
    inDisplayArea_i_1
       (.I0(inDisplayArea),
        .I1(p_2_in[6]),
        .I2(p_2_in[5]),
        .I3(inDisplayArea_i_2_n_0),
        .I4(vga_VS_inv_i_2_n_0),
        .I5(p_2_in[4]),
        .O(inDisplayArea_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    inDisplayArea_i_2
       (.I0(p_2_in[1]),
        .I1(p_2_in[2]),
        .I2(p_2_in[0]),
        .I3(\CounterX_reg_n_0_[2] ),
        .I4(\CounterX[6]_i_2_n_0 ),
        .I5(p_2_in[3]),
        .O(inDisplayArea_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inDisplayArea_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inDisplayArea_i_1_n_0),
        .Q(inDisplayArea),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFEFE00000000)) 
    vga_G_i_1
       (.I0(vga_R_i_4_n_0),
        .I1(vga_G_i_2_n_0),
        .I2(vga_G_i_3_n_0),
        .I3(ball_inX),
        .I4(ball_inY),
        .I5(inDisplayArea),
        .O(vga_G0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    vga_G_i_2
       (.I0(p_1_in[2]),
        .I1(p_1_in[3]),
        .I2(p_1_in[0]),
        .I3(p_1_in[1]),
        .I4(p_1_in[5]),
        .I5(p_1_in[4]),
        .O(vga_G_i_2_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    vga_G_i_3
       (.I0(p_2_in[5]),
        .I1(p_2_in[6]),
        .I2(p_2_in[3]),
        .I3(p_2_in[4]),
        .I4(p_2_in[0]),
        .I5(vga_R_i_5_n_0),
        .O(vga_G_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    vga_HS_inv_i_1
       (.I0(p_2_in[3]),
        .I1(p_2_in[4]),
        .I2(p_2_in[1]),
        .I3(p_2_in[2]),
        .I4(p_2_in[6]),
        .I5(p_2_in[5]),
        .O(p_0_in__0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    vga_HS_reg_inv
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(vga_h_sync_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F060)) 
    vga_R_i_1
       (.I0(p_2_in[0]),
        .I1(p_1_in[0]),
        .I2(inDisplayArea),
        .I3(vga_R_reg),
        .I4(vga_R_i_3_n_0),
        .I5(vga_R_i_4_n_0),
        .O(vga_R0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    vga_R_i_12
       (.I0(p_2_in[5]),
        .I1(p_2_in[6]),
        .O(vga_R_i_12_n_0));
  LUT5 #(
    .INIT(32'h000080F8)) 
    vga_R_i_14
       (.I0(Q[7]),
        .I1(vga_R_reg_i_13_0),
        .I2(Q[8]),
        .I3(p_2_in[5]),
        .I4(p_2_in[6]),
        .O(vga_R_i_14_n_0));
  LUT5 #(
    .INIT(32'h00806A15)) 
    vga_R_i_15
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(vga_R_reg_i_13_0),
        .I3(p_2_in[5]),
        .I4(p_2_in[6]),
        .O(vga_R_i_15_n_0));
  LUT5 #(
    .INIT(32'hFF31F700)) 
    vga_R_i_17
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(vga_R_reg_i_11_0),
        .I3(p_2_in[6]),
        .I4(p_2_in[5]),
        .O(vga_R_i_17_n_0));
  LUT5 #(
    .INIT(32'h00409C23)) 
    vga_R_i_18
       (.I0(vga_R_reg_i_11_0),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(p_2_in[5]),
        .I4(p_2_in[6]),
        .O(vga_R_i_18_n_0));
  LUT5 #(
    .INIT(32'h0606066F)) 
    vga_R_i_19
       (.I0(Q[7]),
        .I1(vga_R_reg_i_13_0),
        .I2(p_2_in[4]),
        .I3(vga_R_reg_i_13_1),
        .I4(p_2_in[3]),
        .O(vga_R_i_19_n_0));
  LUT5 #(
    .INIT(32'h00A981EB)) 
    vga_R_i_20
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(p_2_in[2]),
        .I4(p_2_in[1]),
        .O(vga_R_i_20_n_0));
  LUT4 #(
    .INIT(16'h1171)) 
    vga_R_i_21
       (.I0(Q[3]),
        .I1(p_2_in[0]),
        .I2(Q[2]),
        .I3(\CounterX_reg_n_0_[2] ),
        .O(vga_R_i_21_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    vga_R_i_22
       (.I0(Q[1]),
        .I1(\CounterX_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(\CounterX_reg_n_0_[0] ),
        .O(vga_R_i_22_n_0));
  LUT5 #(
    .INIT(32'h00696900)) 
    vga_R_i_23
       (.I0(Q[7]),
        .I1(vga_R_reg_i_13_0),
        .I2(p_2_in[4]),
        .I3(vga_R_reg_i_13_1),
        .I4(p_2_in[3]),
        .O(vga_R_i_23_n_0));
  LUT5 #(
    .INIT(32'h86101086)) 
    vga_R_i_24
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(p_2_in[1]),
        .I3(Q[5]),
        .I4(p_2_in[2]),
        .O(vga_R_i_24_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    vga_R_i_25
       (.I0(\CounterX_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(p_2_in[0]),
        .I3(Q[3]),
        .O(vga_R_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    vga_R_i_26
       (.I0(Q[0]),
        .I1(\CounterX_reg_n_0_[0] ),
        .I2(\CounterX_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(vga_R_i_26_n_0));
  LUT5 #(
    .INIT(32'h2EB22822)) 
    vga_R_i_27
       (.I0(p_2_in[4]),
        .I1(Q[7]),
        .I2(vga_R_reg_i_16_0),
        .I3(Q[6]),
        .I4(p_2_in[3]),
        .O(vga_R_i_27_n_0));
  LUT5 #(
    .INIT(32'hC280AB2A)) 
    vga_R_i_28
       (.I0(p_2_in[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(p_2_in[1]),
        .I4(Q[5]),
        .O(vga_R_i_28_n_0));
  LUT4 #(
    .INIT(16'hB2A0)) 
    vga_R_i_29
       (.I0(p_2_in[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\CounterX_reg_n_0_[2] ),
        .O(vga_R_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    vga_R_i_3
       (.I0(vga_R_i_5_n_0),
        .I1(p_2_in[0]),
        .I2(p_2_in[4]),
        .I3(p_2_in[3]),
        .I4(vga_R_i_6_n_0),
        .I5(vga_G_i_2_n_0),
        .O(vga_R_i_3_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    vga_R_i_30
       (.I0(\CounterX_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(\CounterX_reg_n_0_[0] ),
        .I3(Q[1]),
        .O(vga_R_i_30_n_0));
  LUT5 #(
    .INIT(32'h82411824)) 
    vga_R_i_31
       (.I0(Q[7]),
        .I1(vga_R_reg_i_16_0),
        .I2(Q[6]),
        .I3(p_2_in[4]),
        .I4(p_2_in[3]),
        .O(vga_R_i_31_n_0));
  LUT5 #(
    .INIT(32'h61080861)) 
    vga_R_i_32
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(p_2_in[1]),
        .I3(Q[5]),
        .I4(p_2_in[2]),
        .O(vga_R_i_32_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    vga_R_i_33
       (.I0(\CounterX_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(p_2_in[0]),
        .I3(Q[3]),
        .O(vga_R_i_33_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    vga_R_i_34
       (.I0(Q[0]),
        .I1(\CounterX_reg_n_0_[0] ),
        .I2(\CounterX_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(vga_R_i_34_n_0));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    vga_R_i_4
       (.I0(vga_R_i_7_n_0),
        .I1(vga_R_i_8_n_0),
        .I2(vga_R_i_9_n_0),
        .I3(paddle1),
        .I4(paddle16_in),
        .I5(p_1_in[1]),
        .O(vga_R_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    vga_R_i_5
       (.I0(p_2_in[1]),
        .I1(p_2_in[2]),
        .O(vga_R_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    vga_R_i_6
       (.I0(p_2_in[5]),
        .I1(p_2_in[6]),
        .O(vga_R_i_6_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    vga_R_i_7
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[0]),
        .I3(p_1_in[1]),
        .I4(p_1_in[5]),
        .I5(p_1_in[4]),
        .O(vga_R_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    vga_R_i_8
       (.I0(p_2_in[3]),
        .I1(p_2_in[4]),
        .I2(vga_R_i_12_n_0),
        .I3(p_2_in[0]),
        .I4(p_2_in[1]),
        .I5(p_2_in[2]),
        .O(vga_R_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    vga_R_i_9
       (.I0(p_1_in[5]),
        .I1(p_1_in[4]),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .O(vga_R_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 vga_R_reg_i_10
       (.CI(vga_R_reg_i_13_n_0),
        .CO({NLW_vga_R_reg_i_10_CO_UNCONNECTED[3:1],paddle1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga_R_i_14_n_0}),
        .O(NLW_vga_R_reg_i_10_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,vga_R_i_15_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 vga_R_reg_i_11
       (.CI(vga_R_reg_i_16_n_0),
        .CO({NLW_vga_R_reg_i_11_CO_UNCONNECTED[3:1],paddle16_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga_R_i_17_n_0}),
        .O(NLW_vga_R_reg_i_11_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,vga_R_i_18_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 vga_R_reg_i_13
       (.CI(1'b0),
        .CO({vga_R_reg_i_13_n_0,vga_R_reg_i_13_n_1,vga_R_reg_i_13_n_2,vga_R_reg_i_13_n_3}),
        .CYINIT(1'b1),
        .DI({vga_R_i_19_n_0,vga_R_i_20_n_0,vga_R_i_21_n_0,vga_R_i_22_n_0}),
        .O(NLW_vga_R_reg_i_13_O_UNCONNECTED[3:0]),
        .S({vga_R_i_23_n_0,vga_R_i_24_n_0,vga_R_i_25_n_0,vga_R_i_26_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 vga_R_reg_i_16
       (.CI(1'b0),
        .CO({vga_R_reg_i_16_n_0,vga_R_reg_i_16_n_1,vga_R_reg_i_16_n_2,vga_R_reg_i_16_n_3}),
        .CYINIT(1'b1),
        .DI({vga_R_i_27_n_0,vga_R_i_28_n_0,vga_R_i_29_n_0,vga_R_i_30_n_0}),
        .O(NLW_vga_R_reg_i_16_O_UNCONNECTED[3:0]),
        .S({vga_R_i_31_n_0,vga_R_i_32_n_0,vga_R_i_33_n_0,vga_R_i_34_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    vga_VS_inv_i_1
       (.I0(\CounterY_reg_n_0_[2] ),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .I3(\CounterY_reg_n_0_[1] ),
        .I4(\CounterY_reg_n_0_[0] ),
        .I5(vga_VS_inv_i_2_n_0),
        .O(vga_VS_inv_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vga_VS_inv_i_2
       (.I0(p_1_in[4]),
        .I1(p_1_in[2]),
        .I2(p_1_in[3]),
        .I3(p_1_in[5]),
        .O(vga_VS_inv_i_2_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    vga_VS_reg_inv
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(vga_VS_inv_i_1_n_0),
        .Q(vga_v_sync_OBUF),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module pong
   (clk,
    vga_h_sync,
    vga_v_sync,
    vga_R,
    vga_G,
    vga_B,
    quadA,
    quadB);
  input clk;
  output vga_h_sync;
  output vga_v_sync;
  output vga_R;
  output vga_G;
  output vga_B;
  input quadA;
  input quadB;

  wire CollisionX1;
  wire CollisionX1_i_3_n_0;
  wire CollisionX2;
  wire CollisionY1;
  wire CollisionY2;
  wire PaddlePosition;
  wire PaddlePosition12_out;
  wire \PaddlePosition[0]_i_1_n_0 ;
  wire \PaddlePosition[4]_i_2_n_0 ;
  wire \PaddlePosition[4]_i_3_n_0 ;
  wire \PaddlePosition[4]_i_4_n_0 ;
  wire \PaddlePosition[4]_i_5_n_0 ;
  wire \PaddlePosition[4]_i_6_n_0 ;
  wire \PaddlePosition[8]_i_10_n_0 ;
  wire \PaddlePosition[8]_i_11_n_0 ;
  wire \PaddlePosition[8]_i_12_n_0 ;
  wire \PaddlePosition[8]_i_3_n_0 ;
  wire \PaddlePosition[8]_i_4_n_0 ;
  wire \PaddlePosition[8]_i_6_n_0 ;
  wire \PaddlePosition[8]_i_7_n_0 ;
  wire \PaddlePosition[8]_i_8_n_0 ;
  wire \PaddlePosition[8]_i_9_n_0 ;
  wire [8:0]PaddlePosition_reg;
  wire \PaddlePosition_reg[4]_i_1_n_0 ;
  wire \PaddlePosition_reg[4]_i_1_n_1 ;
  wire \PaddlePosition_reg[4]_i_1_n_2 ;
  wire \PaddlePosition_reg[4]_i_1_n_3 ;
  wire \PaddlePosition_reg[4]_i_1_n_4 ;
  wire \PaddlePosition_reg[4]_i_1_n_5 ;
  wire \PaddlePosition_reg[4]_i_1_n_6 ;
  wire \PaddlePosition_reg[4]_i_1_n_7 ;
  wire \PaddlePosition_reg[8]_i_2_n_1 ;
  wire \PaddlePosition_reg[8]_i_2_n_2 ;
  wire \PaddlePosition_reg[8]_i_2_n_3 ;
  wire \PaddlePosition_reg[8]_i_2_n_4 ;
  wire \PaddlePosition_reg[8]_i_2_n_5 ;
  wire \PaddlePosition_reg[8]_i_2_n_6 ;
  wire \PaddlePosition_reg[8]_i_2_n_7 ;
  wire ResetCollision;
  wire ResetCollision0;
  wire ballX;
  wire \ballX[0]_i_1_n_0 ;
  wire \ballX[4]_i_2_n_0 ;
  wire \ballX[4]_i_3_n_0 ;
  wire \ballX[4]_i_4_n_0 ;
  wire \ballX[4]_i_5_n_0 ;
  wire \ballX[4]_i_6_n_0 ;
  wire \ballX[8]_i_2_n_0 ;
  wire \ballX[8]_i_3_n_0 ;
  wire \ballX[8]_i_4_n_0 ;
  wire \ballX[8]_i_5_n_0 ;
  wire \ballX[9]_i_3_n_0 ;
  wire [9:0]ballX_reg;
  wire \ballX_reg[4]_i_1_n_0 ;
  wire \ballX_reg[4]_i_1_n_1 ;
  wire \ballX_reg[4]_i_1_n_2 ;
  wire \ballX_reg[4]_i_1_n_3 ;
  wire \ballX_reg[8]_i_1_n_0 ;
  wire \ballX_reg[8]_i_1_n_1 ;
  wire \ballX_reg[8]_i_1_n_2 ;
  wire \ballX_reg[8]_i_1_n_3 ;
  wire ballY;
  wire \ballY[0]_i_1_n_0 ;
  wire \ballY[4]_i_2_n_0 ;
  wire \ballY[4]_i_3_n_0 ;
  wire \ballY[4]_i_4_n_0 ;
  wire \ballY[4]_i_5_n_0 ;
  wire \ballY[4]_i_6_n_0 ;
  wire \ballY[8]_i_3_n_0 ;
  wire \ballY[8]_i_4_n_0 ;
  wire \ballY[8]_i_5_n_0 ;
  wire \ballY[8]_i_6_n_0 ;
  wire [8:0]ballY_reg;
  wire \ballY_reg[4]_i_1_n_0 ;
  wire \ballY_reg[4]_i_1_n_1 ;
  wire \ballY_reg[4]_i_1_n_2 ;
  wire \ballY_reg[4]_i_1_n_3 ;
  wire \ballY_reg[8]_i_2_n_1 ;
  wire \ballY_reg[8]_i_2_n_2 ;
  wire \ballY_reg[8]_i_2_n_3 ;
  wire ball_dirX_i_1_n_0;
  wire ball_dirY_i_1_n_0;
  wire ball_dirY_reg_n_0;
  wire ball_inX;
  wire ball_inX_i_12_n_0;
  wire ball_inX_i_13_n_0;
  wire ball_inY;
  wire ball_inY_i_11_n_0;
  wire ball_inY_i_4_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire in0;
  wire p_0_in0_in;
  wire [9:1]p_0_in__1;
  wire [8:1]p_0_in__2;
  wire p_1_in1_in;
  wire p_3_in;
  wire quadA;
  wire quadA_IBUF;
  wire \quadAr_reg_n_0_[0] ;
  wire quadB;
  wire quadB_IBUF;
  wire \quadBr_reg_n_0_[0] ;
  wire \quadBr_reg_n_0_[2] ;
  wire syncgen_n_10;
  wire syncgen_n_5;
  wire syncgen_n_6;
  wire syncgen_n_7;
  wire syncgen_n_8;
  wire syncgen_n_9;
  wire vga_B;
  wire vga_B_OBUF;
  wire vga_G;
  wire vga_G0;
  wire vga_R;
  wire vga_R0;
  wire vga_R_OBUF;
  wire vga_R_i_2_n_0;
  wire vga_R_i_35_n_0;
  wire vga_R_i_36_n_0;
  wire vga_R_i_37_n_0;
  wire vga_h_sync;
  wire vga_h_sync_OBUF;
  wire vga_v_sync;
  wire vga_v_sync_OBUF;
  wire [3:3]\NLW_PaddlePosition_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ballX_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_ballX_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_ballY_reg[8]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    CollisionX1_i_3
       (.I0(ballY_reg[8]),
        .I1(ballY_reg[3]),
        .I2(ballY_reg[7]),
        .I3(ballY_reg[5]),
        .I4(ballY_reg[4]),
        .I5(ballY_reg[6]),
        .O(CollisionX1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CollisionX1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(syncgen_n_10),
        .Q(CollisionX1),
        .R(ResetCollision));
  FDRE #(
    .INIT(1'b0)) 
    CollisionX2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(syncgen_n_9),
        .Q(CollisionX2),
        .R(ResetCollision));
  FDRE #(
    .INIT(1'b0)) 
    CollisionY1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(syncgen_n_7),
        .Q(CollisionY1),
        .R(ResetCollision));
  FDRE #(
    .INIT(1'b0)) 
    CollisionY2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(syncgen_n_8),
        .Q(CollisionY2),
        .R(ResetCollision));
  LUT1 #(
    .INIT(2'h1)) 
    \PaddlePosition[0]_i_1 
       (.I0(PaddlePosition_reg[0]),
        .O(\PaddlePosition[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \PaddlePosition[4]_i_2 
       (.I0(PaddlePosition_reg[1]),
        .O(\PaddlePosition[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[4]_i_3 
       (.I0(PaddlePosition_reg[4]),
        .I1(PaddlePosition_reg[3]),
        .O(\PaddlePosition[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[4]_i_4 
       (.I0(PaddlePosition_reg[2]),
        .I1(PaddlePosition_reg[3]),
        .O(\PaddlePosition[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[4]_i_5 
       (.I0(PaddlePosition_reg[1]),
        .I1(PaddlePosition_reg[2]),
        .O(\PaddlePosition[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \PaddlePosition[4]_i_6 
       (.I0(PaddlePosition_reg[1]),
        .I1(p_3_in),
        .I2(p_1_in1_in),
        .O(\PaddlePosition[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAEEEEEEE)) 
    \PaddlePosition[8]_i_1 
       (.I0(\PaddlePosition[8]_i_3_n_0 ),
        .I1(\PaddlePosition[8]_i_4_n_0 ),
        .I2(PaddlePosition12_out),
        .I3(PaddlePosition_reg[0]),
        .I4(PaddlePosition_reg[2]),
        .I5(\PaddlePosition[8]_i_6_n_0 ),
        .O(PaddlePosition));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[8]_i_10 
       (.I0(PaddlePosition_reg[4]),
        .I1(PaddlePosition_reg[5]),
        .O(\PaddlePosition[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PaddlePosition[8]_i_11 
       (.I0(PaddlePosition_reg[5]),
        .I1(PaddlePosition_reg[3]),
        .I2(PaddlePosition_reg[4]),
        .I3(PaddlePosition_reg[6]),
        .O(\PaddlePosition[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \PaddlePosition[8]_i_12 
       (.I0(PaddlePosition_reg[6]),
        .I1(PaddlePosition_reg[4]),
        .I2(PaddlePosition_reg[3]),
        .I3(PaddlePosition_reg[5]),
        .I4(PaddlePosition_reg[8]),
        .I5(PaddlePosition_reg[7]),
        .O(\PaddlePosition[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000FEEEF000)) 
    \PaddlePosition[8]_i_3 
       (.I0(PaddlePosition_reg[7]),
        .I1(\PaddlePosition[8]_i_11_n_0 ),
        .I2(\PaddlePosition[8]_i_4_n_0 ),
        .I3(\PaddlePosition[8]_i_12_n_0 ),
        .I4(\PaddlePosition[8]_i_6_n_0 ),
        .I5(PaddlePosition_reg[8]),
        .O(\PaddlePosition[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h69960000)) 
    \PaddlePosition[8]_i_4 
       (.I0(\quadBr_reg_n_0_[2] ),
        .I1(p_3_in),
        .I2(p_1_in1_in),
        .I3(p_0_in0_in),
        .I4(PaddlePosition_reg[1]),
        .O(\PaddlePosition[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PaddlePosition[8]_i_5 
       (.I0(p_1_in1_in),
        .I1(p_3_in),
        .O(PaddlePosition12_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00006996)) 
    \PaddlePosition[8]_i_6 
       (.I0(\quadBr_reg_n_0_[2] ),
        .I1(p_3_in),
        .I2(p_1_in1_in),
        .I3(p_0_in0_in),
        .I4(PaddlePosition_reg[1]),
        .O(\PaddlePosition[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[8]_i_7 
       (.I0(PaddlePosition_reg[7]),
        .I1(PaddlePosition_reg[8]),
        .O(\PaddlePosition[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[8]_i_8 
       (.I0(PaddlePosition_reg[6]),
        .I1(PaddlePosition_reg[7]),
        .O(\PaddlePosition[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \PaddlePosition[8]_i_9 
       (.I0(PaddlePosition_reg[5]),
        .I1(PaddlePosition_reg[6]),
        .O(\PaddlePosition[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition[0]_i_1_n_0 ),
        .Q(PaddlePosition_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[4]_i_1_n_7 ),
        .Q(PaddlePosition_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[4]_i_1_n_6 ),
        .Q(PaddlePosition_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[4]_i_1_n_5 ),
        .Q(PaddlePosition_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[4]_i_1_n_4 ),
        .Q(PaddlePosition_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PaddlePosition_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\PaddlePosition_reg[4]_i_1_n_0 ,\PaddlePosition_reg[4]_i_1_n_1 ,\PaddlePosition_reg[4]_i_1_n_2 ,\PaddlePosition_reg[4]_i_1_n_3 }),
        .CYINIT(PaddlePosition_reg[0]),
        .DI({PaddlePosition_reg[3:1],\PaddlePosition[4]_i_2_n_0 }),
        .O({\PaddlePosition_reg[4]_i_1_n_4 ,\PaddlePosition_reg[4]_i_1_n_5 ,\PaddlePosition_reg[4]_i_1_n_6 ,\PaddlePosition_reg[4]_i_1_n_7 }),
        .S({\PaddlePosition[4]_i_3_n_0 ,\PaddlePosition[4]_i_4_n_0 ,\PaddlePosition[4]_i_5_n_0 ,\PaddlePosition[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[8]_i_2_n_7 ),
        .Q(PaddlePosition_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[8]_i_2_n_6 ),
        .Q(PaddlePosition_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[8]_i_2_n_5 ),
        .Q(PaddlePosition_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PaddlePosition_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(PaddlePosition),
        .D(\PaddlePosition_reg[8]_i_2_n_4 ),
        .Q(PaddlePosition_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PaddlePosition_reg[8]_i_2 
       (.CI(\PaddlePosition_reg[4]_i_1_n_0 ),
        .CO({\NLW_PaddlePosition_reg[8]_i_2_CO_UNCONNECTED [3],\PaddlePosition_reg[8]_i_2_n_1 ,\PaddlePosition_reg[8]_i_2_n_2 ,\PaddlePosition_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,PaddlePosition_reg[6:4]}),
        .O({\PaddlePosition_reg[8]_i_2_n_4 ,\PaddlePosition_reg[8]_i_2_n_5 ,\PaddlePosition_reg[8]_i_2_n_6 ,\PaddlePosition_reg[8]_i_2_n_7 }),
        .S({\PaddlePosition[8]_i_7_n_0 ,\PaddlePosition[8]_i_8_n_0 ,\PaddlePosition[8]_i_9_n_0 ,\PaddlePosition[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    ResetCollision_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ResetCollision0),
        .Q(ResetCollision),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ballX[0]_i_1 
       (.I0(ballX_reg[0]),
        .O(\ballX[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ballX[4]_i_2 
       (.I0(ballX_reg[2]),
        .O(\ballX[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[4]_i_3 
       (.I0(ballX_reg[3]),
        .I1(ballX_reg[4]),
        .O(\ballX[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[4]_i_4 
       (.I0(ballX_reg[2]),
        .I1(ballX_reg[3]),
        .O(\ballX[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ballX[4]_i_5 
       (.I0(in0),
        .I1(ballX_reg[2]),
        .O(\ballX[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ballX[4]_i_6 
       (.I0(in0),
        .I1(ballX_reg[1]),
        .O(\ballX[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[8]_i_2 
       (.I0(ballX_reg[7]),
        .I1(ballX_reg[8]),
        .O(\ballX[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[8]_i_3 
       (.I0(ballX_reg[6]),
        .I1(ballX_reg[7]),
        .O(\ballX[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[8]_i_4 
       (.I0(ballX_reg[5]),
        .I1(ballX_reg[6]),
        .O(\ballX[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[8]_i_5 
       (.I0(ballX_reg[5]),
        .I1(ballX_reg[4]),
        .O(\ballX[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \ballX[9]_i_1 
       (.I0(CollisionX2),
        .I1(CollisionX1),
        .I2(ResetCollision),
        .O(ballX));
  LUT2 #(
    .INIT(4'h9)) 
    \ballX[9]_i_3 
       (.I0(ballX_reg[8]),
        .I1(ballX_reg[9]),
        .O(\ballX[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(\ballX[0]_i_1_n_0 ),
        .Q(ballX_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[1]),
        .Q(ballX_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[2]),
        .Q(ballX_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[3]),
        .Q(ballX_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[4]),
        .Q(ballX_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ballX_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\ballX_reg[4]_i_1_n_0 ,\ballX_reg[4]_i_1_n_1 ,\ballX_reg[4]_i_1_n_2 ,\ballX_reg[4]_i_1_n_3 }),
        .CYINIT(ballX_reg[0]),
        .DI({ballX_reg[3:2],\ballX[4]_i_2_n_0 ,in0}),
        .O(p_0_in__1[4:1]),
        .S({\ballX[4]_i_3_n_0 ,\ballX[4]_i_4_n_0 ,\ballX[4]_i_5_n_0 ,\ballX[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[5]),
        .Q(ballX_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[6]),
        .Q(ballX_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[7]),
        .Q(ballX_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[8]),
        .Q(ballX_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ballX_reg[8]_i_1 
       (.CI(\ballX_reg[4]_i_1_n_0 ),
        .CO({\ballX_reg[8]_i_1_n_0 ,\ballX_reg[8]_i_1_n_1 ,\ballX_reg[8]_i_1_n_2 ,\ballX_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ballX_reg[7:4]),
        .O(p_0_in__1[8:5]),
        .S({\ballX[8]_i_2_n_0 ,\ballX[8]_i_3_n_0 ,\ballX[8]_i_4_n_0 ,\ballX[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ballX_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ballX),
        .D(p_0_in__1[9]),
        .Q(ballX_reg[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ballX_reg[9]_i_2 
       (.CI(\ballX_reg[8]_i_1_n_0 ),
        .CO(\NLW_ballX_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ballX_reg[9]_i_2_O_UNCONNECTED [3:1],p_0_in__1[9]}),
        .S({1'b0,1'b0,1'b0,\ballX[9]_i_3_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \ballY[0]_i_1 
       (.I0(ballY_reg[0]),
        .O(\ballY[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ballY[4]_i_2 
       (.I0(ballY_reg[2]),
        .O(\ballY[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballY[4]_i_3 
       (.I0(ballY_reg[3]),
        .I1(ballY_reg[4]),
        .O(\ballY[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballY[4]_i_4 
       (.I0(ballY_reg[2]),
        .I1(ballY_reg[3]),
        .O(\ballY[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ballY[4]_i_5 
       (.I0(ball_dirY_reg_n_0),
        .I1(ballY_reg[2]),
        .O(\ballY[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ballY[4]_i_6 
       (.I0(ball_dirY_reg_n_0),
        .I1(ballY_reg[1]),
        .O(\ballY[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \ballY[8]_i_1 
       (.I0(CollisionY1),
        .I1(CollisionY2),
        .I2(ResetCollision),
        .O(ballY));
  LUT2 #(
    .INIT(4'h9)) 
    \ballY[8]_i_3 
       (.I0(ballY_reg[7]),
        .I1(ballY_reg[8]),
        .O(\ballY[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballY[8]_i_4 
       (.I0(ballY_reg[6]),
        .I1(ballY_reg[7]),
        .O(\ballY[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballY[8]_i_5 
       (.I0(ballY_reg[5]),
        .I1(ballY_reg[6]),
        .O(\ballY[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ballY[8]_i_6 
       (.I0(ballY_reg[5]),
        .I1(ballY_reg[4]),
        .O(\ballY[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(\ballY[0]_i_1_n_0 ),
        .Q(ballY_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[1]),
        .Q(ballY_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[2]),
        .Q(ballY_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[3]),
        .Q(ballY_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[4]),
        .Q(ballY_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ballY_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\ballY_reg[4]_i_1_n_0 ,\ballY_reg[4]_i_1_n_1 ,\ballY_reg[4]_i_1_n_2 ,\ballY_reg[4]_i_1_n_3 }),
        .CYINIT(ballY_reg[0]),
        .DI({ballY_reg[3:2],\ballY[4]_i_2_n_0 ,ball_dirY_reg_n_0}),
        .O(p_0_in__2[4:1]),
        .S({\ballY[4]_i_3_n_0 ,\ballY[4]_i_4_n_0 ,\ballY[4]_i_5_n_0 ,\ballY[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[5]),
        .Q(ballY_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[6]),
        .Q(ballY_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[7]),
        .Q(ballY_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ballY_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ballY),
        .D(p_0_in__2[8]),
        .Q(ballY_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ballY_reg[8]_i_2 
       (.CI(\ballY_reg[4]_i_1_n_0 ),
        .CO({\NLW_ballY_reg[8]_i_2_CO_UNCONNECTED [3],\ballY_reg[8]_i_2_n_1 ,\ballY_reg[8]_i_2_n_2 ,\ballY_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ballY_reg[6:4]}),
        .O(p_0_in__2[8:5]),
        .S({\ballY[8]_i_3_n_0 ,\ballY[8]_i_4_n_0 ,\ballY[8]_i_5_n_0 ,\ballY[8]_i_6_n_0 }));
  LUT4 #(
    .INIT(16'hBF20)) 
    ball_dirX_i_1
       (.I0(CollisionX2),
        .I1(CollisionX1),
        .I2(ResetCollision),
        .I3(in0),
        .O(ball_dirX_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ball_dirX_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ball_dirX_i_1_n_0),
        .Q(in0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF08)) 
    ball_dirY_i_1
       (.I0(CollisionY2),
        .I1(ResetCollision),
        .I2(CollisionY1),
        .I3(ball_dirY_reg_n_0),
        .O(ball_dirY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ball_dirY_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ball_dirY_i_1_n_0),
        .Q(ball_dirY_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    ball_inX_i_12
       (.I0(ballX_reg[7]),
        .I1(ballX_reg[5]),
        .I2(ballX_reg[4]),
        .I3(ballX_reg[6]),
        .I4(ballX_reg[8]),
        .O(ball_inX_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    ball_inX_i_13
       (.I0(ballX_reg[5]),
        .I1(ballX_reg[4]),
        .I2(ballX_reg[6]),
        .O(ball_inX_i_13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ball_inX_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(syncgen_n_6),
        .Q(ball_inX),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7F)) 
    ball_inY_i_11
       (.I0(ballY_reg[5]),
        .I1(ballY_reg[4]),
        .I2(ballY_reg[6]),
        .O(ball_inY_i_11_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    ball_inY_i_4
       (.I0(ballY_reg[7]),
        .I1(ballY_reg[5]),
        .I2(ballY_reg[4]),
        .I3(ballY_reg[6]),
        .I4(ballY_reg[8]),
        .O(ball_inY_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ball_inY_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(syncgen_n_5),
        .Q(ball_inY),
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
    quadA_IBUF_inst
       (.I(quadA),
        .O(quadA_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \quadAr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(quadA_IBUF),
        .Q(\quadAr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadAr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\quadAr_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadAr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in0_in),
        .Q(p_1_in1_in),
        .R(1'b0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    quadB_IBUF_inst
       (.I(quadB),
        .O(quadB_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \quadBr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(quadB_IBUF),
        .Q(\quadBr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadBr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\quadBr_reg_n_0_[0] ),
        .Q(p_3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quadBr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_3_in),
        .Q(\quadBr_reg_n_0_[2] ),
        .R(1'b0));
  hvsync_generator syncgen
       (.CollisionX1(CollisionX1),
        .CollisionX1_i_4_0(ball_inY_i_11_n_0),
        .CollisionX1_reg(syncgen_n_10),
        .CollisionX2(CollisionX2),
        .CollisionX2_reg(syncgen_n_9),
        .CollisionY1(CollisionY1),
        .CollisionY1_reg(syncgen_n_7),
        .CollisionY2(CollisionY2),
        .CollisionY2_i_4_0(ball_inX_i_13_n_0),
        .CollisionY2_reg(syncgen_n_8),
        .CollisionY2_reg_i_2_0(ball_inX_i_12_n_0),
        .Q(PaddlePosition_reg),
        .ResetCollision0(ResetCollision0),
        .S(CollisionX1_i_3_n_0),
        .ball_inX(ball_inX),
        .ball_inX_reg(syncgen_n_6),
        .ball_inX_reg_i_3_0(ballX_reg),
        .ball_inY(ball_inY),
        .ball_inY_reg(syncgen_n_5),
        .ball_inY_reg_0(ball_inY_i_4_n_0),
        .ball_inY_reg_i_3_0(ballY_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .vga_G0(vga_G0),
        .vga_R0(vga_R0),
        .vga_R_reg(vga_R_i_2_n_0),
        .vga_R_reg_i_11_0(vga_R_i_35_n_0),
        .vga_R_reg_i_13_0(\PaddlePosition[8]_i_11_n_0 ),
        .vga_R_reg_i_13_1(vga_R_i_36_n_0),
        .vga_R_reg_i_16_0(vga_R_i_37_n_0),
        .vga_h_sync_OBUF(vga_h_sync_OBUF),
        .vga_v_sync_OBUF(vga_v_sync_OBUF));
  OBUF vga_B_OBUF_inst
       (.I(vga_B_OBUF),
        .O(vga_B));
  OBUF vga_G_OBUF_inst
       (.I(vga_B_OBUF),
        .O(vga_G));
  FDRE #(
    .INIT(1'b0)) 
    vga_G_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(vga_G0),
        .Q(vga_B_OBUF),
        .R(1'b0));
  OBUF vga_R_OBUF_inst
       (.I(vga_R_OBUF),
        .O(vga_R));
  LUT2 #(
    .INIT(4'h8)) 
    vga_R_i_2
       (.I0(ball_inX),
        .I1(ball_inY),
        .O(vga_R_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vga_R_i_35
       (.I0(PaddlePosition_reg[5]),
        .I1(PaddlePosition_reg[3]),
        .I2(PaddlePosition_reg[4]),
        .I3(PaddlePosition_reg[6]),
        .O(vga_R_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    vga_R_i_36
       (.I0(PaddlePosition_reg[5]),
        .I1(PaddlePosition_reg[3]),
        .I2(PaddlePosition_reg[4]),
        .I3(PaddlePosition_reg[6]),
        .O(vga_R_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    vga_R_i_37
       (.I0(PaddlePosition_reg[4]),
        .I1(PaddlePosition_reg[3]),
        .I2(PaddlePosition_reg[5]),
        .O(vga_R_i_37_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vga_R_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(vga_R0),
        .Q(vga_R_OBUF),
        .R(1'b0));
  OBUF vga_h_sync_OBUF_inst
       (.I(vga_h_sync_OBUF),
        .O(vga_h_sync));
  OBUF vga_v_sync_OBUF_inst
       (.I(vga_v_sync_OBUF),
        .O(vga_v_sync));
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
