// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Sat Nov 14 18:08:04 2026
// Host        : honey18-11 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -mode funcsim -force /home/rguktvalley/Desktop/man/mac_oi_funcsim.v
// Design      : mac_oi
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ACC_W = "22" *) (* ECO_CHECKSUM = "6b342f3c" *) (* W = "8" *) 
(* NotValidForBitStream *)
module mac_oi
   (clk,
    rst_n,
    valid_in,
    clear,
    a,
    b,
    valid_out,
    acc);
  input clk;
  input rst_n;
  input valid_in;
  input clear;
  input [7:0]a;
  input [7:0]b;
  output valid_out;
  output [21:0]acc;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [7:0]a_iso;
  wire [7:0]a_r;
  wire [21:0]acc;
  wire [15:0]acc1;
  wire \acc[0]_i_10_n_0 ;
  wire \acc[0]_i_13_n_0 ;
  wire \acc[0]_i_15_n_0 ;
  wire \acc[0]_i_16_n_0 ;
  wire \acc[0]_i_17_n_0 ;
  wire \acc[0]_i_18_n_0 ;
  wire \acc[0]_i_19_n_0 ;
  wire \acc[0]_i_1_n_0 ;
  wire \acc[0]_i_20_n_0 ;
  wire \acc[0]_i_21_n_0 ;
  wire \acc[0]_i_22_n_0 ;
  wire \acc[0]_i_23_n_0 ;
  wire \acc[0]_i_24_n_0 ;
  wire \acc[0]_i_25_n_0 ;
  wire \acc[0]_i_27_n_0 ;
  wire \acc[0]_i_28_n_0 ;
  wire \acc[0]_i_29_n_0 ;
  wire \acc[0]_i_30_n_0 ;
  wire \acc[0]_i_31_n_0 ;
  wire \acc[0]_i_32_n_0 ;
  wire \acc[0]_i_33_n_0 ;
  wire \acc[0]_i_34_n_0 ;
  wire \acc[0]_i_35_n_0 ;
  wire \acc[0]_i_36_n_0 ;
  wire \acc[0]_i_37_n_0 ;
  wire \acc[0]_i_38_n_0 ;
  wire \acc[0]_i_39_n_0 ;
  wire \acc[0]_i_3_n_0 ;
  wire \acc[0]_i_40_n_0 ;
  wire \acc[0]_i_41_n_0 ;
  wire \acc[0]_i_42_n_0 ;
  wire \acc[0]_i_43_n_0 ;
  wire \acc[0]_i_44_n_0 ;
  wire \acc[0]_i_45_n_0 ;
  wire \acc[0]_i_46_n_0 ;
  wire \acc[0]_i_47_n_0 ;
  wire \acc[0]_i_4_n_0 ;
  wire \acc[0]_i_5_n_0 ;
  wire \acc[0]_i_6_n_0 ;
  wire \acc[0]_i_7_n_0 ;
  wire \acc[0]_i_8_n_0 ;
  wire \acc[0]_i_9_n_0 ;
  wire \acc[12]_i_11_n_0 ;
  wire \acc[12]_i_2_n_0 ;
  wire \acc[12]_i_3_n_0 ;
  wire \acc[12]_i_4_n_0 ;
  wire \acc[12]_i_5_n_0 ;
  wire \acc[12]_i_6_n_0 ;
  wire \acc[12]_i_7_n_0 ;
  wire \acc[12]_i_8_n_0 ;
  wire \acc[12]_i_9_n_0 ;
  wire \acc[16]_i_2_n_0 ;
  wire \acc[16]_i_3_n_0 ;
  wire \acc[16]_i_4_n_0 ;
  wire \acc[16]_i_5_n_0 ;
  wire \acc[20]_i_2_n_0 ;
  wire \acc[20]_i_3_n_0 ;
  wire \acc[4]_i_11_n_0 ;
  wire \acc[4]_i_12_n_0 ;
  wire \acc[4]_i_13_n_0 ;
  wire \acc[4]_i_14_n_0 ;
  wire \acc[4]_i_15_n_0 ;
  wire \acc[4]_i_16_n_0 ;
  wire \acc[4]_i_17_n_0 ;
  wire \acc[4]_i_18_n_0 ;
  wire \acc[4]_i_19_n_0 ;
  wire \acc[4]_i_20_n_0 ;
  wire \acc[4]_i_21_n_0 ;
  wire \acc[4]_i_23_n_0 ;
  wire \acc[4]_i_24_n_0 ;
  wire \acc[4]_i_25_n_0 ;
  wire \acc[4]_i_26_n_0 ;
  wire \acc[4]_i_27_n_0 ;
  wire \acc[4]_i_28_n_0 ;
  wire \acc[4]_i_29_n_0 ;
  wire \acc[4]_i_2_n_0 ;
  wire \acc[4]_i_30_n_0 ;
  wire \acc[4]_i_32_n_0 ;
  wire \acc[4]_i_33_n_0 ;
  wire \acc[4]_i_34_n_0 ;
  wire \acc[4]_i_35_n_0 ;
  wire \acc[4]_i_36_n_0 ;
  wire \acc[4]_i_37_n_0 ;
  wire \acc[4]_i_38_n_0 ;
  wire \acc[4]_i_39_n_0 ;
  wire \acc[4]_i_3_n_0 ;
  wire \acc[4]_i_40_n_0 ;
  wire \acc[4]_i_41_n_0 ;
  wire \acc[4]_i_42_n_0 ;
  wire \acc[4]_i_43_n_0 ;
  wire \acc[4]_i_44_n_0 ;
  wire \acc[4]_i_45_n_0 ;
  wire \acc[4]_i_46_n_0 ;
  wire \acc[4]_i_47_n_0 ;
  wire \acc[4]_i_4_n_0 ;
  wire \acc[4]_i_5_n_0 ;
  wire \acc[4]_i_6_n_0 ;
  wire \acc[4]_i_7_n_0 ;
  wire \acc[4]_i_8_n_0 ;
  wire \acc[4]_i_9_n_0 ;
  wire \acc[8]_i_11_n_0 ;
  wire \acc[8]_i_12_n_0 ;
  wire \acc[8]_i_13_n_0 ;
  wire \acc[8]_i_14_n_0 ;
  wire \acc[8]_i_15_n_0 ;
  wire \acc[8]_i_16_n_0 ;
  wire \acc[8]_i_17_n_0 ;
  wire \acc[8]_i_18_n_0 ;
  wire \acc[8]_i_19_n_0 ;
  wire \acc[8]_i_21_n_0 ;
  wire \acc[8]_i_22_n_0 ;
  wire \acc[8]_i_23_n_0 ;
  wire \acc[8]_i_24_n_0 ;
  wire \acc[8]_i_25_n_0 ;
  wire \acc[8]_i_26_n_0 ;
  wire \acc[8]_i_27_n_0 ;
  wire \acc[8]_i_28_n_0 ;
  wire \acc[8]_i_29_n_0 ;
  wire \acc[8]_i_2_n_0 ;
  wire \acc[8]_i_30_n_0 ;
  wire \acc[8]_i_31_n_0 ;
  wire \acc[8]_i_3_n_0 ;
  wire \acc[8]_i_4_n_0 ;
  wire \acc[8]_i_5_n_0 ;
  wire \acc[8]_i_6_n_0 ;
  wire \acc[8]_i_7_n_0 ;
  wire \acc[8]_i_8_n_0 ;
  wire \acc[8]_i_9_n_0 ;
  wire [21:0]acc_OBUF;
  wire \acc_reg[0]_i_11_n_0 ;
  wire \acc_reg[0]_i_12_n_0 ;
  wire \acc_reg[0]_i_12_n_4 ;
  wire \acc_reg[0]_i_14_n_0 ;
  wire \acc_reg[0]_i_14_n_4 ;
  wire \acc_reg[0]_i_14_n_5 ;
  wire \acc_reg[0]_i_14_n_6 ;
  wire \acc_reg[0]_i_14_n_7 ;
  wire \acc_reg[0]_i_26_n_0 ;
  wire \acc_reg[0]_i_26_n_4 ;
  wire \acc_reg[0]_i_26_n_5 ;
  wire \acc_reg[0]_i_26_n_6 ;
  wire \acc_reg[0]_i_26_n_7 ;
  wire \acc_reg[0]_i_2_n_0 ;
  wire \acc_reg[0]_i_2_n_4 ;
  wire \acc_reg[0]_i_2_n_5 ;
  wire \acc_reg[0]_i_2_n_6 ;
  wire \acc_reg[0]_i_2_n_7 ;
  wire \acc_reg[12]_i_1_n_0 ;
  wire \acc_reg[12]_i_1_n_4 ;
  wire \acc_reg[12]_i_1_n_5 ;
  wire \acc_reg[12]_i_1_n_6 ;
  wire \acc_reg[12]_i_1_n_7 ;
  wire \acc_reg[16]_i_1_n_0 ;
  wire \acc_reg[16]_i_1_n_4 ;
  wire \acc_reg[16]_i_1_n_5 ;
  wire \acc_reg[16]_i_1_n_6 ;
  wire \acc_reg[16]_i_1_n_7 ;
  wire \acc_reg[20]_i_1_n_6 ;
  wire \acc_reg[20]_i_1_n_7 ;
  wire \acc_reg[4]_i_10_n_0 ;
  wire \acc_reg[4]_i_1_n_0 ;
  wire \acc_reg[4]_i_1_n_4 ;
  wire \acc_reg[4]_i_1_n_5 ;
  wire \acc_reg[4]_i_1_n_6 ;
  wire \acc_reg[4]_i_1_n_7 ;
  wire \acc_reg[4]_i_22_n_0 ;
  wire \acc_reg[4]_i_22_n_4 ;
  wire \acc_reg[4]_i_22_n_5 ;
  wire \acc_reg[4]_i_22_n_6 ;
  wire \acc_reg[4]_i_22_n_7 ;
  wire \acc_reg[4]_i_31_n_1 ;
  wire \acc_reg[4]_i_31_n_6 ;
  wire \acc_reg[4]_i_31_n_7 ;
  wire \acc_reg[8]_i_10_n_0 ;
  wire \acc_reg[8]_i_1_n_0 ;
  wire \acc_reg[8]_i_1_n_4 ;
  wire \acc_reg[8]_i_1_n_5 ;
  wire \acc_reg[8]_i_1_n_6 ;
  wire \acc_reg[8]_i_1_n_7 ;
  wire \acc_reg[8]_i_20_n_1 ;
  wire \acc_reg[8]_i_20_n_6 ;
  wire \acc_reg[8]_i_20_n_7 ;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire [7:0]b_iso;
  wire [7:0]b_r;
  wire clear;
  wire clear_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clr_r;
  wire rst_n;
  wire rst_n_IBUF;
  wire v_r;
  wire v_r_i_1_n_0;
  wire valid_in;
  wire valid_in_IBUF;
  wire valid_out;
  wire valid_out_OBUF;
  wire [2:0]\NLW_acc_reg[0]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[0]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[0]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[0]_i_26_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[12]_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_acc_reg[12]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[20]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[4]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[4]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[4]_i_31_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[4]_i_31_O_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[8]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[8]_i_20_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[8]_i_20_O_UNCONNECTED ;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[0]_i_1 
       (.I0(a_IBUF[0]),
        .I1(valid_in_IBUF),
        .O(a_iso[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[1]_i_1 
       (.I0(a_IBUF[1]),
        .I1(valid_in_IBUF),
        .O(a_iso[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[2]_i_1 
       (.I0(a_IBUF[2]),
        .I1(valid_in_IBUF),
        .O(a_iso[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[3]_i_1 
       (.I0(a_IBUF[3]),
        .I1(valid_in_IBUF),
        .O(a_iso[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[4]_i_1 
       (.I0(a_IBUF[4]),
        .I1(valid_in_IBUF),
        .O(a_iso[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[5]_i_1 
       (.I0(a_IBUF[5]),
        .I1(valid_in_IBUF),
        .O(a_iso[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[6]_i_1 
       (.I0(a_IBUF[6]),
        .I1(valid_in_IBUF),
        .O(a_iso[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_r[7]_i_1 
       (.I0(a_IBUF[7]),
        .I1(valid_in_IBUF),
        .O(a_iso[7]));
  FDCE \a_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[0]),
        .Q(a_r[0]));
  FDCE \a_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[1]),
        .Q(a_r[1]));
  FDCE \a_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[2]),
        .Q(a_r[2]));
  FDCE \a_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[3]),
        .Q(a_r[3]));
  FDCE \a_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[4]),
        .Q(a_r[4]));
  FDCE \a_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[5]),
        .Q(a_r[5]));
  FDCE \a_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[6]),
        .Q(a_r[6]));
  FDCE \a_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(a_iso[7]),
        .Q(a_r[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \acc[0]_i_1 
       (.I0(v_r),
        .I1(clr_r),
        .O(\acc[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[0]_i_10 
       (.I0(acc1[0]),
        .I1(clr_r),
        .I2(acc_OBUF[0]),
        .O(\acc[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[0]_i_13 
       (.I0(\acc_reg[0]_i_14_n_5 ),
        .I1(\acc_reg[0]_i_26_n_4 ),
        .O(\acc[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \acc[0]_i_15 
       (.I0(\acc_reg[0]_i_26_n_4 ),
        .I1(\acc_reg[0]_i_14_n_5 ),
        .I2(b_r[6]),
        .I3(a_r[0]),
        .O(\acc[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[0]_i_16 
       (.I0(\acc_reg[0]_i_14_n_6 ),
        .I1(\acc_reg[0]_i_26_n_5 ),
        .O(\acc[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[0]_i_17 
       (.I0(\acc_reg[0]_i_14_n_7 ),
        .I1(\acc_reg[0]_i_26_n_6 ),
        .O(\acc[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[0]_i_18 
       (.I0(\acc_reg[0]_i_12_n_4 ),
        .I1(\acc_reg[0]_i_26_n_7 ),
        .O(\acc[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[0]_i_19 
       (.I0(b_r[1]),
        .I1(a_r[2]),
        .I2(b_r[2]),
        .I3(a_r[1]),
        .I4(a_r[3]),
        .I5(b_r[0]),
        .O(\acc[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[0]_i_20 
       (.I0(b_r[1]),
        .I1(a_r[1]),
        .I2(b_r[2]),
        .I3(a_r[0]),
        .O(\acc[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[0]_i_21 
       (.I0(b_r[0]),
        .I1(a_r[1]),
        .O(\acc[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \acc[0]_i_22 
       (.I0(a_r[2]),
        .I1(\acc[0]_i_35_n_0 ),
        .I2(a_r[1]),
        .I3(b_r[1]),
        .I4(a_r[0]),
        .I5(b_r[2]),
        .O(\acc[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[0]_i_23 
       (.I0(a_r[0]),
        .I1(b_r[2]),
        .I2(a_r[1]),
        .I3(b_r[1]),
        .I4(b_r[0]),
        .I5(a_r[2]),
        .O(\acc[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[0]_i_24 
       (.I0(b_r[0]),
        .I1(a_r[1]),
        .I2(b_r[1]),
        .I3(a_r[0]),
        .O(\acc[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[0]_i_25 
       (.I0(a_r[0]),
        .I1(b_r[0]),
        .O(\acc[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[0]_i_27 
       (.I0(b_r[2]),
        .I1(a_r[4]),
        .I2(b_r[1]),
        .I3(a_r[5]),
        .I4(b_r[0]),
        .I5(a_r[6]),
        .O(\acc[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[0]_i_28 
       (.I0(b_r[2]),
        .I1(a_r[3]),
        .I2(b_r[1]),
        .I3(a_r[4]),
        .I4(b_r[0]),
        .I5(a_r[5]),
        .O(\acc[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[0]_i_29 
       (.I0(b_r[2]),
        .I1(a_r[2]),
        .I2(b_r[1]),
        .I3(a_r[3]),
        .I4(b_r[0]),
        .I5(a_r[4]),
        .O(\acc[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[0]_i_3 
       (.I0(acc1[3]),
        .I1(clr_r),
        .O(\acc[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[0]_i_30 
       (.I0(b_r[2]),
        .I1(a_r[1]),
        .I2(b_r[1]),
        .I3(a_r[2]),
        .I4(b_r[0]),
        .I5(a_r[3]),
        .O(\acc[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[0]_i_31 
       (.I0(\acc[0]_i_27_n_0 ),
        .I1(b_r[1]),
        .I2(a_r[6]),
        .I3(\acc[0]_i_43_n_0 ),
        .I4(a_r[7]),
        .I5(b_r[0]),
        .O(\acc[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[0]_i_32 
       (.I0(\acc[0]_i_28_n_0 ),
        .I1(b_r[1]),
        .I2(a_r[5]),
        .I3(\acc[0]_i_44_n_0 ),
        .I4(a_r[6]),
        .I5(b_r[0]),
        .O(\acc[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[0]_i_33 
       (.I0(\acc[0]_i_29_n_0 ),
        .I1(b_r[1]),
        .I2(a_r[4]),
        .I3(\acc[0]_i_45_n_0 ),
        .I4(a_r[5]),
        .I5(b_r[0]),
        .O(\acc[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[0]_i_34 
       (.I0(\acc[0]_i_30_n_0 ),
        .I1(b_r[1]),
        .I2(a_r[3]),
        .I3(\acc[0]_i_46_n_0 ),
        .I4(a_r[4]),
        .I5(b_r[0]),
        .O(\acc[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[0]_i_35 
       (.I0(a_r[3]),
        .I1(b_r[0]),
        .O(\acc[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[0]_i_36 
       (.I0(b_r[4]),
        .I1(a_r[2]),
        .I2(b_r[5]),
        .I3(a_r[1]),
        .I4(a_r[3]),
        .I5(b_r[3]),
        .O(\acc[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[0]_i_37 
       (.I0(b_r[4]),
        .I1(a_r[1]),
        .I2(b_r[5]),
        .I3(a_r[0]),
        .O(\acc[0]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[0]_i_38 
       (.I0(b_r[3]),
        .I1(a_r[1]),
        .O(\acc[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \acc[0]_i_39 
       (.I0(a_r[2]),
        .I1(\acc[0]_i_47_n_0 ),
        .I2(a_r[1]),
        .I3(b_r[4]),
        .I4(a_r[0]),
        .I5(b_r[5]),
        .O(\acc[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[0]_i_4 
       (.I0(acc1[2]),
        .I1(clr_r),
        .O(\acc[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \acc[0]_i_40 
       (.I0(a_r[0]),
        .I1(b_r[5]),
        .I2(a_r[1]),
        .I3(b_r[4]),
        .I4(b_r[3]),
        .I5(a_r[2]),
        .O(\acc[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \acc[0]_i_41 
       (.I0(b_r[3]),
        .I1(a_r[1]),
        .I2(b_r[4]),
        .I3(a_r[0]),
        .O(\acc[0]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc[0]_i_42 
       (.I0(a_r[0]),
        .I1(b_r[3]),
        .O(\acc[0]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[0]_i_43 
       (.I0(a_r[5]),
        .I1(b_r[2]),
        .O(\acc[0]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[0]_i_44 
       (.I0(a_r[4]),
        .I1(b_r[2]),
        .O(\acc[0]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[0]_i_45 
       (.I0(a_r[3]),
        .I1(b_r[2]),
        .O(\acc[0]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[0]_i_46 
       (.I0(a_r[2]),
        .I1(b_r[2]),
        .O(\acc[0]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[0]_i_47 
       (.I0(a_r[3]),
        .I1(b_r[3]),
        .O(\acc[0]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[0]_i_5 
       (.I0(acc1[1]),
        .I1(clr_r),
        .O(\acc[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[0]_i_6 
       (.I0(acc1[0]),
        .I1(clr_r),
        .O(\acc[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[0]_i_7 
       (.I0(acc1[3]),
        .I1(clr_r),
        .I2(acc_OBUF[3]),
        .O(\acc[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[0]_i_8 
       (.I0(acc1[2]),
        .I1(clr_r),
        .I2(acc_OBUF[2]),
        .O(\acc[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[0]_i_9 
       (.I0(acc1[1]),
        .I1(clr_r),
        .I2(acc_OBUF[1]),
        .O(\acc[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \acc[12]_i_11 
       (.I0(a_r[7]),
        .I1(\acc_reg[8]_i_20_n_1 ),
        .I2(a_r[6]),
        .I3(b_r[7]),
        .O(\acc[12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[12]_i_2 
       (.I0(acc1[15]),
        .I1(clr_r),
        .O(\acc[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[12]_i_3 
       (.I0(acc1[14]),
        .I1(clr_r),
        .O(\acc[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[12]_i_4 
       (.I0(acc1[13]),
        .I1(clr_r),
        .O(\acc[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[12]_i_5 
       (.I0(acc1[12]),
        .I1(clr_r),
        .O(\acc[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[12]_i_6 
       (.I0(acc1[15]),
        .I1(clr_r),
        .I2(acc_OBUF[15]),
        .O(\acc[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[12]_i_7 
       (.I0(acc1[14]),
        .I1(clr_r),
        .I2(acc_OBUF[14]),
        .O(\acc[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[12]_i_8 
       (.I0(acc1[13]),
        .I1(clr_r),
        .I2(acc_OBUF[13]),
        .O(\acc[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[12]_i_9 
       (.I0(acc1[12]),
        .I1(clr_r),
        .I2(acc_OBUF[12]),
        .O(\acc[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[16]_i_2 
       (.I0(acc_OBUF[19]),
        .I1(clr_r),
        .O(\acc[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[16]_i_3 
       (.I0(acc_OBUF[18]),
        .I1(clr_r),
        .O(\acc[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[16]_i_4 
       (.I0(acc_OBUF[17]),
        .I1(clr_r),
        .O(\acc[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[16]_i_5 
       (.I0(acc_OBUF[16]),
        .I1(clr_r),
        .O(\acc[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[20]_i_2 
       (.I0(acc_OBUF[21]),
        .I1(clr_r),
        .O(\acc[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[20]_i_3 
       (.I0(acc_OBUF[20]),
        .I1(clr_r),
        .O(\acc[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \acc[4]_i_11 
       (.I0(b_r[6]),
        .I1(a_r[3]),
        .I2(\acc[4]_i_19_n_0 ),
        .I3(\acc[4]_i_20_n_0 ),
        .O(\acc[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \acc[4]_i_12 
       (.I0(b_r[6]),
        .I1(a_r[2]),
        .I2(\acc[4]_i_21_n_0 ),
        .I3(a_r[1]),
        .I4(\acc_reg[0]_i_26_n_4 ),
        .I5(\acc_reg[0]_i_14_n_5 ),
        .O(\acc[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \acc[4]_i_13 
       (.I0(\acc[4]_i_21_n_0 ),
        .I1(b_r[6]),
        .I2(a_r[2]),
        .I3(\acc_reg[0]_i_14_n_5 ),
        .I4(\acc_reg[0]_i_26_n_4 ),
        .I5(a_r[1]),
        .O(\acc[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \acc[4]_i_14 
       (.I0(\acc_reg[0]_i_14_n_4 ),
        .I1(\acc_reg[4]_i_22_n_7 ),
        .I2(a_r[0]),
        .I3(b_r[7]),
        .O(\acc[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \acc[4]_i_15 
       (.I0(\acc[4]_i_20_n_0 ),
        .I1(\acc[4]_i_19_n_0 ),
        .I2(\acc[4]_i_23_n_0 ),
        .I3(\acc[4]_i_24_n_0 ),
        .I4(\acc[4]_i_25_n_0 ),
        .I5(\acc[4]_i_26_n_0 ),
        .O(\acc[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \acc[4]_i_16 
       (.I0(\acc[4]_i_27_n_0 ),
        .I1(\acc[4]_i_21_n_0 ),
        .I2(\acc[4]_i_28_n_0 ),
        .I3(\acc[4]_i_19_n_0 ),
        .I4(\acc[4]_i_23_n_0 ),
        .I5(\acc[4]_i_20_n_0 ),
        .O(\acc[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \acc[4]_i_17 
       (.I0(\acc[4]_i_21_n_0 ),
        .I1(\acc[4]_i_28_n_0 ),
        .I2(\acc[4]_i_27_n_0 ),
        .I3(\acc[4]_i_29_n_0 ),
        .I4(\acc_reg[0]_i_14_n_4 ),
        .I5(\acc_reg[4]_i_22_n_7 ),
        .O(\acc[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \acc[4]_i_18 
       (.I0(\acc[4]_i_30_n_0 ),
        .I1(a_r[1]),
        .I2(b_r[6]),
        .I3(\acc_reg[0]_i_26_n_4 ),
        .I4(\acc_reg[0]_i_14_n_5 ),
        .O(\acc[4]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \acc[4]_i_19 
       (.I0(b_r[7]),
        .I1(a_r[2]),
        .I2(\acc_reg[4]_i_22_n_5 ),
        .I3(\acc_reg[4]_i_31_n_6 ),
        .O(\acc[4]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[4]_i_2 
       (.I0(acc1[7]),
        .I1(clr_r),
        .O(\acc[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \acc[4]_i_20 
       (.I0(\acc_reg[4]_i_22_n_6 ),
        .I1(\acc_reg[4]_i_31_n_7 ),
        .I2(b_r[7]),
        .I3(a_r[1]),
        .O(\acc[4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \acc[4]_i_21 
       (.I0(b_r[7]),
        .I1(a_r[1]),
        .I2(\acc_reg[4]_i_22_n_6 ),
        .I3(\acc_reg[4]_i_31_n_7 ),
        .O(\acc[4]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_23 
       (.I0(a_r[3]),
        .I1(b_r[6]),
        .O(\acc[4]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \acc[4]_i_24 
       (.I0(b_r[7]),
        .I1(a_r[3]),
        .I2(\acc_reg[4]_i_22_n_4 ),
        .I3(\acc_reg[4]_i_31_n_1 ),
        .O(\acc[4]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_25 
       (.I0(a_r[4]),
        .I1(b_r[6]),
        .O(\acc[4]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \acc[4]_i_26 
       (.I0(\acc_reg[4]_i_22_n_5 ),
        .I1(\acc_reg[4]_i_31_n_6 ),
        .I2(b_r[7]),
        .I3(a_r[2]),
        .O(\acc[4]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \acc[4]_i_27 
       (.I0(\acc_reg[0]_i_14_n_5 ),
        .I1(\acc_reg[0]_i_26_n_4 ),
        .I2(b_r[6]),
        .I3(a_r[1]),
        .O(\acc[4]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_28 
       (.I0(a_r[2]),
        .I1(b_r[6]),
        .O(\acc[4]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_29 
       (.I0(a_r[0]),
        .I1(b_r[7]),
        .O(\acc[4]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[4]_i_3 
       (.I0(acc1[6]),
        .I1(clr_r),
        .O(\acc[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \acc[4]_i_30 
       (.I0(b_r[7]),
        .I1(a_r[0]),
        .I2(\acc_reg[4]_i_22_n_7 ),
        .I3(\acc_reg[0]_i_14_n_4 ),
        .O(\acc[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[4]_i_32 
       (.I0(b_r[5]),
        .I1(a_r[4]),
        .I2(b_r[4]),
        .I3(a_r[5]),
        .I4(b_r[3]),
        .I5(a_r[6]),
        .O(\acc[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[4]_i_33 
       (.I0(b_r[5]),
        .I1(a_r[3]),
        .I2(b_r[4]),
        .I3(a_r[4]),
        .I4(b_r[3]),
        .I5(a_r[5]),
        .O(\acc[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[4]_i_34 
       (.I0(b_r[5]),
        .I1(a_r[2]),
        .I2(b_r[4]),
        .I3(a_r[3]),
        .I4(b_r[3]),
        .I5(a_r[4]),
        .O(\acc[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[4]_i_35 
       (.I0(b_r[5]),
        .I1(a_r[1]),
        .I2(b_r[4]),
        .I3(a_r[2]),
        .I4(b_r[3]),
        .I5(a_r[3]),
        .O(\acc[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[4]_i_36 
       (.I0(\acc[4]_i_32_n_0 ),
        .I1(b_r[4]),
        .I2(a_r[6]),
        .I3(\acc[4]_i_44_n_0 ),
        .I4(a_r[7]),
        .I5(b_r[3]),
        .O(\acc[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[4]_i_37 
       (.I0(\acc[4]_i_33_n_0 ),
        .I1(b_r[4]),
        .I2(a_r[5]),
        .I3(\acc[4]_i_45_n_0 ),
        .I4(a_r[6]),
        .I5(b_r[3]),
        .O(\acc[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[4]_i_38 
       (.I0(\acc[4]_i_34_n_0 ),
        .I1(b_r[4]),
        .I2(a_r[4]),
        .I3(\acc[4]_i_46_n_0 ),
        .I4(a_r[5]),
        .I5(b_r[3]),
        .O(\acc[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \acc[4]_i_39 
       (.I0(\acc[4]_i_35_n_0 ),
        .I1(b_r[4]),
        .I2(a_r[3]),
        .I3(\acc[4]_i_47_n_0 ),
        .I4(a_r[4]),
        .I5(b_r[3]),
        .O(\acc[4]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[4]_i_4 
       (.I0(acc1[5]),
        .I1(clr_r),
        .O(\acc[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \acc[4]_i_40 
       (.I0(b_r[2]),
        .I1(a_r[6]),
        .I2(b_r[1]),
        .I3(a_r[7]),
        .O(\acc[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[4]_i_41 
       (.I0(b_r[2]),
        .I1(a_r[5]),
        .I2(b_r[1]),
        .I3(a_r[6]),
        .I4(b_r[0]),
        .I5(a_r[7]),
        .O(\acc[4]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[4]_i_42 
       (.I0(b_r[1]),
        .I1(a_r[6]),
        .I2(b_r[2]),
        .I3(a_r[7]),
        .O(\acc[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \acc[4]_i_43 
       (.I0(b_r[0]),
        .I1(a_r[5]),
        .I2(a_r[6]),
        .I3(b_r[2]),
        .I4(a_r[7]),
        .I5(b_r[1]),
        .O(\acc[4]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_44 
       (.I0(a_r[5]),
        .I1(b_r[5]),
        .O(\acc[4]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_45 
       (.I0(a_r[4]),
        .I1(b_r[5]),
        .O(\acc[4]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_46 
       (.I0(a_r[3]),
        .I1(b_r[5]),
        .O(\acc[4]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[4]_i_47 
       (.I0(a_r[2]),
        .I1(b_r[5]),
        .O(\acc[4]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[4]_i_5 
       (.I0(acc1[4]),
        .I1(clr_r),
        .O(\acc[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[4]_i_6 
       (.I0(acc1[7]),
        .I1(clr_r),
        .I2(acc_OBUF[7]),
        .O(\acc[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[4]_i_7 
       (.I0(acc1[6]),
        .I1(clr_r),
        .I2(acc_OBUF[6]),
        .O(\acc[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[4]_i_8 
       (.I0(acc1[5]),
        .I1(clr_r),
        .I2(acc_OBUF[5]),
        .O(\acc[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[4]_i_9 
       (.I0(acc1[4]),
        .I1(clr_r),
        .I2(acc_OBUF[4]),
        .O(\acc[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \acc[8]_i_11 
       (.I0(\acc[8]_i_19_n_0 ),
        .I1(\acc_reg[8]_i_20_n_1 ),
        .I2(a_r[6]),
        .I3(b_r[7]),
        .I4(\acc_reg[8]_i_20_n_6 ),
        .I5(a_r[5]),
        .O(\acc[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \acc[8]_i_12 
       (.I0(\acc[8]_i_21_n_0 ),
        .I1(\acc_reg[8]_i_20_n_6 ),
        .I2(a_r[5]),
        .I3(b_r[7]),
        .I4(\acc_reg[8]_i_20_n_7 ),
        .I5(a_r[4]),
        .O(\acc[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \acc[8]_i_13 
       (.I0(b_r[6]),
        .I1(a_r[5]),
        .I2(\acc_reg[8]_i_20_n_7 ),
        .I3(a_r[4]),
        .I4(b_r[7]),
        .I5(\acc[8]_i_22_n_0 ),
        .O(\acc[8]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \acc[8]_i_14 
       (.I0(b_r[6]),
        .I1(a_r[4]),
        .I2(\acc[4]_i_24_n_0 ),
        .I3(\acc[4]_i_26_n_0 ),
        .O(\acc[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \acc[8]_i_15 
       (.I0(\acc[8]_i_23_n_0 ),
        .I1(b_r[6]),
        .I2(a_r[7]),
        .I3(b_r[7]),
        .I4(a_r[6]),
        .I5(\acc_reg[8]_i_20_n_1 ),
        .O(\acc[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \acc[8]_i_16 
       (.I0(\acc[8]_i_12_n_0 ),
        .I1(\acc[8]_i_24_n_0 ),
        .I2(b_r[6]),
        .I3(a_r[7]),
        .I4(\acc[8]_i_23_n_0 ),
        .O(\acc[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \acc[8]_i_17 
       (.I0(\acc[8]_i_22_n_0 ),
        .I1(\acc[8]_i_25_n_0 ),
        .I2(\acc[8]_i_26_n_0 ),
        .I3(b_r[7]),
        .I4(a_r[4]),
        .I5(\acc_reg[8]_i_20_n_7 ),
        .O(\acc[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \acc[8]_i_18 
       (.I0(\acc[4]_i_26_n_0 ),
        .I1(\acc[4]_i_24_n_0 ),
        .I2(\acc[4]_i_25_n_0 ),
        .I3(\acc[8]_i_27_n_0 ),
        .I4(\acc[8]_i_25_n_0 ),
        .I5(\acc[8]_i_22_n_0 ),
        .O(\acc[8]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[8]_i_19 
       (.I0(a_r[7]),
        .I1(b_r[6]),
        .O(\acc[8]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[8]_i_2 
       (.I0(acc1[11]),
        .I1(clr_r),
        .O(\acc[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[8]_i_21 
       (.I0(a_r[6]),
        .I1(b_r[6]),
        .O(\acc[8]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \acc[8]_i_22 
       (.I0(\acc_reg[4]_i_22_n_4 ),
        .I1(\acc_reg[4]_i_31_n_1 ),
        .I2(b_r[7]),
        .I3(a_r[3]),
        .O(\acc[8]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \acc[8]_i_23 
       (.I0(b_r[7]),
        .I1(a_r[5]),
        .I2(\acc_reg[8]_i_20_n_6 ),
        .O(\acc[8]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \acc[8]_i_24 
       (.I0(b_r[7]),
        .I1(a_r[6]),
        .I2(\acc_reg[8]_i_20_n_1 ),
        .O(\acc[8]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \acc[8]_i_25 
       (.I0(a_r[5]),
        .I1(b_r[6]),
        .O(\acc[8]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \acc[8]_i_26 
       (.I0(\acc_reg[8]_i_20_n_6 ),
        .I1(a_r[5]),
        .I2(b_r[7]),
        .I3(b_r[6]),
        .I4(a_r[6]),
        .O(\acc[8]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \acc[8]_i_27 
       (.I0(b_r[7]),
        .I1(a_r[4]),
        .I2(\acc_reg[8]_i_20_n_7 ),
        .O(\acc[8]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \acc[8]_i_28 
       (.I0(b_r[5]),
        .I1(a_r[6]),
        .I2(b_r[4]),
        .I3(a_r[7]),
        .O(\acc[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \acc[8]_i_29 
       (.I0(b_r[5]),
        .I1(a_r[5]),
        .I2(b_r[4]),
        .I3(a_r[6]),
        .I4(b_r[3]),
        .I5(a_r[7]),
        .O(\acc[8]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[8]_i_3 
       (.I0(acc1[10]),
        .I1(clr_r),
        .O(\acc[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \acc[8]_i_30 
       (.I0(b_r[4]),
        .I1(a_r[6]),
        .I2(b_r[5]),
        .I3(a_r[7]),
        .O(\acc[8]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \acc[8]_i_31 
       (.I0(b_r[3]),
        .I1(a_r[5]),
        .I2(a_r[6]),
        .I3(b_r[5]),
        .I4(a_r[7]),
        .I5(b_r[4]),
        .O(\acc[8]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[8]_i_4 
       (.I0(acc1[9]),
        .I1(clr_r),
        .O(\acc[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \acc[8]_i_5 
       (.I0(acc1[8]),
        .I1(clr_r),
        .O(\acc[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[8]_i_6 
       (.I0(acc1[11]),
        .I1(clr_r),
        .I2(acc_OBUF[11]),
        .O(\acc[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[8]_i_7 
       (.I0(acc1[10]),
        .I1(clr_r),
        .I2(acc_OBUF[10]),
        .O(\acc[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[8]_i_8 
       (.I0(acc1[9]),
        .I1(clr_r),
        .I2(acc_OBUF[9]),
        .O(\acc[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \acc[8]_i_9 
       (.I0(acc1[8]),
        .I1(clr_r),
        .I2(acc_OBUF[8]),
        .O(\acc[8]_i_9_n_0 ));
  OBUF \acc_OBUF[0]_inst 
       (.I(acc_OBUF[0]),
        .O(acc[0]));
  OBUF \acc_OBUF[10]_inst 
       (.I(acc_OBUF[10]),
        .O(acc[10]));
  OBUF \acc_OBUF[11]_inst 
       (.I(acc_OBUF[11]),
        .O(acc[11]));
  OBUF \acc_OBUF[12]_inst 
       (.I(acc_OBUF[12]),
        .O(acc[12]));
  OBUF \acc_OBUF[13]_inst 
       (.I(acc_OBUF[13]),
        .O(acc[13]));
  OBUF \acc_OBUF[14]_inst 
       (.I(acc_OBUF[14]),
        .O(acc[14]));
  OBUF \acc_OBUF[15]_inst 
       (.I(acc_OBUF[15]),
        .O(acc[15]));
  OBUF \acc_OBUF[16]_inst 
       (.I(acc_OBUF[16]),
        .O(acc[16]));
  OBUF \acc_OBUF[17]_inst 
       (.I(acc_OBUF[17]),
        .O(acc[17]));
  OBUF \acc_OBUF[18]_inst 
       (.I(acc_OBUF[18]),
        .O(acc[18]));
  OBUF \acc_OBUF[19]_inst 
       (.I(acc_OBUF[19]),
        .O(acc[19]));
  OBUF \acc_OBUF[1]_inst 
       (.I(acc_OBUF[1]),
        .O(acc[1]));
  OBUF \acc_OBUF[20]_inst 
       (.I(acc_OBUF[20]),
        .O(acc[20]));
  OBUF \acc_OBUF[21]_inst 
       (.I(acc_OBUF[21]),
        .O(acc[21]));
  OBUF \acc_OBUF[2]_inst 
       (.I(acc_OBUF[2]),
        .O(acc[2]));
  OBUF \acc_OBUF[3]_inst 
       (.I(acc_OBUF[3]),
        .O(acc[3]));
  OBUF \acc_OBUF[4]_inst 
       (.I(acc_OBUF[4]),
        .O(acc[4]));
  OBUF \acc_OBUF[5]_inst 
       (.I(acc_OBUF[5]),
        .O(acc[5]));
  OBUF \acc_OBUF[6]_inst 
       (.I(acc_OBUF[6]),
        .O(acc[6]));
  OBUF \acc_OBUF[7]_inst 
       (.I(acc_OBUF[7]),
        .O(acc[7]));
  OBUF \acc_OBUF[8]_inst 
       (.I(acc_OBUF[8]),
        .O(acc[8]));
  OBUF \acc_OBUF[9]_inst 
       (.I(acc_OBUF[9]),
        .O(acc[9]));
  FDCE \acc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[0]_i_2_n_7 ),
        .Q(acc_OBUF[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\acc_reg[0]_i_11_n_0 ,\NLW_acc_reg[0]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[0]_i_13_n_0 ,\acc_reg[0]_i_14_n_6 ,\acc_reg[0]_i_14_n_7 ,\acc_reg[0]_i_12_n_4 }),
        .O(acc1[6:3]),
        .S({\acc[0]_i_15_n_0 ,\acc[0]_i_16_n_0 ,\acc[0]_i_17_n_0 ,\acc[0]_i_18_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \acc_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\acc_reg[0]_i_12_n_0 ,\NLW_acc_reg[0]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[0]_i_19_n_0 ,\acc[0]_i_20_n_0 ,\acc[0]_i_21_n_0 ,1'b0}),
        .O({\acc_reg[0]_i_12_n_4 ,acc1[2:0]}),
        .S({\acc[0]_i_22_n_0 ,\acc[0]_i_23_n_0 ,\acc[0]_i_24_n_0 ,\acc[0]_i_25_n_0 }));
  CARRY4 \acc_reg[0]_i_14 
       (.CI(\acc_reg[0]_i_12_n_0 ),
        .CO({\acc_reg[0]_i_14_n_0 ,\NLW_acc_reg[0]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[0]_i_27_n_0 ,\acc[0]_i_28_n_0 ,\acc[0]_i_29_n_0 ,\acc[0]_i_30_n_0 }),
        .O({\acc_reg[0]_i_14_n_4 ,\acc_reg[0]_i_14_n_5 ,\acc_reg[0]_i_14_n_6 ,\acc_reg[0]_i_14_n_7 }),
        .S({\acc[0]_i_31_n_0 ,\acc[0]_i_32_n_0 ,\acc[0]_i_33_n_0 ,\acc[0]_i_34_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\acc_reg[0]_i_2_n_0 ,\NLW_acc_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[0]_i_3_n_0 ,\acc[0]_i_4_n_0 ,\acc[0]_i_5_n_0 ,\acc[0]_i_6_n_0 }),
        .O({\acc_reg[0]_i_2_n_4 ,\acc_reg[0]_i_2_n_5 ,\acc_reg[0]_i_2_n_6 ,\acc_reg[0]_i_2_n_7 }),
        .S({\acc[0]_i_7_n_0 ,\acc[0]_i_8_n_0 ,\acc[0]_i_9_n_0 ,\acc[0]_i_10_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \acc_reg[0]_i_26 
       (.CI(1'b0),
        .CO({\acc_reg[0]_i_26_n_0 ,\NLW_acc_reg[0]_i_26_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[0]_i_36_n_0 ,\acc[0]_i_37_n_0 ,\acc[0]_i_38_n_0 ,1'b0}),
        .O({\acc_reg[0]_i_26_n_4 ,\acc_reg[0]_i_26_n_5 ,\acc_reg[0]_i_26_n_6 ,\acc_reg[0]_i_26_n_7 }),
        .S({\acc[0]_i_39_n_0 ,\acc[0]_i_40_n_0 ,\acc[0]_i_41_n_0 ,\acc[0]_i_42_n_0 }));
  FDCE \acc_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[8]_i_1_n_5 ),
        .Q(acc_OBUF[10]));
  FDCE \acc_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[8]_i_1_n_4 ),
        .Q(acc_OBUF[11]));
  FDCE \acc_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[12]_i_1_n_7 ),
        .Q(acc_OBUF[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[12]_i_1 
       (.CI(\acc_reg[8]_i_1_n_0 ),
        .CO({\acc_reg[12]_i_1_n_0 ,\NLW_acc_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[12]_i_2_n_0 ,\acc[12]_i_3_n_0 ,\acc[12]_i_4_n_0 ,\acc[12]_i_5_n_0 }),
        .O({\acc_reg[12]_i_1_n_4 ,\acc_reg[12]_i_1_n_5 ,\acc_reg[12]_i_1_n_6 ,\acc_reg[12]_i_1_n_7 }),
        .S({\acc[12]_i_6_n_0 ,\acc[12]_i_7_n_0 ,\acc[12]_i_8_n_0 ,\acc[12]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[12]_i_10 
       (.CI(\acc_reg[8]_i_10_n_0 ),
        .CO(\NLW_acc_reg[12]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[12]_i_10_O_UNCONNECTED [3:1],acc1[15]}),
        .S({1'b0,1'b0,1'b0,\acc[12]_i_11_n_0 }));
  FDCE \acc_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[12]_i_1_n_6 ),
        .Q(acc_OBUF[13]));
  FDCE \acc_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[12]_i_1_n_5 ),
        .Q(acc_OBUF[14]));
  FDCE \acc_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[12]_i_1_n_4 ),
        .Q(acc_OBUF[15]));
  FDCE \acc_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[16]_i_1_n_7 ),
        .Q(acc_OBUF[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[16]_i_1 
       (.CI(\acc_reg[12]_i_1_n_0 ),
        .CO({\acc_reg[16]_i_1_n_0 ,\NLW_acc_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[16]_i_1_n_4 ,\acc_reg[16]_i_1_n_5 ,\acc_reg[16]_i_1_n_6 ,\acc_reg[16]_i_1_n_7 }),
        .S({\acc[16]_i_2_n_0 ,\acc[16]_i_3_n_0 ,\acc[16]_i_4_n_0 ,\acc[16]_i_5_n_0 }));
  FDCE \acc_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[16]_i_1_n_6 ),
        .Q(acc_OBUF[17]));
  FDCE \acc_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[16]_i_1_n_5 ),
        .Q(acc_OBUF[18]));
  FDCE \acc_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[16]_i_1_n_4 ),
        .Q(acc_OBUF[19]));
  FDCE \acc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[0]_i_2_n_6 ),
        .Q(acc_OBUF[1]));
  FDCE \acc_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[20]_i_1_n_7 ),
        .Q(acc_OBUF[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[20]_i_1 
       (.CI(\acc_reg[16]_i_1_n_0 ),
        .CO(\NLW_acc_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[20]_i_1_O_UNCONNECTED [3:2],\acc_reg[20]_i_1_n_6 ,\acc_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,\acc[20]_i_2_n_0 ,\acc[20]_i_3_n_0 }));
  FDCE \acc_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[20]_i_1_n_6 ),
        .Q(acc_OBUF[21]));
  FDCE \acc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[0]_i_2_n_5 ),
        .Q(acc_OBUF[2]));
  FDCE \acc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[0]_i_2_n_4 ),
        .Q(acc_OBUF[3]));
  FDCE \acc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[4]_i_1_n_7 ),
        .Q(acc_OBUF[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[4]_i_1 
       (.CI(\acc_reg[0]_i_2_n_0 ),
        .CO({\acc_reg[4]_i_1_n_0 ,\NLW_acc_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[4]_i_2_n_0 ,\acc[4]_i_3_n_0 ,\acc[4]_i_4_n_0 ,\acc[4]_i_5_n_0 }),
        .O({\acc_reg[4]_i_1_n_4 ,\acc_reg[4]_i_1_n_5 ,\acc_reg[4]_i_1_n_6 ,\acc_reg[4]_i_1_n_7 }),
        .S({\acc[4]_i_6_n_0 ,\acc[4]_i_7_n_0 ,\acc[4]_i_8_n_0 ,\acc[4]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[4]_i_10 
       (.CI(\acc_reg[0]_i_11_n_0 ),
        .CO({\acc_reg[4]_i_10_n_0 ,\NLW_acc_reg[4]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[4]_i_11_n_0 ,\acc[4]_i_12_n_0 ,\acc[4]_i_13_n_0 ,\acc[4]_i_14_n_0 }),
        .O(acc1[10:7]),
        .S({\acc[4]_i_15_n_0 ,\acc[4]_i_16_n_0 ,\acc[4]_i_17_n_0 ,\acc[4]_i_18_n_0 }));
  CARRY4 \acc_reg[4]_i_22 
       (.CI(\acc_reg[0]_i_26_n_0 ),
        .CO({\acc_reg[4]_i_22_n_0 ,\NLW_acc_reg[4]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[4]_i_32_n_0 ,\acc[4]_i_33_n_0 ,\acc[4]_i_34_n_0 ,\acc[4]_i_35_n_0 }),
        .O({\acc_reg[4]_i_22_n_4 ,\acc_reg[4]_i_22_n_5 ,\acc_reg[4]_i_22_n_6 ,\acc_reg[4]_i_22_n_7 }),
        .S({\acc[4]_i_36_n_0 ,\acc[4]_i_37_n_0 ,\acc[4]_i_38_n_0 ,\acc[4]_i_39_n_0 }));
  CARRY4 \acc_reg[4]_i_31 
       (.CI(\acc_reg[0]_i_14_n_0 ),
        .CO({\NLW_acc_reg[4]_i_31_CO_UNCONNECTED [3],\acc_reg[4]_i_31_n_1 ,\NLW_acc_reg[4]_i_31_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\acc[4]_i_40_n_0 ,\acc[4]_i_41_n_0 }),
        .O({\NLW_acc_reg[4]_i_31_O_UNCONNECTED [3:2],\acc_reg[4]_i_31_n_6 ,\acc_reg[4]_i_31_n_7 }),
        .S({1'b0,1'b1,\acc[4]_i_42_n_0 ,\acc[4]_i_43_n_0 }));
  FDCE \acc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[4]_i_1_n_6 ),
        .Q(acc_OBUF[5]));
  FDCE \acc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[4]_i_1_n_5 ),
        .Q(acc_OBUF[6]));
  FDCE \acc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[4]_i_1_n_4 ),
        .Q(acc_OBUF[7]));
  FDCE \acc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[8]_i_1_n_7 ),
        .Q(acc_OBUF[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[8]_i_1 
       (.CI(\acc_reg[4]_i_1_n_0 ),
        .CO({\acc_reg[8]_i_1_n_0 ,\NLW_acc_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[8]_i_2_n_0 ,\acc[8]_i_3_n_0 ,\acc[8]_i_4_n_0 ,\acc[8]_i_5_n_0 }),
        .O({\acc_reg[8]_i_1_n_4 ,\acc_reg[8]_i_1_n_5 ,\acc_reg[8]_i_1_n_6 ,\acc_reg[8]_i_1_n_7 }),
        .S({\acc[8]_i_6_n_0 ,\acc[8]_i_7_n_0 ,\acc[8]_i_8_n_0 ,\acc[8]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[8]_i_10 
       (.CI(\acc_reg[4]_i_10_n_0 ),
        .CO({\acc_reg[8]_i_10_n_0 ,\NLW_acc_reg[8]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[8]_i_11_n_0 ,\acc[8]_i_12_n_0 ,\acc[8]_i_13_n_0 ,\acc[8]_i_14_n_0 }),
        .O(acc1[14:11]),
        .S({\acc[8]_i_15_n_0 ,\acc[8]_i_16_n_0 ,\acc[8]_i_17_n_0 ,\acc[8]_i_18_n_0 }));
  CARRY4 \acc_reg[8]_i_20 
       (.CI(\acc_reg[4]_i_22_n_0 ),
        .CO({\NLW_acc_reg[8]_i_20_CO_UNCONNECTED [3],\acc_reg[8]_i_20_n_1 ,\NLW_acc_reg[8]_i_20_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\acc[8]_i_28_n_0 ,\acc[8]_i_29_n_0 }),
        .O({\NLW_acc_reg[8]_i_20_O_UNCONNECTED [3:2],\acc_reg[8]_i_20_n_6 ,\acc_reg[8]_i_20_n_7 }),
        .S({1'b0,1'b1,\acc[8]_i_30_n_0 ,\acc[8]_i_31_n_0 }));
  FDCE \acc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\acc[0]_i_1_n_0 ),
        .CLR(v_r_i_1_n_0),
        .D(\acc_reg[8]_i_1_n_6 ),
        .Q(acc_OBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[0]_i_1 
       (.I0(b_IBUF[0]),
        .I1(valid_in_IBUF),
        .O(b_iso[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[1]_i_1 
       (.I0(b_IBUF[1]),
        .I1(valid_in_IBUF),
        .O(b_iso[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[2]_i_1 
       (.I0(b_IBUF[2]),
        .I1(valid_in_IBUF),
        .O(b_iso[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[3]_i_1 
       (.I0(b_IBUF[3]),
        .I1(valid_in_IBUF),
        .O(b_iso[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[4]_i_1 
       (.I0(b_IBUF[4]),
        .I1(valid_in_IBUF),
        .O(b_iso[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[5]_i_1 
       (.I0(b_IBUF[5]),
        .I1(valid_in_IBUF),
        .O(b_iso[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[6]_i_1 
       (.I0(b_IBUF[6]),
        .I1(valid_in_IBUF),
        .O(b_iso[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_r[7]_i_1 
       (.I0(b_IBUF[7]),
        .I1(valid_in_IBUF),
        .O(b_iso[7]));
  FDCE \b_r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[0]),
        .Q(b_r[0]));
  FDCE \b_r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[1]),
        .Q(b_r[1]));
  FDCE \b_r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[2]),
        .Q(b_r[2]));
  FDCE \b_r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[3]),
        .Q(b_r[3]));
  FDCE \b_r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[4]),
        .Q(b_r[4]));
  FDCE \b_r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[5]),
        .Q(b_r[5]));
  FDCE \b_r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[6]),
        .Q(b_r[6]));
  FDCE \b_r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(b_iso[7]),
        .Q(b_r[7]));
  IBUF clear_IBUF_inst
       (.I(clear),
        .O(clear_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDCE clr_r_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(clear_IBUF),
        .Q(clr_r));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    v_r_i_1
       (.I0(rst_n_IBUF),
        .O(v_r_i_1_n_0));
  FDCE v_r_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(valid_in_IBUF),
        .Q(v_r));
  IBUF valid_in_IBUF_inst
       (.I(valid_in),
        .O(valid_in_IBUF));
  OBUF valid_out_OBUF_inst
       (.I(valid_out_OBUF),
        .O(valid_out));
  FDCE valid_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(v_r_i_1_n_0),
        .D(v_r),
        .Q(valid_out_OBUF));
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
