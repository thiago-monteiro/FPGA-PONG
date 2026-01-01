// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan  1 11:15:27 2026
// Host        : LAPTOP-QE452C2G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Thiago
//               Monteiro/Downloads/FPGA-PONG/project_2.sim/sim_1/impl/func/xsim/pong_func_impl.v}
// Design      : pong
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BALL_SIZE = "8" *) (* BALL_SPEED = "2" *) (* ECO_CHECKSUM = "d51510fa" *) 
(* H_BACK = "48" *) (* H_DISPLAY = "640" *) (* H_FRONT = "16" *) 
(* H_SYNC = "96" *) (* H_TOTAL = "800" *) (* P1_X = "20" *) 
(* P2_X = "612" *) (* PADDLE_HEIGHT = "60" *) (* PADDLE_SPEED = "3" *) 
(* PADDLE_WIDTH = "8" *) (* V_BACK = "33" *) (* V_DISPLAY = "480" *) 
(* V_FRONT = "10" *) (* V_SYNC = "2" *) (* V_TOTAL = "525" *) 
(* NotValidForBitStream *)
module pong
   (clk,
    rst,
    btn_p1_up,
    btn_p1_down,
    btn_p2_up,
    btn_p2_down,
    hsync,
    vsync,
    vga_r,
    vga_g,
    vga_b);
  input clk;
  input rst;
  input btn_p1_up;
  input btn_p1_down;
  input btn_p2_up;
  input btn_p2_down;
  output hsync;
  output vsync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire ball_dx;
  wire ball_dx1;
  wire ball_dx2;
  wire ball_dx29_in;
  wire ball_dx38_in;
  wire ball_dx_i_11_n_0;
  wire ball_dx_i_12_n_0;
  wire ball_dx_i_13_n_0;
  wire ball_dx_i_14_n_0;
  wire ball_dx_i_16_n_0;
  wire ball_dx_i_17_n_0;
  wire ball_dx_i_18_n_0;
  wire ball_dx_i_19_n_0;
  wire ball_dx_i_1_n_0;
  wire ball_dx_i_21_n_0;
  wire ball_dx_i_22_n_0;
  wire ball_dx_i_23_n_0;
  wire ball_dx_i_24_n_0;
  wire ball_dx_i_26_n_0;
  wire ball_dx_i_27_n_0;
  wire ball_dx_i_28_n_0;
  wire ball_dx_i_29_n_0;
  wire ball_dx_i_30_n_0;
  wire ball_dx_i_31_n_0;
  wire ball_dx_i_32_n_0;
  wire ball_dx_i_33_n_0;
  wire ball_dx_i_34_n_0;
  wire ball_dx_i_35_n_0;
  wire ball_dx_i_36_n_0;
  wire ball_dx_i_37_n_0;
  wire ball_dx_i_38_n_0;
  wire ball_dx_i_39_n_0;
  wire ball_dx_i_3_n_0;
  wire ball_dx_i_40_n_0;
  wire ball_dx_i_41_n_0;
  wire ball_dx_i_42_n_0;
  wire ball_dx_i_43_n_0;
  wire ball_dx_i_44_n_0;
  wire ball_dx_i_45_n_0;
  wire ball_dx_i_46_n_0;
  wire ball_dx_i_47_n_0;
  wire ball_dx_i_48_n_0;
  wire ball_dx_i_49_n_0;
  wire ball_dx_i_4_n_0;
  wire ball_dx_i_50_n_0;
  wire ball_dx_i_51_n_0;
  wire ball_dx_i_52_n_0;
  wire ball_dx_i_53_n_0;
  wire ball_dx_i_54_n_0;
  wire ball_dx_i_55_n_0;
  wire ball_dx_i_56_n_0;
  wire ball_dx_i_57_n_0;
  wire ball_dx_i_58_n_0;
  wire ball_dx_i_59_n_0;
  wire ball_dx_i_5_n_0;
  wire ball_dx_i_60_n_0;
  wire ball_dx_i_61_n_0;
  wire ball_dx_reg_i_10_n_0;
  wire ball_dx_reg_i_15_n_0;
  wire ball_dx_reg_i_20_n_0;
  wire ball_dx_reg_i_25_n_0;
  wire ball_dx_reg_n_0;
  wire ball_dy__0;
  wire ball_dy_i_1_n_0;
  wire ball_dy_i_2_n_0;
  wire ball_dy_i_3_n_0;
  wire ball_dy_i_4_n_0;
  wire ball_dy_i_5_n_0;
  wire \ball_x[3]_i_3_n_0 ;
  wire \ball_x[3]_i_4_n_0 ;
  wire \ball_x[3]_i_5_n_0 ;
  wire \ball_x[7]_i_3_n_0 ;
  wire \ball_x[7]_i_4_n_0 ;
  wire \ball_x[7]_i_5_n_0 ;
  wire \ball_x[7]_i_6_n_0 ;
  wire \ball_x[9]_i_10_n_0 ;
  wire \ball_x[9]_i_11_n_0 ;
  wire \ball_x[9]_i_3_n_0 ;
  wire \ball_x[9]_i_4_n_0 ;
  wire \ball_x[9]_i_6_n_0 ;
  wire \ball_x[9]_i_7_n_0 ;
  wire \ball_x[9]_i_8_n_0 ;
  wire \ball_x[9]_i_9_n_0 ;
  wire [9:1]ball_x_reg;
  wire \ball_x_reg[3]_i_2_n_0 ;
  wire \ball_x_reg[3]_i_2_n_4 ;
  wire \ball_x_reg[3]_i_2_n_5 ;
  wire \ball_x_reg[3]_i_2_n_6 ;
  wire \ball_x_reg[7]_i_2_n_0 ;
  wire \ball_x_reg[7]_i_2_n_4 ;
  wire \ball_x_reg[7]_i_2_n_5 ;
  wire \ball_x_reg[7]_i_2_n_6 ;
  wire \ball_x_reg[7]_i_2_n_7 ;
  wire \ball_x_reg[9]_i_5_n_6 ;
  wire \ball_x_reg[9]_i_5_n_7 ;
  wire \ball_y[3]_i_3_n_0 ;
  wire \ball_y[3]_i_4_n_0 ;
  wire \ball_y[3]_i_5_n_0 ;
  wire \ball_y[7]_i_3_n_0 ;
  wire \ball_y[7]_i_4_n_0 ;
  wire \ball_y[7]_i_5_n_0 ;
  wire \ball_y[7]_i_6_n_0 ;
  wire \ball_y[9]_i_3_n_0 ;
  wire \ball_y[9]_i_4_n_0 ;
  wire [9:1]ball_y_reg;
  wire \ball_y_reg[3]_i_2_n_0 ;
  wire \ball_y_reg[3]_i_2_n_4 ;
  wire \ball_y_reg[3]_i_2_n_5 ;
  wire \ball_y_reg[3]_i_2_n_6 ;
  wire \ball_y_reg[7]_i_2_n_0 ;
  wire \ball_y_reg[7]_i_2_n_4 ;
  wire \ball_y_reg[7]_i_2_n_5 ;
  wire \ball_y_reg[7]_i_2_n_6 ;
  wire \ball_y_reg[7]_i_2_n_7 ;
  wire \ball_y_reg[9]_i_2_n_6 ;
  wire \ball_y_reg[9]_i_2_n_7 ;
  wire btn_p1_down;
  wire btn_p1_down_IBUF;
  wire btn_p1_up;
  wire btn_p1_up_IBUF;
  wire btn_p2_down;
  wire btn_p2_down_IBUF;
  wire btn_p2_up;
  wire btn_p2_up_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]clk_div;
  wire \clk_div[0]_i_1_n_0 ;
  wire \clk_div[1] ;
  wire \clk_div[1]_i_1_n_0 ;
  wire \clk_div_BUFG[1] ;
  wire draw_ball0;
  wire draw_ball1;
  wire draw_ball2;
  wire draw_ball216_in;
  wire draw_p1_paddle0;
  wire draw_p1_paddle1;
  wire draw_p2_paddle0;
  wire draw_p2_paddle1;
  wire \frame_count[3]_i_3_n_0 ;
  wire \frame_count[3]_i_4_n_0 ;
  wire \frame_count[3]_i_5_n_0 ;
  wire [3:0]frame_count_reg;
  wire frame_tick;
  wire game_tick;
  wire \h_count[7]_i_1_n_0 ;
  wire \h_count[9]_i_2_n_0 ;
  wire [9:0]h_count_reg;
  wire hsync;
  wire hsync_OBUF;
  wire p1_y;
  wire p1_y114_out;
  wire \p1_y[0]_i_1_n_0 ;
  wire \p1_y[4]_i_2_n_0 ;
  wire \p1_y[4]_i_3_n_0 ;
  wire \p1_y[4]_i_4_n_0 ;
  wire \p1_y[4]_i_5_n_0 ;
  wire \p1_y[4]_i_6_n_0 ;
  wire \p1_y[8]_i_2_n_0 ;
  wire \p1_y[8]_i_3_n_0 ;
  wire \p1_y[8]_i_4_n_0 ;
  wire \p1_y[8]_i_5_n_0 ;
  wire \p1_y[9]_i_3_n_0 ;
  wire \p1_y[9]_i_5_n_0 ;
  wire \p1_y[9]_i_6_n_0 ;
  wire \p1_y[9]_i_7_n_0 ;
  wire \p1_y[9]_i_8_n_0 ;
  wire [9:0]p1_y_reg;
  wire \p1_y_reg[4]_i_1_n_0 ;
  wire \p1_y_reg[4]_i_1_n_4 ;
  wire \p1_y_reg[4]_i_1_n_5 ;
  wire \p1_y_reg[4]_i_1_n_6 ;
  wire \p1_y_reg[4]_i_1_n_7 ;
  wire \p1_y_reg[8]_i_1_n_0 ;
  wire \p1_y_reg[8]_i_1_n_4 ;
  wire \p1_y_reg[8]_i_1_n_5 ;
  wire \p1_y_reg[8]_i_1_n_6 ;
  wire \p1_y_reg[8]_i_1_n_7 ;
  wire \p1_y_reg[9]_i_2_n_7 ;
  wire p2_y;
  wire p2_y112_out;
  wire \p2_y[0]_i_1_n_0 ;
  wire \p2_y[4]_i_2_n_0 ;
  wire \p2_y[4]_i_3_n_0 ;
  wire \p2_y[4]_i_4_n_0 ;
  wire \p2_y[4]_i_5_n_0 ;
  wire \p2_y[4]_i_6_n_0 ;
  wire \p2_y[8]_i_2_n_0 ;
  wire \p2_y[8]_i_3_n_0 ;
  wire \p2_y[8]_i_4_n_0 ;
  wire \p2_y[8]_i_5_n_0 ;
  wire \p2_y[9]_i_3_n_0 ;
  wire \p2_y[9]_i_5_n_0 ;
  wire \p2_y[9]_i_6_n_0 ;
  wire \p2_y[9]_i_7_n_0 ;
  wire \p2_y[9]_i_8_n_0 ;
  wire [9:0]p2_y_reg;
  wire \p2_y_reg[4]_i_1_n_0 ;
  wire \p2_y_reg[4]_i_1_n_4 ;
  wire \p2_y_reg[4]_i_1_n_5 ;
  wire \p2_y_reg[4]_i_1_n_6 ;
  wire \p2_y_reg[4]_i_1_n_7 ;
  wire \p2_y_reg[8]_i_1_n_0 ;
  wire \p2_y_reg[8]_i_1_n_4 ;
  wire \p2_y_reg[8]_i_1_n_5 ;
  wire \p2_y_reg[8]_i_1_n_6 ;
  wire \p2_y_reg[8]_i_1_n_7 ;
  wire \p2_y_reg[9]_i_2_n_7 ;
  wire [9:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [9:1]p_0_in__2;
  wire [9:1]p_0_in__3;
  wire rst;
  wire rst_IBUF;
  wire sel;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[6]_i_2_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire [9:0]v_count_reg;
  wire [3:0]vga_b;
  wire [3:0]vga_b_OBUF;
  wire [3:0]vga_g;
  wire [3:0]vga_r;
  wire \vga_r_OBUF[2]_inst_i_2_n_0 ;
  wire \vga_r_OBUF[2]_inst_i_3_n_0 ;
  wire \vga_r_OBUF[2]_inst_i_4_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_100_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_101_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_102_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_103_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_104_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_105_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_106_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_107_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_108_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_109_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_110_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_111_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_112_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_113_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_114_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_115_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_116_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_117_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_118_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_119_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_120_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_12_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_17_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_18_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_19_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_20_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_21_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_22_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_23_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_24_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_25_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_26_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_27_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_28_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_29_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_2_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_30_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_31_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_32_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_33_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_34_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_35_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_36_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_37_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_38_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_39_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_3_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_40_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_41_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_42_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_43_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_44_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_45_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_46_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_47_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_48_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_49_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_4_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_50_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_51_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_52_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_53_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_54_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_55_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_56_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_57_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_58_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_59_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_5_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_60_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_61_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_62_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_63_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_64_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_65_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_66_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_67_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_68_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_69_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_6_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_70_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_71_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_72_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_73_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_74_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_75_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_76_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_77_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_78_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_79_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_7_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_80_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_81_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_82_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_83_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_84_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_85_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_86_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_87_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_88_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_89_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_90_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_91_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_92_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_93_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_94_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_95_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_96_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_97_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_98_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_99_n_0 ;
  wire vsync;
  wire vsync_OBUF;
  wire vsync_OBUF_inst_i_2_n_0;
  wire [2:0]NLW_ball_dx_reg_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_10_O_UNCONNECTED;
  wire [2:0]NLW_ball_dx_reg_i_15_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_15_O_UNCONNECTED;
  wire [2:0]NLW_ball_dx_reg_i_20_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_20_O_UNCONNECTED;
  wire [2:0]NLW_ball_dx_reg_i_25_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_25_O_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_7_O_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_8_O_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_ball_dx_reg_i_9_O_UNCONNECTED;
  wire [2:0]\NLW_ball_x_reg[3]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_ball_x_reg[3]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_ball_x_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ball_x_reg[9]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_ball_x_reg[9]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_ball_y_reg[3]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_ball_y_reg[3]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_ball_y_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ball_y_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_ball_y_reg[9]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_p1_y_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_p1_y_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_p1_y_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_p1_y_reg[9]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_p2_y_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_p2_y_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_p2_y_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_p2_y_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_vga_r_OBUF[3]_inst_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_vga_r_OBUF[3]_inst_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_15_O_UNCONNECTED ;
  wire [3:1]\NLW_vga_r_OBUF[3]_inst_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_26_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_29_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_34_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_34_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_37_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_37_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_42_O_UNCONNECTED ;
  wire [2:0]\NLW_vga_r_OBUF[3]_inst_i_47_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_47_O_UNCONNECTED ;
  wire [3:1]\NLW_vga_r_OBUF[3]_inst_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_r_OBUF[3]_inst_i_9_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFD88888888)) 
    ball_dx_i_1
       (.I0(game_tick),
        .I1(ball_dx),
        .I2(ball_dx_i_3_n_0),
        .I3(ball_dx_i_4_n_0),
        .I4(ball_dx_i_5_n_0),
        .I5(ball_dx_reg_n_0),
        .O(ball_dx_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    ball_dx_i_11
       (.I0(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .I1(p1_y_reg[8]),
        .I2(p1_y_reg[7]),
        .I3(p1_y_reg[9]),
        .O(ball_dx_i_11_n_0));
  LUT6 #(
    .INIT(64'h5104F3FF00005D04)) 
    ball_dx_i_12
       (.I0(ball_y_reg[8]),
        .I1(p1_y_reg[7]),
        .I2(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .I3(p1_y_reg[8]),
        .I4(ball_y_reg[9]),
        .I5(p1_y_reg[9]),
        .O(ball_dx_i_12_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    ball_dx_i_13
       (.I0(p1_y_reg[9]),
        .I1(p1_y_reg[7]),
        .I2(p1_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .O(ball_dx_i_13_n_0));
  LUT6 #(
    .INIT(64'h9909009000609909)) 
    ball_dx_i_14
       (.I0(p1_y_reg[9]),
        .I1(ball_y_reg[9]),
        .I2(p1_y_reg[7]),
        .I3(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .I4(p1_y_reg[8]),
        .I5(ball_y_reg[8]),
        .O(ball_dx_i_14_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    ball_dx_i_16
       (.I0(ball_y_reg[7]),
        .I1(ball_y_reg[6]),
        .I2(ball_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I4(ball_y_reg[9]),
        .O(ball_dx_i_16_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    ball_dx_i_17
       (.I0(p1_y_reg[8]),
        .I1(\vga_r_OBUF[3]_inst_i_111_n_0 ),
        .I2(p1_y_reg[9]),
        .I3(\vga_r_OBUF[3]_inst_i_112_n_0 ),
        .O(ball_dx_i_17_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    ball_dx_i_18
       (.I0(ball_y_reg[9]),
        .I1(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I2(ball_y_reg[8]),
        .I3(ball_y_reg[6]),
        .I4(ball_y_reg[7]),
        .O(ball_dx_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_dx_i_19
       (.I0(\vga_r_OBUF[3]_inst_i_112_n_0 ),
        .I1(p1_y_reg[9]),
        .I2(\vga_r_OBUF[3]_inst_i_111_n_0 ),
        .I3(p1_y_reg[8]),
        .O(ball_dx_i_19_n_0));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    ball_dx_i_2
       (.I0(\ball_x[9]_i_11_n_0 ),
        .I1(ball_x_reg[4]),
        .I2(ball_dx1),
        .I3(ball_dx2),
        .I4(ball_x_reg[2]),
        .I5(ball_x_reg[3]),
        .O(ball_dx));
  LUT4 #(
    .INIT(16'h4000)) 
    ball_dx_i_21
       (.I0(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .I1(p2_y_reg[8]),
        .I2(p2_y_reg[7]),
        .I3(p2_y_reg[9]),
        .O(ball_dx_i_21_n_0));
  LUT6 #(
    .INIT(64'h5104F3FF00005D04)) 
    ball_dx_i_22
       (.I0(ball_y_reg[8]),
        .I1(p2_y_reg[7]),
        .I2(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .I3(p2_y_reg[8]),
        .I4(ball_y_reg[9]),
        .I5(p2_y_reg[9]),
        .O(ball_dx_i_22_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    ball_dx_i_23
       (.I0(p2_y_reg[9]),
        .I1(p2_y_reg[7]),
        .I2(p2_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .O(ball_dx_i_23_n_0));
  LUT6 #(
    .INIT(64'h9909009000609909)) 
    ball_dx_i_24
       (.I0(p2_y_reg[9]),
        .I1(ball_y_reg[9]),
        .I2(p2_y_reg[7]),
        .I3(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .I4(p2_y_reg[8]),
        .I5(ball_y_reg[8]),
        .O(ball_dx_i_24_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    ball_dx_i_26
       (.I0(ball_y_reg[7]),
        .I1(ball_y_reg[6]),
        .I2(ball_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I4(ball_y_reg[9]),
        .O(ball_dx_i_26_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    ball_dx_i_27
       (.I0(p2_y_reg[8]),
        .I1(\vga_r_OBUF[3]_inst_i_111_n_0 ),
        .I2(p2_y_reg[9]),
        .I3(\vga_r_OBUF[3]_inst_i_112_n_0 ),
        .O(ball_dx_i_27_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    ball_dx_i_28
       (.I0(ball_y_reg[9]),
        .I1(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I2(ball_y_reg[8]),
        .I3(ball_y_reg[6]),
        .I4(ball_y_reg[7]),
        .O(ball_dx_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_dx_i_29
       (.I0(\vga_r_OBUF[3]_inst_i_112_n_0 ),
        .I1(p2_y_reg[9]),
        .I2(\vga_r_OBUF[3]_inst_i_111_n_0 ),
        .I3(p2_y_reg[8]),
        .O(ball_dx_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F08000)) 
    ball_dx_i_3
       (.I0(ball_x_reg[1]),
        .I1(ball_x_reg[2]),
        .I2(ball_x_reg[5]),
        .I3(ball_x_reg[3]),
        .I4(ball_x_reg[4]),
        .O(ball_dx_i_3_n_0));
  LUT5 #(
    .INIT(32'h5104D345)) 
    ball_dx_i_30
       (.I0(ball_y_reg[7]),
        .I1(p1_y_reg[6]),
        .I2(\p1_y[9]_i_8_n_0 ),
        .I3(p1_y_reg[7]),
        .I4(ball_y_reg[6]),
        .O(ball_dx_i_30_n_0));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    ball_dx_i_31
       (.I0(ball_y_reg[5]),
        .I1(p1_y_reg[4]),
        .I2(p1_y_reg[3]),
        .I3(p1_y_reg[2]),
        .I4(p1_y_reg[5]),
        .I5(ball_y_reg[4]),
        .O(ball_dx_i_31_n_0));
  LUT4 #(
    .INIT(16'h01B5)) 
    ball_dx_i_32
       (.I0(p1_y_reg[2]),
        .I1(ball_y_reg[2]),
        .I2(p1_y_reg[3]),
        .I3(ball_y_reg[3]),
        .O(ball_dx_i_32_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    ball_dx_i_33
       (.I0(p1_y_reg[1]),
        .I1(ball_y_reg[1]),
        .I2(p1_y_reg[0]),
        .O(ball_dx_i_33_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    ball_dx_i_34
       (.I0(p1_y_reg[7]),
        .I1(ball_y_reg[7]),
        .I2(p1_y_reg[6]),
        .I3(\p1_y[9]_i_8_n_0 ),
        .I4(ball_y_reg[6]),
        .O(ball_dx_i_34_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    ball_dx_i_35
       (.I0(p1_y_reg[5]),
        .I1(ball_y_reg[5]),
        .I2(p1_y_reg[4]),
        .I3(p1_y_reg[3]),
        .I4(p1_y_reg[2]),
        .I5(ball_y_reg[4]),
        .O(ball_dx_i_35_n_0));
  LUT4 #(
    .INIT(16'h4224)) 
    ball_dx_i_36
       (.I0(ball_y_reg[2]),
        .I1(p1_y_reg[2]),
        .I2(p1_y_reg[3]),
        .I3(ball_y_reg[3]),
        .O(ball_dx_i_36_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    ball_dx_i_37
       (.I0(p1_y_reg[0]),
        .I1(p1_y_reg[1]),
        .I2(ball_y_reg[1]),
        .O(ball_dx_i_37_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    ball_dx_i_38
       (.I0(p1_y_reg[7]),
        .I1(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I2(ball_y_reg[6]),
        .I3(ball_y_reg[7]),
        .I4(p1_y_reg[6]),
        .O(ball_dx_i_38_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    ball_dx_i_39
       (.I0(p1_y_reg[5]),
        .I1(ball_y_reg[3]),
        .I2(ball_y_reg[4]),
        .I3(ball_y_reg[5]),
        .I4(p1_y_reg[4]),
        .O(ball_dx_i_39_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    ball_dx_i_4
       (.I0(ball_x_reg[7]),
        .I1(ball_x_reg[8]),
        .I2(ball_x_reg[9]),
        .I3(ball_dx29_in),
        .I4(ball_x_reg[6]),
        .I5(ball_dx38_in),
        .O(ball_dx_i_4_n_0));
  LUT4 #(
    .INIT(16'h022F)) 
    ball_dx_i_40
       (.I0(ball_y_reg[2]),
        .I1(p1_y_reg[2]),
        .I2(p1_y_reg[3]),
        .I3(ball_y_reg[3]),
        .O(ball_dx_i_40_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ball_dx_i_41
       (.I0(ball_y_reg[1]),
        .I1(p1_y_reg[1]),
        .O(ball_dx_i_41_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    ball_dx_i_42
       (.I0(ball_y_reg[7]),
        .I1(p1_y_reg[7]),
        .I2(ball_y_reg[6]),
        .I3(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I4(p1_y_reg[6]),
        .O(ball_dx_i_42_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    ball_dx_i_43
       (.I0(ball_y_reg[5]),
        .I1(p1_y_reg[5]),
        .I2(ball_y_reg[3]),
        .I3(ball_y_reg[4]),
        .I4(p1_y_reg[4]),
        .O(ball_dx_i_43_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    ball_dx_i_44
       (.I0(ball_y_reg[3]),
        .I1(p1_y_reg[3]),
        .I2(ball_y_reg[2]),
        .I3(p1_y_reg[2]),
        .O(ball_dx_i_44_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    ball_dx_i_45
       (.I0(p1_y_reg[0]),
        .I1(p1_y_reg[1]),
        .I2(ball_y_reg[1]),
        .O(ball_dx_i_45_n_0));
  LUT5 #(
    .INIT(32'h5104D345)) 
    ball_dx_i_46
       (.I0(ball_y_reg[7]),
        .I1(p2_y_reg[6]),
        .I2(\p2_y[9]_i_8_n_0 ),
        .I3(p2_y_reg[7]),
        .I4(ball_y_reg[6]),
        .O(ball_dx_i_46_n_0));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    ball_dx_i_47
       (.I0(ball_y_reg[5]),
        .I1(p2_y_reg[4]),
        .I2(p2_y_reg[3]),
        .I3(p2_y_reg[2]),
        .I4(p2_y_reg[5]),
        .I5(ball_y_reg[4]),
        .O(ball_dx_i_47_n_0));
  LUT4 #(
    .INIT(16'h01B5)) 
    ball_dx_i_48
       (.I0(p2_y_reg[2]),
        .I1(ball_y_reg[2]),
        .I2(p2_y_reg[3]),
        .I3(ball_y_reg[3]),
        .O(ball_dx_i_48_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    ball_dx_i_49
       (.I0(p2_y_reg[1]),
        .I1(ball_y_reg[1]),
        .I2(p2_y_reg[0]),
        .O(ball_dx_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h15151555)) 
    ball_dx_i_5
       (.I0(ball_x_reg[5]),
        .I1(ball_x_reg[3]),
        .I2(ball_x_reg[4]),
        .I3(ball_x_reg[1]),
        .I4(ball_x_reg[2]),
        .O(ball_dx_i_5_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    ball_dx_i_50
       (.I0(p2_y_reg[7]),
        .I1(ball_y_reg[7]),
        .I2(p2_y_reg[6]),
        .I3(\p2_y[9]_i_8_n_0 ),
        .I4(ball_y_reg[6]),
        .O(ball_dx_i_50_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    ball_dx_i_51
       (.I0(p2_y_reg[5]),
        .I1(ball_y_reg[5]),
        .I2(p2_y_reg[4]),
        .I3(p2_y_reg[3]),
        .I4(p2_y_reg[2]),
        .I5(ball_y_reg[4]),
        .O(ball_dx_i_51_n_0));
  LUT4 #(
    .INIT(16'h4224)) 
    ball_dx_i_52
       (.I0(ball_y_reg[2]),
        .I1(p2_y_reg[2]),
        .I2(p2_y_reg[3]),
        .I3(ball_y_reg[3]),
        .O(ball_dx_i_52_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    ball_dx_i_53
       (.I0(p2_y_reg[0]),
        .I1(p2_y_reg[1]),
        .I2(ball_y_reg[1]),
        .O(ball_dx_i_53_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    ball_dx_i_54
       (.I0(p2_y_reg[7]),
        .I1(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I2(ball_y_reg[6]),
        .I3(ball_y_reg[7]),
        .I4(p2_y_reg[6]),
        .O(ball_dx_i_54_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    ball_dx_i_55
       (.I0(p2_y_reg[5]),
        .I1(ball_y_reg[3]),
        .I2(ball_y_reg[4]),
        .I3(ball_y_reg[5]),
        .I4(p2_y_reg[4]),
        .O(ball_dx_i_55_n_0));
  LUT4 #(
    .INIT(16'h022F)) 
    ball_dx_i_56
       (.I0(ball_y_reg[2]),
        .I1(p2_y_reg[2]),
        .I2(p2_y_reg[3]),
        .I3(ball_y_reg[3]),
        .O(ball_dx_i_56_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ball_dx_i_57
       (.I0(ball_y_reg[1]),
        .I1(p2_y_reg[1]),
        .O(ball_dx_i_57_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    ball_dx_i_58
       (.I0(ball_y_reg[7]),
        .I1(p2_y_reg[7]),
        .I2(ball_y_reg[6]),
        .I3(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I4(p2_y_reg[6]),
        .O(ball_dx_i_58_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    ball_dx_i_59
       (.I0(ball_y_reg[5]),
        .I1(p2_y_reg[5]),
        .I2(ball_y_reg[3]),
        .I3(ball_y_reg[4]),
        .I4(p2_y_reg[4]),
        .O(ball_dx_i_59_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    ball_dx_i_60
       (.I0(ball_y_reg[3]),
        .I1(p2_y_reg[3]),
        .I2(ball_y_reg[2]),
        .I3(p2_y_reg[2]),
        .O(ball_dx_i_60_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    ball_dx_i_61
       (.I0(p2_y_reg[0]),
        .I1(p2_y_reg[1]),
        .I2(ball_y_reg[1]),
        .O(ball_dx_i_61_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ball_dx_reg
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .D(ball_dx_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(ball_dx_reg_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_10
       (.CI(1'b0),
        .CO({ball_dx_reg_i_10_n_0,NLW_ball_dx_reg_i_10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({ball_dx_i_30_n_0,ball_dx_i_31_n_0,ball_dx_i_32_n_0,ball_dx_i_33_n_0}),
        .O(NLW_ball_dx_reg_i_10_O_UNCONNECTED[3:0]),
        .S({ball_dx_i_34_n_0,ball_dx_i_35_n_0,ball_dx_i_36_n_0,ball_dx_i_37_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_15
       (.CI(1'b0),
        .CO({ball_dx_reg_i_15_n_0,NLW_ball_dx_reg_i_15_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({ball_dx_i_38_n_0,ball_dx_i_39_n_0,ball_dx_i_40_n_0,ball_dx_i_41_n_0}),
        .O(NLW_ball_dx_reg_i_15_O_UNCONNECTED[3:0]),
        .S({ball_dx_i_42_n_0,ball_dx_i_43_n_0,ball_dx_i_44_n_0,ball_dx_i_45_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_20
       (.CI(1'b0),
        .CO({ball_dx_reg_i_20_n_0,NLW_ball_dx_reg_i_20_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({ball_dx_i_46_n_0,ball_dx_i_47_n_0,ball_dx_i_48_n_0,ball_dx_i_49_n_0}),
        .O(NLW_ball_dx_reg_i_20_O_UNCONNECTED[3:0]),
        .S({ball_dx_i_50_n_0,ball_dx_i_51_n_0,ball_dx_i_52_n_0,ball_dx_i_53_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_25
       (.CI(1'b0),
        .CO({ball_dx_reg_i_25_n_0,NLW_ball_dx_reg_i_25_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({ball_dx_i_54_n_0,ball_dx_i_55_n_0,ball_dx_i_56_n_0,ball_dx_i_57_n_0}),
        .O(NLW_ball_dx_reg_i_25_O_UNCONNECTED[3:0]),
        .S({ball_dx_i_58_n_0,ball_dx_i_59_n_0,ball_dx_i_60_n_0,ball_dx_i_61_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_6
       (.CI(ball_dx_reg_i_10_n_0),
        .CO({NLW_ball_dx_reg_i_6_CO_UNCONNECTED[3:2],ball_dx1,NLW_ball_dx_reg_i_6_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ball_dx_i_11_n_0,ball_dx_i_12_n_0}),
        .O(NLW_ball_dx_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ball_dx_i_13_n_0,ball_dx_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_7
       (.CI(ball_dx_reg_i_15_n_0),
        .CO({NLW_ball_dx_reg_i_7_CO_UNCONNECTED[3:2],ball_dx2,NLW_ball_dx_reg_i_7_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ball_dx_i_16_n_0,ball_dx_i_17_n_0}),
        .O(NLW_ball_dx_reg_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ball_dx_i_18_n_0,ball_dx_i_19_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_8
       (.CI(ball_dx_reg_i_20_n_0),
        .CO({NLW_ball_dx_reg_i_8_CO_UNCONNECTED[3:2],ball_dx29_in,NLW_ball_dx_reg_i_8_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ball_dx_i_21_n_0,ball_dx_i_22_n_0}),
        .O(NLW_ball_dx_reg_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ball_dx_i_23_n_0,ball_dx_i_24_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_dx_reg_i_9
       (.CI(ball_dx_reg_i_25_n_0),
        .CO({NLW_ball_dx_reg_i_9_CO_UNCONNECTED[3:2],ball_dx38_in,NLW_ball_dx_reg_i_9_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ball_dx_i_26_n_0,ball_dx_i_27_n_0}),
        .O(NLW_ball_dx_reg_i_9_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ball_dx_i_28_n_0,ball_dx_i_29_n_0}));
  LUT5 #(
    .INIT(32'hF7F5A0A0)) 
    ball_dy_i_1
       (.I0(game_tick),
        .I1(ball_y_reg[9]),
        .I2(ball_dy_i_2_n_0),
        .I3(ball_dy_i_3_n_0),
        .I4(ball_dy__0),
        .O(ball_dy_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    ball_dy_i_2
       (.I0(ball_y_reg[4]),
        .I1(ball_y_reg[5]),
        .I2(ball_y_reg[6]),
        .I3(ball_y_reg[7]),
        .I4(ball_dy_i_4_n_0),
        .O(ball_dy_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0055007F)) 
    ball_dy_i_3
       (.I0(ball_y_reg[4]),
        .I1(ball_y_reg[2]),
        .I2(ball_y_reg[1]),
        .I3(ball_y_reg[5]),
        .I4(ball_y_reg[3]),
        .I5(ball_dy_i_5_n_0),
        .O(ball_dy_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ball_dy_i_4
       (.I0(ball_y_reg[9]),
        .I1(ball_y_reg[8]),
        .I2(ball_y_reg[3]),
        .I3(ball_y_reg[2]),
        .O(ball_dy_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    ball_dy_i_5
       (.I0(ball_y_reg[7]),
        .I1(ball_y_reg[6]),
        .I2(ball_y_reg[8]),
        .O(ball_dy_i_5_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ball_dy_reg
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .D(ball_dy_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(ball_dy__0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[1]_i_1 
       (.I0(\ball_x_reg[3]_i_2_n_6 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[2]_i_1 
       (.I0(\ball_x_reg[3]_i_2_n_5 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[3]_i_1 
       (.I0(\ball_x_reg[3]_i_2_n_4 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[3]_i_3 
       (.I0(ball_dx_reg_n_0),
        .I1(ball_x_reg[3]),
        .O(\ball_x[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[3]_i_4 
       (.I0(ball_dx_reg_n_0),
        .I1(ball_x_reg[2]),
        .O(\ball_x[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_x[3]_i_5 
       (.I0(ball_x_reg[1]),
        .O(\ball_x[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[4]_i_1 
       (.I0(\ball_x_reg[7]_i_2_n_7 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[5]_i_1 
       (.I0(\ball_x_reg[7]_i_2_n_6 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ball_x[6]_i_1 
       (.I0(\ball_x_reg[7]_i_2_n_5 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[7]_i_1 
       (.I0(\ball_x_reg[7]_i_2_n_4 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[7]_i_3 
       (.I0(ball_x_reg[6]),
        .I1(ball_x_reg[7]),
        .O(\ball_x[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[7]_i_4 
       (.I0(ball_x_reg[5]),
        .I1(ball_x_reg[6]),
        .O(\ball_x[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[7]_i_5 
       (.I0(ball_x_reg[4]),
        .I1(ball_x_reg[5]),
        .O(\ball_x[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[7]_i_6 
       (.I0(ball_x_reg[4]),
        .I1(ball_x_reg[3]),
        .O(\ball_x[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ball_x[8]_i_1 
       (.I0(\ball_x_reg[9]_i_5_n_7 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[8]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ball_x[9]_i_1 
       (.I0(\frame_count[3]_i_4_n_0 ),
        .I1(vsync_OBUF_inst_i_2_n_0),
        .I2(\ball_x[9]_i_3_n_0 ),
        .I3(\frame_count[3]_i_3_n_0 ),
        .I4(\ball_x[9]_i_4_n_0 ),
        .O(game_tick));
  LUT3 #(
    .INIT(8'hFE)) 
    \ball_x[9]_i_10 
       (.I0(ball_x_reg[4]),
        .I1(ball_x_reg[3]),
        .I2(ball_x_reg[2]),
        .O(\ball_x[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ball_x[9]_i_11 
       (.I0(ball_x_reg[5]),
        .I1(ball_x_reg[6]),
        .I2(ball_x_reg[7]),
        .I3(ball_x_reg[8]),
        .I4(ball_x_reg[9]),
        .O(\ball_x[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[9]_i_2 
       (.I0(\ball_x_reg[9]_i_5_n_6 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__2[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ball_x[9]_i_3 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[9]),
        .I2(v_count_reg[2]),
        .O(\ball_x[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ball_x[9]_i_4 
       (.I0(frame_count_reg[1]),
        .I1(frame_count_reg[0]),
        .I2(frame_count_reg[3]),
        .I3(frame_count_reg[2]),
        .O(\ball_x[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFFFE00FE00)) 
    \ball_x[9]_i_6 
       (.I0(ball_x_reg[7]),
        .I1(ball_x_reg[8]),
        .I2(\ball_x[9]_i_9_n_0 ),
        .I3(ball_x_reg[9]),
        .I4(\ball_x[9]_i_10_n_0 ),
        .I5(\ball_x[9]_i_11_n_0 ),
        .O(\ball_x[9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[9]_i_7 
       (.I0(ball_x_reg[8]),
        .I1(ball_x_reg[9]),
        .O(\ball_x[9]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_x[9]_i_8 
       (.I0(ball_x_reg[7]),
        .I1(ball_x_reg[8]),
        .O(\ball_x[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF800000000000000)) 
    \ball_x[9]_i_9 
       (.I0(ball_x_reg[1]),
        .I1(ball_x_reg[2]),
        .I2(ball_x_reg[3]),
        .I3(ball_x_reg[6]),
        .I4(ball_x_reg[4]),
        .I5(ball_x_reg[5]),
        .O(\ball_x[9]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[1]),
        .Q(ball_x_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[2]),
        .Q(ball_x_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[3]),
        .Q(ball_x_reg[3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \ball_x_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\ball_x_reg[3]_i_2_n_0 ,\NLW_ball_x_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({ball_dx_reg_n_0,ball_x_reg[2:1],1'b0}),
        .O({\ball_x_reg[3]_i_2_n_4 ,\ball_x_reg[3]_i_2_n_5 ,\ball_x_reg[3]_i_2_n_6 ,\NLW_ball_x_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\ball_x[3]_i_3_n_0 ,\ball_x[3]_i_4_n_0 ,\ball_x[3]_i_5_n_0 ,1'b0}));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[4] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[4]),
        .Q(ball_x_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[5] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[5]),
        .Q(ball_x_reg[5]));
  FDPE #(
    .INIT(1'b1)) 
    \ball_x_reg[6] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .D(p_0_in__2[6]),
        .PRE(rst_IBUF),
        .Q(ball_x_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[7] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[7]),
        .Q(ball_x_reg[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ball_x_reg[7]_i_2 
       (.CI(\ball_x_reg[3]_i_2_n_0 ),
        .CO({\ball_x_reg[7]_i_2_n_0 ,\NLW_ball_x_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(ball_x_reg[6:3]),
        .O({\ball_x_reg[7]_i_2_n_4 ,\ball_x_reg[7]_i_2_n_5 ,\ball_x_reg[7]_i_2_n_6 ,\ball_x_reg[7]_i_2_n_7 }),
        .S({\ball_x[7]_i_3_n_0 ,\ball_x[7]_i_4_n_0 ,\ball_x[7]_i_5_n_0 ,\ball_x[7]_i_6_n_0 }));
  FDPE #(
    .INIT(1'b1)) 
    \ball_x_reg[8] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .D(p_0_in__2[8]),
        .PRE(rst_IBUF),
        .Q(ball_x_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_x_reg[9] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__2[9]),
        .Q(ball_x_reg[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ball_x_reg[9]_i_5 
       (.CI(\ball_x_reg[7]_i_2_n_0 ),
        .CO(\NLW_ball_x_reg[9]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ball_x_reg[7]}),
        .O({\NLW_ball_x_reg[9]_i_5_O_UNCONNECTED [3:2],\ball_x_reg[9]_i_5_n_6 ,\ball_x_reg[9]_i_5_n_7 }),
        .S({1'b0,1'b0,\ball_x[9]_i_7_n_0 ,\ball_x[9]_i_8_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y[1]_i_1 
       (.I0(\ball_y_reg[3]_i_2_n_6 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y[2]_i_1 
       (.I0(\ball_y_reg[3]_i_2_n_5 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y[3]_i_1 
       (.I0(\ball_y_reg[3]_i_2_n_4 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[3]_i_3 
       (.I0(ball_dy__0),
        .I1(ball_y_reg[3]),
        .O(\ball_y[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[3]_i_4 
       (.I0(ball_dy__0),
        .I1(ball_y_reg[2]),
        .O(\ball_y[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_y[3]_i_5 
       (.I0(ball_y_reg[1]),
        .O(\ball_y[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ball_y[4]_i_1 
       (.I0(\ball_y_reg[7]_i_2_n_7 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ball_y[5]_i_1 
       (.I0(\ball_y_reg[7]_i_2_n_6 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ball_y[6]_i_1 
       (.I0(\ball_y_reg[7]_i_2_n_5 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ball_y[7]_i_1 
       (.I0(\ball_y_reg[7]_i_2_n_4 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[7]_i_3 
       (.I0(ball_y_reg[6]),
        .I1(ball_y_reg[7]),
        .O(\ball_y[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[7]_i_4 
       (.I0(ball_y_reg[5]),
        .I1(ball_y_reg[6]),
        .O(\ball_y[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[7]_i_5 
       (.I0(ball_y_reg[4]),
        .I1(ball_y_reg[5]),
        .O(\ball_y[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[7]_i_6 
       (.I0(ball_y_reg[4]),
        .I1(ball_y_reg[3]),
        .O(\ball_y[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y[8]_i_1 
       (.I0(\ball_y_reg[9]_i_2_n_7 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y[9]_i_1 
       (.I0(\ball_y_reg[9]_i_2_n_6 ),
        .I1(\ball_x[9]_i_6_n_0 ),
        .O(p_0_in__3[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[9]_i_3 
       (.I0(ball_y_reg[8]),
        .I1(ball_y_reg[9]),
        .O(\ball_y[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ball_y[9]_i_4 
       (.I0(ball_y_reg[7]),
        .I1(ball_y_reg[8]),
        .O(\ball_y[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ball_y_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__3[1]),
        .Q(ball_y_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_y_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__3[2]),
        .Q(ball_y_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_y_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__3[3]),
        .Q(ball_y_reg[3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \ball_y_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\ball_y_reg[3]_i_2_n_0 ,\NLW_ball_y_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({ball_dy__0,ball_y_reg[2:1],1'b0}),
        .O({\ball_y_reg[3]_i_2_n_4 ,\ball_y_reg[3]_i_2_n_5 ,\ball_y_reg[3]_i_2_n_6 ,\NLW_ball_y_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\ball_y[3]_i_3_n_0 ,\ball_y[3]_i_4_n_0 ,\ball_y[3]_i_5_n_0 ,1'b0}));
  FDPE #(
    .INIT(1'b1)) 
    \ball_y_reg[4] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .D(p_0_in__3[4]),
        .PRE(rst_IBUF),
        .Q(ball_y_reg[4]));
  FDPE #(
    .INIT(1'b1)) 
    \ball_y_reg[5] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .D(p_0_in__3[5]),
        .PRE(rst_IBUF),
        .Q(ball_y_reg[5]));
  FDPE #(
    .INIT(1'b1)) 
    \ball_y_reg[6] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .D(p_0_in__3[6]),
        .PRE(rst_IBUF),
        .Q(ball_y_reg[6]));
  FDPE #(
    .INIT(1'b1)) 
    \ball_y_reg[7] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .D(p_0_in__3[7]),
        .PRE(rst_IBUF),
        .Q(ball_y_reg[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ball_y_reg[7]_i_2 
       (.CI(\ball_y_reg[3]_i_2_n_0 ),
        .CO({\ball_y_reg[7]_i_2_n_0 ,\NLW_ball_y_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(ball_y_reg[6:3]),
        .O({\ball_y_reg[7]_i_2_n_4 ,\ball_y_reg[7]_i_2_n_5 ,\ball_y_reg[7]_i_2_n_6 ,\ball_y_reg[7]_i_2_n_7 }),
        .S({\ball_y[7]_i_3_n_0 ,\ball_y[7]_i_4_n_0 ,\ball_y[7]_i_5_n_0 ,\ball_y[7]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \ball_y_reg[8] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__3[8]),
        .Q(ball_y_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ball_y_reg[9] 
       (.C(\clk_div_BUFG[1] ),
        .CE(game_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__3[9]),
        .Q(ball_y_reg[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ball_y_reg[9]_i_2 
       (.CI(\ball_y_reg[7]_i_2_n_0 ),
        .CO(\NLW_ball_y_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ball_y_reg[7]}),
        .O({\NLW_ball_y_reg[9]_i_2_O_UNCONNECTED [3:2],\ball_y_reg[9]_i_2_n_6 ,\ball_y_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,\ball_y[9]_i_3_n_0 ,\ball_y[9]_i_4_n_0 }));
  IBUF #(
    .CCIO_EN("TRUE")) 
    btn_p1_down_IBUF_inst
       (.I(btn_p1_down),
        .O(btn_p1_down_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    btn_p1_up_IBUF_inst
       (.I(btn_p1_up),
        .O(btn_p1_up_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    btn_p2_down_IBUF_inst
       (.I(btn_p2_down),
        .O(btn_p2_down_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    btn_p2_up_IBUF_inst
       (.I(btn_p2_up),
        .O(btn_p2_up_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(clk_div),
        .O(\clk_div[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div[1]_i_1 
       (.I0(clk_div),
        .I1(\clk_div[1] ),
        .O(\clk_div[1]_i_1_n_0 ));
  BUFG \clk_div_BUFG[1]_inst 
       (.I(\clk_div[1] ),
        .O(\clk_div_BUFG[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div[0]_i_1_n_0 ),
        .Q(clk_div));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\clk_div[1]_i_1_n_0 ),
        .Q(\clk_div[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_count[0]_i_1 
       (.I0(frame_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \frame_count[1]_i_1 
       (.I0(frame_count_reg[0]),
        .I1(frame_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \frame_count[2]_i_1 
       (.I0(frame_count_reg[2]),
        .I1(frame_count_reg[1]),
        .I2(frame_count_reg[0]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \frame_count[3]_i_1 
       (.I0(\frame_count[3]_i_3_n_0 ),
        .I1(v_count_reg[2]),
        .I2(v_count_reg[9]),
        .I3(v_count_reg[4]),
        .I4(vsync_OBUF_inst_i_2_n_0),
        .I5(\frame_count[3]_i_4_n_0 ),
        .O(frame_tick));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \frame_count[3]_i_2 
       (.I0(frame_count_reg[3]),
        .I1(frame_count_reg[0]),
        .I2(frame_count_reg[1]),
        .I3(frame_count_reg[2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \frame_count[3]_i_3 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .I4(h_count_reg[4]),
        .I5(h_count_reg[5]),
        .O(\frame_count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \frame_count[3]_i_4 
       (.I0(h_count_reg[9]),
        .I1(v_count_reg[3]),
        .I2(h_count_reg[6]),
        .I3(\frame_count[3]_i_5_n_0 ),
        .I4(v_count_reg[1]),
        .I5(v_count_reg[0]),
        .O(\frame_count[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_count[3]_i_5 
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[8]),
        .O(\frame_count[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_count_reg[0] 
       (.C(\clk_div_BUFG[1] ),
        .CE(frame_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__1[0]),
        .Q(frame_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_count_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(frame_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__1[1]),
        .Q(frame_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_count_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(frame_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__1[2]),
        .Q(frame_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_count_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(frame_tick),
        .CLR(rst_IBUF),
        .D(p_0_in__1[3]),
        .Q(frame_count_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg[1]),
        .I1(h_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg[1]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[2]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[9]),
        .I4(\h_count[9]_i_2_n_0 ),
        .I5(h_count_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \h_count[6]_i_1 
       (.I0(h_count_reg[6]),
        .I1(\h_count[9]_i_2_n_0 ),
        .I2(h_count_reg[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \h_count[7]_i_1 
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[6]),
        .I3(\h_count[9]_i_2_n_0 ),
        .O(\h_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3FFD0000C000)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg[9]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[6]),
        .I4(\h_count[9]_i_2_n_0 ),
        .I5(h_count_reg[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hBFFEFFFF40000000)) 
    \h_count[9]_i_1 
       (.I0(\h_count[9]_i_2_n_0 ),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_count[9]_i_2 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[3]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .I4(h_count_reg[4]),
        .O(\h_count[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[0]),
        .Q(h_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(h_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(h_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(h_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(h_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(h_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(h_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\h_count[7]_i_1_n_0 ),
        .Q(h_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[8]),
        .Q(h_count_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(\clk_div_BUFG[1] ),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[9]),
        .Q(h_count_reg[9]));
  OBUF hsync_OBUF_inst
       (.I(hsync_OBUF),
        .O(hsync));
  LUT6 #(
    .INIT(64'hFFFF81FFFFFFFFFF)) 
    hsync_OBUF_inst_i_1
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[4]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[8]),
        .I5(h_count_reg[9]),
        .O(hsync_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \p1_y[0]_i_1 
       (.I0(p1_y_reg[0]),
        .O(\p1_y[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p1_y[4]_i_2 
       (.I0(p1_y114_out),
        .O(\p1_y[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[4]_i_3 
       (.I0(p1_y_reg[3]),
        .I1(p1_y_reg[4]),
        .O(\p1_y[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_y[4]_i_4 
       (.I0(p1_y114_out),
        .I1(p1_y_reg[3]),
        .O(\p1_y[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p1_y[4]_i_5 
       (.I0(p1_y114_out),
        .I1(p1_y_reg[2]),
        .O(\p1_y[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[4]_i_6 
       (.I0(p1_y_reg[1]),
        .I1(p1_y114_out),
        .O(\p1_y[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[8]_i_2 
       (.I0(p1_y_reg[7]),
        .I1(p1_y_reg[8]),
        .O(\p1_y[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[8]_i_3 
       (.I0(p1_y_reg[6]),
        .I1(p1_y_reg[7]),
        .O(\p1_y[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[8]_i_4 
       (.I0(p1_y_reg[5]),
        .I1(p1_y_reg[6]),
        .O(\p1_y[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[8]_i_5 
       (.I0(p1_y_reg[4]),
        .I1(p1_y_reg[5]),
        .O(\p1_y[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    \p1_y[9]_i_1 
       (.I0(game_tick),
        .I1(\p1_y[9]_i_3_n_0 ),
        .I2(btn_p1_down_IBUF),
        .I3(p1_y_reg[9]),
        .I4(p1_y114_out),
        .O(p1_y));
  LUT6 #(
    .INIT(64'h555F555F555F55DF)) 
    \p1_y[9]_i_3 
       (.I0(\p1_y[9]_i_6_n_0 ),
        .I1(\p1_y[9]_i_7_n_0 ),
        .I2(p1_y_reg[5]),
        .I3(p1_y_reg[6]),
        .I4(p1_y_reg[0]),
        .I5(p1_y_reg[1]),
        .O(\p1_y[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \p1_y[9]_i_4 
       (.I0(btn_p1_up_IBUF),
        .I1(p1_y_reg[9]),
        .I2(p1_y_reg[8]),
        .I3(p1_y_reg[7]),
        .I4(p1_y_reg[6]),
        .I5(\p1_y[9]_i_8_n_0 ),
        .O(p1_y114_out));
  LUT2 #(
    .INIT(4'h9)) 
    \p1_y[9]_i_5 
       (.I0(p1_y_reg[8]),
        .I1(p1_y_reg[9]),
        .O(\p1_y[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \p1_y[9]_i_6 
       (.I0(p1_y_reg[8]),
        .I1(p1_y_reg[7]),
        .O(\p1_y[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \p1_y[9]_i_7 
       (.I0(p1_y_reg[4]),
        .I1(p1_y_reg[3]),
        .I2(p1_y_reg[2]),
        .O(\p1_y[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \p1_y[9]_i_8 
       (.I0(p1_y_reg[2]),
        .I1(p1_y_reg[3]),
        .I2(p1_y_reg[4]),
        .I3(p1_y_reg[5]),
        .O(\p1_y[9]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p1_y_reg[0] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .CLR(rst_IBUF),
        .D(\p1_y[0]_i_1_n_0 ),
        .Q(p1_y_reg[0]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_y_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .D(\p1_y_reg[4]_i_1_n_7 ),
        .PRE(rst_IBUF),
        .Q(p1_y_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_y_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .CLR(rst_IBUF),
        .D(\p1_y_reg[4]_i_1_n_6 ),
        .Q(p1_y_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_y_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .CLR(rst_IBUF),
        .D(\p1_y_reg[4]_i_1_n_5 ),
        .Q(p1_y_reg[3]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_y_reg[4] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .D(\p1_y_reg[4]_i_1_n_4 ),
        .PRE(rst_IBUF),
        .Q(p1_y_reg[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p1_y_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\p1_y_reg[4]_i_1_n_0 ,\NLW_p1_y_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(p1_y_reg[0]),
        .DI({p1_y_reg[3],\p1_y[4]_i_2_n_0 ,p1_y114_out,p1_y_reg[1]}),
        .O({\p1_y_reg[4]_i_1_n_4 ,\p1_y_reg[4]_i_1_n_5 ,\p1_y_reg[4]_i_1_n_6 ,\p1_y_reg[4]_i_1_n_7 }),
        .S({\p1_y[4]_i_3_n_0 ,\p1_y[4]_i_4_n_0 ,\p1_y[4]_i_5_n_0 ,\p1_y[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p1_y_reg[5] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .CLR(rst_IBUF),
        .D(\p1_y_reg[8]_i_1_n_7 ),
        .Q(p1_y_reg[5]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_y_reg[6] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .D(\p1_y_reg[8]_i_1_n_6 ),
        .PRE(rst_IBUF),
        .Q(p1_y_reg[6]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_y_reg[7] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .D(\p1_y_reg[8]_i_1_n_5 ),
        .PRE(rst_IBUF),
        .Q(p1_y_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_y_reg[8] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .CLR(rst_IBUF),
        .D(\p1_y_reg[8]_i_1_n_4 ),
        .Q(p1_y_reg[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p1_y_reg[8]_i_1 
       (.CI(\p1_y_reg[4]_i_1_n_0 ),
        .CO({\p1_y_reg[8]_i_1_n_0 ,\NLW_p1_y_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p1_y_reg[7:4]),
        .O({\p1_y_reg[8]_i_1_n_4 ,\p1_y_reg[8]_i_1_n_5 ,\p1_y_reg[8]_i_1_n_6 ,\p1_y_reg[8]_i_1_n_7 }),
        .S({\p1_y[8]_i_2_n_0 ,\p1_y[8]_i_3_n_0 ,\p1_y[8]_i_4_n_0 ,\p1_y[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p1_y_reg[9] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p1_y),
        .CLR(rst_IBUF),
        .D(\p1_y_reg[9]_i_2_n_7 ),
        .Q(p1_y_reg[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p1_y_reg[9]_i_2 
       (.CI(\p1_y_reg[8]_i_1_n_0 ),
        .CO(\NLW_p1_y_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p1_y_reg[9]_i_2_O_UNCONNECTED [3:1],\p1_y_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\p1_y[9]_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \p2_y[0]_i_1 
       (.I0(p2_y_reg[0]),
        .O(\p2_y[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p2_y[4]_i_2 
       (.I0(p2_y112_out),
        .O(\p2_y[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[4]_i_3 
       (.I0(p2_y_reg[3]),
        .I1(p2_y_reg[4]),
        .O(\p2_y[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_y[4]_i_4 
       (.I0(p2_y112_out),
        .I1(p2_y_reg[3]),
        .O(\p2_y[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p2_y[4]_i_5 
       (.I0(p2_y112_out),
        .I1(p2_y_reg[2]),
        .O(\p2_y[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[4]_i_6 
       (.I0(p2_y_reg[1]),
        .I1(p2_y112_out),
        .O(\p2_y[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[8]_i_2 
       (.I0(p2_y_reg[7]),
        .I1(p2_y_reg[8]),
        .O(\p2_y[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[8]_i_3 
       (.I0(p2_y_reg[6]),
        .I1(p2_y_reg[7]),
        .O(\p2_y[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[8]_i_4 
       (.I0(p2_y_reg[5]),
        .I1(p2_y_reg[6]),
        .O(\p2_y[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[8]_i_5 
       (.I0(p2_y_reg[4]),
        .I1(p2_y_reg[5]),
        .O(\p2_y[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    \p2_y[9]_i_1 
       (.I0(game_tick),
        .I1(\p2_y[9]_i_3_n_0 ),
        .I2(btn_p2_down_IBUF),
        .I3(p2_y_reg[9]),
        .I4(p2_y112_out),
        .O(p2_y));
  LUT6 #(
    .INIT(64'h555F555F555F55DF)) 
    \p2_y[9]_i_3 
       (.I0(\p2_y[9]_i_6_n_0 ),
        .I1(\p2_y[9]_i_7_n_0 ),
        .I2(p2_y_reg[5]),
        .I3(p2_y_reg[6]),
        .I4(p2_y_reg[0]),
        .I5(p2_y_reg[1]),
        .O(\p2_y[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \p2_y[9]_i_4 
       (.I0(btn_p2_up_IBUF),
        .I1(p2_y_reg[9]),
        .I2(p2_y_reg[8]),
        .I3(p2_y_reg[7]),
        .I4(p2_y_reg[6]),
        .I5(\p2_y[9]_i_8_n_0 ),
        .O(p2_y112_out));
  LUT2 #(
    .INIT(4'h9)) 
    \p2_y[9]_i_5 
       (.I0(p2_y_reg[8]),
        .I1(p2_y_reg[9]),
        .O(\p2_y[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \p2_y[9]_i_6 
       (.I0(p2_y_reg[8]),
        .I1(p2_y_reg[7]),
        .O(\p2_y[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \p2_y[9]_i_7 
       (.I0(p2_y_reg[4]),
        .I1(p2_y_reg[3]),
        .I2(p2_y_reg[2]),
        .O(\p2_y[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \p2_y[9]_i_8 
       (.I0(p2_y_reg[2]),
        .I1(p2_y_reg[3]),
        .I2(p2_y_reg[4]),
        .I3(p2_y_reg[5]),
        .O(\p2_y[9]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p2_y_reg[0] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .CLR(rst_IBUF),
        .D(\p2_y[0]_i_1_n_0 ),
        .Q(p2_y_reg[0]));
  FDPE #(
    .INIT(1'b1)) 
    \p2_y_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .D(\p2_y_reg[4]_i_1_n_7 ),
        .PRE(rst_IBUF),
        .Q(p2_y_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_y_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .CLR(rst_IBUF),
        .D(\p2_y_reg[4]_i_1_n_6 ),
        .Q(p2_y_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_y_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .CLR(rst_IBUF),
        .D(\p2_y_reg[4]_i_1_n_5 ),
        .Q(p2_y_reg[3]));
  FDPE #(
    .INIT(1'b1)) 
    \p2_y_reg[4] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .D(\p2_y_reg[4]_i_1_n_4 ),
        .PRE(rst_IBUF),
        .Q(p2_y_reg[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p2_y_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\p2_y_reg[4]_i_1_n_0 ,\NLW_p2_y_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(p2_y_reg[0]),
        .DI({p2_y_reg[3],\p2_y[4]_i_2_n_0 ,p2_y112_out,p2_y_reg[1]}),
        .O({\p2_y_reg[4]_i_1_n_4 ,\p2_y_reg[4]_i_1_n_5 ,\p2_y_reg[4]_i_1_n_6 ,\p2_y_reg[4]_i_1_n_7 }),
        .S({\p2_y[4]_i_3_n_0 ,\p2_y[4]_i_4_n_0 ,\p2_y[4]_i_5_n_0 ,\p2_y[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p2_y_reg[5] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .CLR(rst_IBUF),
        .D(\p2_y_reg[8]_i_1_n_7 ),
        .Q(p2_y_reg[5]));
  FDPE #(
    .INIT(1'b1)) 
    \p2_y_reg[6] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .D(\p2_y_reg[8]_i_1_n_6 ),
        .PRE(rst_IBUF),
        .Q(p2_y_reg[6]));
  FDPE #(
    .INIT(1'b1)) 
    \p2_y_reg[7] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .D(\p2_y_reg[8]_i_1_n_5 ),
        .PRE(rst_IBUF),
        .Q(p2_y_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_y_reg[8] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .CLR(rst_IBUF),
        .D(\p2_y_reg[8]_i_1_n_4 ),
        .Q(p2_y_reg[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p2_y_reg[8]_i_1 
       (.CI(\p2_y_reg[4]_i_1_n_0 ),
        .CO({\p2_y_reg[8]_i_1_n_0 ,\NLW_p2_y_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p2_y_reg[7:4]),
        .O({\p2_y_reg[8]_i_1_n_4 ,\p2_y_reg[8]_i_1_n_5 ,\p2_y_reg[8]_i_1_n_6 ,\p2_y_reg[8]_i_1_n_7 }),
        .S({\p2_y[8]_i_2_n_0 ,\p2_y[8]_i_3_n_0 ,\p2_y[8]_i_4_n_0 ,\p2_y[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p2_y_reg[9] 
       (.C(\clk_div_BUFG[1] ),
        .CE(p2_y),
        .CLR(rst_IBUF),
        .D(\p2_y_reg[9]_i_2_n_7 ),
        .Q(p2_y_reg[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p2_y_reg[9]_i_2 
       (.CI(\p2_y_reg[8]_i_1_n_0 ),
        .CO(\NLW_p2_y_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_p2_y_reg[9]_i_2_O_UNCONNECTED [3:1],\p2_y_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\p2_y[9]_i_5_n_0 }));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count_reg[0]),
        .I1(\v_count[9]_i_3_n_0 ),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count_reg[1]),
        .I1(v_count_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \v_count[2]_i_1 
       (.I0(\v_count[9]_i_3_n_0 ),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_count[3]_i_1 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[3]),
        .I4(\v_count[9]_i_3_n_0 ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[2]),
        .I2(v_count_reg[3]),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[0]),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[4]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[3]),
        .I5(v_count_reg[2]),
        .O(\v_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \v_count[6]_i_1 
       (.I0(v_count_reg[6]),
        .I1(v_count_reg[5]),
        .I2(\v_count[6]_i_2_n_0 ),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[0]),
        .I5(v_count_reg[4]),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[6]_i_2 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[3]),
        .O(\v_count[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \v_count[7]_i_1 
       (.I0(v_count_reg[7]),
        .I1(\v_count[9]_i_4_n_0 ),
        .I2(v_count_reg[5]),
        .I3(v_count_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \v_count[8]_i_1 
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[7]),
        .I2(v_count_reg[6]),
        .I3(v_count_reg[5]),
        .I4(\v_count[9]_i_4_n_0 ),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \v_count[9]_i_1 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[9]),
        .I4(h_count_reg[5]),
        .I5(\h_count[9]_i_2_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4441)) 
    \v_count[9]_i_2 
       (.I0(\v_count[9]_i_3_n_0 ),
        .I1(v_count_reg[9]),
        .I2(\v_count[9]_i_4_n_0 ),
        .I3(vsync_OBUF_inst_i_2_n_0),
        .O(p_0_in__0[9]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \v_count[9]_i_3 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[5]),
        .I2(v_count_reg[9]),
        .I3(v_count_reg[6]),
        .I4(\v_count[9]_i_5_n_0 ),
        .O(\v_count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \v_count[9]_i_4 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[0]),
        .I4(v_count_reg[4]),
        .O(\v_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \v_count[9]_i_5 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[7]),
        .I3(v_count_reg[8]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[3]),
        .O(\v_count[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[0]),
        .Q(v_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[1]),
        .Q(v_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[2]),
        .Q(v_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[3]),
        .Q(v_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(v_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(v_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(v_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[7]),
        .Q(v_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[8]),
        .Q(v_count_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(\clk_div_BUFG[1] ),
        .CE(sel),
        .CLR(rst_IBUF),
        .D(p_0_in__0[9]),
        .Q(v_count_reg[9]));
  OBUF \vga_b_OBUF[0]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_b[0]));
  OBUF \vga_b_OBUF[1]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_b[1]));
  OBUF \vga_b_OBUF[2]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_b[2]));
  OBUF \vga_b_OBUF[3]_inst 
       (.I(vga_b_OBUF[3]),
        .O(vga_b[3]));
  OBUF \vga_g_OBUF[0]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_g[0]));
  OBUF \vga_g_OBUF[1]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_g[1]));
  OBUF \vga_g_OBUF[2]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_g[2]));
  OBUF \vga_g_OBUF[3]_inst 
       (.I(vga_b_OBUF[3]),
        .O(vga_g[3]));
  OBUF \vga_r_OBUF[0]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_r[0]));
  OBUF \vga_r_OBUF[1]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_r[1]));
  OBUF \vga_r_OBUF[2]_inst 
       (.I(vga_b_OBUF[0]),
        .O(vga_r[2]));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \vga_r_OBUF[2]_inst_i_1 
       (.I0(\vga_r_OBUF[3]_inst_i_5_n_0 ),
        .I1(\vga_r_OBUF[3]_inst_i_4_n_0 ),
        .I2(h_count_reg[9]),
        .I3(\vga_r_OBUF[2]_inst_i_2_n_0 ),
        .I4(\vga_r_OBUF[2]_inst_i_3_n_0 ),
        .I5(\vga_r_OBUF[3]_inst_i_2_n_0 ),
        .O(vga_b_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000000054000000)) 
    \vga_r_OBUF[2]_inst_i_2 
       (.I0(\vga_r_OBUF[2]_inst_i_4_n_0 ),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[3]),
        .I3(draw_p2_paddle1),
        .I4(draw_p2_paddle0),
        .I5(h_count_reg[4]),
        .O(\vga_r_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \vga_r_OBUF[2]_inst_i_3 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[3]),
        .I3(h_count_reg[2]),
        .O(\vga_r_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vga_r_OBUF[2]_inst_i_4 
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[6]),
        .O(\vga_r_OBUF[2]_inst_i_4_n_0 ));
  OBUF \vga_r_OBUF[3]_inst 
       (.I(vga_b_OBUF[3]),
        .O(vga_r[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11105555)) 
    \vga_r_OBUF[3]_inst_i_1 
       (.I0(\vga_r_OBUF[3]_inst_i_2_n_0 ),
        .I1(\vga_r_OBUF[3]_inst_i_3_n_0 ),
        .I2(h_count_reg[9]),
        .I3(\vga_r_OBUF[3]_inst_i_4_n_0 ),
        .I4(\vga_r_OBUF[3]_inst_i_5_n_0 ),
        .I5(\vga_r_OBUF[3]_inst_i_6_n_0 ),
        .O(vga_b_OBUF[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_10 
       (.CI(\vga_r_OBUF[3]_inst_i_26_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_10_CO_UNCONNECTED [3:1],draw_p1_paddle1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_27_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_10_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_28_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vga_r_OBUF[3]_inst_i_100 
       (.I0(ball_x_reg[3]),
        .I1(ball_x_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vga_r_OBUF[3]_inst_i_101 
       (.I0(ball_x_reg[6]),
        .I1(ball_x_reg[4]),
        .I2(ball_x_reg[3]),
        .I3(ball_x_reg[5]),
        .I4(ball_x_reg[7]),
        .O(\vga_r_OBUF[3]_inst_i_101_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \vga_r_OBUF[3]_inst_i_102 
       (.I0(v_count_reg[7]),
        .I1(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I2(ball_y_reg[6]),
        .I3(ball_y_reg[7]),
        .I4(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_102_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \vga_r_OBUF[3]_inst_i_103 
       (.I0(v_count_reg[5]),
        .I1(ball_y_reg[3]),
        .I2(ball_y_reg[4]),
        .I3(ball_y_reg[5]),
        .I4(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_103_n_0 ));
  LUT4 #(
    .INIT(16'h044F)) 
    \vga_r_OBUF[3]_inst_i_104 
       (.I0(v_count_reg[2]),
        .I1(ball_y_reg[2]),
        .I2(v_count_reg[3]),
        .I3(ball_y_reg[3]),
        .O(\vga_r_OBUF[3]_inst_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_r_OBUF[3]_inst_i_105 
       (.I0(ball_y_reg[1]),
        .I1(v_count_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_105_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \vga_r_OBUF[3]_inst_i_106 
       (.I0(ball_y_reg[7]),
        .I1(v_count_reg[7]),
        .I2(ball_y_reg[6]),
        .I3(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I4(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_106_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \vga_r_OBUF[3]_inst_i_107 
       (.I0(ball_y_reg[5]),
        .I1(v_count_reg[5]),
        .I2(ball_y_reg[3]),
        .I3(ball_y_reg[4]),
        .I4(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_107_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \vga_r_OBUF[3]_inst_i_108 
       (.I0(ball_y_reg[3]),
        .I1(v_count_reg[3]),
        .I2(ball_y_reg[2]),
        .I3(v_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_108_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \vga_r_OBUF[3]_inst_i_109 
       (.I0(v_count_reg[0]),
        .I1(ball_y_reg[1]),
        .I2(v_count_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_109_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_11 
       (.CI(\vga_r_OBUF[3]_inst_i_29_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_11_CO_UNCONNECTED [3:2],draw_p1_paddle0,\NLW_vga_r_OBUF[3]_inst_i_11_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_30_n_0 ,\vga_r_OBUF[3]_inst_i_31_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_11_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_32_n_0 ,\vga_r_OBUF[3]_inst_i_33_n_0 }));
  LUT3 #(
    .INIT(8'h80)) 
    \vga_r_OBUF[3]_inst_i_110 
       (.I0(ball_y_reg[4]),
        .I1(ball_y_reg[3]),
        .I2(ball_y_reg[5]),
        .O(\vga_r_OBUF[3]_inst_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vga_r_OBUF[3]_inst_i_111 
       (.I0(ball_y_reg[8]),
        .I1(ball_y_reg[6]),
        .I2(ball_y_reg[7]),
        .I3(ball_y_reg[4]),
        .I4(ball_y_reg[3]),
        .I5(ball_y_reg[5]),
        .O(\vga_r_OBUF[3]_inst_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vga_r_OBUF[3]_inst_i_112 
       (.I0(ball_y_reg[9]),
        .I1(ball_y_reg[7]),
        .I2(ball_y_reg[6]),
        .I3(ball_y_reg[8]),
        .I4(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .O(\vga_r_OBUF[3]_inst_i_112_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_113 
       (.I0(v_count_reg[7]),
        .I1(ball_y_reg[7]),
        .I2(v_count_reg[6]),
        .I3(ball_y_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_113_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_114 
       (.I0(v_count_reg[5]),
        .I1(ball_y_reg[5]),
        .I2(v_count_reg[4]),
        .I3(ball_y_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_114_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_115 
       (.I0(v_count_reg[3]),
        .I1(ball_y_reg[3]),
        .I2(v_count_reg[2]),
        .I3(ball_y_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_115_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \vga_r_OBUF[3]_inst_i_116 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .I2(ball_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_116_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_117 
       (.I0(ball_y_reg[7]),
        .I1(v_count_reg[7]),
        .I2(ball_y_reg[6]),
        .I3(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_117_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_118 
       (.I0(ball_y_reg[5]),
        .I1(v_count_reg[5]),
        .I2(ball_y_reg[4]),
        .I3(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_118_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_119 
       (.I0(ball_y_reg[3]),
        .I1(v_count_reg[3]),
        .I2(ball_y_reg[2]),
        .I3(v_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \vga_r_OBUF[3]_inst_i_12 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[3]),
        .O(\vga_r_OBUF[3]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \vga_r_OBUF[3]_inst_i_120 
       (.I0(v_count_reg[0]),
        .I1(ball_y_reg[1]),
        .I2(v_count_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_120_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_13 
       (.CI(\vga_r_OBUF[3]_inst_i_34_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_13_CO_UNCONNECTED [3:1],draw_ball216_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_35_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_36_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_14 
       (.CI(\vga_r_OBUF[3]_inst_i_37_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_14_CO_UNCONNECTED [3:2],draw_ball2,\NLW_vga_r_OBUF[3]_inst_i_14_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_38_n_0 ,\vga_r_OBUF[3]_inst_i_39_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_14_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_40_n_0 ,\vga_r_OBUF[3]_inst_i_41_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_15 
       (.CI(\vga_r_OBUF[3]_inst_i_42_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_15_CO_UNCONNECTED [3:2],draw_ball0,\NLW_vga_r_OBUF[3]_inst_i_15_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_43_n_0 ,\vga_r_OBUF[3]_inst_i_44_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_15_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_45_n_0 ,\vga_r_OBUF[3]_inst_i_46_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_16 
       (.CI(\vga_r_OBUF[3]_inst_i_47_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_16_CO_UNCONNECTED [3:1],draw_ball1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_48_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_16_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_49_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \vga_r_OBUF[3]_inst_i_17 
       (.I0(vsync_OBUF_inst_i_2_n_0),
        .I1(v_count_reg[9]),
        .I2(h_count_reg[9]),
        .I3(v_count_reg[4]),
        .I4(h_count_reg[7]),
        .I5(h_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_17_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_18 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_18_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\vga_r_OBUF[3]_inst_i_50_n_0 ,\vga_r_OBUF[3]_inst_i_51_n_0 ,\vga_r_OBUF[3]_inst_i_52_n_0 ,\vga_r_OBUF[3]_inst_i_53_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_18_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_54_n_0 ,\vga_r_OBUF[3]_inst_i_55_n_0 ,\vga_r_OBUF[3]_inst_i_56_n_0 ,\vga_r_OBUF[3]_inst_i_57_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_19 
       (.I0(v_count_reg[9]),
        .I1(p2_y_reg[9]),
        .I2(v_count_reg[8]),
        .I3(p2_y_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE0FFFF)) 
    \vga_r_OBUF[3]_inst_i_2 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[9]),
        .I3(v_count_reg[9]),
        .I4(vsync_OBUF_inst_i_2_n_0),
        .O(\vga_r_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_20 
       (.I0(p2_y_reg[9]),
        .I1(v_count_reg[9]),
        .I2(p2_y_reg[8]),
        .I3(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_20_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_21 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_21_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\vga_r_OBUF[3]_inst_i_58_n_0 ,\vga_r_OBUF[3]_inst_i_59_n_0 ,\vga_r_OBUF[3]_inst_i_60_n_0 ,\vga_r_OBUF[3]_inst_i_61_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_21_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_62_n_0 ,\vga_r_OBUF[3]_inst_i_63_n_0 ,\vga_r_OBUF[3]_inst_i_64_n_0 ,\vga_r_OBUF[3]_inst_i_65_n_0 }));
  LUT4 #(
    .INIT(16'h4000)) 
    \vga_r_OBUF[3]_inst_i_22 
       (.I0(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .I1(p2_y_reg[8]),
        .I2(p2_y_reg[7]),
        .I3(p2_y_reg[9]),
        .O(\vga_r_OBUF[3]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h55150040F53D5054)) 
    \vga_r_OBUF[3]_inst_i_23 
       (.I0(v_count_reg[9]),
        .I1(p2_y_reg[7]),
        .I2(p2_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .I4(p2_y_reg[9]),
        .I5(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \vga_r_OBUF[3]_inst_i_24 
       (.I0(p2_y_reg[9]),
        .I1(p2_y_reg[7]),
        .I2(p2_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .O(\vga_r_OBUF[3]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9909009000609909)) 
    \vga_r_OBUF[3]_inst_i_25 
       (.I0(p2_y_reg[9]),
        .I1(v_count_reg[9]),
        .I2(p2_y_reg[7]),
        .I3(\vga_r_OBUF[3]_inst_i_66_n_0 ),
        .I4(p2_y_reg[8]),
        .I5(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_26 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_26_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_26_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\vga_r_OBUF[3]_inst_i_67_n_0 ,\vga_r_OBUF[3]_inst_i_68_n_0 ,\vga_r_OBUF[3]_inst_i_69_n_0 ,\vga_r_OBUF[3]_inst_i_70_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_26_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_71_n_0 ,\vga_r_OBUF[3]_inst_i_72_n_0 ,\vga_r_OBUF[3]_inst_i_73_n_0 ,\vga_r_OBUF[3]_inst_i_74_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_27 
       (.I0(v_count_reg[9]),
        .I1(p1_y_reg[9]),
        .I2(v_count_reg[8]),
        .I3(p1_y_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_28 
       (.I0(p1_y_reg[9]),
        .I1(v_count_reg[9]),
        .I2(p1_y_reg[8]),
        .I3(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_28_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_29 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_29_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_29_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\vga_r_OBUF[3]_inst_i_75_n_0 ,\vga_r_OBUF[3]_inst_i_76_n_0 ,\vga_r_OBUF[3]_inst_i_77_n_0 ,\vga_r_OBUF[3]_inst_i_78_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_29_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_79_n_0 ,\vga_r_OBUF[3]_inst_i_80_n_0 ,\vga_r_OBUF[3]_inst_i_81_n_0 ,\vga_r_OBUF[3]_inst_i_82_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFBFFFAAAAAAAA)) 
    \vga_r_OBUF[3]_inst_i_3 
       (.I0(\vga_r_OBUF[2]_inst_i_3_n_0 ),
        .I1(\vga_r_OBUF[3]_inst_i_7_n_0 ),
        .I2(draw_p2_paddle1),
        .I3(draw_p2_paddle0),
        .I4(h_count_reg[4]),
        .I5(h_count_reg[9]),
        .O(\vga_r_OBUF[3]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \vga_r_OBUF[3]_inst_i_30 
       (.I0(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .I1(p1_y_reg[8]),
        .I2(p1_y_reg[7]),
        .I3(p1_y_reg[9]),
        .O(\vga_r_OBUF[3]_inst_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h55150040F53D5054)) 
    \vga_r_OBUF[3]_inst_i_31 
       (.I0(v_count_reg[9]),
        .I1(p1_y_reg[7]),
        .I2(p1_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .I4(p1_y_reg[9]),
        .I5(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \vga_r_OBUF[3]_inst_i_32 
       (.I0(p1_y_reg[9]),
        .I1(p1_y_reg[7]),
        .I2(p1_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .O(\vga_r_OBUF[3]_inst_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9909009000609909)) 
    \vga_r_OBUF[3]_inst_i_33 
       (.I0(p1_y_reg[9]),
        .I1(v_count_reg[9]),
        .I2(p1_y_reg[7]),
        .I3(\vga_r_OBUF[3]_inst_i_83_n_0 ),
        .I4(p1_y_reg[8]),
        .I5(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_33_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_34 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_34_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_34_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\vga_r_OBUF[3]_inst_i_84_n_0 ,\vga_r_OBUF[3]_inst_i_85_n_0 ,\vga_r_OBUF[3]_inst_i_86_n_0 ,\vga_r_OBUF[3]_inst_i_87_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_34_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_88_n_0 ,\vga_r_OBUF[3]_inst_i_89_n_0 ,\vga_r_OBUF[3]_inst_i_90_n_0 ,\vga_r_OBUF[3]_inst_i_91_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_35 
       (.I0(h_count_reg[9]),
        .I1(ball_x_reg[9]),
        .I2(h_count_reg[8]),
        .I3(ball_x_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_36 
       (.I0(ball_x_reg[9]),
        .I1(h_count_reg[9]),
        .I2(ball_x_reg[8]),
        .I3(h_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_36_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_37 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_37_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_37_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\vga_r_OBUF[3]_inst_i_92_n_0 ,\vga_r_OBUF[3]_inst_i_93_n_0 ,\vga_r_OBUF[3]_inst_i_94_n_0 ,\vga_r_OBUF[3]_inst_i_95_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_37_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_96_n_0 ,\vga_r_OBUF[3]_inst_i_97_n_0 ,\vga_r_OBUF[3]_inst_i_98_n_0 ,\vga_r_OBUF[3]_inst_i_99_n_0 }));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \vga_r_OBUF[3]_inst_i_38 
       (.I0(ball_x_reg[6]),
        .I1(\vga_r_OBUF[3]_inst_i_100_n_0 ),
        .I2(ball_x_reg[5]),
        .I3(ball_x_reg[7]),
        .I4(ball_x_reg[8]),
        .I5(ball_x_reg[9]),
        .O(\vga_r_OBUF[3]_inst_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h5104D345)) 
    \vga_r_OBUF[3]_inst_i_39 
       (.I0(h_count_reg[9]),
        .I1(ball_x_reg[8]),
        .I2(\vga_r_OBUF[3]_inst_i_101_n_0 ),
        .I3(ball_x_reg[9]),
        .I4(h_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \vga_r_OBUF[3]_inst_i_4 
       (.I0(h_count_reg[6]),
        .I1(draw_p1_paddle1),
        .I2(h_count_reg[4]),
        .I3(h_count_reg[5]),
        .I4(draw_p1_paddle0),
        .I5(\vga_r_OBUF[3]_inst_i_12_n_0 ),
        .O(\vga_r_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \vga_r_OBUF[3]_inst_i_40 
       (.I0(ball_x_reg[9]),
        .I1(ball_x_reg[8]),
        .I2(ball_x_reg[7]),
        .I3(ball_x_reg[5]),
        .I4(\vga_r_OBUF[3]_inst_i_100_n_0 ),
        .I5(ball_x_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h90090960)) 
    \vga_r_OBUF[3]_inst_i_41 
       (.I0(ball_x_reg[9]),
        .I1(h_count_reg[9]),
        .I2(ball_x_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_101_n_0 ),
        .I4(h_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_41_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_42 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_42_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\vga_r_OBUF[3]_inst_i_102_n_0 ,\vga_r_OBUF[3]_inst_i_103_n_0 ,\vga_r_OBUF[3]_inst_i_104_n_0 ,\vga_r_OBUF[3]_inst_i_105_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_42_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_106_n_0 ,\vga_r_OBUF[3]_inst_i_107_n_0 ,\vga_r_OBUF[3]_inst_i_108_n_0 ,\vga_r_OBUF[3]_inst_i_109_n_0 }));
  LUT5 #(
    .INIT(32'h80000000)) 
    \vga_r_OBUF[3]_inst_i_43 
       (.I0(ball_y_reg[7]),
        .I1(ball_y_reg[6]),
        .I2(ball_y_reg[8]),
        .I3(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I4(ball_y_reg[9]),
        .O(\vga_r_OBUF[3]_inst_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \vga_r_OBUF[3]_inst_i_44 
       (.I0(v_count_reg[8]),
        .I1(\vga_r_OBUF[3]_inst_i_111_n_0 ),
        .I2(v_count_reg[9]),
        .I3(\vga_r_OBUF[3]_inst_i_112_n_0 ),
        .O(\vga_r_OBUF[3]_inst_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vga_r_OBUF[3]_inst_i_45 
       (.I0(ball_y_reg[9]),
        .I1(\vga_r_OBUF[3]_inst_i_110_n_0 ),
        .I2(ball_y_reg[8]),
        .I3(ball_y_reg[6]),
        .I4(ball_y_reg[7]),
        .O(\vga_r_OBUF[3]_inst_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_46 
       (.I0(\vga_r_OBUF[3]_inst_i_112_n_0 ),
        .I1(v_count_reg[9]),
        .I2(\vga_r_OBUF[3]_inst_i_111_n_0 ),
        .I3(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_46_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_47 
       (.CI(1'b0),
        .CO({\vga_r_OBUF[3]_inst_i_47_n_0 ,\NLW_vga_r_OBUF[3]_inst_i_47_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\vga_r_OBUF[3]_inst_i_113_n_0 ,\vga_r_OBUF[3]_inst_i_114_n_0 ,\vga_r_OBUF[3]_inst_i_115_n_0 ,\vga_r_OBUF[3]_inst_i_116_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_47_O_UNCONNECTED [3:0]),
        .S({\vga_r_OBUF[3]_inst_i_117_n_0 ,\vga_r_OBUF[3]_inst_i_118_n_0 ,\vga_r_OBUF[3]_inst_i_119_n_0 ,\vga_r_OBUF[3]_inst_i_120_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_48 
       (.I0(v_count_reg[9]),
        .I1(ball_y_reg[9]),
        .I2(v_count_reg[8]),
        .I3(ball_y_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_49 
       (.I0(ball_y_reg[9]),
        .I1(v_count_reg[9]),
        .I2(ball_y_reg[8]),
        .I3(v_count_reg[8]),
        .O(\vga_r_OBUF[3]_inst_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \vga_r_OBUF[3]_inst_i_5 
       (.I0(draw_ball216_in),
        .I1(draw_ball2),
        .I2(draw_ball0),
        .I3(draw_ball1),
        .O(\vga_r_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_50 
       (.I0(v_count_reg[7]),
        .I1(p2_y_reg[7]),
        .I2(v_count_reg[6]),
        .I3(p2_y_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_51 
       (.I0(v_count_reg[5]),
        .I1(p2_y_reg[5]),
        .I2(v_count_reg[4]),
        .I3(p2_y_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \vga_r_OBUF[3]_inst_i_52 
       (.I0(p2_y_reg[3]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[2]),
        .I3(p2_y_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \vga_r_OBUF[3]_inst_i_53 
       (.I0(v_count_reg[0]),
        .I1(p2_y_reg[0]),
        .I2(p2_y_reg[1]),
        .I3(v_count_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_54 
       (.I0(p2_y_reg[7]),
        .I1(v_count_reg[7]),
        .I2(p2_y_reg[6]),
        .I3(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_55 
       (.I0(p2_y_reg[5]),
        .I1(v_count_reg[5]),
        .I2(p2_y_reg[4]),
        .I3(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_56 
       (.I0(p2_y_reg[3]),
        .I1(v_count_reg[3]),
        .I2(p2_y_reg[2]),
        .I3(v_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_57 
       (.I0(p2_y_reg[0]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(p2_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h5104D345)) 
    \vga_r_OBUF[3]_inst_i_58 
       (.I0(v_count_reg[7]),
        .I1(p2_y_reg[6]),
        .I2(\p2_y[9]_i_8_n_0 ),
        .I3(p2_y_reg[7]),
        .I4(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    \vga_r_OBUF[3]_inst_i_59 
       (.I0(v_count_reg[5]),
        .I1(p2_y_reg[4]),
        .I2(p2_y_reg[3]),
        .I3(p2_y_reg[2]),
        .I4(p2_y_reg[5]),
        .I5(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00F4000000F4)) 
    \vga_r_OBUF[3]_inst_i_6 
       (.I0(\h_count[9]_i_2_n_0 ),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[7]),
        .I3(\vga_r_OBUF[3]_inst_i_17_n_0 ),
        .I4(h_count_reg[6]),
        .I5(\frame_count[3]_i_3_n_0 ),
        .O(\vga_r_OBUF[3]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4147)) 
    \vga_r_OBUF[3]_inst_i_60 
       (.I0(v_count_reg[3]),
        .I1(p2_y_reg[3]),
        .I2(p2_y_reg[2]),
        .I3(v_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \vga_r_OBUF[3]_inst_i_61 
       (.I0(p2_y_reg[0]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(p2_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h90090960)) 
    \vga_r_OBUF[3]_inst_i_62 
       (.I0(p2_y_reg[7]),
        .I1(v_count_reg[7]),
        .I2(p2_y_reg[6]),
        .I3(\p2_y[9]_i_8_n_0 ),
        .I4(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    \vga_r_OBUF[3]_inst_i_63 
       (.I0(p2_y_reg[5]),
        .I1(v_count_reg[5]),
        .I2(p2_y_reg[4]),
        .I3(p2_y_reg[3]),
        .I4(p2_y_reg[2]),
        .I5(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \vga_r_OBUF[3]_inst_i_64 
       (.I0(v_count_reg[2]),
        .I1(p2_y_reg[2]),
        .I2(p2_y_reg[3]),
        .I3(v_count_reg[3]),
        .O(\vga_r_OBUF[3]_inst_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_65 
       (.I0(p2_y_reg[0]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(p2_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \vga_r_OBUF[3]_inst_i_66 
       (.I0(p2_y_reg[5]),
        .I1(p2_y_reg[4]),
        .I2(p2_y_reg[3]),
        .I3(p2_y_reg[2]),
        .I4(p2_y_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_67 
       (.I0(v_count_reg[7]),
        .I1(p1_y_reg[7]),
        .I2(v_count_reg[6]),
        .I3(p1_y_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_68 
       (.I0(v_count_reg[5]),
        .I1(p1_y_reg[5]),
        .I2(v_count_reg[4]),
        .I3(p1_y_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \vga_r_OBUF[3]_inst_i_69 
       (.I0(p1_y_reg[3]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[2]),
        .I3(p1_y_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \vga_r_OBUF[3]_inst_i_7 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[5]),
        .O(\vga_r_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \vga_r_OBUF[3]_inst_i_70 
       (.I0(v_count_reg[0]),
        .I1(p1_y_reg[0]),
        .I2(p1_y_reg[1]),
        .I3(v_count_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_71 
       (.I0(p1_y_reg[7]),
        .I1(v_count_reg[7]),
        .I2(p1_y_reg[6]),
        .I3(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_72 
       (.I0(p1_y_reg[5]),
        .I1(v_count_reg[5]),
        .I2(p1_y_reg[4]),
        .I3(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_73 
       (.I0(p1_y_reg[3]),
        .I1(v_count_reg[3]),
        .I2(p1_y_reg[2]),
        .I3(v_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_74 
       (.I0(p1_y_reg[0]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(p1_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h5104D345)) 
    \vga_r_OBUF[3]_inst_i_75 
       (.I0(v_count_reg[7]),
        .I1(p1_y_reg[6]),
        .I2(\p1_y[9]_i_8_n_0 ),
        .I3(p1_y_reg[7]),
        .I4(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    \vga_r_OBUF[3]_inst_i_76 
       (.I0(v_count_reg[5]),
        .I1(p1_y_reg[4]),
        .I2(p1_y_reg[3]),
        .I3(p1_y_reg[2]),
        .I4(p1_y_reg[5]),
        .I5(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h4147)) 
    \vga_r_OBUF[3]_inst_i_77 
       (.I0(v_count_reg[3]),
        .I1(p1_y_reg[3]),
        .I2(p1_y_reg[2]),
        .I3(v_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \vga_r_OBUF[3]_inst_i_78 
       (.I0(p1_y_reg[0]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(p1_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h90090960)) 
    \vga_r_OBUF[3]_inst_i_79 
       (.I0(p1_y_reg[7]),
        .I1(v_count_reg[7]),
        .I2(p1_y_reg[6]),
        .I3(\p1_y[9]_i_8_n_0 ),
        .I4(v_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_79_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_8 
       (.CI(\vga_r_OBUF[3]_inst_i_18_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_8_CO_UNCONNECTED [3:1],draw_p2_paddle1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_19_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\vga_r_OBUF[3]_inst_i_20_n_0 }));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    \vga_r_OBUF[3]_inst_i_80 
       (.I0(p1_y_reg[5]),
        .I1(v_count_reg[5]),
        .I2(p1_y_reg[4]),
        .I3(p1_y_reg[3]),
        .I4(p1_y_reg[2]),
        .I5(v_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \vga_r_OBUF[3]_inst_i_81 
       (.I0(v_count_reg[2]),
        .I1(p1_y_reg[2]),
        .I2(p1_y_reg[3]),
        .I3(v_count_reg[3]),
        .O(\vga_r_OBUF[3]_inst_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_82 
       (.I0(p1_y_reg[0]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(p1_y_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \vga_r_OBUF[3]_inst_i_83 
       (.I0(p1_y_reg[5]),
        .I1(p1_y_reg[4]),
        .I2(p1_y_reg[3]),
        .I3(p1_y_reg[2]),
        .I4(p1_y_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_84 
       (.I0(h_count_reg[7]),
        .I1(ball_x_reg[7]),
        .I2(h_count_reg[6]),
        .I3(ball_x_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_85 
       (.I0(h_count_reg[5]),
        .I1(ball_x_reg[5]),
        .I2(h_count_reg[4]),
        .I3(ball_x_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \vga_r_OBUF[3]_inst_i_86 
       (.I0(h_count_reg[3]),
        .I1(ball_x_reg[3]),
        .I2(h_count_reg[2]),
        .I3(ball_x_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_86_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \vga_r_OBUF[3]_inst_i_87 
       (.I0(h_count_reg[1]),
        .I1(ball_x_reg[1]),
        .I2(h_count_reg[0]),
        .O(\vga_r_OBUF[3]_inst_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_88 
       (.I0(ball_x_reg[7]),
        .I1(h_count_reg[7]),
        .I2(ball_x_reg[6]),
        .I3(h_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_89 
       (.I0(ball_x_reg[5]),
        .I1(h_count_reg[5]),
        .I2(ball_x_reg[4]),
        .I3(h_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vga_r_OBUF[3]_inst_i_9 
       (.CI(\vga_r_OBUF[3]_inst_i_21_n_0 ),
        .CO({\NLW_vga_r_OBUF[3]_inst_i_9_CO_UNCONNECTED [3:2],draw_p2_paddle0,\NLW_vga_r_OBUF[3]_inst_i_9_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_22_n_0 ,\vga_r_OBUF[3]_inst_i_23_n_0 }),
        .O(\NLW_vga_r_OBUF[3]_inst_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\vga_r_OBUF[3]_inst_i_24_n_0 ,\vga_r_OBUF[3]_inst_i_25_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \vga_r_OBUF[3]_inst_i_90 
       (.I0(ball_x_reg[3]),
        .I1(h_count_reg[3]),
        .I2(ball_x_reg[2]),
        .I3(h_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \vga_r_OBUF[3]_inst_i_91 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(ball_x_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h51550400F35D5504)) 
    \vga_r_OBUF[3]_inst_i_92 
       (.I0(h_count_reg[7]),
        .I1(ball_x_reg[5]),
        .I2(\vga_r_OBUF[3]_inst_i_100_n_0 ),
        .I3(ball_x_reg[6]),
        .I4(ball_x_reg[7]),
        .I5(h_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \vga_r_OBUF[3]_inst_i_93 
       (.I0(h_count_reg[5]),
        .I1(ball_x_reg[3]),
        .I2(ball_x_reg[4]),
        .I3(ball_x_reg[5]),
        .I4(h_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h044F)) 
    \vga_r_OBUF[3]_inst_i_94 
       (.I0(h_count_reg[2]),
        .I1(ball_x_reg[2]),
        .I2(h_count_reg[3]),
        .I3(ball_x_reg[3]),
        .O(\vga_r_OBUF[3]_inst_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_r_OBUF[3]_inst_i_95 
       (.I0(ball_x_reg[1]),
        .I1(h_count_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h9090099009096009)) 
    \vga_r_OBUF[3]_inst_i_96 
       (.I0(ball_x_reg[7]),
        .I1(h_count_reg[7]),
        .I2(ball_x_reg[6]),
        .I3(ball_x_reg[5]),
        .I4(\vga_r_OBUF[3]_inst_i_100_n_0 ),
        .I5(h_count_reg[6]),
        .O(\vga_r_OBUF[3]_inst_i_96_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \vga_r_OBUF[3]_inst_i_97 
       (.I0(ball_x_reg[5]),
        .I1(h_count_reg[5]),
        .I2(ball_x_reg[3]),
        .I3(ball_x_reg[4]),
        .I4(h_count_reg[4]),
        .O(\vga_r_OBUF[3]_inst_i_97_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \vga_r_OBUF[3]_inst_i_98 
       (.I0(ball_x_reg[3]),
        .I1(h_count_reg[3]),
        .I2(ball_x_reg[2]),
        .I3(h_count_reg[2]),
        .O(\vga_r_OBUF[3]_inst_i_98_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \vga_r_OBUF[3]_inst_i_99 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(ball_x_reg[1]),
        .O(\vga_r_OBUF[3]_inst_i_99_n_0 ));
  OBUF vsync_OBUF_inst
       (.I(vsync_OBUF),
        .O(vsync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    vsync_OBUF_inst_i_1
       (.I0(vsync_OBUF_inst_i_2_n_0),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[3]),
        .I3(v_count_reg[4]),
        .I4(v_count_reg[9]),
        .I5(v_count_reg[2]),
        .O(vsync_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vsync_OBUF_inst_i_2
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[7]),
        .I2(v_count_reg[6]),
        .I3(v_count_reg[5]),
        .O(vsync_OBUF_inst_i_2_n_0));
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
