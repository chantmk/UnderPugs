// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  3 20:55:29 2020
// Host        : LAPTOP-N3N9V3PL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/ThammakornK/Documents/Chula/3_Junior/2/HW_Lab/HWProject/Final_project.sim/sim_1/impl/func/xsim/testPal_func_impl.v
// Design      : TopSystem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PS2Receiver
   (\keycode_reg[0]_0 ,
    \keycode_reg[1]_0 ,
    \keycode_reg[2]_0 ,
    \keycode_reg[3]_0 ,
    \keycode_reg[4]_0 ,
    \keycode_reg[5]_0 ,
    \keycode_reg[6]_0 ,
    \keycode_reg[7]_0 ,
    S,
    \keycode_reg[15]_0 ,
    E,
    \keycodev_reg[15] ,
    PS2Clk_IBUF,
    CLK50MHZ_BUFG,
    PS2Data_IBUF,
    Q,
    CO,
    \keycodev_reg[0] );
  output \keycode_reg[0]_0 ;
  output \keycode_reg[1]_0 ;
  output \keycode_reg[2]_0 ;
  output \keycode_reg[3]_0 ;
  output \keycode_reg[4]_0 ;
  output \keycode_reg[5]_0 ;
  output \keycode_reg[6]_0 ;
  output \keycode_reg[7]_0 ;
  output [3:0]S;
  output [7:0]\keycode_reg[15]_0 ;
  output [0:0]E;
  output [1:0]\keycodev_reg[15] ;
  input PS2Clk_IBUF;
  input CLK50MHZ_BUFG;
  input PS2Data_IBUF;
  input [15:0]Q;
  input [0:0]CO;
  input \keycodev_reg[0] ;

  wire CLK50MHZ_BUFG;
  wire [0:0]CO;
  wire [0:0]E;
  wire O;
  wire PS2Clk_IBUF;
  wire PS2Data_IBUF;
  wire [15:0]Q;
  wire [3:0]S;
  wire cnt;
  wire [3:2]cnt0;
  wire \cnt[0]_i_1_n_1 ;
  wire \cnt[1]_i_1_n_1 ;
  wire \cnt[3]_i_1_n_1 ;
  wire [3:0]cnt_reg__0;
  wire \datacur[0]_i_1_n_1 ;
  wire \datacur[1]_i_1_n_1 ;
  wire \datacur[2]_i_1_n_1 ;
  wire \datacur[3]_i_1_n_1 ;
  wire \datacur[4]_i_1_n_1 ;
  wire \datacur[5]_i_1_n_1 ;
  wire \datacur[6]_i_1_n_1 ;
  wire \datacur[7]_i_1_n_1 ;
  wire db_clk_n_1;
  wire flag;
  wire flag_0;
  wire flag_i_1_n_1;
  wire \keycode_reg[0]_0 ;
  wire [7:0]\keycode_reg[15]_0 ;
  wire \keycode_reg[1]_0 ;
  wire \keycode_reg[2]_0 ;
  wire \keycode_reg[3]_0 ;
  wire \keycode_reg[4]_0 ;
  wire \keycode_reg[5]_0 ;
  wire \keycode_reg[6]_0 ;
  wire \keycode_reg[7]_0 ;
  wire \keycodev[15]_i_10_n_1 ;
  wire \keycodev[15]_i_11_n_1 ;
  wire \keycodev[15]_i_12_n_1 ;
  wire \keycodev[15]_i_2_n_1 ;
  wire \keycodev[15]_i_3_n_1 ;
  wire \keycodev[15]_i_4_n_1 ;
  wire \keycodev[15]_i_5_n_1 ;
  wire \keycodev[15]_i_7_n_1 ;
  wire \keycodev[15]_i_8_n_1 ;
  wire \keycodev[15]_i_9_n_1 ;
  wire \keycodev_reg[0] ;
  wire [1:0]\keycodev_reg[15] ;
  wire oflag_i_1_n_1;
  wire [7:0]p_1_in;
  wire pflag;

  LUT4 #(
    .INIT(16'h575F)) 
    \/i_ 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[0]),
        .O(cnt));
  LUT2 #(
    .INIT(4'h9)) 
    cn0_carry__0_i_1
       (.I0(Q[15]),
        .I1(\keycode_reg[15]_0 [7]),
        .O(\keycodev_reg[15] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry__0_i_2
       (.I0(\keycode_reg[15]_0 [4]),
        .I1(Q[12]),
        .I2(\keycode_reg[15]_0 [6]),
        .I3(Q[14]),
        .I4(Q[13]),
        .I5(\keycode_reg[15]_0 [5]),
        .O(\keycodev_reg[15] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_1
       (.I0(\keycode_reg[15]_0 [1]),
        .I1(Q[9]),
        .I2(\keycode_reg[15]_0 [3]),
        .I3(Q[11]),
        .I4(Q[10]),
        .I5(\keycode_reg[15]_0 [2]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_2
       (.I0(\keycode_reg[7]_0 ),
        .I1(Q[7]),
        .I2(\keycode_reg[6]_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\keycode_reg[15]_0 [0]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_3
       (.I0(Q[3]),
        .I1(\keycode_reg[3]_0 ),
        .I2(Q[5]),
        .I3(\keycode_reg[5]_0 ),
        .I4(\keycode_reg[4]_0 ),
        .I5(Q[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cn0_carry_i_4
       (.I0(\keycode_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\keycode_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\keycode_reg[2]_0 ),
        .I5(Q[2]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(\cnt[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .O(cnt0[2]));
  LUT4 #(
    .INIT(16'h0400)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(\cnt[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(cnt0[3]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(db_clk_n_1),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_1 ),
        .Q(cnt_reg__0[0]),
        .R(\cnt[3]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(db_clk_n_1),
        .CE(cnt),
        .D(\cnt[1]_i_1_n_1 ),
        .Q(cnt_reg__0[1]),
        .R(\cnt[3]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(db_clk_n_1),
        .CE(cnt),
        .D(cnt0[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[3]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(db_clk_n_1),
        .CE(cnt),
        .D(cnt0[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[0]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[0]),
        .O(\datacur[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[1]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[1]),
        .O(\datacur[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \datacur[2]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[2]),
        .O(\datacur[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[3]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[3]),
        .O(\datacur[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[4]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[4]),
        .O(\datacur[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[5]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[5]),
        .O(\datacur[5]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \datacur[6]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[6]),
        .O(\datacur[6]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \datacur[7]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[0]),
        .I5(p_1_in[7]),
        .O(\datacur[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[0] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[0]_i_1_n_1 ),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[1] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[1]_i_1_n_1 ),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[2] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[2]_i_1_n_1 ),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[3] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[3]_i_1_n_1 ),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[4] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[4]_i_1_n_1 ),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[5] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[5]_i_1_n_1 ),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[6] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[6]_i_1_n_1 ),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[7] 
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(\datacur[7]_i_1_n_1 ),
        .Q(p_1_in[7]),
        .R(1'b0));
  debouncer db_clk
       (.CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .O_reg_0(db_clk_n_1),
        .PS2Clk_IBUF(PS2Clk_IBUF));
  debouncer_17 db_data
       (.CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .O(O),
        .PS2Data_IBUF(PS2Data_IBUF));
  LUT5 #(
    .INIT(32'hEFFF0400)) 
    flag_i_1
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .I4(flag_0),
        .O(flag_i_1_n_1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    flag_reg
       (.C(db_clk_n_1),
        .CE(1'b1),
        .D(flag_i_1_n_1),
        .Q(flag_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[0]),
        .Q(\keycode_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[10] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[2]_0 ),
        .Q(\keycode_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[11] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[3]_0 ),
        .Q(\keycode_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[12] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[4]_0 ),
        .Q(\keycode_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[13] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[5]_0 ),
        .Q(\keycode_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[14] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[6]_0 ),
        .Q(\keycode_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[15] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[7]_0 ),
        .Q(\keycode_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[1]),
        .Q(\keycode_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[2]),
        .Q(\keycode_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[3]),
        .Q(\keycode_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[4]),
        .Q(\keycode_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[5] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[5]),
        .Q(\keycode_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[6] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[6]),
        .Q(\keycode_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[7] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(p_1_in[7]),
        .Q(\keycode_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[8] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[0]_0 ),
        .Q(\keycode_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[9] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_1),
        .D(\keycode_reg[1]_0 ),
        .Q(\keycode_reg[15]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF000E40000000000)) 
    \keycodev[15]_i_1 
       (.I0(\keycodev[15]_i_2_n_1 ),
        .I1(CO),
        .I2(\keycodev[15]_i_3_n_1 ),
        .I3(flag),
        .I4(\keycodev[15]_i_4_n_1 ),
        .I5(\keycodev[15]_i_5_n_1 ),
        .O(E));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_10 
       (.I0(\keycode_reg[5]_0 ),
        .I1(Q[5]),
        .I2(\keycode_reg[4]_0 ),
        .I3(Q[4]),
        .O(\keycodev[15]_i_10_n_1 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_11 
       (.I0(\keycode_reg[7]_0 ),
        .I1(Q[7]),
        .I2(\keycode_reg[6]_0 ),
        .I3(Q[6]),
        .O(\keycodev[15]_i_11_n_1 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_12 
       (.I0(\keycode_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\keycode_reg[0]_0 ),
        .I3(Q[0]),
        .O(\keycodev[15]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \keycodev[15]_i_2 
       (.I0(\keycode_reg[15]_0 [0]),
        .I1(\keycode_reg[15]_0 [1]),
        .I2(\keycode_reg[15]_0 [2]),
        .I3(\keycode_reg[15]_0 [4]),
        .I4(\keycode_reg[15]_0 [5]),
        .I5(\keycode_reg[15]_0 [3]),
        .O(\keycodev[15]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \keycodev[15]_i_3 
       (.I0(\keycodev_reg[0] ),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(\keycodev[15]_i_7_n_1 ),
        .O(\keycodev[15]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \keycodev[15]_i_4 
       (.I0(\keycode_reg[15]_0 [7]),
        .I1(\keycode_reg[15]_0 [6]),
        .O(\keycodev[15]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \keycodev[15]_i_5 
       (.I0(\keycode_reg[3]_0 ),
        .I1(\keycode_reg[2]_0 ),
        .I2(\keycode_reg[1]_0 ),
        .I3(\keycode_reg[0]_0 ),
        .I4(\keycodev[15]_i_8_n_1 ),
        .O(\keycodev[15]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBE)) 
    \keycodev[15]_i_7 
       (.I0(\keycodev[15]_i_9_n_1 ),
        .I1(\keycode_reg[2]_0 ),
        .I2(Q[2]),
        .I3(\keycodev[15]_i_10_n_1 ),
        .I4(\keycodev[15]_i_11_n_1 ),
        .I5(\keycodev[15]_i_12_n_1 ),
        .O(\keycodev[15]_i_7_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \keycodev[15]_i_8 
       (.I0(\keycode_reg[5]_0 ),
        .I1(\keycode_reg[4]_0 ),
        .I2(\keycode_reg[6]_0 ),
        .I3(\keycode_reg[7]_0 ),
        .O(\keycodev[15]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keycodev[15]_i_9 
       (.I0(Q[3]),
        .I1(\keycode_reg[3]_0 ),
        .O(\keycodev[15]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    oflag_i_1
       (.I0(flag_0),
        .I1(pflag),
        .O(oflag_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    oflag_reg
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(oflag_i_1_n_1),
        .Q(flag),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pflag_reg
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(flag_0),
        .Q(pflag),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "df524ae1" *) (* POWER_OPT_BRAM_CDC = "7" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module TopSystem
   (clk,
    PS2Clk,
    PS2Data,
    Hsync,
    Vsync,
    vgaRed,
    vgaGreen,
    vgaBlue,
    seg,
    an,
    dp);
  input clk;
  input PS2Clk;
  input PS2Data;
  output Hsync;
  output Vsync;
  output [3:0]vgaRed;
  output [3:0]vgaGreen;
  output [3:0]vgaBlue;
  output [6:0]seg;
  output [3:0]an;
  output dp;

  wire CLK50MHZ;
  wire CLK50MHZ_BUFG;
  wire Hsync;
  wire Hsync_OBUF;
  wire PS2Clk;
  wire PS2Clk_IBUF;
  wire PS2Data;
  wire PS2Data_IBUF;
  wire Vsync;
  wire Vsync_OBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_play;
  wire dp;
  wire [6:0]hpMonster;
  wire image_handler_n_24;
  wire image_handler_n_25;
  wire image_handler_n_26;
  wire image_handler_n_27;
  wire image_handler_n_28;
  wire image_handler_n_29;
  wire image_handler_n_30;
  wire image_handler_n_31;
  wire image_handler_n_32;
  wire image_handler_n_33;
  wire image_handler_n_34;
  wire image_handler_n_35;
  wire image_handler_n_36;
  wire image_handler_n_37;
  wire image_handler_n_38;
  wire image_handler_n_39;
  wire image_handler_n_40;
  wire image_handler_n_41;
  wire image_handler_n_42;
  wire image_handler_n_43;
  wire image_handler_n_44;
  wire image_handler_n_45;
  wire image_handler_n_46;
  wire image_handler_n_47;
  wire image_handler_n_6;
  wire image_handler_n_60;
  wire keyboard_handler_n_10;
  wire keyboard_handler_n_18;
  wire keyboard_handler_n_19;
  wire keyboard_handler_n_20;
  wire keyboard_handler_n_21;
  wire keyboard_handler_n_3;
  wire keyboard_handler_n_4;
  wire keyboard_handler_n_5;
  wire keyboard_handler_n_6;
  wire keyboard_handler_n_7;
  wire keyboard_handler_n_8;
  wire keyboard_handler_n_9;
  wire [0:0]keycodev;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_18;
  wire logic_n_19;
  wire logic_n_2;
  wire logic_n_21;
  wire logic_n_22;
  wire logic_n_3;
  wire logic_n_33;
  wire logic_n_34;
  wire logic_n_35;
  wire logic_n_36;
  wire logic_n_37;
  wire logic_n_38;
  wire logic_n_39;
  wire logic_n_40;
  wire logic_n_41;
  wire logic_n_42;
  wire logic_n_43;
  wire logic_n_44;
  wire logic_n_45;
  wire logic_n_46;
  wire logic_n_47;
  wire logic_n_48;
  wire logic_n_49;
  wire logic_n_50;
  wire logic_n_51;
  wire logic_n_52;
  wire logic_n_54;
  wire logic_n_55;
  wire logic_n_56;
  wire logic_n_57;
  wire logic_n_58;
  wire logic_n_59;
  wire logic_n_6;
  wire logic_n_60;
  wire logic_n_61;
  wire logic_n_62;
  wire logic_n_63;
  wire logic_n_64;
  wire logic_n_65;
  wire logic_n_66;
  wire logic_n_67;
  wire logic_n_68;
  wire logic_n_69;
  wire logic_n_7;
  wire logic_n_70;
  wire logic_n_71;
  wire logic_n_72;
  wire logic_n_8;
  wire logic_n_9;
  wire n_0_1212_BUFG;
  wire n_0_1212_BUFG_inst_n_1;
  wire [1:0]ps;
  wire \ps/addr_heart ;
  wire \ps/data4192_in ;
  wire [4:4]\ps/data_heart ;
  wire [6:0]\ps/kebab/data_reg ;
  wire [1:0]pugType;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [3:0]vgaBlue;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen;
  wire [3:0]vgaGreen_OBUF;
  wire [3:0]vgaRed;
  wire [2:0]vgaRed_OBUF;
  wire [9:0]x;
  wire [9:0]xPlayer;
  wire [7:0]y;
  wire [8:8]yPlayer;
PULLUP pullup_PS2Clk
       (.O(PS2Clk));
PULLUP pullup_PS2Data
       (.O(PS2Data));

  BUFG CLK50MHZ_BUFG_inst
       (.I(CLK50MHZ),
        .O(CLK50MHZ_BUFG));
  OBUF Hsync_OBUF_inst
       (.I(Hsync_OBUF),
        .O(Hsync));
  IBUF PS2Clk_IBUF_inst
       (.I(PS2Clk),
        .O(PS2Clk_IBUF));
  IBUF PS2Data_IBUF_inst
       (.I(PS2Data),
        .O(PS2Data_IBUF));
  OBUF Vsync_OBUF_inst
       (.I(Vsync_OBUF),
        .O(Vsync));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  vga image_handler
       (.CO(\ps/data4192_in ),
        .DI(image_handler_n_35),
        .E(logic_n_40),
        .Hsync_OBUF(Hsync_OBUF),
        .O(image_handler_n_47),
        .Q(pugType),
        .S(image_handler_n_36),
        .SR(logic_n_19),
        .Vsync_OBUF(Vsync_OBUF),
        .addr_bone_reg(logic_n_49),
        .addr_bone_reg_0(logic_n_38),
        .addr_bone_reg_1(logic_n_62),
        .addr_bone_reg_2(logic_n_37),
        .addr_bone_reg_3({logic_n_42,logic_n_43,logic_n_44,logic_n_45}),
        .addr_bone_reg_4(logic_n_54),
        .addr_bone_reg_5(logic_n_39),
        .addr_bone_reg_i_13(logic_n_56),
        .addr_bone_reg_i_14(logic_n_72),
        .addr_bone_reg_i_5(xPlayer),
        .addr_bone_reg_i_5_0({logic_n_33,logic_n_34}),
        .addr_bone_reg_i_7({logic_n_35,logic_n_36}),
        .\addr_burger[4]_i_5 (image_handler_n_26),
        .\addr_burger_reg[7] (logic_n_50),
        .\addr_heart[7]_i_4 (logic_n_52),
        .\addr_heart[7]_i_5 (image_handler_n_37),
        .\addr_heart_reg[0] (\ps/addr_heart ),
        .\addr_heart_reg[7]_i_13 ({hpMonster[6],hpMonster[0]}),
        .\addr_heart_reg[7]_i_13_0 (logic_n_18),
        .\addr_kebab[12]_i_19 (image_handler_n_44),
        .\addr_kebab_reg[0] (logic_n_11),
        .addr_milk_reg(logic_n_22),
        .\addr_pizza[9]_i_11 (image_handler_n_45),
        .\addr_pizza_reg[0] (logic_n_14),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data(\ps/data_heart ),
        .data3({logic_n_57,logic_n_58,logic_n_59}),
        .data3_0({logic_n_60,logic_n_61}),
        .\data[5]_i_6 (logic_n_41),
        .\data[5]_i_6_0 (logic_n_15),
        .\data[5]_i_6_1 (logic_n_48),
        .\data[6]_i_2 (logic_n_51),
        .data_play(data_play),
        .data_reg(image_handler_n_27),
        .\data_reg[0]_0 (logic_n_2),
        .\data_reg[0]_1 (logic_n_63),
        .\data_reg[0]_2 (logic_n_64),
        .\data_reg[1]_0 (logic_n_6),
        .\data_reg[1]_1 (logic_n_65),
        .\data_reg[2]_0 (logic_n_7),
        .\data_reg[2]_1 (logic_n_66),
        .\data_reg[3]_0 (logic_n_8),
        .\data_reg[3]_1 (logic_n_67),
        .\data_reg[4]_0 (logic_n_9),
        .\data_reg[4]_1 (logic_n_55),
        .\data_reg[4]_2 (logic_n_68),
        .\data_reg[5]_0 (logic_n_10),
        .\data_reg[5]_1 (logic_n_46),
        .\data_reg[5]_2 (logic_n_13),
        .\data_reg[5]_3 (logic_n_12),
        .\data_reg[5]_4 (logic_n_47),
        .\data_reg[5]_5 (logic_n_69),
        .\data_reg[6]_0 (logic_n_70),
        .\data_reg[7]_0 (image_handler_n_60),
        .\data_reg[7]_1 (logic_n_3),
        .\data_reg[7]_2 (logic_n_21),
        .\data_reg[7]_3 (logic_n_71),
        .data_reg_0(image_handler_n_30),
        .data_reg_1(image_handler_n_31),
        .data_reg_2(image_handler_n_32),
        .data_reg_3(image_handler_n_33),
        .data_reg_4(image_handler_n_34),
        .\h_count_reg_reg[0] (image_handler_n_25),
        .\h_count_reg_reg[0]_0 (image_handler_n_38),
        .\h_count_reg_reg[3] (image_handler_n_46),
        .\h_count_reg_reg[4] (image_handler_n_6),
        .\h_count_reg_reg[4]_0 (image_handler_n_40),
        .\h_count_reg_reg[5] ({image_handler_n_41,image_handler_n_42,image_handler_n_43}),
        .\h_count_reg_reg[6] (image_handler_n_29),
        .n_0_1212_BUFG(n_0_1212_BUFG),
        .n_0_1212_BUFG_inst_n_1(n_0_1212_BUFG_inst_n_1),
        .out(\ps/kebab/data_reg ),
        .\v_count_reg_reg[7] ({y[7],y[3],y[0]}),
        .\v_count_reg_reg[7]_0 (image_handler_n_28),
        .\v_count_reg_reg[8] (image_handler_n_24),
        .\v_count_reg_reg[8]_0 (image_handler_n_39),
        .vgaBlue_OBUF(vgaBlue_OBUF),
        .vgaGreen_OBUF(vgaGreen_OBUF),
        .vgaRed_OBUF(vgaRed_OBUF),
        .x(x),
        .yPlayer(yPlayer));
  kb_top keyboard_handler
       (.CLK50MHZ(CLK50MHZ),
        .CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .D({keyboard_handler_n_3,keyboard_handler_n_4,keyboard_handler_n_5,keyboard_handler_n_6,keyboard_handler_n_7}),
        .E(keyboard_handler_n_8),
        .PS2Clk_IBUF(PS2Clk_IBUF),
        .PS2Data_IBUF(PS2Data_IBUF),
        .Q(keycodev),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\keycodev_reg[0]_0 (keyboard_handler_n_9),
        .\keycodev_reg[3]_0 ({keyboard_handler_n_18,keyboard_handler_n_19,keyboard_handler_n_20}),
        .\keycodev_reg[3]_1 (keyboard_handler_n_21),
        .\keycodev_reg[6]_0 (keyboard_handler_n_10),
        .seg_OBUF(seg_OBUF),
        .\seg_OBUF[0]_inst_i_1_0 (ps));
  game_logic logic
       (.CO(\ps/data4192_in ),
        .D({keyboard_handler_n_18,keyboard_handler_n_19,keyboard_handler_n_20}),
        .DI(image_handler_n_35),
        .E(logic_n_40),
        .O(image_handler_n_47),
        .Q(pugType),
        .S(image_handler_n_36),
        .SR(logic_n_19),
        .addr_bone_reg_i_25({y[7],y[3],y[0]}),
        .addr_bone_reg_i_8_0({image_handler_n_41,image_handler_n_42,image_handler_n_43}),
        .\addr_heart[7]_i_6_0 (\ps/addr_heart ),
        .\addr_heart_reg[0] (image_handler_n_38),
        .\addr_heart_reg[0]_0 (image_handler_n_39),
        .\addr_kebab[12]_i_5 (logic_n_11),
        .\addr_kebab_reg[0] (image_handler_n_6),
        .\addr_kebab_reg[0]_0 (image_handler_n_44),
        .\addr_lolipop_reg[0] (image_handler_n_29),
        .\addr_lolipop_reg[0]_0 (image_handler_n_26),
        .\addr_lolipop_reg[0]_1 ({keyboard_handler_n_10,keycodev}),
        .\addr_lolipop_reg[0]_2 (keyboard_handler_n_8),
        .addr_milk_reg(image_handler_n_25),
        .\addr_pizza_reg[0] (image_handler_n_28),
        .\addr_pizza_reg[0]_0 (image_handler_n_45),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data(\ps/data_heart ),
        .\data[4]_i_3 (image_handler_n_33),
        .\data[5]_i_18 (image_handler_n_24),
        .\data[5]_i_18_0 (image_handler_n_46),
        .\data[7]_i_2 (image_handler_n_60),
        .\data[7]_i_2_0 (image_handler_n_40),
        .data_play(data_play),
        .\data_reg[0] (logic_n_64),
        .\data_reg[0]_0 (image_handler_n_27),
        .\data_reg[1] (logic_n_65),
        .\data_reg[1]_0 (image_handler_n_30),
        .\data_reg[2] (logic_n_66),
        .\data_reg[2]_0 (image_handler_n_31),
        .\data_reg[3] (logic_n_67),
        .\data_reg[3]_0 (image_handler_n_32),
        .\data_reg[4] (logic_n_9),
        .\data_reg[4]_0 (logic_n_55),
        .\data_reg[4]_1 (logic_n_68),
        .\data_reg[4]_2 (image_handler_n_37),
        .\data_reg[5] (logic_n_69),
        .\data_reg[5]_0 (image_handler_n_34),
        .\data_reg[6] (logic_n_70),
        .\data_reg[7] (logic_n_21),
        .\data_reg[7]_0 (logic_n_71),
        .\data_reg[7]_1 (keyboard_handler_n_9),
        .data_reg_0(logic_n_2),
        .data_reg_0_0(logic_n_6),
        .data_reg_0_1(logic_n_7),
        .data_reg_0_2(logic_n_8),
        .data_reg_1(logic_n_10),
        .data_reg_1_0(logic_n_51),
        .\h_count_reg_reg[0] (logic_n_22),
        .\h_count_reg_reg[3] ({logic_n_42,logic_n_43,logic_n_44,logic_n_45}),
        .\h_count_reg_reg[4] (logic_n_54),
        .\h_count_reg_reg[7] ({logic_n_33,logic_n_34}),
        .\h_count_reg_reg[7]_0 (logic_n_52),
        .\h_count_reg_reg[7]_1 ({logic_n_57,logic_n_58,logic_n_59}),
        .\h_count_reg_reg[9] (logic_n_37),
        .\h_count_reg_reg[9]_0 ({logic_n_60,logic_n_61}),
        .\hpMonster_reg[5]_0 (logic_n_18),
        .\keycodev_reg[0] (logic_n_3),
        .\keycodev_reg[0]_0 (logic_n_12),
        .\keycodev_reg[0]_1 (logic_n_13),
        .\keycodev_reg[0]_2 (logic_n_15),
        .\keycodev_reg[0]_3 (logic_n_48),
        .\keycodev_reg[0]_4 (logic_n_50),
        .out(\ps/kebab/data_reg ),
        .\state_reg[1]_0 (logic_n_41),
        .\state_reg[1]_1 (logic_n_46),
        .\state_reg[1]_2 (logic_n_49),
        .\state_reg[2]_0 (logic_n_47),
        .\state_reg[2]_1 (logic_n_63),
        .stop_reg_i_1({keyboard_handler_n_3,keyboard_handler_n_4,keyboard_handler_n_5,keyboard_handler_n_6,keyboard_handler_n_7}),
        .stop_reg_i_1_0(keyboard_handler_n_21),
        .\v_count_reg_reg[0] (logic_n_56),
        .\v_count_reg_reg[0]_0 (logic_n_72),
        .\v_count_reg_reg[7] (logic_n_14),
        .\v_count_reg_reg[7]_0 ({logic_n_35,logic_n_36}),
        .x(x),
        .\xCurrent_reg[9] (xPlayer),
        .\xPlayer_reg[3]_0 (logic_n_39),
        .\xPlayer_reg[3]_1 (logic_n_62),
        .\xPlayer_reg[5]_0 (logic_n_38),
        .\xPlayer_reg[9]_i_2_0 ({hpMonster[6],hpMonster[0]}),
        .yPlayer(yPlayer));
  BUFG n_0_1212_BUFG_inst
       (.I(n_0_1212_BUFG_inst_n_1),
        .O(n_0_1212_BUFG));
  sevenSeg segDisp
       (.Q(ps),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  OBUF \vgaBlue_OBUF[0]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaBlue[0]));
  OBUF \vgaBlue_OBUF[1]_inst 
       (.I(vgaBlue_OBUF[1]),
        .O(vgaBlue[1]));
  OBUF \vgaBlue_OBUF[2]_inst 
       (.I(vgaBlue_OBUF[2]),
        .O(vgaBlue[2]));
  OBUF \vgaBlue_OBUF[3]_inst 
       (.I(vgaBlue_OBUF[3]),
        .O(vgaBlue[3]));
  OBUF \vgaGreen_OBUF[0]_inst 
       (.I(vgaGreen_OBUF[0]),
        .O(vgaGreen[0]));
  OBUF \vgaGreen_OBUF[1]_inst 
       (.I(vgaGreen_OBUF[1]),
        .O(vgaGreen[1]));
  OBUF \vgaGreen_OBUF[2]_inst 
       (.I(vgaGreen_OBUF[2]),
        .O(vgaGreen[2]));
  OBUF \vgaGreen_OBUF[3]_inst 
       (.I(vgaGreen_OBUF[3]),
        .O(vgaGreen[3]));
  OBUF \vgaRed_OBUF[0]_inst 
       (.I(vgaRed_OBUF[0]),
        .O(vgaRed[0]));
  OBUF \vgaRed_OBUF[1]_inst 
       (.I(vgaRed_OBUF[1]),
        .O(vgaRed[1]));
  OBUF \vgaRed_OBUF[2]_inst 
       (.I(vgaRed_OBUF[2]),
        .O(vgaRed[2]));
  OBUF \vgaRed_OBUF[3]_inst 
       (.I(1'b0),
        .O(vgaRed[3]));
endmodule

module atkState
   (D,
    \xCurrent_reg[9]_0 ,
    an3,
    CLK,
    Q,
    \xPlayer_reg[0] );
  output [6:0]D;
  output [9:0]\xCurrent_reg[9]_0 ;
  input an3;
  input CLK;
  input [4:0]Q;
  input [0:0]\xPlayer_reg[0] ;

  wire CLK;
  wire [6:0]D;
  wire [4:0]Q;
  wire VhpMonster;
  wire VhpMonster1;
  wire VhpMonster1_carry_i_10_n_1;
  wire VhpMonster1_carry_i_11_n_1;
  wire VhpMonster1_carry_i_12_n_1;
  wire VhpMonster1_carry_i_13_n_1;
  wire VhpMonster1_carry_i_14_n_1;
  wire VhpMonster1_carry_i_15_n_1;
  wire VhpMonster1_carry_i_16_n_1;
  wire VhpMonster1_carry_i_17_n_1;
  wire VhpMonster1_carry_i_18_n_1;
  wire VhpMonster1_carry_i_19_n_1;
  wire VhpMonster1_carry_i_1_n_1;
  wire VhpMonster1_carry_i_20_n_1;
  wire VhpMonster1_carry_i_21_n_1;
  wire VhpMonster1_carry_i_22_n_1;
  wire VhpMonster1_carry_i_23_n_1;
  wire VhpMonster1_carry_i_24_n_1;
  wire VhpMonster1_carry_i_25_n_1;
  wire VhpMonster1_carry_i_26_n_1;
  wire VhpMonster1_carry_i_2_n_1;
  wire VhpMonster1_carry_i_3_n_1;
  wire VhpMonster1_carry_i_4_n_1;
  wire VhpMonster1_carry_i_5_n_1;
  wire VhpMonster1_carry_i_6_n_1;
  wire VhpMonster1_carry_i_7_n_1;
  wire VhpMonster1_carry_i_8_n_1;
  wire \VhpMonster_reg[3]_i_10_n_1 ;
  wire \VhpMonster_reg[3]_i_1_n_1 ;
  wire \VhpMonster_reg[3]_i_1_n_5 ;
  wire \VhpMonster_reg[3]_i_1_n_6 ;
  wire \VhpMonster_reg[3]_i_1_n_7 ;
  wire \VhpMonster_reg[3]_i_1_n_8 ;
  wire \VhpMonster_reg[3]_i_2_n_1 ;
  wire \VhpMonster_reg[3]_i_3_n_1 ;
  wire \VhpMonster_reg[3]_i_4_n_1 ;
  wire \VhpMonster_reg[3]_i_5_n_1 ;
  wire \VhpMonster_reg[3]_i_6_n_1 ;
  wire \VhpMonster_reg[3]_i_7_n_1 ;
  wire \VhpMonster_reg[3]_i_8_n_1 ;
  wire \VhpMonster_reg[3]_i_9_n_1 ;
  wire \VhpMonster_reg[6]_i_1_n_6 ;
  wire \VhpMonster_reg[6]_i_1_n_7 ;
  wire \VhpMonster_reg[6]_i_1_n_8 ;
  wire \VhpMonster_reg[6]_i_3_n_1 ;
  wire \VhpMonster_reg[6]_i_4_n_1 ;
  wire \VhpMonster_reg[6]_i_5_n_1 ;
  wire \VhpMonster_reg[6]_i_6_n_1 ;
  wire \VhpMonster_reg[6]_i_7_n_1 ;
  wire [6:0]a_hpMonster;
  wire [9:0]a_xPlayer;
  wire an3;
  wire [4:4]\dc/Vdamage ;
  wire left_right3_out;
  wire left_right_i_1_n_1;
  wire left_right_i_2_n_1;
  wire left_right_i_4_n_1;
  wire left_right_i_5_n_1;
  wire left_right_reg_n_1;
  wire stop;
  wire stop4_out;
  wire xCurrent;
  wire \xCurrent[0]_i_1_n_1 ;
  wire \xCurrent[4]_i_2_n_1 ;
  wire \xCurrent[4]_i_3_n_1 ;
  wire \xCurrent[4]_i_4_n_1 ;
  wire \xCurrent[4]_i_5_n_1 ;
  wire \xCurrent[8]_i_2_n_1 ;
  wire \xCurrent[8]_i_3_n_1 ;
  wire \xCurrent[8]_i_4_n_1 ;
  wire \xCurrent[8]_i_5_n_1 ;
  wire \xCurrent[9]_i_4_n_1 ;
  wire \xCurrent_reg[4]_i_1_n_1 ;
  wire \xCurrent_reg[4]_i_1_n_5 ;
  wire \xCurrent_reg[4]_i_1_n_6 ;
  wire \xCurrent_reg[4]_i_1_n_7 ;
  wire \xCurrent_reg[4]_i_1_n_8 ;
  wire \xCurrent_reg[8]_i_1_n_1 ;
  wire \xCurrent_reg[8]_i_1_n_5 ;
  wire \xCurrent_reg[8]_i_1_n_6 ;
  wire \xCurrent_reg[8]_i_1_n_7 ;
  wire \xCurrent_reg[8]_i_1_n_8 ;
  wire [9:0]\xCurrent_reg[9]_0 ;
  wire \xCurrent_reg[9]_i_2_n_8 ;
  wire [0:0]\xPlayer_reg[0] ;
  wire [2:0]NLW_VhpMonster1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_VhpMonster1_carry_O_UNCONNECTED;
  wire [2:0]\NLW_VhpMonster_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_VhpMonster_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_VhpMonster_reg[6]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_xCurrent_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_xCurrent_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_xCurrent_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_xCurrent_reg[9]_i_2_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 VhpMonster1_carry
       (.CI(1'b0),
        .CO({VhpMonster1,NLW_VhpMonster1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({a_hpMonster[6],VhpMonster1_carry_i_1_n_1,VhpMonster1_carry_i_2_n_1,VhpMonster1_carry_i_3_n_1}),
        .O(NLW_VhpMonster1_carry_O_UNCONNECTED[3:0]),
        .S({VhpMonster1_carry_i_4_n_1,VhpMonster1_carry_i_5_n_1,VhpMonster1_carry_i_6_n_1,VhpMonster1_carry_i_7_n_1}));
  LUT4 #(
    .INIT(16'h88E8)) 
    VhpMonster1_carry_i_1
       (.I0(a_hpMonster[5]),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(a_hpMonster[4]),
        .I3(\dc/Vdamage ),
        .O(VhpMonster1_carry_i_1_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF00011111)) 
    VhpMonster1_carry_i_10
       (.I0(VhpMonster1_carry_i_18_n_1),
        .I1(VhpMonster1_carry_i_19_n_1),
        .I2(a_xPlayer[0]),
        .I3(a_xPlayer[1]),
        .I4(VhpMonster1_carry_i_20_n_1),
        .I5(VhpMonster1_carry_i_21_n_1),
        .O(VhpMonster1_carry_i_10_n_1));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    VhpMonster1_carry_i_11
       (.I0(VhpMonster1_carry_i_22_n_1),
        .I1(a_xPlayer[8]),
        .I2(a_xPlayer[9]),
        .I3(a_xPlayer[7]),
        .I4(VhpMonster1_carry_i_23_n_1),
        .O(VhpMonster1_carry_i_11_n_1));
  LUT2 #(
    .INIT(4'hB)) 
    VhpMonster1_carry_i_12
       (.I0(a_xPlayer[9]),
        .I1(a_xPlayer[8]),
        .O(VhpMonster1_carry_i_12_n_1));
  LUT3 #(
    .INIT(8'hEA)) 
    VhpMonster1_carry_i_13
       (.I0(a_xPlayer[4]),
        .I1(a_xPlayer[3]),
        .I2(a_xPlayer[2]),
        .O(VhpMonster1_carry_i_13_n_1));
  LUT6 #(
    .INIT(64'h0057FFFFFFFFFFFF)) 
    VhpMonster1_carry_i_14
       (.I0(a_xPlayer[2]),
        .I1(a_xPlayer[0]),
        .I2(a_xPlayer[1]),
        .I3(a_xPlayer[3]),
        .I4(a_xPlayer[6]),
        .I5(a_xPlayer[4]),
        .O(VhpMonster1_carry_i_14_n_1));
  LUT6 #(
    .INIT(64'h000F0F0F0F080F00)) 
    VhpMonster1_carry_i_15
       (.I0(a_xPlayer[0]),
        .I1(a_xPlayer[1]),
        .I2(VhpMonster1_carry_i_24_n_1),
        .I3(a_xPlayer[3]),
        .I4(a_xPlayer[2]),
        .I5(a_xPlayer[4]),
        .O(VhpMonster1_carry_i_15_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    VhpMonster1_carry_i_16
       (.I0(a_xPlayer[5]),
        .I1(a_xPlayer[6]),
        .O(VhpMonster1_carry_i_16_n_1));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    VhpMonster1_carry_i_17
       (.I0(a_xPlayer[3]),
        .I1(a_xPlayer[4]),
        .I2(a_xPlayer[6]),
        .I3(a_xPlayer[1]),
        .I4(a_xPlayer[2]),
        .I5(a_xPlayer[5]),
        .O(VhpMonster1_carry_i_17_n_1));
  LUT3 #(
    .INIT(8'hEF)) 
    VhpMonster1_carry_i_18
       (.I0(a_xPlayer[9]),
        .I1(a_xPlayer[8]),
        .I2(a_xPlayer[7]),
        .O(VhpMonster1_carry_i_18_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FFFFFF)) 
    VhpMonster1_carry_i_19
       (.I0(a_xPlayer[1]),
        .I1(a_xPlayer[2]),
        .I2(a_xPlayer[3]),
        .I3(a_xPlayer[4]),
        .I4(a_xPlayer[6]),
        .I5(a_xPlayer[5]),
        .O(VhpMonster1_carry_i_19_n_1));
  LUT5 #(
    .INIT(32'h15011100)) 
    VhpMonster1_carry_i_2
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_11_n_1),
        .I2(\dc/Vdamage ),
        .I3(a_hpMonster[3]),
        .I4(a_hpMonster[2]),
        .O(VhpMonster1_carry_i_2_n_1));
  LUT3 #(
    .INIT(8'h80)) 
    VhpMonster1_carry_i_20
       (.I0(a_xPlayer[3]),
        .I1(a_xPlayer[2]),
        .I2(a_xPlayer[4]),
        .O(VhpMonster1_carry_i_20_n_1));
  LUT5 #(
    .INIT(32'h00002000)) 
    VhpMonster1_carry_i_21
       (.I0(VhpMonster1_carry_i_25_n_1),
        .I1(a_xPlayer[6]),
        .I2(a_xPlayer[5]),
        .I3(a_xPlayer[4]),
        .I4(VhpMonster1_carry_i_26_n_1),
        .O(VhpMonster1_carry_i_21_n_1));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFCFFFF)) 
    VhpMonster1_carry_i_22
       (.I0(a_xPlayer[1]),
        .I1(a_xPlayer[3]),
        .I2(a_xPlayer[4]),
        .I3(a_xPlayer[2]),
        .I4(a_xPlayer[6]),
        .I5(a_xPlayer[5]),
        .O(VhpMonster1_carry_i_22_n_1));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    VhpMonster1_carry_i_23
       (.I0(a_xPlayer[1]),
        .I1(a_xPlayer[2]),
        .I2(a_xPlayer[5]),
        .I3(VhpMonster1_carry_i_18_n_1),
        .I4(a_xPlayer[6]),
        .I5(left_right_i_4_n_1),
        .O(VhpMonster1_carry_i_23_n_1));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    VhpMonster1_carry_i_24
       (.I0(a_xPlayer[6]),
        .I1(a_xPlayer[7]),
        .I2(a_xPlayer[5]),
        .I3(a_xPlayer[8]),
        .I4(a_xPlayer[9]),
        .O(VhpMonster1_carry_i_24_n_1));
  LUT6 #(
    .INIT(64'h7F7F7F7F7FFFFFFF)) 
    VhpMonster1_carry_i_25
       (.I0(a_xPlayer[3]),
        .I1(a_xPlayer[4]),
        .I2(a_xPlayer[5]),
        .I3(a_xPlayer[1]),
        .I4(a_xPlayer[0]),
        .I5(a_xPlayer[2]),
        .O(VhpMonster1_carry_i_25_n_1));
  LUT3 #(
    .INIT(8'hDF)) 
    VhpMonster1_carry_i_26
       (.I0(a_xPlayer[8]),
        .I1(a_xPlayer[9]),
        .I2(a_xPlayer[7]),
        .O(VhpMonster1_carry_i_26_n_1));
  LUT5 #(
    .INIT(32'h44040400)) 
    VhpMonster1_carry_i_3
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(VhpMonster1_carry_i_11_n_1),
        .I3(a_hpMonster[0]),
        .I4(a_hpMonster[1]),
        .O(VhpMonster1_carry_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    VhpMonster1_carry_i_4
       (.I0(a_hpMonster[6]),
        .O(VhpMonster1_carry_i_4_n_1));
  LUT4 #(
    .INIT(16'h6006)) 
    VhpMonster1_carry_i_5
       (.I0(VhpMonster1_carry_i_8_n_1),
        .I1(a_hpMonster[5]),
        .I2(\dc/Vdamage ),
        .I3(a_hpMonster[4]),
        .O(VhpMonster1_carry_i_5_n_1));
  LUT5 #(
    .INIT(32'hE1A00041)) 
    VhpMonster1_carry_i_6
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_11_n_1),
        .I2(a_hpMonster[3]),
        .I3(\dc/Vdamage ),
        .I4(a_hpMonster[2]),
        .O(VhpMonster1_carry_i_6_n_1));
  LUT5 #(
    .INIT(32'hBB004004)) 
    VhpMonster1_carry_i_7
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(VhpMonster1_carry_i_11_n_1),
        .I3(a_hpMonster[1]),
        .I4(a_hpMonster[0]),
        .O(VhpMonster1_carry_i_7_n_1));
  LUT6 #(
    .INIT(64'hFEEFFEFFFFFFFFFF)) 
    VhpMonster1_carry_i_8
       (.I0(a_xPlayer[7]),
        .I1(VhpMonster1_carry_i_12_n_1),
        .I2(a_xPlayer[5]),
        .I3(a_xPlayer[6]),
        .I4(VhpMonster1_carry_i_13_n_1),
        .I5(VhpMonster1_carry_i_14_n_1),
        .O(VhpMonster1_carry_i_8_n_1));
  LUT6 #(
    .INIT(64'hAAAAFFEAAAAAAAEA)) 
    VhpMonster1_carry_i_9
       (.I0(VhpMonster1_carry_i_15_n_1),
        .I1(VhpMonster1_carry_i_13_n_1),
        .I2(VhpMonster1_carry_i_16_n_1),
        .I3(a_xPlayer[7]),
        .I4(VhpMonster1_carry_i_12_n_1),
        .I5(VhpMonster1_carry_i_17_n_1),
        .O(\dc/Vdamage ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \VhpMonster_reg[0] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[3]_i_1_n_8 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \VhpMonster_reg[1] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[3]_i_1_n_7 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \VhpMonster_reg[2] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[3]_i_1_n_6 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \VhpMonster_reg[3] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[3]_i_1_n_5 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[3]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VhpMonster_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\VhpMonster_reg[3]_i_1_n_1 ,\NLW_VhpMonster_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\VhpMonster_reg[3]_i_2_n_1 ),
        .DI({\VhpMonster_reg[3]_i_3_n_1 ,\VhpMonster_reg[3]_i_4_n_1 ,\VhpMonster_reg[3]_i_5_n_1 ,\VhpMonster_reg[3]_i_6_n_1 }),
        .O({\VhpMonster_reg[3]_i_1_n_5 ,\VhpMonster_reg[3]_i_1_n_6 ,\VhpMonster_reg[3]_i_1_n_7 ,\VhpMonster_reg[3]_i_1_n_8 }),
        .S({\VhpMonster_reg[3]_i_7_n_1 ,\VhpMonster_reg[3]_i_8_n_1 ,\VhpMonster_reg[3]_i_9_n_1 ,\VhpMonster_reg[3]_i_10_n_1 }));
  LUT5 #(
    .INIT(32'hBBB04440)) 
    \VhpMonster_reg[3]_i_10 
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(VhpMonster1),
        .I3(stop),
        .I4(a_hpMonster[0]),
        .O(\VhpMonster_reg[3]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \VhpMonster_reg[3]_i_2 
       (.I0(stop),
        .I1(VhpMonster1),
        .O(\VhpMonster_reg[3]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \VhpMonster_reg[3]_i_3 
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_11_n_1),
        .I2(stop),
        .I3(VhpMonster1),
        .O(\VhpMonster_reg[3]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \VhpMonster_reg[3]_i_4 
       (.I0(\dc/Vdamage ),
        .I1(VhpMonster1_carry_i_10_n_1),
        .I2(stop),
        .I3(VhpMonster1),
        .O(\VhpMonster_reg[3]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h04040400)) 
    \VhpMonster_reg[3]_i_5 
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(VhpMonster1_carry_i_11_n_1),
        .I3(stop),
        .I4(VhpMonster1),
        .O(\VhpMonster_reg[3]_i_5_n_1 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \VhpMonster_reg[3]_i_6 
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(stop),
        .I3(VhpMonster1),
        .O(\VhpMonster_reg[3]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'hEEEF111F)) 
    \VhpMonster_reg[3]_i_7 
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_11_n_1),
        .I2(stop),
        .I3(VhpMonster1),
        .I4(a_hpMonster[3]),
        .O(\VhpMonster_reg[3]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hEEE01110)) 
    \VhpMonster_reg[3]_i_8 
       (.I0(\dc/Vdamage ),
        .I1(VhpMonster1_carry_i_10_n_1),
        .I2(stop),
        .I3(VhpMonster1),
        .I4(a_hpMonster[2]),
        .O(\VhpMonster_reg[3]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'hFB04FB04FB04FFFF)) 
    \VhpMonster_reg[3]_i_9 
       (.I0(VhpMonster1_carry_i_10_n_1),
        .I1(VhpMonster1_carry_i_8_n_1),
        .I2(VhpMonster1_carry_i_11_n_1),
        .I3(a_hpMonster[1]),
        .I4(VhpMonster1),
        .I5(stop),
        .O(\VhpMonster_reg[3]_i_9_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \VhpMonster_reg[4] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[6]_i_1_n_8 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \VhpMonster_reg[5] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[6]_i_1_n_7 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \VhpMonster_reg[6] 
       (.CLR(1'b0),
        .D(\VhpMonster_reg[6]_i_1_n_6 ),
        .G(VhpMonster),
        .GE(1'b1),
        .Q(a_hpMonster[6]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VhpMonster_reg[6]_i_1 
       (.CI(\VhpMonster_reg[3]_i_1_n_1 ),
        .CO(\NLW_VhpMonster_reg[6]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\VhpMonster_reg[6]_i_3_n_1 ,\VhpMonster_reg[6]_i_4_n_1 }),
        .O({\NLW_VhpMonster_reg[6]_i_1_O_UNCONNECTED [3],\VhpMonster_reg[6]_i_1_n_6 ,\VhpMonster_reg[6]_i_1_n_7 ,\VhpMonster_reg[6]_i_1_n_8 }),
        .S({1'b0,\VhpMonster_reg[6]_i_5_n_1 ,\VhpMonster_reg[6]_i_6_n_1 ,\VhpMonster_reg[6]_i_7_n_1 }));
  LUT2 #(
    .INIT(4'h2)) 
    \VhpMonster_reg[6]_i_2 
       (.I0(stop4_out),
        .I1(stop),
        .O(VhpMonster));
  LUT3 #(
    .INIT(8'hA8)) 
    \VhpMonster_reg[6]_i_3 
       (.I0(VhpMonster1_carry_i_8_n_1),
        .I1(stop),
        .I2(VhpMonster1),
        .O(\VhpMonster_reg[6]_i_3_n_1 ));
  LUT3 #(
    .INIT(8'h54)) 
    \VhpMonster_reg[6]_i_4 
       (.I0(\dc/Vdamage ),
        .I1(stop),
        .I2(VhpMonster1),
        .O(\VhpMonster_reg[6]_i_4_n_1 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \VhpMonster_reg[6]_i_5 
       (.I0(VhpMonster1),
        .I1(stop),
        .I2(a_hpMonster[6]),
        .O(\VhpMonster_reg[6]_i_5_n_1 ));
  LUT4 #(
    .INIT(16'h54A8)) 
    \VhpMonster_reg[6]_i_6 
       (.I0(VhpMonster1_carry_i_8_n_1),
        .I1(VhpMonster1),
        .I2(stop),
        .I3(a_hpMonster[5]),
        .O(\VhpMonster_reg[6]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'hA854)) 
    \VhpMonster_reg[6]_i_7 
       (.I0(\dc/Vdamage ),
        .I1(stop),
        .I2(VhpMonster1),
        .I3(a_hpMonster[4]),
        .O(\VhpMonster_reg[6]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[0]_i_1 
       (.I0(a_hpMonster[0]),
        .I1(\xPlayer_reg[0] ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[1]_i_1 
       (.I0(a_hpMonster[1]),
        .I1(\xPlayer_reg[0] ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[2]_i_1 
       (.I0(a_hpMonster[2]),
        .I1(\xPlayer_reg[0] ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[3]_i_1 
       (.I0(a_hpMonster[3]),
        .I1(\xPlayer_reg[0] ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[4]_i_1 
       (.I0(a_hpMonster[4]),
        .I1(\xPlayer_reg[0] ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[5]_i_1 
       (.I0(a_hpMonster[5]),
        .I1(\xPlayer_reg[0] ),
        .O(D[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \hpMonster_reg[6]_i_1 
       (.I0(a_hpMonster[6]),
        .I1(\xPlayer_reg[0] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000FFFF00020000)) 
    left_right_i_1
       (.I0(left_right_i_2_n_1),
        .I1(a_xPlayer[7]),
        .I2(a_xPlayer[8]),
        .I3(a_xPlayer[9]),
        .I4(left_right3_out),
        .I5(left_right_reg_n_1),
        .O(left_right_i_1_n_1));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    left_right_i_2
       (.I0(left_right_i_4_n_1),
        .I1(a_xPlayer[2]),
        .I2(a_xPlayer[1]),
        .I3(a_xPlayer[0]),
        .I4(a_xPlayer[6]),
        .I5(a_xPlayer[5]),
        .O(left_right_i_2_n_1));
  LUT6 #(
    .INIT(64'h4404440444040404)) 
    left_right_i_3
       (.I0(stop),
        .I1(an3),
        .I2(left_right_reg_n_1),
        .I3(a_xPlayer[9]),
        .I4(a_xPlayer[8]),
        .I5(left_right_i_5_n_1),
        .O(left_right3_out));
  LUT2 #(
    .INIT(4'hE)) 
    left_right_i_4
       (.I0(a_xPlayer[3]),
        .I1(a_xPlayer[4]),
        .O(left_right_i_4_n_1));
  LUT3 #(
    .INIT(8'hFE)) 
    left_right_i_5
       (.I0(a_xPlayer[5]),
        .I1(a_xPlayer[7]),
        .I2(a_xPlayer[6]),
        .O(left_right_i_5_n_1));
  FDRE #(
    .INIT(1'b1)) 
    left_right_reg
       (.C(CLK),
        .CE(1'b1),
        .D(left_right_i_1_n_1),
        .Q(left_right_reg_n_1),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    stop_reg
       (.CLR(1'b0),
        .D(an3),
        .G(stop4_out),
        .GE(1'b1),
        .Q(stop));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    stop_reg_i_1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(an3),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(stop4_out));
  LUT1 #(
    .INIT(2'h1)) 
    \xCurrent[0]_i_1 
       (.I0(a_xPlayer[0]),
        .O(\xCurrent[0]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[4]_i_2 
       (.I0(a_xPlayer[3]),
        .I1(a_xPlayer[4]),
        .O(\xCurrent[4]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[4]_i_3 
       (.I0(a_xPlayer[2]),
        .I1(a_xPlayer[3]),
        .O(\xCurrent[4]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[4]_i_4 
       (.I0(a_xPlayer[1]),
        .I1(a_xPlayer[2]),
        .O(\xCurrent[4]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[4]_i_5 
       (.I0(a_xPlayer[1]),
        .I1(left_right_reg_n_1),
        .O(\xCurrent[4]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[8]_i_2 
       (.I0(a_xPlayer[7]),
        .I1(a_xPlayer[8]),
        .O(\xCurrent[8]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[8]_i_3 
       (.I0(a_xPlayer[6]),
        .I1(a_xPlayer[7]),
        .O(\xCurrent[8]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[8]_i_4 
       (.I0(a_xPlayer[5]),
        .I1(a_xPlayer[6]),
        .O(\xCurrent[8]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[8]_i_5 
       (.I0(a_xPlayer[4]),
        .I1(a_xPlayer[5]),
        .O(\xCurrent[8]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \xCurrent[9]_i_1 
       (.I0(an3),
        .I1(stop),
        .O(xCurrent));
  LUT2 #(
    .INIT(4'h9)) 
    \xCurrent[9]_i_4 
       (.I0(a_xPlayer[8]),
        .I1(a_xPlayer[9]),
        .O(\xCurrent[9]_i_4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[0] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent[0]_i_1_n_1 ),
        .Q(a_xPlayer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[1] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[4]_i_1_n_8 ),
        .Q(a_xPlayer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[2] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[4]_i_1_n_7 ),
        .Q(a_xPlayer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[3] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[4]_i_1_n_6 ),
        .Q(a_xPlayer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[4] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[4]_i_1_n_5 ),
        .Q(a_xPlayer[4]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \xCurrent_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\xCurrent_reg[4]_i_1_n_1 ,\NLW_xCurrent_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(a_xPlayer[0]),
        .DI({a_xPlayer[3:1],left_right_reg_n_1}),
        .O({\xCurrent_reg[4]_i_1_n_5 ,\xCurrent_reg[4]_i_1_n_6 ,\xCurrent_reg[4]_i_1_n_7 ,\xCurrent_reg[4]_i_1_n_8 }),
        .S({\xCurrent[4]_i_2_n_1 ,\xCurrent[4]_i_3_n_1 ,\xCurrent[4]_i_4_n_1 ,\xCurrent[4]_i_5_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[5] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[8]_i_1_n_8 ),
        .Q(a_xPlayer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \xCurrent_reg[6] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[8]_i_1_n_7 ),
        .Q(a_xPlayer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[7] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[8]_i_1_n_6 ),
        .Q(a_xPlayer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \xCurrent_reg[8] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[8]_i_1_n_5 ),
        .Q(a_xPlayer[8]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \xCurrent_reg[8]_i_1 
       (.CI(\xCurrent_reg[4]_i_1_n_1 ),
        .CO({\xCurrent_reg[8]_i_1_n_1 ,\NLW_xCurrent_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_xPlayer[7:4]),
        .O({\xCurrent_reg[8]_i_1_n_5 ,\xCurrent_reg[8]_i_1_n_6 ,\xCurrent_reg[8]_i_1_n_7 ,\xCurrent_reg[8]_i_1_n_8 }),
        .S({\xCurrent[8]_i_2_n_1 ,\xCurrent[8]_i_3_n_1 ,\xCurrent[8]_i_4_n_1 ,\xCurrent[8]_i_5_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \xCurrent_reg[9] 
       (.C(CLK),
        .CE(xCurrent),
        .D(\xCurrent_reg[9]_i_2_n_8 ),
        .Q(a_xPlayer[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \xCurrent_reg[9]_i_2 
       (.CI(\xCurrent_reg[8]_i_1_n_1 ),
        .CO(\NLW_xCurrent_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_xCurrent_reg[9]_i_2_O_UNCONNECTED [3:1],\xCurrent_reg[9]_i_2_n_8 }),
        .S({1'b0,1'b0,1'b0,\xCurrent[9]_i_4_n_1 }));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[0]_i_1 
       (.I0(a_xPlayer[0]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[1]_i_1 
       (.I0(a_xPlayer[1]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[2]_i_1 
       (.I0(a_xPlayer[2]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[3]_i_1 
       (.I0(a_xPlayer[3]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[4]_i_1 
       (.I0(a_xPlayer[4]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[5]_i_1 
       (.I0(a_xPlayer[5]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[6]_i_1 
       (.I0(a_xPlayer[6]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[7]_i_1 
       (.I0(a_xPlayer[7]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[8]_i_1 
       (.I0(a_xPlayer[8]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \xPlayer_reg[9]_i_1 
       (.I0(a_xPlayer[9]),
        .I1(\xPlayer_reg[0] ),
        .O(\xCurrent_reg[9]_0 [9]));
endmodule

module clockDiv
   (CLK,
    clk_IBUF_BUFG);
  output CLK;
  input clk_IBUF_BUFG;

  wire CLK;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1_n_1 ;
  wire \counter[0]_i_3_n_1 ;
  wire \counter[0]_i_4_n_1 ;
  wire \counter[0]_i_5_n_1 ;
  wire \counter[0]_i_6_n_1 ;
  wire \counter[0]_i_7_n_1 ;
  wire \counter[0]_i_8_n_1 ;
  wire \counter[0]_i_9_n_1 ;
  wire [27:0]counter_reg;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[0]_i_2_n_8 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_8 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_8 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_8 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_8 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_8 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_8 ;
  wire \xCurrent[9]_i_5_n_1 ;
  wire \xCurrent[9]_i_6_n_1 ;
  wire \xCurrent[9]_i_7_n_1 ;
  wire \xCurrent[9]_i_8_n_1 ;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF88888880)) 
    \counter[0]_i_1 
       (.I0(counter_reg[20]),
        .I1(counter_reg[19]),
        .I2(\counter[0]_i_3_n_1 ),
        .I3(counter_reg[17]),
        .I4(counter_reg[18]),
        .I5(\counter[0]_i_4_n_1 ),
        .O(\counter[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hA888A888A8888888)) 
    \counter[0]_i_3 
       (.I0(counter_reg[16]),
        .I1(counter_reg[15]),
        .I2(counter_reg[13]),
        .I3(counter_reg[14]),
        .I4(\counter[0]_i_6_n_1 ),
        .I5(counter_reg[12]),
        .O(\counter[0]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_4 
       (.I0(counter_reg[23]),
        .I1(counter_reg[21]),
        .I2(counter_reg[22]),
        .I3(\counter[0]_i_7_n_1 ),
        .O(\counter[0]_i_4_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \counter[0]_i_6 
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(\counter[0]_i_8_n_1 ),
        .I3(counter_reg[11]),
        .I4(counter_reg[10]),
        .I5(counter_reg[9]),
        .O(\counter[0]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_7 
       (.I0(counter_reg[25]),
        .I1(counter_reg[27]),
        .I2(counter_reg[24]),
        .I3(counter_reg[26]),
        .O(\counter[0]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hFF8A000000000000)) 
    \counter[0]_i_8 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(\counter[0]_i_9_n_1 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[5]),
        .I5(counter_reg[6]),
        .O(\counter[0]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_9 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[0]_i_9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_8 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_1 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 ,\counter_reg[0]_i_2_n_8 }),
        .S({counter_reg[3:1],\counter[0]_i_5_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_1 ),
        .CO({\counter_reg[12]_i_1_n_1 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 ,\counter_reg[12]_i_1_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_1 ),
        .CO({\counter_reg[16]_i_1_n_1 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 ,\counter_reg[16]_i_1_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_8 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_1 ),
        .CO({\counter_reg[20]_i_1_n_1 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 ,\counter_reg[20]_i_1_n_8 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_8 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_1 ),
        .CO(\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 ,\counter_reg[24]_i_1_n_8 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_8 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_1 ),
        .CO({\counter_reg[4]_i_1_n_1 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 ,\counter_reg[4]_i_1_n_8 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_1 ),
        .CO({\counter_reg[8]_i_1_n_1 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 ,\counter_reg[8]_i_1_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888880)) 
    \xCurrent[9]_i_3 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(\xCurrent[9]_i_5_n_1 ),
        .I3(counter_reg[17]),
        .I4(counter_reg[16]),
        .I5(\xCurrent[9]_i_6_n_1 ),
        .O(CLK));
  LUT6 #(
    .INIT(64'hA888A888A8888888)) 
    \xCurrent[9]_i_5 
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(counter_reg[13]),
        .I3(counter_reg[12]),
        .I4(\xCurrent[9]_i_7_n_1 ),
        .I5(counter_reg[11]),
        .O(\xCurrent[9]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \xCurrent[9]_i_6 
       (.I0(counter_reg[20]),
        .I1(\counter[0]_i_7_n_1 ),
        .I2(counter_reg[22]),
        .I3(counter_reg[21]),
        .I4(counter_reg[23]),
        .O(\xCurrent[9]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \xCurrent[9]_i_7 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(\xCurrent[9]_i_8_n_1 ),
        .I3(counter_reg[8]),
        .I4(counter_reg[10]),
        .I5(counter_reg[9]),
        .O(\xCurrent[9]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \xCurrent[9]_i_8 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .I4(counter_reg[5]),
        .I5(counter_reg[4]),
        .O(\xCurrent[9]_i_8_n_1 ));
endmodule

module clockDivider
   (clkDiv_reg_0,
    clk_IBUF_BUFG);
  output clkDiv_reg_0;
  input clk_IBUF_BUFG;

  wire clkDiv_i_1_n_1;
  wire clkDiv_reg_0;
  wire clk_IBUF_BUFG;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkDiv_i_1_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_0
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__9_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__9
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__9_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__9_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_1
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__10_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__10
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__10_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__10_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_10
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__2_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__2
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__2_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_11
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__3_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__3
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__3_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__3_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_12
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__4_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__4
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__4_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__4_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_13
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__5_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__5
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__5_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__5_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_14
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__6_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__6
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__6_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__6_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_15
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__7_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__7
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__7_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__7_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_16
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__8_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__8
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__8_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__8_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_2
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__11_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__11
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__11_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__11_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_3
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__12_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__12
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__12_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__12_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_4
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__13_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__13
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__13_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__13_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_5
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__14_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__14
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__14_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__14_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_6
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__15_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__15
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__15_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__15_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_7
   (CLK,
    clkDiv_reg_0);
  output CLK;
  input clkDiv_reg_0;

  wire CLK;
  wire clkDiv_i_1__16_n_1;
  wire clkDiv_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__16
       (.I0(CLK),
        .O(clkDiv_i_1__16_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_0),
        .CE(1'b1),
        .D(clkDiv_i_1__16_n_1),
        .Q(CLK),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_8
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__0_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__0
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__0_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_9
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__1_n_1;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__1
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__1_n_1),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

module debouncer
   (O_reg_0,
    PS2Clk_IBUF,
    CLK50MHZ_BUFG);
  output O_reg_0;
  input PS2Clk_IBUF;
  input CLK50MHZ_BUFG;

  wire CLK50MHZ_BUFG;
  wire Iv;
  wire O_i_1_n_1;
  wire O_i_2_n_1;
  wire O_reg_0;
  wire PS2Clk_IBUF;
  wire clear;
  wire \count[0]_i_1_n_1 ;
  wire \count[1]_i_1_n_1 ;
  wire \count[2]_i_1_n_1 ;
  wire \count[3]_i_1_n_1 ;
  wire \count[4]_i_1_n_1 ;
  wire [4:0]count_reg;

  LUT2 #(
    .INIT(4'h6)) 
    Iv_i_1
       (.I0(PS2Clk_IBUF),
        .I1(Iv),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(CLK50MHZ_BUFG),
        .CE(clear),
        .D(PS2Clk_IBUF),
        .Q(Iv),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    O_i_1
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .I5(O_i_2_n_1),
        .O(O_i_1_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    O_i_2
       (.I0(Iv),
        .I1(PS2Clk_IBUF),
        .O(O_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    O_reg
       (.C(CLK50MHZ_BUFG),
        .CE(O_i_1_n_1),
        .D(PS2Clk_IBUF),
        .Q(O_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444444C44444)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(O_i_2_n_1),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .I4(count_reg[1]),
        .I5(count_reg[2]),
        .O(\count[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h1000FF00FF000000)) 
    \count[1]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(O_i_2_n_1),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\count[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0D00F000F000F000)) 
    \count[2]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(O_i_2_n_1),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\count[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h7F00007F80000080)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(PS2Clk_IBUF),
        .I4(Iv),
        .I5(count_reg[3]),
        .O(\count[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(O_i_2_n_1),
        .I5(count_reg[4]),
        .O(\count[4]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_1 ),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_1 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_1 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[3]_i_1_n_1 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[4]_i_1_n_1 ),
        .Q(count_reg[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_17
   (O,
    PS2Data_IBUF,
    CLK50MHZ_BUFG);
  output O;
  input PS2Data_IBUF;
  input CLK50MHZ_BUFG;

  wire CLK50MHZ_BUFG;
  wire Iv_i_1__0_n_1;
  wire Iv_reg_n_1;
  wire O;
  wire O_i_1__0_n_1;
  wire O_i_2__0_n_1;
  wire PS2Data_IBUF;
  wire \count[4]_i_1__0_n_1 ;
  wire [4:0]count_reg__0;
  wire [4:0]p_0_in;

  LUT2 #(
    .INIT(4'h6)) 
    Iv_i_1__0
       (.I0(PS2Data_IBUF),
        .I1(Iv_reg_n_1),
        .O(Iv_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(CLK50MHZ_BUFG),
        .CE(Iv_i_1__0_n_1),
        .D(PS2Data_IBUF),
        .Q(Iv_reg_n_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004004)) 
    O_i_1__0
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[4]),
        .I2(Iv_reg_n_1),
        .I3(PS2Data_IBUF),
        .I4(O_i_2__0_n_1),
        .O(O_i_1__0_n_1));
  LUT3 #(
    .INIT(8'hF7)) 
    O_i_2__0
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .O(O_i_2__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    O_reg
       (.C(CLK50MHZ_BUFG),
        .CE(O_i_1__0_n_1),
        .D(PS2Data_IBUF),
        .Q(O),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \count[4]_i_1__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[4]),
        .I4(count_reg__0[3]),
        .O(\count[4]_i_1__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \count[4]_i_2 
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[4]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[0]),
        .I4(count_reg__0[2]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_1 ),
        .D(p_0_in[0]),
        .Q(count_reg__0[0]),
        .R(Iv_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_1 ),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]),
        .R(Iv_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_1 ),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]),
        .R(Iv_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_1 ),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]),
        .R(Iv_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_1 ),
        .D(p_0_in[4]),
        .Q(count_reg__0[4]),
        .R(Iv_i_1__0_n_1));
endmodule

module game_logic
   (yPlayer,
    data_reg_0,
    \keycodev_reg[0] ,
    Q,
    data_reg_0_0,
    data_reg_0_1,
    data_reg_0_2,
    \data_reg[4] ,
    data_reg_1,
    \addr_kebab[12]_i_5 ,
    \keycodev_reg[0]_0 ,
    \keycodev_reg[0]_1 ,
    \v_count_reg_reg[7] ,
    \keycodev_reg[0]_2 ,
    \xPlayer_reg[9]_i_2_0 ,
    \hpMonster_reg[5]_0 ,
    SR,
    \addr_heart[7]_i_6_0 ,
    \data_reg[7] ,
    \h_count_reg_reg[0] ,
    \xCurrent_reg[9] ,
    \h_count_reg_reg[7] ,
    \v_count_reg_reg[7]_0 ,
    \h_count_reg_reg[9] ,
    \xPlayer_reg[5]_0 ,
    \xPlayer_reg[3]_0 ,
    E,
    \state_reg[1]_0 ,
    \h_count_reg_reg[3] ,
    \state_reg[1]_1 ,
    \state_reg[2]_0 ,
    \keycodev_reg[0]_3 ,
    \state_reg[1]_2 ,
    \keycodev_reg[0]_4 ,
    data_reg_1_0,
    \h_count_reg_reg[7]_0 ,
    CO,
    \h_count_reg_reg[4] ,
    \data_reg[4]_0 ,
    \v_count_reg_reg[0] ,
    \h_count_reg_reg[7]_1 ,
    \h_count_reg_reg[9]_0 ,
    \xPlayer_reg[3]_1 ,
    \state_reg[2]_1 ,
    \data_reg[0] ,
    \data_reg[1] ,
    \data_reg[2] ,
    \data_reg[3] ,
    \data_reg[4]_1 ,
    \data_reg[5] ,
    \data_reg[6] ,
    \data_reg[7]_0 ,
    \v_count_reg_reg[0]_0 ,
    \data_reg[0]_0 ,
    \addr_kebab_reg[0] ,
    out,
    \data_reg[1]_0 ,
    \data_reg[2]_0 ,
    \data_reg[3]_0 ,
    data,
    \data[4]_i_3 ,
    \data_reg[5]_0 ,
    \addr_kebab_reg[0]_0 ,
    \data[5]_i_18 ,
    \data[5]_i_18_0 ,
    \addr_pizza_reg[0] ,
    \addr_pizza_reg[0]_0 ,
    x,
    \addr_heart_reg[0] ,
    \addr_heart_reg[0]_0 ,
    \data[7]_i_2 ,
    \data[7]_i_2_0 ,
    addr_milk_reg,
    addr_bone_reg_i_25,
    \addr_lolipop_reg[0] ,
    \addr_lolipop_reg[0]_0 ,
    DI,
    S,
    addr_bone_reg_i_8_0,
    O,
    \data_reg[4]_2 ,
    data_play,
    D,
    \data_reg[7]_1 ,
    \addr_lolipop_reg[0]_1 ,
    \addr_lolipop_reg[0]_2 ,
    stop_reg_i_1,
    stop_reg_i_1_0,
    clk_IBUF_BUFG);
  output [0:0]yPlayer;
  output data_reg_0;
  output \keycodev_reg[0] ;
  output [1:0]Q;
  output data_reg_0_0;
  output data_reg_0_1;
  output data_reg_0_2;
  output \data_reg[4] ;
  output data_reg_1;
  output [0:0]\addr_kebab[12]_i_5 ;
  output \keycodev_reg[0]_0 ;
  output \keycodev_reg[0]_1 ;
  output [0:0]\v_count_reg_reg[7] ;
  output \keycodev_reg[0]_2 ;
  output [1:0]\xPlayer_reg[9]_i_2_0 ;
  output \hpMonster_reg[5]_0 ;
  output [0:0]SR;
  output [0:0]\addr_heart[7]_i_6_0 ;
  output \data_reg[7] ;
  output \h_count_reg_reg[0] ;
  output [9:0]\xCurrent_reg[9] ;
  output [1:0]\h_count_reg_reg[7] ;
  output [1:0]\v_count_reg_reg[7]_0 ;
  output [0:0]\h_count_reg_reg[9] ;
  output \xPlayer_reg[5]_0 ;
  output \xPlayer_reg[3]_0 ;
  output [0:0]E;
  output \state_reg[1]_0 ;
  output [3:0]\h_count_reg_reg[3] ;
  output \state_reg[1]_1 ;
  output \state_reg[2]_0 ;
  output \keycodev_reg[0]_3 ;
  output \state_reg[1]_2 ;
  output \keycodev_reg[0]_4 ;
  output data_reg_1_0;
  output [0:0]\h_count_reg_reg[7]_0 ;
  output [0:0]CO;
  output [0:0]\h_count_reg_reg[4] ;
  output \data_reg[4]_0 ;
  output [0:0]\v_count_reg_reg[0] ;
  output [2:0]\h_count_reg_reg[7]_1 ;
  output [1:0]\h_count_reg_reg[9]_0 ;
  output \xPlayer_reg[3]_1 ;
  output \state_reg[2]_1 ;
  output \data_reg[0] ;
  output \data_reg[1] ;
  output \data_reg[2] ;
  output \data_reg[3] ;
  output \data_reg[4]_1 ;
  output \data_reg[5] ;
  output \data_reg[6] ;
  output \data_reg[7]_0 ;
  output [0:0]\v_count_reg_reg[0]_0 ;
  input \data_reg[0]_0 ;
  input \addr_kebab_reg[0] ;
  input [6:0]out;
  input \data_reg[1]_0 ;
  input \data_reg[2]_0 ;
  input \data_reg[3]_0 ;
  input [0:0]data;
  input \data[4]_i_3 ;
  input \data_reg[5]_0 ;
  input \addr_kebab_reg[0]_0 ;
  input \data[5]_i_18 ;
  input \data[5]_i_18_0 ;
  input \addr_pizza_reg[0] ;
  input \addr_pizza_reg[0]_0 ;
  input [9:0]x;
  input \addr_heart_reg[0] ;
  input \addr_heart_reg[0]_0 ;
  input [0:0]\data[7]_i_2 ;
  input \data[7]_i_2_0 ;
  input addr_milk_reg;
  input [2:0]addr_bone_reg_i_25;
  input \addr_lolipop_reg[0] ;
  input \addr_lolipop_reg[0]_0 ;
  input [0:0]DI;
  input [0:0]S;
  input [2:0]addr_bone_reg_i_8_0;
  input [0:0]O;
  input \data_reg[4]_2 ;
  input [7:0]data_play;
  input [2:0]D;
  input [0:0]\data_reg[7]_1 ;
  input [1:0]\addr_lolipop_reg[0]_1 ;
  input [0:0]\addr_lolipop_reg[0]_2 ;
  input [4:0]stop_reg_i_1;
  input [0:0]stop_reg_i_1_0;
  input clk_IBUF_BUFG;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [2:0]addr_bone_reg_i_25;
  wire addr_bone_reg_i_28_n_1;
  wire addr_bone_reg_i_29_n_1;
  wire addr_bone_reg_i_30_n_1;
  wire addr_bone_reg_i_31_n_1;
  wire addr_bone_reg_i_32_n_1;
  wire addr_bone_reg_i_39_n_1;
  wire addr_bone_reg_i_64_n_1;
  wire addr_bone_reg_i_65_n_1;
  wire addr_bone_reg_i_66_n_1;
  wire addr_bone_reg_i_67_n_1;
  wire addr_bone_reg_i_68_n_1;
  wire addr_bone_reg_i_72_n_1;
  wire [2:0]addr_bone_reg_i_8_0;
  wire \addr_heart[7]_i_32_n_1 ;
  wire \addr_heart[7]_i_33_n_1 ;
  wire \addr_heart[7]_i_34_n_1 ;
  wire \addr_heart[7]_i_36_n_1 ;
  wire \addr_heart[7]_i_37_n_1 ;
  wire \addr_heart[7]_i_38_n_1 ;
  wire \addr_heart[7]_i_41_n_1 ;
  wire \addr_heart[7]_i_42_n_1 ;
  wire [0:0]\addr_heart[7]_i_6_0 ;
  wire \addr_heart_reg[0] ;
  wire \addr_heart_reg[0]_0 ;
  wire [0:0]\addr_kebab[12]_i_5 ;
  wire \addr_kebab_reg[0] ;
  wire \addr_kebab_reg[0]_0 ;
  wire \addr_lolipop_reg[0] ;
  wire \addr_lolipop_reg[0]_0 ;
  wire [1:0]\addr_lolipop_reg[0]_1 ;
  wire [0:0]\addr_lolipop_reg[0]_2 ;
  wire addr_milk_reg;
  wire \addr_pizza_reg[0] ;
  wire \addr_pizza_reg[0]_0 ;
  wire an3;
  wire an3_reg_i_1_n_1;
  wire clkDiv_n_1;
  wire clk_IBUF_BUFG;
  wire [0:0]data;
  wire \data[4]_i_10_n_1 ;
  wire \data[4]_i_3 ;
  wire \data[5]_i_18 ;
  wire \data[5]_i_18_0 ;
  wire [0:0]\data[7]_i_2 ;
  wire \data[7]_i_2_0 ;
  wire [7:0]data_play;
  wire \data_reg[0] ;
  wire \data_reg[0]_0 ;
  wire \data_reg[1] ;
  wire \data_reg[1]_0 ;
  wire \data_reg[2] ;
  wire \data_reg[2]_0 ;
  wire \data_reg[3] ;
  wire \data_reg[3]_0 ;
  wire \data_reg[4] ;
  wire \data_reg[4]_0 ;
  wire \data_reg[4]_1 ;
  wire \data_reg[4]_2 ;
  wire \data_reg[5] ;
  wire \data_reg[5]_0 ;
  wire \data_reg[6] ;
  wire \data_reg[7] ;
  wire \data_reg[7]_0 ;
  wire [0:0]\data_reg[7]_1 ;
  wire data_reg_0;
  wire data_reg_0_0;
  wire data_reg_0_1;
  wire data_reg_0_2;
  wire data_reg_1;
  wire data_reg_1_0;
  wire [4:0]direction;
  wire \h_count_reg_reg[0] ;
  wire [3:0]\h_count_reg_reg[3] ;
  wire [0:0]\h_count_reg_reg[4] ;
  wire [1:0]\h_count_reg_reg[7] ;
  wire [0:0]\h_count_reg_reg[7]_0 ;
  wire [2:0]\h_count_reg_reg[7]_1 ;
  wire [0:0]\h_count_reg_reg[9] ;
  wire [1:0]\h_count_reg_reg[9]_0 ;
  wire [5:1]hpMonster;
  wire \hpMonster_reg[5]_0 ;
  wire \keycodev_reg[0] ;
  wire \keycodev_reg[0]_0 ;
  wire \keycodev_reg[0]_1 ;
  wire \keycodev_reg[0]_2 ;
  wire \keycodev_reg[0]_3 ;
  wire \keycodev_reg[0]_4 ;
  wire [6:0]out;
  wire [2:0]state;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire [4:0]stop_reg_i_1;
  wire [0:0]stop_reg_i_1_0;
  wire superatk_n_1;
  wire superatk_n_10;
  wire superatk_n_11;
  wire superatk_n_12;
  wire superatk_n_13;
  wire superatk_n_14;
  wire superatk_n_15;
  wire superatk_n_16;
  wire superatk_n_17;
  wire superatk_n_2;
  wire superatk_n_3;
  wire superatk_n_4;
  wire superatk_n_5;
  wire superatk_n_6;
  wire superatk_n_7;
  wire superatk_n_8;
  wire superatk_n_9;
  wire [0:0]\v_count_reg_reg[0] ;
  wire [0:0]\v_count_reg_reg[0]_0 ;
  wire [0:0]\v_count_reg_reg[7] ;
  wire [1:0]\v_count_reg_reg[7]_0 ;
  wire [9:0]x;
  wire [9:0]\xCurrent_reg[9] ;
  wire \xPlayer_reg[3]_0 ;
  wire \xPlayer_reg[3]_1 ;
  wire \xPlayer_reg[5]_0 ;
  wire [1:0]\xPlayer_reg[9]_i_2_0 ;
  wire \xPlayer_reg[9]_i_2_n_1 ;
  wire [0:0]yPlayer;
  wire [2:0]NLW_addr_bone_reg_i_28_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_28_O_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_8_O_UNCONNECTED;
  wire [2:0]\NLW_addr_heart_reg[7]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_heart_reg[7]_i_24_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h96)) 
    addr_bone_reg_i_14
       (.I0(addr_bone_reg_i_39_n_1),
        .I1(O),
        .I2(x[4]),
        .O(\h_count_reg_reg[4] ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    addr_bone_reg_i_15
       (.I0(x[3]),
        .I1(\xCurrent_reg[9] [1]),
        .I2(\xCurrent_reg[9] [0]),
        .I3(\xCurrent_reg[9] [2]),
        .I4(\xCurrent_reg[9] [3]),
        .O(\h_count_reg_reg[3] [3]));
  LUT4 #(
    .INIT(16'hA956)) 
    addr_bone_reg_i_16
       (.I0(x[2]),
        .I1(\xCurrent_reg[9] [0]),
        .I2(\xCurrent_reg[9] [1]),
        .I3(\xCurrent_reg[9] [2]),
        .O(\h_count_reg_reg[3] [2]));
  LUT3 #(
    .INIT(8'h96)) 
    addr_bone_reg_i_17
       (.I0(x[1]),
        .I1(\xCurrent_reg[9] [1]),
        .I2(\xCurrent_reg[9] [0]),
        .O(\h_count_reg_reg[3] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_bone_reg_i_18
       (.I0(\xCurrent_reg[9] [0]),
        .I1(x[0]),
        .O(\h_count_reg_reg[3] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_21
       (.I0(\xCurrent_reg[9] [9]),
        .I1(x[9]),
        .I2(\xCurrent_reg[9] [8]),
        .I3(x[8]),
        .O(\h_count_reg_reg[9] ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_28
       (.CI(1'b0),
        .CO({addr_bone_reg_i_28_n_1,NLW_addr_bone_reg_i_28_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({addr_bone_reg_i_64_n_1,addr_bone_reg_i_65_n_1,addr_bone_reg_i_66_n_1,addr_bone_reg_i_67_n_1}),
        .O(NLW_addr_bone_reg_i_28_O_UNCONNECTED[3:0]),
        .S({addr_bone_reg_i_68_n_1,addr_bone_reg_i_8_0}));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    addr_bone_reg_i_29
       (.I0(\xCurrent_reg[9] [8]),
        .I1(\xCurrent_reg[9] [6]),
        .I2(\xCurrent_reg[9] [4]),
        .I3(\xCurrent_reg[9] [5]),
        .I4(\xCurrent_reg[9] [7]),
        .I5(\xCurrent_reg[9] [9]),
        .O(addr_bone_reg_i_29_n_1));
  LUT5 #(
    .INIT(32'h15403D54)) 
    addr_bone_reg_i_30
       (.I0(x[9]),
        .I1(addr_bone_reg_i_72_n_1),
        .I2(\xCurrent_reg[9] [8]),
        .I3(\xCurrent_reg[9] [9]),
        .I4(x[8]),
        .O(addr_bone_reg_i_30_n_1));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    addr_bone_reg_i_31
       (.I0(\xCurrent_reg[9] [9]),
        .I1(\xCurrent_reg[9] [7]),
        .I2(\xCurrent_reg[9] [5]),
        .I3(\xCurrent_reg[9] [4]),
        .I4(\xCurrent_reg[9] [6]),
        .I5(\xCurrent_reg[9] [8]),
        .O(addr_bone_reg_i_31_n_1));
  LUT5 #(
    .INIT(32'h09906009)) 
    addr_bone_reg_i_32
       (.I0(\xCurrent_reg[9] [9]),
        .I1(x[9]),
        .I2(\xCurrent_reg[9] [8]),
        .I3(addr_bone_reg_i_72_n_1),
        .I4(x[8]),
        .O(addr_bone_reg_i_32_n_1));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    addr_bone_reg_i_34
       (.I0(\xCurrent_reg[9] [5]),
        .I1(\xCurrent_reg[9] [4]),
        .I2(\xCurrent_reg[9] [2]),
        .I3(\xCurrent_reg[9] [0]),
        .I4(\xCurrent_reg[9] [1]),
        .I5(\xCurrent_reg[9] [3]),
        .O(\xPlayer_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    addr_bone_reg_i_36
       (.I0(\xCurrent_reg[9] [4]),
        .I1(\xCurrent_reg[9] [2]),
        .I2(\xCurrent_reg[9] [0]),
        .I3(\xCurrent_reg[9] [1]),
        .I4(\xCurrent_reg[9] [3]),
        .I5(\xCurrent_reg[9] [5]),
        .O(\xPlayer_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    addr_bone_reg_i_37
       (.I0(\xCurrent_reg[9] [2]),
        .I1(\xCurrent_reg[9] [0]),
        .I2(\xCurrent_reg[9] [1]),
        .I3(\xCurrent_reg[9] [3]),
        .O(\xPlayer_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    addr_bone_reg_i_39
       (.I0(\xCurrent_reg[9] [4]),
        .I1(\xCurrent_reg[9] [3]),
        .I2(\xCurrent_reg[9] [1]),
        .I3(\xCurrent_reg[9] [0]),
        .I4(\xCurrent_reg[9] [2]),
        .O(addr_bone_reg_i_39_n_1));
  LUT3 #(
    .INIT(8'h40)) 
    addr_bone_reg_i_4
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\state_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_44
       (.I0(\xCurrent_reg[9] [7]),
        .I1(x[7]),
        .I2(\xCurrent_reg[9] [6]),
        .I3(x[6]),
        .O(\h_count_reg_reg[7] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_45
       (.I0(\xCurrent_reg[9] [4]),
        .I1(x[4]),
        .I2(\xCurrent_reg[9] [5]),
        .I3(x[5]),
        .O(\h_count_reg_reg[7] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_bone_reg_i_56
       (.I0(yPlayer),
        .I1(addr_bone_reg_i_25[2]),
        .O(\v_count_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_bone_reg_i_58
       (.I0(yPlayer),
        .I1(addr_bone_reg_i_25[1]),
        .O(\v_count_reg_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    addr_bone_reg_i_64
       (.I0(x[7]),
        .I1(\xCurrent_reg[9] [5]),
        .I2(\xCurrent_reg[9] [4]),
        .I3(\xCurrent_reg[9] [6]),
        .I4(\xCurrent_reg[9] [7]),
        .I5(x[6]),
        .O(addr_bone_reg_i_64_n_1));
  LUT4 #(
    .INIT(16'h105B)) 
    addr_bone_reg_i_65
       (.I0(\xCurrent_reg[9] [4]),
        .I1(x[4]),
        .I2(\xCurrent_reg[9] [5]),
        .I3(x[5]),
        .O(addr_bone_reg_i_65_n_1));
  LUT4 #(
    .INIT(16'h2F02)) 
    addr_bone_reg_i_66
       (.I0(\xCurrent_reg[9] [2]),
        .I1(x[2]),
        .I2(x[3]),
        .I3(\xCurrent_reg[9] [3]),
        .O(addr_bone_reg_i_66_n_1));
  LUT4 #(
    .INIT(16'h2F02)) 
    addr_bone_reg_i_67
       (.I0(\xCurrent_reg[9] [0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(\xCurrent_reg[9] [1]),
        .O(addr_bone_reg_i_67_n_1));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    addr_bone_reg_i_68
       (.I0(\xCurrent_reg[9] [7]),
        .I1(x[7]),
        .I2(\xCurrent_reg[9] [6]),
        .I3(\xCurrent_reg[9] [5]),
        .I4(\xCurrent_reg[9] [4]),
        .I5(x[6]),
        .O(addr_bone_reg_i_68_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    addr_bone_reg_i_72
       (.I0(\xCurrent_reg[9] [6]),
        .I1(\xCurrent_reg[9] [4]),
        .I2(\xCurrent_reg[9] [5]),
        .I3(\xCurrent_reg[9] [7]),
        .O(addr_bone_reg_i_72_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    addr_bone_reg_i_76
       (.I0(yPlayer),
        .I1(addr_bone_reg_i_25[0]),
        .O(\v_count_reg_reg[0] ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_8
       (.CI(addr_bone_reg_i_28_n_1),
        .CO({NLW_addr_bone_reg_i_8_CO_UNCONNECTED[3:2],CO,NLW_addr_bone_reg_i_8_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,addr_bone_reg_i_29_n_1,addr_bone_reg_i_30_n_1}),
        .O(NLW_addr_bone_reg_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,addr_bone_reg_i_31_n_1,addr_bone_reg_i_32_n_1}));
  LUT2 #(
    .INIT(4'h9)) 
    addr_bone_reg_i_80
       (.I0(yPlayer),
        .I1(addr_bone_reg_i_25[0]),
        .O(\v_count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\keycodev_reg[0]_4 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \addr_heart[7]_i_1 
       (.I0(\addr_heart_reg[0] ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\addr_heart_reg[0]_0 ),
        .O(SR));
  LUT5 #(
    .INIT(32'h5104751C)) 
    \addr_heart[7]_i_32 
       (.I0(x[7]),
        .I1(\addr_heart[7]_i_41_n_1 ),
        .I2(hpMonster[5]),
        .I3(\xPlayer_reg[9]_i_2_0 [1]),
        .I4(x[6]),
        .O(\addr_heart[7]_i_32_n_1 ));
  LUT5 #(
    .INIT(32'h045145D3)) 
    \addr_heart[7]_i_33 
       (.I0(x[5]),
        .I1(hpMonster[3]),
        .I2(\addr_heart[7]_i_42_n_1 ),
        .I3(hpMonster[4]),
        .I4(x[4]),
        .O(\addr_heart[7]_i_33_n_1 ));
  LUT5 #(
    .INIT(32'h4015543D)) 
    \addr_heart[7]_i_34 
       (.I0(x[3]),
        .I1(\xPlayer_reg[9]_i_2_0 [0]),
        .I2(hpMonster[1]),
        .I3(hpMonster[2]),
        .I4(x[2]),
        .O(\addr_heart[7]_i_34_n_1 ));
  LUT5 #(
    .INIT(32'h09609009)) 
    \addr_heart[7]_i_36 
       (.I0(\xPlayer_reg[9]_i_2_0 [1]),
        .I1(x[7]),
        .I2(\addr_heart[7]_i_41_n_1 ),
        .I3(hpMonster[5]),
        .I4(x[6]),
        .O(\addr_heart[7]_i_36_n_1 ));
  LUT5 #(
    .INIT(32'h60060690)) 
    \addr_heart[7]_i_37 
       (.I0(hpMonster[4]),
        .I1(x[5]),
        .I2(hpMonster[3]),
        .I3(\addr_heart[7]_i_42_n_1 ),
        .I4(x[4]),
        .O(\addr_heart[7]_i_37_n_1 ));
  LUT5 #(
    .INIT(32'h06609006)) 
    \addr_heart[7]_i_38 
       (.I0(hpMonster[2]),
        .I1(x[3]),
        .I2(\xPlayer_reg[9]_i_2_0 [0]),
        .I3(hpMonster[1]),
        .I4(x[2]),
        .O(\addr_heart[7]_i_38_n_1 ));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    \addr_heart[7]_i_40 
       (.I0(hpMonster[3]),
        .I1(\xPlayer_reg[9]_i_2_0 [0]),
        .I2(hpMonster[1]),
        .I3(hpMonster[2]),
        .I4(hpMonster[4]),
        .I5(hpMonster[5]),
        .O(\hpMonster_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h01115555)) 
    \addr_heart[7]_i_41 
       (.I0(hpMonster[4]),
        .I1(hpMonster[2]),
        .I2(hpMonster[1]),
        .I3(\xPlayer_reg[9]_i_2_0 [0]),
        .I4(hpMonster[3]),
        .O(\addr_heart[7]_i_41_n_1 ));
  LUT3 #(
    .INIT(8'h15)) 
    \addr_heart[7]_i_42 
       (.I0(hpMonster[2]),
        .I1(hpMonster[1]),
        .I2(\xPlayer_reg[9]_i_2_0 [0]),
        .O(\addr_heart[7]_i_42_n_1 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \addr_heart[7]_i_6 
       (.I0(\addr_heart_reg[0]_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\addr_heart[7]_i_6_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_heart_reg[7]_i_24 
       (.CI(1'b0),
        .CO({\h_count_reg_reg[7]_0 ,\NLW_addr_heart_reg[7]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_heart[7]_i_32_n_1 ,\addr_heart[7]_i_33_n_1 ,\addr_heart[7]_i_34_n_1 ,DI}),
        .O(\NLW_addr_heart_reg[7]_i_24_O_UNCONNECTED [3:0]),
        .S({\addr_heart[7]_i_36_n_1 ,\addr_heart[7]_i_37_n_1 ,\addr_heart[7]_i_38_n_1 ,S}));
  LUT6 #(
    .INIT(64'h0000000010010111)) 
    \addr_kebab[12]_i_1 
       (.I0(\addr_kebab_reg[0] ),
        .I1(\keycodev_reg[0]_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\addr_kebab_reg[0]_0 ),
        .O(\addr_kebab[12]_i_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    \addr_kebab[12]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\keycodev_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \addr_lolipop[11]_i_1 
       (.I0(\addr_lolipop_reg[0] ),
        .I1(Q[1]),
        .I2(\addr_lolipop_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\state_reg[1]_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'h68)) 
    \addr_lolipop[11]_i_4 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    addr_milk_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(addr_milk_reg),
        .O(\h_count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000822A0000)) 
    \addr_pizza[9]_i_1 
       (.I0(\addr_pizza_reg[0] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\keycodev_reg[0]_2 ),
        .I5(\addr_pizza_reg[0]_0 ),
        .O(\v_count_reg_reg[7] ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\keycodev_reg[0]_2 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    an3_reg
       (.CLR(1'b0),
        .D(an3_reg_i_1_n_1),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(an3));
  LUT1 #(
    .INIT(2'h1)) 
    an3_reg_i_1
       (.I0(state[2]),
        .O(an3_reg_i_1_n_1));
  clockDiv clkDiv
       (.CLK(clkDiv_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_5
       (.I0(\xCurrent_reg[9] [9]),
        .I1(x[9]),
        .O(\h_count_reg_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_6
       (.I0(\xCurrent_reg[9] [8]),
        .I1(x[8]),
        .O(\h_count_reg_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_7
       (.I0(\xCurrent_reg[9] [7]),
        .I1(x[7]),
        .O(\h_count_reg_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_8
       (.I0(\xCurrent_reg[9] [6]),
        .I1(x[6]),
        .O(\h_count_reg_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_9
       (.I0(\xCurrent_reg[9] [5]),
        .I1(x[5]),
        .O(\h_count_reg_reg[7]_1 [0]));
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[0]_i_1__0 
       (.I0(data_play[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[0] ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \data[0]_i_3 
       (.I0(\keycodev_reg[0] ),
        .I1(\data_reg[0]_0 ),
        .I2(\addr_kebab_reg[0] ),
        .I3(out[0]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(data_reg_0));
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[1]_i_1__0 
       (.I0(data_play[1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[1] ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \data[1]_i_3 
       (.I0(\keycodev_reg[0] ),
        .I1(\data_reg[1]_0 ),
        .I2(\addr_kebab_reg[0] ),
        .I3(out[1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(data_reg_0_0));
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[2]_i_1__0 
       (.I0(data_play[2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[2] ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \data[2]_i_3 
       (.I0(\keycodev_reg[0] ),
        .I1(\data_reg[2]_0 ),
        .I2(\addr_kebab_reg[0] ),
        .I3(out[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(data_reg_0_1));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[3]_i_1__0 
       (.I0(data_play[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[3] ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \data[3]_i_3 
       (.I0(\keycodev_reg[0] ),
        .I1(\data_reg[3]_0 ),
        .I2(\addr_kebab_reg[0] ),
        .I3(out[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(data_reg_0_2));
  LUT3 #(
    .INIT(8'hDF)) 
    \data[4]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[4]),
        .O(\data[4]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[4]_i_1__0 
       (.I0(data_play[4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[4]_1 ));
  LUT5 #(
    .INIT(32'hF1FFFFFF)) 
    \data[4]_i_2 
       (.I0(\data_reg[4]_2 ),
        .I1(data),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\data_reg[4]_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hAA80AA80AA80AAAA)) 
    \data[4]_i_6__0 
       (.I0(\keycodev_reg[0] ),
        .I1(\addr_heart[7]_i_6_0 ),
        .I2(data),
        .I3(\data[4]_i_3 ),
        .I4(\addr_kebab_reg[0] ),
        .I5(\data[4]_i_10_n_1 ),
        .O(\data_reg[4] ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \data[5]_i_15 
       (.I0(\keycodev_reg[0] ),
        .I1(\data_reg[5]_0 ),
        .I2(\addr_kebab_reg[0] ),
        .I3(out[5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(data_reg_1));
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[5]_i_1__0 
       (.I0(data_play[5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[5] ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \data[5]_i_30 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\data[5]_i_18 ),
        .I3(\data[5]_i_18_0 ),
        .O(\keycodev_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \data[5]_i_40 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hE00E0EEE)) 
    \data[5]_i_41 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\keycodev_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \data[5]_i_64 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\keycodev_reg[0]_3 ));
  LUT3 #(
    .INIT(8'h08)) 
    \data[5]_i_7 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[6]_i_1__0 
       (.I0(data_play[6]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[6] ));
  LUT3 #(
    .INIT(8'hDF)) 
    \data[6]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[6]),
        .O(data_reg_1_0));
  LUT3 #(
    .INIT(8'h82)) 
    \data[7]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\state_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \data[7]_i_2__0 
       (.I0(data_play[7]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \data[7]_i_4 
       (.I0(\data[7]_i_2 ),
        .I1(\data[7]_i_2_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\data_reg[7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \direction_reg[0] 
       (.CLR(1'b0),
        .D(stop_reg_i_1[0]),
        .G(stop_reg_i_1_0),
        .GE(1'b1),
        .Q(direction[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \direction_reg[1] 
       (.CLR(1'b0),
        .D(stop_reg_i_1[1]),
        .G(stop_reg_i_1_0),
        .GE(1'b1),
        .Q(direction[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \direction_reg[2] 
       (.CLR(1'b0),
        .D(stop_reg_i_1[2]),
        .G(stop_reg_i_1_0),
        .GE(1'b1),
        .Q(direction[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \direction_reg[3] 
       (.CLR(1'b0),
        .D(stop_reg_i_1[3]),
        .G(stop_reg_i_1_0),
        .GE(1'b1),
        .Q(direction[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \direction_reg[4] 
       (.CLR(1'b0),
        .D(stop_reg_i_1[4]),
        .G(stop_reg_i_1_0),
        .GE(1'b1),
        .Q(direction[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[0] 
       (.CLR(1'b0),
        .D(superatk_n_7),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xPlayer_reg[9]_i_2_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[1] 
       (.CLR(1'b0),
        .D(superatk_n_6),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(hpMonster[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[2] 
       (.CLR(1'b0),
        .D(superatk_n_5),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(hpMonster[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[3] 
       (.CLR(1'b0),
        .D(superatk_n_4),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(hpMonster[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[4] 
       (.CLR(1'b0),
        .D(superatk_n_3),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(hpMonster[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[5] 
       (.CLR(1'b0),
        .D(superatk_n_2),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(hpMonster[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hpMonster_reg[6] 
       (.CLR(1'b0),
        .D(superatk_n_1),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xPlayer_reg[9]_i_2_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pugType_reg[0] 
       (.CLR(1'b0),
        .D(\addr_lolipop_reg[0]_1 [0]),
        .G(\addr_lolipop_reg[0]_2 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pugType_reg[1] 
       (.CLR(1'b0),
        .D(\addr_lolipop_reg[0]_1 [1]),
        .G(\addr_lolipop_reg[0]_2 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(\data_reg[7]_1 ),
        .GE(1'b1),
        .Q(state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(\data_reg[7]_1 ),
        .GE(1'b1),
        .Q(state[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(\data_reg[7]_1 ),
        .GE(1'b1),
        .Q(state[2]));
  atkState superatk
       (.CLK(clkDiv_n_1),
        .D({superatk_n_1,superatk_n_2,superatk_n_3,superatk_n_4,superatk_n_5,superatk_n_6,superatk_n_7}),
        .Q(direction),
        .an3(an3),
        .\xCurrent_reg[9]_0 ({superatk_n_8,superatk_n_9,superatk_n_10,superatk_n_11,superatk_n_12,superatk_n_13,superatk_n_14,superatk_n_15,superatk_n_16,superatk_n_17}),
        .\xPlayer_reg[0] (state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[0] 
       (.CLR(1'b0),
        .D(superatk_n_17),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[1] 
       (.CLR(1'b0),
        .D(superatk_n_16),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[2] 
       (.CLR(1'b0),
        .D(superatk_n_15),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[3] 
       (.CLR(1'b0),
        .D(superatk_n_14),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[4] 
       (.CLR(1'b0),
        .D(superatk_n_13),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[5] 
       (.CLR(1'b0),
        .D(superatk_n_12),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[6] 
       (.CLR(1'b0),
        .D(superatk_n_11),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[7] 
       (.CLR(1'b0),
        .D(superatk_n_10),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[8] 
       (.CLR(1'b0),
        .D(superatk_n_9),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \xPlayer_reg[9] 
       (.CLR(1'b0),
        .D(superatk_n_8),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(\xCurrent_reg[9] [9]));
  LUT3 #(
    .INIT(8'h24)) 
    \xPlayer_reg[9]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\xPlayer_reg[9]_i_2_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \yPlayer_reg[8] 
       (.CLR(1'b0),
        .D(state[0]),
        .G(\xPlayer_reg[9]_i_2_n_1 ),
        .GE(1'b1),
        .Q(yPlayer));
endmodule

module kb_top
   (CLK50MHZ,
    Q,
    D,
    E,
    \keycodev_reg[0]_0 ,
    \keycodev_reg[6]_0 ,
    seg_OBUF,
    \keycodev_reg[3]_0 ,
    \keycodev_reg[3]_1 ,
    clk_IBUF_BUFG,
    PS2Clk_IBUF,
    CLK50MHZ_BUFG,
    PS2Data_IBUF,
    \seg_OBUF[0]_inst_i_1_0 );
  output CLK50MHZ;
  output [0:0]Q;
  output [4:0]D;
  output [0:0]E;
  output [0:0]\keycodev_reg[0]_0 ;
  output [0:0]\keycodev_reg[6]_0 ;
  output [6:0]seg_OBUF;
  output [2:0]\keycodev_reg[3]_0 ;
  output [0:0]\keycodev_reg[3]_1 ;
  input clk_IBUF_BUFG;
  input PS2Clk_IBUF;
  input CLK50MHZ_BUFG;
  input PS2Data_IBUF;
  input [1:0]\seg_OBUF[0]_inst_i_1_0 ;

  wire CLK50MHZ;
  wire CLK50MHZ_BUFG;
  wire CLK50MHZ_i_1_n_1;
  wire [4:0]D;
  wire [0:0]E;
  wire PS2Clk_IBUF;
  wire PS2Data_IBUF;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire cn0_carry_n_1;
  wire data0;
  wire \direction_reg[4]_i_3_n_1 ;
  wire [15:8]key;
  wire [7:1]keycodev;
  wire \keycodev[15]_i_6_n_1 ;
  wire [0:0]\keycodev_reg[0]_0 ;
  wire [2:0]\keycodev_reg[3]_0 ;
  wire [0:0]\keycodev_reg[3]_1 ;
  wire [0:0]\keycodev_reg[6]_0 ;
  wire \pugType_reg[1]_i_3_n_1 ;
  wire [6:0]seg_OBUF;
  wire [1:0]\seg_OBUF[0]_inst_i_1_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_1 ;
  wire \seg_OBUF[6]_inst_i_3_n_1 ;
  wire \seg_OBUF[6]_inst_i_4_n_1 ;
  wire \seg_OBUF[6]_inst_i_5_n_1 ;
  wire [7:0]sel0;
  wire \state_reg[2]_i_3_n_1 ;
  wire uut_n_1;
  wire uut_n_10;
  wire uut_n_11;
  wire uut_n_12;
  wire uut_n_2;
  wire uut_n_21;
  wire uut_n_22;
  wire uut_n_23;
  wire uut_n_3;
  wire uut_n_4;
  wire uut_n_5;
  wire uut_n_6;
  wire uut_n_7;
  wire uut_n_8;
  wire uut_n_9;
  wire [2:0]NLW_cn0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cn0_carry_O_UNCONNECTED;
  wire [3:0]NLW_cn0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cn0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    CLK50MHZ_i_1
       (.I0(CLK50MHZ),
        .O(CLK50MHZ_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    CLK50MHZ_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CLK50MHZ_i_1_n_1),
        .Q(CLK50MHZ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cn0_carry
       (.CI(1'b0),
        .CO({cn0_carry_n_1,NLW_cn0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_cn0_carry_O_UNCONNECTED[3:0]),
        .S({uut_n_9,uut_n_10,uut_n_11,uut_n_12}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cn0_carry__0
       (.CI(cn0_carry_n_1),
        .CO({NLW_cn0_carry__0_CO_UNCONNECTED[3:2],data0,NLW_cn0_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_cn0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,uut_n_22,uut_n_23}));
  LUT1 #(
    .INIT(2'h1)) 
    \direction_reg[0]_i_1 
       (.I0(Q),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \direction_reg[1]_i_1 
       (.I0(Q),
        .I1(keycodev[2]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \direction_reg[2]_i_1 
       (.I0(keycodev[2]),
        .I1(keycodev[5]),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \direction_reg[3]_i_1 
       (.I0(keycodev[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \direction_reg[4]_i_1 
       (.I0(keycodev[3]),
        .I1(keycodev[5]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000003800000000)) 
    \direction_reg[4]_i_2 
       (.I0(keycodev[3]),
        .I1(keycodev[4]),
        .I2(keycodev[5]),
        .I3(keycodev[6]),
        .I4(keycodev[7]),
        .I5(\direction_reg[4]_i_3_n_1 ),
        .O(\keycodev_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h50A65000)) 
    \direction_reg[4]_i_3 
       (.I0(keycodev[1]),
        .I1(keycodev[3]),
        .I2(keycodev[4]),
        .I3(keycodev[2]),
        .I4(Q),
        .O(\direction_reg[4]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \keycodev[15]_i_6 
       (.I0(key[9]),
        .I1(key[8]),
        .I2(key[11]),
        .I3(key[10]),
        .O(\keycodev[15]_i_6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_1),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[2]),
        .Q(key[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[3]),
        .Q(key[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[4]),
        .Q(key[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[5]),
        .Q(key[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[6]),
        .Q(key[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[7]),
        .Q(key[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_2),
        .Q(keycodev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_3),
        .Q(keycodev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_4),
        .Q(keycodev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_5),
        .Q(keycodev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_6),
        .Q(keycodev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_7),
        .Q(keycodev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(uut_n_8),
        .Q(keycodev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[0]),
        .Q(key[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_21),
        .D(sel0[1]),
        .Q(key[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \pugType_reg[1]_i_1 
       (.I0(keycodev[6]),
        .I1(Q),
        .I2(keycodev[4]),
        .O(\keycodev_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0001500000000000)) 
    \pugType_reg[1]_i_2 
       (.I0(keycodev[7]),
        .I1(keycodev[4]),
        .I2(keycodev[2]),
        .I3(keycodev[5]),
        .I4(keycodev[6]),
        .I5(\pugType_reg[1]_i_3_n_1 ),
        .O(E));
  LUT5 #(
    .INIT(32'h020C3200)) 
    \pugType_reg[1]_i_3 
       (.I0(keycodev[4]),
        .I1(keycodev[3]),
        .I2(keycodev[1]),
        .I3(Q),
        .I4(keycodev[2]),
        .O(\pugType_reg[1]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h4184)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_2_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_1 ),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_1 ),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h8C02)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_1 ),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'hC124)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_1 ),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'h223A)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_2_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_1 ),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'h480E)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_2_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_1 ),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4019)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_1 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_1 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_1 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_1 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(key[11]),
        .I1(key[15]),
        .I2(keycodev[3]),
        .I3(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I4(\seg_OBUF[0]_inst_i_1_0 [0]),
        .I5(keycodev[7]),
        .O(\seg_OBUF[6]_inst_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(key[10]),
        .I1(key[14]),
        .I2(keycodev[2]),
        .I3(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I4(\seg_OBUF[0]_inst_i_1_0 [0]),
        .I5(keycodev[6]),
        .O(\seg_OBUF[6]_inst_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(key[8]),
        .I1(key[12]),
        .I2(Q),
        .I3(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I4(\seg_OBUF[0]_inst_i_1_0 [0]),
        .I5(keycodev[4]),
        .O(\seg_OBUF[6]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(key[9]),
        .I1(key[13]),
        .I2(keycodev[1]),
        .I3(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I4(\seg_OBUF[0]_inst_i_1_0 [0]),
        .I5(keycodev[5]),
        .O(\seg_OBUF[6]_inst_i_5_n_1 ));
  LUT4 #(
    .INIT(16'h1F00)) 
    \state_reg[0]_i_1 
       (.I0(keycodev[5]),
        .I1(keycodev[3]),
        .I2(keycodev[4]),
        .I3(keycodev[1]),
        .O(\keycodev_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'h48)) 
    \state_reg[1]_i_1 
       (.I0(keycodev[5]),
        .I1(keycodev[1]),
        .I2(keycodev[3]),
        .O(\keycodev_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hFB00)) 
    \state_reg[2]_i_1 
       (.I0(keycodev[3]),
        .I1(keycodev[1]),
        .I2(keycodev[4]),
        .I3(keycodev[5]),
        .O(\keycodev_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h2020202020282008)) 
    \state_reg[2]_i_2 
       (.I0(\state_reg[2]_i_3_n_1 ),
        .I1(Q),
        .I2(keycodev[1]),
        .I3(keycodev[3]),
        .I4(keycodev[5]),
        .I5(keycodev[4]),
        .O(\keycodev_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0110111400000000)) 
    \state_reg[2]_i_3 
       (.I0(keycodev[7]),
        .I1(keycodev[6]),
        .I2(keycodev[5]),
        .I3(keycodev[4]),
        .I4(keycodev[3]),
        .I5(keycodev[2]),
        .O(\state_reg[2]_i_3_n_1 ));
  PS2Receiver uut
       (.CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .CO(data0),
        .E(uut_n_21),
        .PS2Clk_IBUF(PS2Clk_IBUF),
        .PS2Data_IBUF(PS2Data_IBUF),
        .Q({key,keycodev,Q}),
        .S({uut_n_9,uut_n_10,uut_n_11,uut_n_12}),
        .\keycode_reg[0]_0 (uut_n_1),
        .\keycode_reg[15]_0 (sel0),
        .\keycode_reg[1]_0 (uut_n_2),
        .\keycode_reg[2]_0 (uut_n_3),
        .\keycode_reg[3]_0 (uut_n_4),
        .\keycode_reg[4]_0 (uut_n_5),
        .\keycode_reg[5]_0 (uut_n_6),
        .\keycode_reg[6]_0 (uut_n_7),
        .\keycode_reg[7]_0 (uut_n_8),
        .\keycodev_reg[0] (\keycodev[15]_i_6_n_1 ),
        .\keycodev_reg[15] ({uut_n_22,uut_n_23}));
endmodule

module paletteROM
   (Q,
    DI,
    \color_reg[9]_0 ,
    color3_carry__0_0,
    color3_carry__0_1,
    color3_carry__0_2,
    clk_IBUF_BUFG);
  output [10:0]Q;
  input [1:0]DI;
  input [2:0]\color_reg[9]_0 ;
  input color3_carry__0_0;
  input color3_carry__0_1;
  input color3_carry__0_2;
  input clk_IBUF_BUFG;

  wire [1:0]DI;
  wire [10:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:0]color3;
  wire color3_carry__0_0;
  wire color3_carry__0_1;
  wire color3_carry__0_2;
  wire color3_carry__0_i_1_n_1;
  wire color3_carry__0_i_2_n_1;
  wire color3_carry__0_i_3_n_1;
  wire color3_carry__0_i_4_n_1;
  wire color3_carry_i_1_n_1;
  wire color3_carry_i_2_n_1;
  wire color3_carry_i_3_n_1;
  wire color3_carry_n_1;
  wire \color[0]_i_2_n_1 ;
  wire \color[0]_i_3_n_1 ;
  wire \color[0]_i_4_n_1 ;
  wire \color[10]_i_2_n_1 ;
  wire \color[10]_i_3_n_1 ;
  wire \color[10]_i_4_n_1 ;
  wire \color[1]_i_2_n_1 ;
  wire \color[1]_i_3_n_1 ;
  wire \color[1]_i_4_n_1 ;
  wire \color[2]_i_2_n_1 ;
  wire \color[2]_i_3_n_1 ;
  wire \color[2]_i_4_n_1 ;
  wire \color[3]_i_2_n_1 ;
  wire \color[3]_i_3_n_1 ;
  wire \color[3]_i_4_n_1 ;
  wire \color[3]_i_5_n_1 ;
  wire \color[4]_i_2_n_1 ;
  wire \color[4]_i_3_n_1 ;
  wire \color[4]_i_4_n_1 ;
  wire \color[5]_i_2_n_1 ;
  wire \color[5]_i_3_n_1 ;
  wire \color[5]_i_4_n_1 ;
  wire \color[6]_i_2_n_1 ;
  wire \color[6]_i_3_n_1 ;
  wire \color[6]_i_4_n_1 ;
  wire \color[7]_i_2_n_1 ;
  wire \color[7]_i_4_n_1 ;
  wire \color[7]_i_6_n_1 ;
  wire \color[7]_i_7_n_1 ;
  wire \color[8]_i_2_n_1 ;
  wire \color[8]_i_3_n_1 ;
  wire \color[8]_i_4_n_1 ;
  wire \color[9]_i_2_n_1 ;
  wire \color[9]_i_3_n_1 ;
  wire \color[9]_i_4_n_1 ;
  wire [2:0]\color_reg[9]_0 ;
  wire [10:0]p_2_out;
  wire [7:6]sel;
  wire [2:0]NLW_color3_carry_CO_UNCONNECTED;
  wire [3:0]NLW_color3_carry__0_CO_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 color3_carry
       (.CI(1'b0),
        .CO({color3_carry_n_1,NLW_color3_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,1'b0,1'b1}),
        .O(color3[3:0]),
        .S({color3_carry_i_1_n_1,color3_carry_i_2_n_1,color3_carry_i_3_n_1,DI[0]}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 color3_carry__0
       (.CI(color3_carry_n_1),
        .CO(NLW_color3_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\color_reg[9]_0 }),
        .O(color3[7:4]),
        .S({color3_carry__0_i_1_n_1,color3_carry__0_i_2_n_1,color3_carry__0_i_3_n_1,color3_carry__0_i_4_n_1}));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_1
       (.I0(color3_carry__0_0),
        .I1(color3_carry__0_2),
        .O(color3_carry__0_i_1_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_2
       (.I0(\color_reg[9]_0 [2]),
        .I1(color3_carry__0_1),
        .O(color3_carry__0_i_2_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_3
       (.I0(\color_reg[9]_0 [1]),
        .I1(color3_carry__0_0),
        .O(color3_carry__0_i_3_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_4
       (.I0(\color_reg[9]_0 [0]),
        .I1(\color_reg[9]_0 [2]),
        .O(color3_carry__0_i_4_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry_i_1
       (.I0(DI[1]),
        .I1(\color_reg[9]_0 [1]),
        .O(color3_carry_i_1_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry_i_2
       (.I0(DI[0]),
        .I1(\color_reg[9]_0 [0]),
        .O(color3_carry_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    color3_carry_i_3
       (.I0(DI[1]),
        .O(color3_carry_i_3_n_1));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[0]_i_1 
       (.I0(\color[0]_i_2_n_1 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_1 ),
        .I3(color3[7]),
        .I4(\color[0]_i_3_n_1 ),
        .I5(\color[0]_i_4_n_1 ),
        .O(p_2_out[0]));
  LUT6 #(
    .INIT(64'h7F316A45DF708AE5)) 
    \color[0]_i_2 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hACBE8E816B736387)) 
    \color[0]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h102B13957B17B030)) 
    \color[0]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[0]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[10]_i_1 
       (.I0(\color[10]_i_2_n_1 ),
        .I1(color3[7]),
        .I2(\color[10]_i_3_n_1 ),
        .I3(color3[6]),
        .I4(\color[10]_i_4_n_1 ),
        .O(p_2_out[10]));
  LUT6 #(
    .INIT(64'hEFFEFBEFF6DBFFFE)) 
    \color[10]_i_2 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[1]),
        .I5(color3[0]),
        .O(\color[10]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hACD061A0FA09A492)) 
    \color[10]_i_3 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[1]),
        .I5(color3[0]),
        .O(\color[10]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h8060088400000000)) 
    \color[10]_i_4 
       (.I0(color3[3]),
        .I1(color3[5]),
        .I2(color3[2]),
        .I3(color3[0]),
        .I4(color3[1]),
        .I5(color3[4]),
        .O(\color[10]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[1]_i_1 
       (.I0(\color[1]_i_2_n_1 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_1 ),
        .I3(color3[7]),
        .I4(\color[1]_i_3_n_1 ),
        .I5(\color[1]_i_4_n_1 ),
        .O(p_2_out[1]));
  LUT6 #(
    .INIT(64'h6A9FF992EEFBFFA4)) 
    \color[1]_i_2 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hE545D96663775402)) 
    \color[1]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h5EAAEEA22A916388)) 
    \color[1]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[1]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[2]_i_1 
       (.I0(\color[2]_i_2_n_1 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_1 ),
        .I3(color3[7]),
        .I4(\color[2]_i_3_n_1 ),
        .I5(\color[2]_i_4_n_1 ),
        .O(p_2_out[2]));
  LUT6 #(
    .INIT(64'hFFFC98AF3FE7681E)) 
    \color[2]_i_2 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h413CF7E9C992B39E)) 
    \color[2]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h31D68260456C1086)) 
    \color[2]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[3]_i_1 
       (.I0(\color[3]_i_2_n_1 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_1 ),
        .I3(color3[7]),
        .I4(\color[3]_i_4_n_1 ),
        .I5(\color[3]_i_5_n_1 ),
        .O(p_2_out[3]));
  LUT6 #(
    .INIT(64'hFFFB7FDE7EFFF7F9)) 
    \color[3]_i_2 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[3]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \color[3]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .O(\color[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h1EE308183C8C8E61)) 
    \color[3]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h0880000060080800)) 
    \color[3]_i_5 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[3]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[4]_i_1 
       (.I0(\color[4]_i_2_n_1 ),
        .I1(sel[7]),
        .I2(\color[4]_i_3_n_1 ),
        .I3(sel[6]),
        .I4(\color[4]_i_4_n_1 ),
        .O(p_2_out[4]));
  LUT6 #(
    .INIT(64'hF619FE9CF68901E6)) 
    \color[4]_i_2 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h7B5EC2DB4F82C227)) 
    \color[4]_i_3 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h2A569A2E8D081C5C)) 
    \color[4]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[4]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[5]_i_1 
       (.I0(\color[5]_i_2_n_1 ),
        .I1(sel[7]),
        .I2(\color[5]_i_3_n_1 ),
        .I3(sel[6]),
        .I4(\color[5]_i_4_n_1 ),
        .O(p_2_out[5]));
  LUT6 #(
    .INIT(64'hFFEFA0DFFB8DBE30)) 
    \color[5]_i_2 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h1A0BC7EF4017BD41)) 
    \color[5]_i_3 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h6FD5500B5FB5C200)) 
    \color[5]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[5]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[6]_i_1 
       (.I0(\color[6]_i_2_n_1 ),
        .I1(sel[7]),
        .I2(\color[6]_i_3_n_1 ),
        .I3(sel[6]),
        .I4(\color[6]_i_4_n_1 ),
        .O(p_2_out[6]));
  LUT6 #(
    .INIT(64'h7FDB7FF36976906D)) 
    \color[6]_i_2 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hA0D386599FF35F2C)) 
    \color[6]_i_3 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[6]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h112CB7F104920920)) 
    \color[6]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[6]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[7]_i_1 
       (.I0(\color[7]_i_2_n_1 ),
        .I1(sel[7]),
        .I2(\color[7]_i_4_n_1 ),
        .I3(sel[6]),
        .I4(\color[7]_i_6_n_1 ),
        .O(p_2_out[7]));
  LUT6 #(
    .INIT(64'h7FFFFDBEDFEDFFDB)) 
    \color[7]_i_2 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[7]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \color[7]_i_3 
       (.I0(color3[0]),
        .I1(\color[3]_i_3_n_1 ),
        .I2(color3[6]),
        .I3(color3[7]),
        .O(sel[7]));
  LUT6 #(
    .INIT(64'h6DB47924E2482092)) 
    \color[7]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[7]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \color[7]_i_5 
       (.I0(color3[0]),
        .I1(color3[4]),
        .I2(\color[7]_i_7_n_1 ),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[6]),
        .O(sel[6]));
  LUT6 #(
    .INIT(64'h4920200080000000)) 
    \color[7]_i_6 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[4]),
        .O(\color[7]_i_6_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \color[7]_i_7 
       (.I0(color3[1]),
        .I1(color3[2]),
        .O(\color[7]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[8]_i_1 
       (.I0(\color[8]_i_2_n_1 ),
        .I1(color3[7]),
        .I2(\color[8]_i_3_n_1 ),
        .I3(color3[6]),
        .I4(\color[8]_i_4_n_1 ),
        .O(p_2_out[8]));
  LUT6 #(
    .INIT(64'hD8D6EBDA9BDCDEFD)) 
    \color[8]_i_2 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[0]),
        .I5(color3[1]),
        .O(\color[8]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h393612F48677D264)) 
    \color[8]_i_3 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[0]),
        .I5(color3[1]),
        .O(\color[8]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hE869C9D8A4C8CACC)) 
    \color[8]_i_4 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[0]),
        .I3(color3[1]),
        .I4(color3[2]),
        .I5(color3[5]),
        .O(\color[8]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[9]_i_1 
       (.I0(\color[9]_i_2_n_1 ),
        .I1(color3[7]),
        .I2(\color[9]_i_3_n_1 ),
        .I3(color3[6]),
        .I4(\color[9]_i_4_n_1 ),
        .O(p_2_out[9]));
  LUT6 #(
    .INIT(64'hFDF6A5F9BDE9F4A4)) 
    \color[9]_i_2 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[1]),
        .I4(color3[2]),
        .I5(color3[0]),
        .O(\color[9]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h562B5E5E856E1BD9)) 
    \color[9]_i_3 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[1]),
        .I5(color3[0]),
        .O(\color[9]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h1071B4426824B268)) 
    \color[9]_i_4 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[0]),
        .I4(color3[1]),
        .I5(color3[2]),
        .O(\color[9]_i_4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module playScreen
   (P,
    DOADO,
    data_play,
    data_reg_1,
    data_reg,
    data_reg_0,
    data_reg_2,
    data_reg_3,
    data_reg_4,
    data_reg_5,
    data_reg_6,
    \data_reg[0]_0 ,
    addr_bone_reg_i_8,
    \data_reg[1]_0 ,
    data_reg_7,
    \data_reg[3]_0 ,
    \data_reg[4]_0 ,
    data_reg_8,
    \data_reg[6]_0 ,
    DI,
    \addr_burger_reg[7]_i_30 ,
    \addr_burger_reg[7]_i_30_0 ,
    \addr_burger_reg[7]_i_30_1 ,
    \addr_burger_reg[7]_i_30_2 ,
    \addr_pizza_reg[9]_i_13 ,
    \addr_pizza_reg[9]_i_13_0 ,
    data3__1_0,
    \data[5]_i_88_0 ,
    \h_count_reg_reg[0] ,
    \addr_burger_reg[7]_i_31 ,
    \h_count_reg_reg[0]_0 ,
    \addr_lolipop_reg[8]_i_10 ,
    \addr_lolipop_reg[11]_i_16 ,
    \h_count_reg_reg[0]_1 ,
    \h_count_reg_reg[5] ,
    \v_count_reg_reg[9] ,
    \v_count_reg_reg[9]_0 ,
    \v_count_reg_reg[9]_1 ,
    \data_reg[7]_0 ,
    \data_reg[7]_1 ,
    \data_reg[7]_2 ,
    out,
    data,
    data5,
    A,
    n_0_1212_BUFG,
    clk_IBUF_BUFG,
    C,
    addr_milk_reg_0,
    ADDRARDADDR,
    addr_bone_reg_0,
    addr_bone_reg_1,
    p_0_out_0,
    B,
    \data_reg[5]_0 ,
    \data_reg[5]_1 ,
    \data_reg[5]_2 ,
    \data_reg[3]_1 ,
    \data_reg[2]_0 ,
    \data_reg[1]_1 ,
    \data_reg[0]_1 ,
    \data_reg[7]_3 ,
    \data_reg[6]_1 ,
    \data_reg[4]_1 ,
    data40_in,
    yPlayer,
    CO,
    Q,
    \data[7]_i_2 ,
    \data[7]_i_6 ,
    \data[7]_i_6_0 ,
    \data_reg[0]_2 ,
    \data_reg[3]_2 ,
    \data[4]_i_3 ,
    O,
    \data[7]_i_3 ,
    \data[7]_i_3_0 ,
    \data[7]_i_3_1 ,
    \data[7]_i_3_2 ,
    \addr_burger_reg[4]_0 ,
    \addr_burger_reg[4]_1 ,
    \addr_burger_reg[4]_2 ,
    \addr_burger_reg[4]_3 ,
    \addr_kebab_reg[4]_0 ,
    \addr_kebab_reg[4]_1 ,
    \addr_pizza_reg[4]_0 ,
    \addr_pizza_reg[4]_1 ,
    S,
    \data_reg[5]_i_80_0 ,
    \data[5]_i_8 ,
    \data[5]_i_8_0 ,
    \addr_burger_reg[4]_4 ,
    \addr_burger_reg[7]_0 ,
    \addr_lolipop_reg[4]_0 ,
    \addr_lolipop_reg[8]_0 ,
    \addr_pizza_reg[4]_2 ,
    \addr_pizza_reg[8]_0 ,
    \data_reg[5]_i_27 ,
    CEP,
    E,
    D,
    \addr_lolipop_reg[0]_0 ,
    \addr_lolipop_reg[11]_0 ,
    \addr_kebab_reg[0]_0 ,
    \addr_pizza_reg[0]_0 ,
    \addr_pizza_reg[9]_0 ,
    SR,
    \addr_heart_reg[0]_0 ,
    \addr_heart_reg[7]_0 );
  output [9:0]P;
  output [1:0]DOADO;
  output [7:0]data_play;
  output data_reg_1;
  output data_reg;
  output data_reg_0;
  output data_reg_2;
  output data_reg_3;
  output data_reg_4;
  output data_reg_5;
  output data_reg_6;
  output \data_reg[0]_0 ;
  output addr_bone_reg_i_8;
  output \data_reg[1]_0 ;
  output data_reg_7;
  output \data_reg[3]_0 ;
  output \data_reg[4]_0 ;
  output data_reg_8;
  output \data_reg[6]_0 ;
  output [1:0]DI;
  output [2:0]\addr_burger_reg[7]_i_30 ;
  output [1:0]\addr_burger_reg[7]_i_30_0 ;
  output [3:0]\addr_burger_reg[7]_i_30_1 ;
  output [3:0]\addr_burger_reg[7]_i_30_2 ;
  output [3:0]\addr_pizza_reg[9]_i_13 ;
  output [3:0]\addr_pizza_reg[9]_i_13_0 ;
  output [3:0]data3__1_0;
  output [0:0]\data[5]_i_88_0 ;
  output [2:0]\h_count_reg_reg[0] ;
  output [1:0]\addr_burger_reg[7]_i_31 ;
  output [3:0]\h_count_reg_reg[0]_0 ;
  output [3:0]\addr_lolipop_reg[8]_i_10 ;
  output [2:0]\addr_lolipop_reg[11]_i_16 ;
  output [3:0]\h_count_reg_reg[0]_1 ;
  output [3:0]\h_count_reg_reg[5] ;
  output [3:0]\v_count_reg_reg[9] ;
  output [1:0]\v_count_reg_reg[9]_0 ;
  output [3:0]\v_count_reg_reg[9]_1 ;
  output [7:0]\data_reg[7]_0 ;
  output [0:0]\data_reg[7]_1 ;
  output [0:0]\data_reg[7]_2 ;
  output [6:0]out;
  output [0:0]data;
  input [10:0]data5;
  input [10:0]A;
  input n_0_1212_BUFG;
  input clk_IBUF_BUFG;
  input [9:0]C;
  input addr_milk_reg_0;
  input [6:0]ADDRARDADDR;
  input addr_bone_reg_0;
  input [7:0]addr_bone_reg_1;
  input [10:0]p_0_out_0;
  input [0:0]B;
  input \data_reg[5]_0 ;
  input \data_reg[5]_1 ;
  input \data_reg[5]_2 ;
  input \data_reg[3]_1 ;
  input \data_reg[2]_0 ;
  input \data_reg[1]_1 ;
  input \data_reg[0]_1 ;
  input \data_reg[7]_3 ;
  input \data_reg[6]_1 ;
  input \data_reg[4]_1 ;
  input [8:0]data40_in;
  input [0:0]yPlayer;
  input [0:0]CO;
  input [1:0]Q;
  input \data[7]_i_2 ;
  input \data[7]_i_6 ;
  input \data[7]_i_6_0 ;
  input \data_reg[0]_2 ;
  input \data_reg[3]_2 ;
  input \data[4]_i_3 ;
  input [2:0]O;
  input [0:0]\data[7]_i_3 ;
  input [0:0]\data[7]_i_3_0 ;
  input [0:0]\data[7]_i_3_1 ;
  input [0:0]\data[7]_i_3_2 ;
  input [0:0]\addr_burger_reg[4]_0 ;
  input [0:0]\addr_burger_reg[4]_1 ;
  input [0:0]\addr_burger_reg[4]_2 ;
  input [0:0]\addr_burger_reg[4]_3 ;
  input [0:0]\addr_kebab_reg[4]_0 ;
  input [0:0]\addr_kebab_reg[4]_1 ;
  input [0:0]\addr_pizza_reg[4]_0 ;
  input [0:0]\addr_pizza_reg[4]_1 ;
  input [3:0]S;
  input [0:0]\data_reg[5]_i_80_0 ;
  input [1:0]\data[5]_i_8 ;
  input [1:0]\data[5]_i_8_0 ;
  input [3:0]\addr_burger_reg[4]_4 ;
  input [1:0]\addr_burger_reg[7]_0 ;
  input [2:0]\addr_lolipop_reg[4]_0 ;
  input [3:0]\addr_lolipop_reg[8]_0 ;
  input [3:0]\addr_pizza_reg[4]_2 ;
  input [3:0]\addr_pizza_reg[8]_0 ;
  input [0:0]\data_reg[5]_i_27 ;
  input CEP;
  input [0:0]E;
  input [7:0]D;
  input [0:0]\addr_lolipop_reg[0]_0 ;
  input [10:0]\addr_lolipop_reg[11]_0 ;
  input [0:0]\addr_kebab_reg[0]_0 ;
  input [0:0]\addr_pizza_reg[0]_0 ;
  input [8:0]\addr_pizza_reg[9]_0 ;
  input [0:0]SR;
  input [0:0]\addr_heart_reg[0]_0 ;
  input [7:0]\addr_heart_reg[7]_0 ;

  wire [10:0]A;
  wire [6:0]ADDRARDADDR;
  wire [0:0]B;
  wire [9:0]C;
  wire CEP;
  wire [0:0]CO;
  wire [7:0]D;
  wire [1:0]DI;
  wire [1:0]DOADO;
  wire [0:0]E;
  wire [2:0]O;
  wire [9:0]P;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire addr_bone_reg_0;
  wire [7:0]addr_bone_reg_1;
  wire addr_bone_reg_i_8;
  wire addr_bone_reg_n_10;
  wire addr_bone_reg_n_11;
  wire addr_bone_reg_n_12;
  wire addr_bone_reg_n_13;
  wire addr_bone_reg_n_14;
  wire addr_bone_reg_n_15;
  wire addr_bone_reg_n_16;
  wire addr_bone_reg_n_9;
  wire [7:0]addr_burger;
  wire [0:0]\addr_burger_reg[4]_0 ;
  wire [0:0]\addr_burger_reg[4]_1 ;
  wire [0:0]\addr_burger_reg[4]_2 ;
  wire [0:0]\addr_burger_reg[4]_3 ;
  wire [3:0]\addr_burger_reg[4]_4 ;
  wire [1:0]\addr_burger_reg[7]_0 ;
  wire [2:0]\addr_burger_reg[7]_i_30 ;
  wire [1:0]\addr_burger_reg[7]_i_30_0 ;
  wire [3:0]\addr_burger_reg[7]_i_30_1 ;
  wire [3:0]\addr_burger_reg[7]_i_30_2 ;
  wire [1:0]\addr_burger_reg[7]_i_31 ;
  wire [0:0]\addr_heart_reg[0]_0 ;
  wire [7:0]\addr_heart_reg[7]_0 ;
  wire \addr_heart_reg_n_1_[0] ;
  wire \addr_heart_reg_n_1_[1] ;
  wire \addr_heart_reg_n_1_[2] ;
  wire \addr_heart_reg_n_1_[3] ;
  wire \addr_heart_reg_n_1_[4] ;
  wire \addr_heart_reg_n_1_[5] ;
  wire \addr_heart_reg_n_1_[6] ;
  wire \addr_heart_reg_n_1_[7] ;
  wire addr_hi0_n_100;
  wire addr_hi0_n_101;
  wire addr_hi0_n_102;
  wire addr_hi0_n_103;
  wire addr_hi0_n_104;
  wire addr_hi0_n_105;
  wire addr_hi0_n_106;
  wire addr_hi0_n_93;
  wire addr_hi0_n_94;
  wire addr_hi0_n_95;
  wire addr_hi0_n_96;
  wire addr_hi0_n_97;
  wire addr_hi0_n_98;
  wire addr_hi0_n_99;
  wire addr_hi1_n_107;
  wire addr_hi1_n_108;
  wire addr_hi1_n_109;
  wire addr_hi1_n_110;
  wire addr_hi1_n_111;
  wire addr_hi1_n_112;
  wire addr_hi1_n_113;
  wire addr_hi1_n_114;
  wire addr_hi1_n_115;
  wire addr_hi1_n_116;
  wire addr_hi1_n_117;
  wire addr_hi1_n_118;
  wire addr_hi1_n_119;
  wire addr_hi1_n_120;
  wire addr_hi1_n_121;
  wire addr_hi1_n_122;
  wire addr_hi1_n_123;
  wire addr_hi1_n_124;
  wire addr_hi1_n_125;
  wire addr_hi1_n_126;
  wire addr_hi1_n_127;
  wire addr_hi1_n_128;
  wire addr_hi1_n_129;
  wire addr_hi1_n_130;
  wire addr_hi1_n_131;
  wire addr_hi1_n_132;
  wire addr_hi1_n_133;
  wire addr_hi1_n_134;
  wire addr_hi1_n_135;
  wire addr_hi1_n_136;
  wire addr_hi1_n_137;
  wire addr_hi1_n_138;
  wire addr_hi1_n_139;
  wire addr_hi1_n_140;
  wire addr_hi1_n_141;
  wire addr_hi1_n_142;
  wire addr_hi1_n_143;
  wire addr_hi1_n_144;
  wire addr_hi1_n_145;
  wire addr_hi1_n_146;
  wire addr_hi1_n_147;
  wire addr_hi1_n_148;
  wire addr_hi1_n_149;
  wire addr_hi1_n_150;
  wire addr_hi1_n_151;
  wire addr_hi1_n_152;
  wire addr_hi1_n_153;
  wire addr_hi1_n_154;
  wire addr_hi_reg_0_n_35;
  wire addr_hi_reg_0_n_36;
  wire addr_hi_reg_1_n_35;
  wire addr_hi_reg_1_n_36;
  wire addr_hi_reg_2_n_35;
  wire addr_hi_reg_2_n_36;
  wire addr_hi_reg_3_n_35;
  wire addr_hi_reg_3_n_36;
  wire [12:0]addr_kebab;
  wire \addr_kebab[0]_i_1_n_1 ;
  wire \addr_kebab[12]_i_10_n_1 ;
  wire \addr_kebab[12]_i_11_n_1 ;
  wire \addr_kebab[12]_i_6_n_1 ;
  wire \addr_kebab[12]_i_7_n_1 ;
  wire \addr_kebab[12]_i_8_n_1 ;
  wire \addr_kebab[12]_i_9_n_1 ;
  wire \addr_kebab[4]_i_2_n_1 ;
  wire \addr_kebab[4]_i_3_n_1 ;
  wire \addr_kebab[4]_i_4_n_1 ;
  wire \addr_kebab[4]_i_5_n_1 ;
  wire \addr_kebab[4]_i_6_n_1 ;
  wire \addr_kebab[4]_i_7_n_1 ;
  wire \addr_kebab[4]_i_8_n_1 ;
  wire \addr_kebab[4]_i_9_n_1 ;
  wire \addr_kebab[8]_i_2_n_1 ;
  wire \addr_kebab[8]_i_3_n_1 ;
  wire \addr_kebab[8]_i_4_n_1 ;
  wire \addr_kebab[8]_i_5_n_1 ;
  wire \addr_kebab[8]_i_6_n_1 ;
  wire \addr_kebab[8]_i_7_n_1 ;
  wire \addr_kebab[8]_i_8_n_1 ;
  wire \addr_kebab[8]_i_9_n_1 ;
  wire [0:0]\addr_kebab_reg[0]_0 ;
  wire \addr_kebab_reg[12]_i_2_n_5 ;
  wire \addr_kebab_reg[12]_i_2_n_6 ;
  wire \addr_kebab_reg[12]_i_2_n_7 ;
  wire \addr_kebab_reg[12]_i_2_n_8 ;
  wire [0:0]\addr_kebab_reg[4]_0 ;
  wire [0:0]\addr_kebab_reg[4]_1 ;
  wire \addr_kebab_reg[4]_i_1_n_1 ;
  wire \addr_kebab_reg[4]_i_1_n_5 ;
  wire \addr_kebab_reg[4]_i_1_n_6 ;
  wire \addr_kebab_reg[4]_i_1_n_7 ;
  wire \addr_kebab_reg[4]_i_1_n_8 ;
  wire \addr_kebab_reg[8]_i_1_n_1 ;
  wire \addr_kebab_reg[8]_i_1_n_5 ;
  wire \addr_kebab_reg[8]_i_1_n_6 ;
  wire \addr_kebab_reg[8]_i_1_n_7 ;
  wire \addr_kebab_reg[8]_i_1_n_8 ;
  wire [11:0]addr_lolipop;
  wire [0:0]\addr_lolipop_reg[0]_0 ;
  wire [10:0]\addr_lolipop_reg[11]_0 ;
  wire [2:0]\addr_lolipop_reg[11]_i_16 ;
  wire [2:0]\addr_lolipop_reg[4]_0 ;
  wire [3:0]\addr_lolipop_reg[8]_0 ;
  wire [3:0]\addr_lolipop_reg[8]_i_10 ;
  wire addr_milk_reg_0;
  wire addr_milk_reg_n_10;
  wire addr_milk_reg_n_11;
  wire addr_milk_reg_n_12;
  wire addr_milk_reg_n_13;
  wire addr_milk_reg_n_14;
  wire addr_milk_reg_n_15;
  wire addr_milk_reg_n_16;
  wire addr_milk_reg_n_9;
  wire [9:0]addr_pizza;
  wire [0:0]\addr_pizza_reg[0]_0 ;
  wire [0:0]\addr_pizza_reg[4]_0 ;
  wire [0:0]\addr_pizza_reg[4]_1 ;
  wire [3:0]\addr_pizza_reg[4]_2 ;
  wire [3:0]\addr_pizza_reg[8]_0 ;
  wire [8:0]\addr_pizza_reg[9]_0 ;
  wire [3:0]\addr_pizza_reg[9]_i_13 ;
  wire [3:0]\addr_pizza_reg[9]_i_13_0 ;
  wire bone_n_3;
  wire bone_n_4;
  wire bone_n_5;
  wire bone_n_6;
  wire bone_n_7;
  wire bone_n_8;
  wire clk_IBUF_BUFG;
  wire [0:0]data;
  wire data3__0_n_107;
  wire data3__0_n_108;
  wire data3__0_n_109;
  wire data3__0_n_110;
  wire data3__0_n_111;
  wire data3__0_n_112;
  wire data3__0_n_113;
  wire data3__0_n_114;
  wire data3__0_n_115;
  wire data3__0_n_116;
  wire data3__0_n_117;
  wire data3__0_n_118;
  wire data3__0_n_119;
  wire data3__0_n_120;
  wire data3__0_n_121;
  wire data3__0_n_122;
  wire data3__0_n_123;
  wire data3__0_n_124;
  wire data3__0_n_125;
  wire data3__0_n_126;
  wire data3__0_n_127;
  wire data3__0_n_128;
  wire data3__0_n_129;
  wire data3__0_n_130;
  wire data3__0_n_131;
  wire data3__0_n_132;
  wire data3__0_n_133;
  wire data3__0_n_134;
  wire data3__0_n_135;
  wire data3__0_n_136;
  wire data3__0_n_137;
  wire data3__0_n_138;
  wire data3__0_n_139;
  wire data3__0_n_140;
  wire data3__0_n_141;
  wire data3__0_n_142;
  wire data3__0_n_143;
  wire data3__0_n_144;
  wire data3__0_n_145;
  wire data3__0_n_146;
  wire data3__0_n_147;
  wire data3__0_n_148;
  wire data3__0_n_149;
  wire data3__0_n_150;
  wire data3__0_n_151;
  wire data3__0_n_152;
  wire data3__0_n_153;
  wire data3__0_n_154;
  wire data3__0_n_25;
  wire data3__0_n_26;
  wire data3__0_n_27;
  wire data3__0_n_28;
  wire data3__0_n_29;
  wire data3__0_n_30;
  wire data3__0_n_31;
  wire data3__0_n_32;
  wire data3__0_n_33;
  wire data3__0_n_34;
  wire data3__0_n_35;
  wire data3__0_n_36;
  wire data3__0_n_37;
  wire data3__0_n_38;
  wire data3__0_n_39;
  wire data3__0_n_40;
  wire data3__0_n_41;
  wire data3__0_n_42;
  wire data3__0_n_43;
  wire data3__0_n_44;
  wire data3__0_n_45;
  wire data3__0_n_46;
  wire data3__0_n_47;
  wire data3__0_n_48;
  wire data3__0_n_49;
  wire data3__0_n_50;
  wire data3__0_n_51;
  wire data3__0_n_52;
  wire data3__0_n_53;
  wire data3__0_n_54;
  wire data3__0_n_90;
  wire data3__0_n_91;
  wire data3__0_n_92;
  wire data3__0_n_93;
  wire data3__0_n_94;
  wire data3__0_n_95;
  wire data3__0_n_96;
  wire [3:0]data3__1_0;
  wire data3__1_n_100;
  wire data3__1_n_101;
  wire data3__1_n_102;
  wire data3__1_n_103;
  wire data3__1_n_104;
  wire data3__1_n_105;
  wire data3__1_n_106;
  wire data3__1_n_92;
  wire data3__1_n_93;
  wire data3__1_n_94;
  wire data3__1_n_95;
  wire data3__1_n_96;
  wire data3__1_n_97;
  wire data3__1_n_98;
  wire data3__1_n_99;
  wire data3_n_100;
  wire data3_n_101;
  wire data3_n_102;
  wire data3_n_103;
  wire data3_n_104;
  wire data3_n_105;
  wire data3_n_106;
  wire data3_n_92;
  wire data3_n_93;
  wire data3_n_94;
  wire data3_n_95;
  wire data3_n_96;
  wire data3_n_97;
  wire data3_n_98;
  wire data3_n_99;
  wire [8:0]data40_in;
  wire [10:0]data5;
  wire \data[4]_i_3 ;
  wire \data[5]_i_166_n_1 ;
  wire \data[5]_i_167_n_1 ;
  wire \data[5]_i_168_n_1 ;
  wire \data[5]_i_169_n_1 ;
  wire \data[5]_i_170_n_1 ;
  wire \data[5]_i_171_n_1 ;
  wire \data[5]_i_172_n_1 ;
  wire \data[5]_i_173_n_1 ;
  wire \data[5]_i_213_n_1 ;
  wire \data[5]_i_214_n_1 ;
  wire \data[5]_i_215_n_1 ;
  wire \data[5]_i_216_n_1 ;
  wire \data[5]_i_217_n_1 ;
  wire \data[5]_i_218_n_1 ;
  wire \data[5]_i_219_n_1 ;
  wire \data[5]_i_223_n_1 ;
  wire \data[5]_i_224_n_1 ;
  wire \data[5]_i_225_n_1 ;
  wire \data[5]_i_226_n_1 ;
  wire \data[5]_i_227_n_1 ;
  wire \data[5]_i_228_n_1 ;
  wire \data[5]_i_229_n_1 ;
  wire \data[5]_i_230_n_1 ;
  wire \data[5]_i_243_n_1 ;
  wire \data[5]_i_244_n_1 ;
  wire \data[5]_i_245_n_1 ;
  wire \data[5]_i_246_n_1 ;
  wire \data[5]_i_251_n_1 ;
  wire \data[5]_i_252_n_1 ;
  wire \data[5]_i_253_n_1 ;
  wire \data[5]_i_254_n_1 ;
  wire \data[5]_i_255_n_1 ;
  wire \data[5]_i_256_n_1 ;
  wire \data[5]_i_257_n_1 ;
  wire [1:0]\data[5]_i_8 ;
  wire \data[5]_i_83_n_1 ;
  wire \data[5]_i_84_n_1 ;
  wire \data[5]_i_87_n_1 ;
  wire [0:0]\data[5]_i_88_0 ;
  wire \data[5]_i_88_n_1 ;
  wire [1:0]\data[5]_i_8_0 ;
  wire \data[7]_i_2 ;
  wire [0:0]\data[7]_i_3 ;
  wire [0:0]\data[7]_i_3_0 ;
  wire [0:0]\data[7]_i_3_1 ;
  wire [0:0]\data[7]_i_3_2 ;
  wire \data[7]_i_6 ;
  wire \data[7]_i_6_0 ;
  wire [7:0]data_play;
  wire data_reg;
  wire \data_reg[0]_0 ;
  wire \data_reg[0]_1 ;
  wire \data_reg[0]_2 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[1]_1 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[3]_2 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[4]_1 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[5]_1 ;
  wire \data_reg[5]_2 ;
  wire \data_reg[5]_i_165_n_1 ;
  wire \data_reg[5]_i_175_n_1 ;
  wire \data_reg[5]_i_175_n_5 ;
  wire \data_reg[5]_i_175_n_6 ;
  wire \data_reg[5]_i_175_n_7 ;
  wire \data_reg[5]_i_175_n_8 ;
  wire \data_reg[5]_i_212_n_1 ;
  wire \data_reg[5]_i_221_n_1 ;
  wire \data_reg[5]_i_221_n_5 ;
  wire \data_reg[5]_i_221_n_6 ;
  wire \data_reg[5]_i_221_n_7 ;
  wire \data_reg[5]_i_221_n_8 ;
  wire \data_reg[5]_i_222_n_1 ;
  wire \data_reg[5]_i_222_n_5 ;
  wire \data_reg[5]_i_222_n_6 ;
  wire \data_reg[5]_i_222_n_7 ;
  wire \data_reg[5]_i_222_n_8 ;
  wire [0:0]\data_reg[5]_i_27 ;
  wire [0:0]\data_reg[5]_i_80_0 ;
  wire \data_reg[5]_i_80_n_1 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[6]_1 ;
  wire [7:0]\data_reg[7]_0 ;
  wire [0:0]\data_reg[7]_1 ;
  wire [0:0]\data_reg[7]_2 ;
  wire \data_reg[7]_3 ;
  wire data_reg_0;
  wire data_reg_1;
  wire data_reg_2;
  wire data_reg_3;
  wire data_reg_4;
  wire data_reg_5;
  wire data_reg_6;
  wire data_reg_7;
  wire data_reg_8;
  wire [4:0]data_reg__0;
  wire [5:0]data_reg__0_0;
  wire [7:6]data_reg__0_1;
  wire [2:0]\h_count_reg_reg[0] ;
  wire [3:0]\h_count_reg_reg[0]_0 ;
  wire [3:0]\h_count_reg_reg[0]_1 ;
  wire [3:0]\h_count_reg_reg[5] ;
  wire lolipop_n_8;
  wire milk_n_6;
  wire milk_n_7;
  wire milk_n_8;
  wire n_0_1212_BUFG;
  wire [6:0]out;
  wire [10:0]p_0_out_0;
  wire p_0_out_n_107;
  wire p_0_out_n_108;
  wire p_0_out_n_109;
  wire p_0_out_n_110;
  wire p_0_out_n_111;
  wire p_0_out_n_112;
  wire p_0_out_n_113;
  wire p_0_out_n_114;
  wire p_0_out_n_115;
  wire p_0_out_n_116;
  wire p_0_out_n_117;
  wire p_0_out_n_118;
  wire p_0_out_n_119;
  wire p_0_out_n_120;
  wire p_0_out_n_121;
  wire p_0_out_n_122;
  wire p_0_out_n_123;
  wire p_0_out_n_124;
  wire p_0_out_n_125;
  wire p_0_out_n_126;
  wire p_0_out_n_127;
  wire p_0_out_n_128;
  wire p_0_out_n_129;
  wire p_0_out_n_130;
  wire p_0_out_n_131;
  wire p_0_out_n_132;
  wire p_0_out_n_133;
  wire p_0_out_n_134;
  wire p_0_out_n_135;
  wire p_0_out_n_136;
  wire p_0_out_n_137;
  wire p_0_out_n_138;
  wire p_0_out_n_139;
  wire p_0_out_n_140;
  wire p_0_out_n_141;
  wire p_0_out_n_142;
  wire p_0_out_n_143;
  wire p_0_out_n_144;
  wire p_0_out_n_145;
  wire p_0_out_n_146;
  wire p_0_out_n_147;
  wire p_0_out_n_148;
  wire p_0_out_n_149;
  wire p_0_out_n_150;
  wire p_0_out_n_151;
  wire p_0_out_n_152;
  wire p_0_out_n_153;
  wire p_0_out_n_154;
  wire p_1_out_n_100;
  wire p_1_out_n_101;
  wire p_1_out_n_102;
  wire p_1_out_n_103;
  wire p_1_out_n_104;
  wire p_1_out_n_105;
  wire p_1_out_n_106;
  wire p_1_out_n_94;
  wire p_1_out_n_95;
  wire p_1_out_n_96;
  wire p_1_out_n_97;
  wire p_1_out_n_98;
  wire p_1_out_n_99;
  wire [3:0]\v_count_reg_reg[9] ;
  wire [1:0]\v_count_reg_reg[9]_0 ;
  wire [3:0]\v_count_reg_reg[9]_1 ;
  wire [0:0]yPlayer;
  wire [15:8]NLW_addr_bone_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_addr_bone_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_addr_bone_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_addr_bone_reg_DOPBDOP_UNCONNECTED;
  wire NLW_addr_hi0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_hi0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_hi0_OVERFLOW_UNCONNECTED;
  wire NLW_addr_hi0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_hi0_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_hi0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_hi0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_hi0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_hi0_CARRYOUT_UNCONNECTED;
  wire [47:14]NLW_addr_hi0_P_UNCONNECTED;
  wire [47:0]NLW_addr_hi0_PCOUT_UNCONNECTED;
  wire NLW_addr_hi1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_hi1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_hi1_OVERFLOW_UNCONNECTED;
  wire NLW_addr_hi1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_hi1_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_hi1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_hi1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_hi1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_hi1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_addr_hi1_P_UNCONNECTED;
  wire NLW_addr_hi_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_addr_hi_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_addr_hi_reg_0_DBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_addr_hi_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_addr_hi_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_addr_hi_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_addr_hi_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_addr_hi_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_addr_hi_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_addr_hi_reg_1_DBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_addr_hi_reg_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_addr_hi_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_addr_hi_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_addr_hi_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_addr_hi_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_addr_hi_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_addr_hi_reg_2_DBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_addr_hi_reg_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_addr_hi_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_addr_hi_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_addr_hi_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_addr_hi_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_addr_hi_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_addr_hi_reg_3_DBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_addr_hi_reg_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_addr_hi_reg_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_addr_hi_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_addr_hi_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_addr_hi_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_addr_hi_reg_3_RDADDRECC_UNCONNECTED;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_kebab_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_kebab_reg[8]_i_1_CO_UNCONNECTED ;
  wire [15:8]NLW_addr_milk_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_addr_milk_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_addr_milk_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_addr_milk_reg_DOPBDOP_UNCONNECTED;
  wire NLW_data3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data3_OVERFLOW_UNCONNECTED;
  wire NLW_data3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data3_PATTERNDETECT_UNCONNECTED;
  wire NLW_data3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data3_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_data3_P_UNCONNECTED;
  wire [47:0]NLW_data3_PCOUT_UNCONNECTED;
  wire NLW_data3__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data3__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data3__0_OVERFLOW_UNCONNECTED;
  wire NLW_data3__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data3__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_data3__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_data3__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data3__0_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_data3__0_P_UNCONNECTED;
  wire NLW_data3__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data3__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data3__1_OVERFLOW_UNCONNECTED;
  wire NLW_data3__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data3__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_data3__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data3__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data3__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data3__1_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_data3__1_P_UNCONNECTED;
  wire [47:0]NLW_data3__1_PCOUT_UNCONNECTED;
  wire [2:0]\NLW_data_reg[5]_i_165_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_165_O_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_174_CO_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_175_CO_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_212_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_212_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_221_CO_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_222_CO_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_28_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_28_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_80_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_80_O_UNCONNECTED ;
  wire NLW_p_0_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p_0_out_P_UNCONNECTED;
  wire NLW_p_1_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_1_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_1_out_OVERFLOW_UNCONNECTED;
  wire NLW_p_1_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_1_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_1_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_1_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_1_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_1_out_CARRYOUT_UNCONNECTED;
  wire [47:13]NLW_p_1_out_P_UNCONNECTED;
  wire [47:0]NLW_p_1_out_PCOUT_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "addr_bone" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000003F003F003F000000000000000000000000000000000000),
    .INIT_01(256'h000000000000003F003F003F003F000000000000000000000000000000000000),
    .INIT_02(256'h000000000000003F003F003F003F000000000000000000000000000000000000),
    .INIT_03(256'h0000003F003F003F003F003F003F000000000000000000000000000000000000),
    .INIT_04(256'h003F003F003F003F003F003F003F000000000000000000000000000000000000),
    .INIT_05(256'h003F003F003F003F003F003F003F003F00000000000000000000000000000000),
    .INIT_06(256'h0000003F003F003F003F003F003F003F003F0000000000000000000000000000),
    .INIT_07(256'h00000000000000000000003F003F003F003F003F000000000000000000000000),
    .INIT_08(256'h000000000000000000000000003F003F003F003F003F00000000000000000000),
    .INIT_09(256'h0000000000000000000000000000003F003F003F003F003F003F003F003F0000),
    .INIT_0A(256'h00000000000000000000000000000000003F003F003F003F003F003F003F003F),
    .INIT_0B(256'h000000000000000000000000000000000000003F003F003F003F003F003F003F),
    .INIT_0C(256'h000000000000000000000000000000000000003F003F003F003F003F003F003F),
    .INIT_0D(256'h000000000000000000000000000000000000003F003F003F003F003F00000000),
    .INIT_0E(256'h000000000000000000000000000000000000003F003F003F003F000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000003F003F003F000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    addr_bone_reg
       (.ADDRARDADDR({1'b0,1'b0,addr_bone_reg_1,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(n_0_1212_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_addr_bone_reg_DOADO_UNCONNECTED[15:8],addr_bone_reg_n_9,addr_bone_reg_n_10,addr_bone_reg_n_11,addr_bone_reg_n_12,addr_bone_reg_n_13,addr_bone_reg_n_14,addr_bone_reg_n_15,addr_bone_reg_n_16}),
        .DOBDO(NLW_addr_bone_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_addr_bone_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_addr_bone_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(addr_bone_reg_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[4]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30 [2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[4]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30 [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[4]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30 [0]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_burger[4]_i_6 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_burger_reg[4]_4 [3]),
        .O(\h_count_reg_reg[0] [2]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_burger[4]_i_7 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_burger_reg[4]_4 [2]),
        .O(\h_count_reg_reg[0] [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_burger[4]_i_8 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_burger_reg[4]_4 [1]),
        .O(\h_count_reg_reg[0] [0]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_burger[7]_i_11 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_burger_reg[7]_0 [1]),
        .O(\addr_burger_reg[7]_i_31 [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_burger[7]_i_12 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_burger_reg[7]_0 [0]),
        .O(\addr_burger_reg[7]_i_31 [0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[7]_i_8 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_0 [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[7]_i_9 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_0 [0]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[0] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(addr_burger[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[1] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(addr_burger[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[2] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(addr_burger[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[3] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(addr_burger[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[4] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(addr_burger[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[5] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(addr_burger[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[6] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(addr_burger[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_burger_reg[7] 
       (.C(n_0_1212_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(addr_burger[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[0] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [0]),
        .Q(\addr_heart_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[1] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [1]),
        .Q(\addr_heart_reg_n_1_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[2] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [2]),
        .Q(\addr_heart_reg_n_1_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[3] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [3]),
        .Q(\addr_heart_reg_n_1_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[4] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [4]),
        .Q(\addr_heart_reg_n_1_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[5] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [5]),
        .Q(\addr_heart_reg_n_1_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_heart_reg[6] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [6]),
        .Q(\addr_heart_reg_n_1_[6] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \addr_heart_reg[7] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_heart_reg[0]_0 ),
        .D(\addr_heart_reg[7]_0 [7]),
        .Q(\addr_heart_reg_n_1_[7] ),
        .S(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    addr_hi0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_hi0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_hi0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_hi0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_hi0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(n_0_1212_BUFG),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(n_0_1212_BUFG),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_addr_hi0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_addr_hi0_OVERFLOW_UNCONNECTED),
        .P({NLW_addr_hi0_P_UNCONNECTED[47:14],addr_hi0_n_93,addr_hi0_n_94,addr_hi0_n_95,addr_hi0_n_96,addr_hi0_n_97,addr_hi0_n_98,addr_hi0_n_99,addr_hi0_n_100,addr_hi0_n_101,addr_hi0_n_102,addr_hi0_n_103,addr_hi0_n_104,addr_hi0_n_105,addr_hi0_n_106}),
        .PATTERNBDETECT(NLW_addr_hi0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_hi0_PATTERNDETECT_UNCONNECTED),
        .PCIN({addr_hi1_n_107,addr_hi1_n_108,addr_hi1_n_109,addr_hi1_n_110,addr_hi1_n_111,addr_hi1_n_112,addr_hi1_n_113,addr_hi1_n_114,addr_hi1_n_115,addr_hi1_n_116,addr_hi1_n_117,addr_hi1_n_118,addr_hi1_n_119,addr_hi1_n_120,addr_hi1_n_121,addr_hi1_n_122,addr_hi1_n_123,addr_hi1_n_124,addr_hi1_n_125,addr_hi1_n_126,addr_hi1_n_127,addr_hi1_n_128,addr_hi1_n_129,addr_hi1_n_130,addr_hi1_n_131,addr_hi1_n_132,addr_hi1_n_133,addr_hi1_n_134,addr_hi1_n_135,addr_hi1_n_136,addr_hi1_n_137,addr_hi1_n_138,addr_hi1_n_139,addr_hi1_n_140,addr_hi1_n_141,addr_hi1_n_142,addr_hi1_n_143,addr_hi1_n_144,addr_hi1_n_145,addr_hi1_n_146,addr_hi1_n_147,addr_hi1_n_148,addr_hi1_n_149,addr_hi1_n_150,addr_hi1_n_151,addr_hi1_n_152,addr_hi1_n_153,addr_hi1_n_154}),
        .PCOUT(NLW_addr_hi0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_addr_hi0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    addr_hi1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[10],A[10],A[10],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_hi1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_hi1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_hi1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_hi1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_addr_hi1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_addr_hi1_OVERFLOW_UNCONNECTED),
        .P(NLW_addr_hi1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_addr_hi1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_hi1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({addr_hi1_n_107,addr_hi1_n_108,addr_hi1_n_109,addr_hi1_n_110,addr_hi1_n_111,addr_hi1_n_112,addr_hi1_n_113,addr_hi1_n_114,addr_hi1_n_115,addr_hi1_n_116,addr_hi1_n_117,addr_hi1_n_118,addr_hi1_n_119,addr_hi1_n_120,addr_hi1_n_121,addr_hi1_n_122,addr_hi1_n_123,addr_hi1_n_124,addr_hi1_n_125,addr_hi1_n_126,addr_hi1_n_127,addr_hi1_n_128,addr_hi1_n_129,addr_hi1_n_130,addr_hi1_n_131,addr_hi1_n_132,addr_hi1_n_133,addr_hi1_n_134,addr_hi1_n_135,addr_hi1_n_136,addr_hi1_n_137,addr_hi1_n_138,addr_hi1_n_139,addr_hi1_n_140,addr_hi1_n_141,addr_hi1_n_142,addr_hi1_n_143,addr_hi1_n_144,addr_hi1_n_145,addr_hi1_n_146,addr_hi1_n_147,addr_hi1_n_148,addr_hi1_n_149,addr_hi1_n_150,addr_hi1_n_151,addr_hi1_n_152,addr_hi1_n_153,addr_hi1_n_154}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_addr_hi1_UNDERFLOW_UNCONNECTED));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "addr_hi" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000155540000005554000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h00000000FFD00000007FFE000000000000000000155540000655640000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h00000000000FFD000005FFD40000000000000000000000000000000000000000),
    .INIT_0A(256'h000000000000000000000000000000000000000000FFD00000007FFE00000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h000000000056FFF95000007FFE0000055550005555000FFD000005FFD4000000),
    .INIT_0D(256'h0000000000000000000005555000005554000000000000000000000000555500),
    .INIT_0E(256'h1BFF5001BFF5056FFF950155FFD5500000555500000000000000000000000000),
    .INIT_0F(256'h7FF5000000000000000000000001BFF50000000000017FFFFFD400007FFE0000),
    .INIT_10(256'h0001BFF500000000000000000000000000000000000000000000001BFF500001),
    .INIT_11(256'hF50000000000017FFFFFD400007FFE00001BFF5001BFF517FFFFFD40FFFFFFC0),
    .INIT_12(256'h0000000000000000000000001BFF5000017FF5000000000000000000000001BF),
    .INIT_13(256'h00001BFF5001BFF517FFFFFD40FFFFFFC00001BFF50000000000000000000000),
    .INIT_14(256'h00017FF5000000000000000000000001BFF50000000000017FFFFFD400007FFE),
    .INIT_15(256'hFFC00001BFF500000000000000000000000000000000000000000000001BFF50),
    .INIT_16(256'h01BFF50000000000017FFFFFD40000555500001BFF5001BFF517FFFFFD40FFFF),
    .INIT_17(256'h00000000000000000000000000001BFF5000017FF50000000000000000000000),
    .INIT_18(256'h000000001BFF5001BFF517FFFFFD40FFFFFFC00001BFF5000000000000000000),
    .INIT_19(256'hFF5000017FF5000000000000000000000001BFF50000000000017FFFFFD40000),
    .INIT_1A(256'hFFFFFFC00001BFF500000000000000000000000000000000000000000000001B),
    .INIT_1B(256'h000001BFF50000000000017FFFFFD40000000000001BFF5001BFF517FFFFFD40),
    .INIT_1C(256'h000000000000000000000000000000001BFF5000017FF5000000000000000000),
    .INIT_1D(256'h0000555555541BFF5001BFF517FFFFFD40FFFFFFC00001BFF500000000000000),
    .INIT_1E(256'h001BDA901555FFF5555000155555540000000001BFF50000000000017FFFFFD4),
    .INIT_1F(256'hFD40FFFFFFC015557FF555540015555555000005555555000000000015555555),
    .INIT_20(256'h0000000001BFF50000000000017FFFFFD400007FFFFFF81BFF5001BFF517FFFF),
    .INIT_21(256'hFFF5000017FFFFFD40000000006FFFFFF5001BE0007FFFFFFFFFD4005FFFFFF5),
    .INIT_22(256'hFFD400007FFFFFF81BFF5001BFF517FFFFFD40FFFFFFC05FFFFFFFFFD4006FFF),
    .INIT_23(256'hFFF5001BE0005FFFFFFFFFD4005FFFFFF50000000001BFF50000000000017FFF),
    .INIT_24(256'hFFFFFD40FFFFFFC05FFFFFFFFFD4006FFFFFF5000017FFFFFD40000000006FFF),
    .INIT_25(256'hFFF50000000001BFF50000000000017FFFFFD400007FFFFFF81BFF5001BFF517),
    .INIT_26(256'h6FFFFFF5000017FFFFFD40000000006FFFFFF5001BE0007FFFFFFFFFD4005FFF),
    .INIT_27(256'h56FFF95000007FFE55541BFF5001BFF517FFFFFD40FFFFFFC05FFFFFFFFFD400),
    .INIT_28(256'h9F9554FDA0055A901555FFF555501ABF9554FEA400000001BFF5000000000000),
    .INIT_29(256'hF5056FFF950155FFD55015557FF555541A9F5555FDA006AFE555BFA90000001A),
    .INIT_2A(256'hFF0001FFF800000001BFF500000000000000FFD00000007FFE00001BFF5001BF),
    .INIT_2B(256'h001FFF8001FFF403FF40003FFC0000001FFF8001FFF8001F5000017FF500000F),
    .INIT_2C(256'h000000FFD00000007FFE00001BFF5001BFF5000FFD000005FFD4000001BFF500),
    .INIT_2D(256'h001FFF8001FFF8001F5000017FF500000FFF0001FFF800000001BFF500000000),
    .INIT_2E(256'h55BFF5000FFD000005FFD4000001BFF500001FFF8001FFF403FF40003FFC0000),
    .INIT_2F(256'h000FFF0001FFF800000001BFF500000000000000FFD00000007FFE00001BFF55),
    .INIT_30(256'hF500001FFF8001AAA803FF40003FFC00000016A90001FFF8001A9000017FF500),
    .INIT_31(256'h0000000000FFD00000007FFE00001BFFFFFFFFF5000FFD000005FFD4000001BF),
    .INIT_32(256'h00000000000001FFF800000000017FF500000FFF0001FFF800000001BFF50000),
    .INIT_33(256'hFFFFFFFFF5000FFD000005FFD4000001BFF500001FFF8000000003FF40003FFC),
    .INIT_34(256'hF500000FFF0001FFF800000001BFF500000000000000FFD00000007FFE00001B),
    .INIT_35(256'h01BFF500001FFF8000000003FF40003FFC00000000000001FFF800000000017F),
    .INIT_36(256'h00000000000000FFD00000007FFE00001BFFFFFFFFF5000FFD000005FFD40000),
    .INIT_37(256'h3FFC00000000000001FFF800000000017FF500000FFF0001FFF800000001BFF5),
    .INIT_38(256'h001BFF4555BFF5000FFD000005FFD4000001BFF500001FFF8000000003FF4000),
    .INIT_39(256'h017FF500000FFF6AA9FFF800000001BFF500000000000000FFD00000007FFE00),
    .INIT_3A(256'h000001BFF500001FFF6AAAA90003FFDAAA7FFC000000000AAAAAF45400000000),
    .INIT_3B(256'hBFF500000000000000FFD00000007FFE00001BFF5001BFF5000FFD000005FFD4),
    .INIT_3C(256'hFFFFFFFC000000006FFFFFF50000000000017FF500000FFFFFFFFFF800000001),
    .INIT_3D(256'hFE00001BFF5001BFF5000FFD000005FFD4000001BFF500001FFFFFFFF50003FF),
    .INIT_3E(256'h0000017FF500000FFFFFFFFFF800000001BFF500000000000000FFD00000007F),
    .INIT_3F(256'hFFD4000001BFF500001FFFFFFFF50003FFFFFFFFFC000000006FFFFFF5000000),
    .INIT_40(256'h0001BFF50000000000000155540000007FFE00001BFF5001BFF5000FFD000005),
    .INIT_41(256'h015555557FFC000000055F5555550000000000017FF5000015555555FFF80000),
    .INIT_42(256'h007FFE00001BFF5001BFF50005554000065564000001BFF500001FFFD555F454),
    .INIT_43(256'h00000000017FF5000000000001FFF800000001BFF50000000000000000000000),
    .INIT_44(256'h00000000000001BFF500001FFF8001FFF4000000003FFC0000001FFF80000000),
    .INIT_45(256'h00000001BFF50000000000000000000000007FFE00001BFF5001BFF500000000),
    .INIT_46(256'hFFF4000000003FFC0000001FFF8000000000000000017FF5000000000001FFF8),
    .INIT_47(256'h0000007FFE00001BFF5001BFF50000000000000000000001BFF500001FFF8001),
    .INIT_48(256'h000000000000017FF5000000000001FFF800000001BFF5000000000000000000),
    .INIT_49(256'h000000000000000001BFF500001FFF8001FFF4000000003FFC0000001FFF8000),
    .INIT_4A(256'hFFF800000001BFF5000000000000018AA40000007FFE00001BFF5001BFF50000),
    .INIT_4B(256'h8001FFF4062A90003FFC0000001FFF8001AAA400000000017FF5000018AA4001),
    .INIT_4C(256'hFFD00000007FFE00001BFF5001BFF50018AA400000AA84000001BFF500001FFF),
    .INIT_4D(256'h8001FFF800000000017FF500000FFF0001FFF800000001BFF500000000000000),
    .INIT_4E(256'h000FFD000005FFD4000001BFF500001FFF8001FFF403FF40003FFC0000001FFF),
    .INIT_4F(256'h0001FFF800000001BFF500000000000000FFD00000007FFE00001BFF5001BFF5),
    .INIT_50(256'h1FFF8001FFF403FF40003FFC0000001FFF8001FFF800000000017FF500000FFF),
    .INIT_51(256'h0000FFD00005553FFE55541BFF5001BFF5000FFD000005FFD4000001BFF50000),
    .INIT_52(256'h157F9555FD580000001555FD580000157F9554FD5005555555BFF50000000000),
    .INIT_53(256'hBFF5000FFD000005FFD40015557F5500001FFF9555FD58015F41553F54000000),
    .INIT_54(256'h005FFFFFF5001BFFFFFFFFF500000000000000FFD0001FFFFFFFFFF81BFF5001),
    .INIT_55(256'h00001FFFFFFFF5000017FFFFFD40000000006FFFFFF5000000005FFFF5000000),
    .INIT_56(256'h00000000FFD0001FFFFFFFFFF81BFF5001BFF5000FFD000005FFD4005FFFFE00),
    .INIT_57(256'h0000006FFFFFF5000000007FFFF5000000005FFFFFF5001BFFFFFFFFF5000000),
    .INIT_58(256'h5001BFF5000FFD000005FFD4005FFFFE0000001FFFFFFFF5000017FFFFFD4000),
    .INIT_59(256'h0000005FFFFFF5001BFFFFFFFFF500000000000000FFD0001FFFFFFFFFF81BFF),
    .INIT_5A(256'hFE0000001FFFFFFFF5000017FFFFFD40000000006FFFFFF5000000007FFFF500),
    .INIT_5B(256'h000000000001155400115555555554045550004555000FFD000005FFD4005FFF),
    .INIT_5C(256'h0000000000155555550000000055555500000000155555550005555555555500),
    .INIT_5D(256'h0000000000000011554000015554001555550000001555555555000015555555),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    addr_hi_reg_0
       (.ADDRARDADDR({1'b1,addr_hi0_n_93,addr_hi0_n_94,addr_hi0_n_95,addr_hi0_n_96,addr_hi0_n_97,addr_hi0_n_98,addr_hi0_n_99,addr_hi0_n_100,addr_hi0_n_101,addr_hi0_n_102,addr_hi0_n_103,addr_hi0_n_104,addr_hi0_n_105,addr_hi0_n_106,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_addr_hi_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_addr_hi_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(n_0_1212_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_addr_hi_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_addr_hi_reg_0_DOADO_UNCONNECTED[31:2],addr_hi_reg_0_n_35,addr_hi_reg_0_n_36}),
        .DOBDO(NLW_addr_hi_reg_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_addr_hi_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_addr_hi_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_addr_hi_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(CEP),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_addr_hi_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_addr_hi_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_addr_hi_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_addr_hi_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "addr_hi" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h00000000000000000000000000000000000002EAA8000000EAA9000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h00000001FFF4000000BFFF0000000000000000002EAA800000AA800000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h00000000001FFF400003FFF40000000000000000000000000000000000000000),
    .INIT_0A(256'h000000000000000000000000000000000000000001FFF4000000BFFF00000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000FFFFFFF00000BFFF00000FFFC0007FFD001FFF400002FFF4000000),
    .INIT_0D(256'h0000000000000000000007FFC00000FFFC0000000000000000000000007FFC00),
    .INIT_0E(256'h03FFF000FFFE0FFFFFFF01FBFFFBD00000FFFC00000000000000000000000000),
    .INIT_0F(256'hFFF8000000000000000000000000FFFF000000000001FFFFFFF00000BFFF0000),
    .INIT_10(256'h00003FFF00000000000000000000000000000000000000000000000FFFE00001),
    .INIT_11(256'hFF000000000001FFFFFFF00000BFFF000003FFF000FFFE1FFFFFFF01FFFFFFD0),
    .INIT_12(256'h0000000000000000000000000FFFE00001FFF8000000000000000000000000FF),
    .INIT_13(256'h000003FFF000FFFE1FFFFFFE01FFFFFFD000003FFF0000000000000000000000),
    .INIT_14(256'h0001FFF8000000000000000000000000FFFF000000000001FFFFFFF00000BFFF),
    .INIT_15(256'hFFD000003FFF00000000000000000000000000000000000000000000000FFFE0),
    .INIT_16(256'h00FFFF000000000001FFFFFFF00000355D000003FFF000FFFE1FFFFFFF01FFFF),
    .INIT_17(256'h00000000000000000000000000000FFFE00001FFF80000000000000000000000),
    .INIT_18(256'h0000000003FFF000FFFE1FFFFFFF01FFFFFFD000003FFF000000000000000000),
    .INIT_19(256'hFFE00001FFF8000000000000000000000000FFFF000000000001FFFFFFF00000),
    .INIT_1A(256'hFFFFFFD000003FFF00000000000000000000000000000000000000000000000F),
    .INIT_1B(256'h000000FFFF000000000001FFFFFFF000000000000003FFF000FFFE1FFFFFFF01),
    .INIT_1C(256'h000000000000000000000000000000000FFFE00001FFF8000000000000000000),
    .INIT_1D(256'h00003FFFFFF403FFF000FFFE1FFFFFFF01FFFFFFD000003FFF00000000000000),
    .INIT_1E(256'h000FF0303FFEFFFFFFD0001FFFFFFC0000000000FFFF000000000001FFFFFFF0),
    .INIT_1F(256'hFF01FFFFFFD01FFFBFFE7FF0001FFFFFFC00000FFFFFFF00000000001FFFFFFC),
    .INIT_20(256'h0000000000FFFF000000000001FFFFFFF00000BFFFFFFC03FFF000FFFE1FFFFF),
    .INIT_21(256'hFFFE00001FFFFFFF00000000000FFFFFFF000FC0007FFFFFFFFFF0003FFFFFFD),
    .INIT_22(256'hFFF00000BFFFFFFC03FFF000FFFE1FFFFFFF01FFFFFFD02FFFFFFFFFFC003FFF),
    .INIT_23(256'hFFFF000FC0007FFFFFFFFFE0002FFFFFFD0000000000FFFF000000000001FFFF),
    .INIT_24(256'hFFFFFE01FFFFFFD02FFFFFFFFFFC003FFFFFFE00001FFFFFFF00000000000FFF),
    .INIT_25(256'hFFFD0000000000FFFF000000000001FFFFFFF00000BFFFFFFC03FFF000FFFE1F),
    .INIT_26(256'h3FFFFFFE00001FFFFFFF00000000000FFFFFFF000FC0007FFFFFFFFFF0003FFF),
    .INIT_27(256'hFFFFFFF00000BFFCFFF403FFF000FFFE1FFFFFFF01FFFFFFD02FFFFFFFFFFC00),
    .INIT_28(256'h3F3FFDFEC407E0303FFEFFFFFFF0233FFFFDFCC800000000FFFF000000000000),
    .INIT_29(256'hFE0FFFFFFF00FBFFFBD01FFFBFFEFFF0103FBFFEFEC408CFFFFFFF3200000030),
    .INIT_2A(256'hFF4002FFFC00000000FFFF00000000000001FFF4000000BFFF000003FFF000FF),
    .INIT_2B(256'h003FFF0001FFF807FFD0007FFD0000002FFFC003FFF0003FE00001FFF800001F),
    .INIT_2C(256'h000001FFF4000000BFFF000003FFF000FFFE001FFF400003FFF40000003FFF00),
    .INIT_2D(256'h002FFFC003FFF0003FE00001FFF800001FFF4002FFFC00000000FFFF00000000),
    .INIT_2E(256'h553FFE001FFF400003FFF40000003FFF00003FFF0001FFF807FFD0007FFD0000),
    .INIT_2F(256'h001FFF4002FFFC00000000FFFF00000000000001FFF4000000BFFF000003FFE5),
    .INIT_30(256'hFF00003FFF0001000C07FFD0007FFD00000038024003FFF00010300001FFF800),
    .INIT_31(256'h0000000001FFF4000000BFFF000003FFFFFFFFFE001FFF400003FFF40000003F),
    .INIT_32(256'h00000000000003FFF00000000001FFF800001FFF4002FFFC00000000FFFF0000),
    .INIT_33(256'hFFFFFFFFFE001FFF400003FFF40000003FFF00003FFF0000000007FFD0007FFD),
    .INIT_34(256'hF800001FFF4002FFFC00000000FFFF00000000000001FFF4000000BFFF000003),
    .INIT_35(256'h003FFF00003FFF0000000007FFD0007FFD00000000000003FFF00000000001FF),
    .INIT_36(256'h00000000000001FFF4000000BFFF000003FFFFFFFFFE001FFF400003FFF40000),
    .INIT_37(256'h7FFD00000000000003FFF00000000001FFF800001FFF4002FFFC00000000FFFF),
    .INIT_38(256'h0003FFDFFF3FFE001FFF400003FFF40000003FFF00003FFF0000000007FFD000),
    .INIT_39(256'h01FFF800001FFFBFFEFFFC00000000FFFF00000000000001FFF4000000BFFF00),
    .INIT_3A(256'h0000003FFF00003FFFFFFFFF0007FFEFFFBFFD000000001FFFFCFDFC00000000),
    .INIT_3B(256'hFFFF00000000000001FFF4000000BFFF000003FFF000FFFE001FFF400003FFF4),
    .INIT_3C(256'hFFFFFFFD000000000FFFFFFF000000000001FFF800001FFFFFFFFFFC00000000),
    .INIT_3D(256'hFF000003FFF000FFFE001FFF400002FFF40000003FFF00003FFFFFFFFE0007FF),
    .INIT_3E(256'h000001FFF800001FFFFFFFFFFC00000000FFFF00000000000001FFF4000000BF),
    .INIT_3F(256'hFFF40000003FFF00003FFFFFFFFE0007FFFFFFFFFD000000000FFFFFFF000000),
    .INIT_40(256'h0000FFFF00000000000002EAA8000000BFFF000003FFF000FFFE001FFF400003),
    .INIT_41(256'h07AAAAAAFFFD000000056FEAAAAB000000000001FFF800002EAAAAABFFFC0000),
    .INIT_42(256'h00BFFF000003FFF000FFFE001EAA800000AA800000003FFF00003FFFEAABFD10),
    .INIT_43(256'h0000000001FFF8000000000002FFFC00000000FFFF0000000000000000000000),
    .INIT_44(256'h000000000000003FFF00003FFF0001FFF8000000007FFD0000002FFFC0000000),
    .INIT_45(256'h00000000FFFF000000000000000000000000BFFF000003FFF000FFFE00000000),
    .INIT_46(256'hFFF8000000007FFD0000002FFFC00000000000000001FFF8000000000002FFFC),
    .INIT_47(256'h000000BFFF000003FFF000FFFE00000000000000000000003FFF00003FFF0001),
    .INIT_48(256'h00000000000001FFF8000000000002FFFC00000000FFFF000000000000000000),
    .INIT_49(256'h0000000000000000003FFF00003FFF0001FFF8000000007FFD0000002FFFC000),
    .INIT_4A(256'hFFFC00000000FFFF00000000000003DFFC000000BFFF000003FFF000FFFE0000),
    .INIT_4B(256'h0001FFF80F7FF0007FFD0000002FFFC001FFF80000000001FFF800003DFFC002),
    .INIT_4C(256'hFFF4000000BFFF000003FFF000FFFE003DFFC00001FFD00000003FFF00003FFF),
    .INIT_4D(256'hC003FFF00000000001FFF800001FFF4002FFFC00000000FFFF00000000000001),
    .INIT_4E(256'h001FFF400003FFF40000003FFF00003FFF0001FFF807FFD0007FFD0000002FFF),
    .INIT_4F(256'h4002FFFC00000000FFFF00000000000001FFF4000000BFFF000003FFF000FFFE),
    .INIT_50(256'h3FFF0001FFF807FFD0007FFD0000002FFFC003FFF00000000001FFF800001FFF),
    .INIT_51(256'h0001FFF40000007FFF000003FFF000FFFE001FFF400002FFF40000003FFF0000),
    .INIT_52(256'h3FFFC002FFFC0000000003FFF000002EFFC001FFF4000000013FFF0000000000),
    .INIT_53(256'hFFFE001FFF400003FFF4000001BFF900003FFF0003FFF007FFD0007FFD000000),
    .INIT_54(256'h003FFFFFFD0003FFFFFFFFFF00000000000001FFF4002FFFFFFFFFFC03FFF000),
    .INIT_55(256'h00003FFFFFFFFE00001FFFFFFF40000000000FFFFFFF000000007FFFFE000000),
    .INIT_56(256'h00000001FFF4002FFFFFFFFFFC03FFF000FFFE001FFF400003FFF4002FFFFF00),
    .INIT_57(256'h0000000FFFFFFF000000007FFFFE000000002FFFFFFD0003FFFFFFFFFF000000),
    .INIT_58(256'hF000FFFE001FFF400002FFF4002FFFFF0000003FFFFFFFFE00001FFFFFFF0000),
    .INIT_59(256'h0000003FFFFFFD0003FFFFFFFFFF00000000000001FFF4002FFFFFFFFFFC03FF),
    .INIT_5A(256'hFF0000003FFFFFFFFE00001FFFFFFF00000000000FFFFFFF000000007FFFFE00),
    .INIT_5B(256'h0000000000036AAC0016AAAAAAAAAC0DAA8000DAA9001FFF400003FFF4002FFF),
    .INIT_5C(256'h00000000002AAAAAA8000000002AAAA9000000002AAAAAA8000AAAAAAAAAA900),
    .INIT_5D(256'h0000000000000036AA400002AAA0002AAAAB0000000AAAAAAAA900000AAAAAAA),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    addr_hi_reg_1
       (.ADDRARDADDR({1'b1,addr_hi0_n_93,addr_hi0_n_94,addr_hi0_n_95,addr_hi0_n_96,addr_hi0_n_97,addr_hi0_n_98,addr_hi0_n_99,addr_hi0_n_100,addr_hi0_n_101,addr_hi0_n_102,addr_hi0_n_103,addr_hi0_n_104,addr_hi0_n_105,addr_hi0_n_106,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_addr_hi_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_addr_hi_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(n_0_1212_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_addr_hi_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_addr_hi_reg_1_DOADO_UNCONNECTED[31:2],addr_hi_reg_1_n_35,addr_hi_reg_1_n_36}),
        .DOBDO(NLW_addr_hi_reg_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_addr_hi_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_addr_hi_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_addr_hi_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(CEP),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_addr_hi_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_addr_hi_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_addr_hi_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_addr_hi_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "addr_hi" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h00000000000000000000000000000000000001FFF40000003FFE000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h00000002FFF80000007FFE0000000000000000001FFF400003FFF00000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h00000000002FFF800003FFF00000000000000000000000000000000000000000),
    .INIT_0A(256'h000000000000000000000000000000000000000002FFF80000007FFE00000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h000000000002FFF80000007FFE0000000000000000002FFF800003FFF0000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0FFFC000BFFD002FFF800007FFF4000000000000000000000000000000000000),
    .INIT_0F(256'hFFFC000000000000000000000000BFFC000000000000FFFFFFF000007FFE0000),
    .INIT_10(256'h0000FFFC00000000000000000000000000000000000000000000000BFFD00000),
    .INIT_11(256'hFC000000000000FFFFFFF000007FFE00000FFFC000BFFD0FFFFFFF02FFFFFFE0),
    .INIT_12(256'h0000000000000000000000000BFFD00000FFFC000000000000000000000000BF),
    .INIT_13(256'h00000FFFC000BFFD0FFFFFFF02FFFFFFE00000FFFC0000000000000000000000),
    .INIT_14(256'h0000FFFC000000000000000000000000BFFC000000000000FFFFFFF000007FFE),
    .INIT_15(256'hFFE00000FFFC00000000000000000000000000000000000000000000000BFFD0),
    .INIT_16(256'h00BFFC000000000000FFFFFFF00000000000000FFFC000BFFD0FFFFFFF02FFFF),
    .INIT_17(256'h00000000000000000000000000000BFFD00000FFFC0000000000000000000000),
    .INIT_18(256'h000000000FFFC000BFFD0FFFFFFF02FFFFFFE00000FFFC000000000000000000),
    .INIT_19(256'hFFD00000FFFC000000000000000000000000BFFC000000000000FFFFFFF00000),
    .INIT_1A(256'hFFFFFFE00000FFFC00000000000000000000000000000000000000000000000B),
    .INIT_1B(256'h000000BFFC000000000000FFFFFFF00000000000000FFFC000BFFD0FFFFFFF02),
    .INIT_1C(256'h000000000000000000000000000000000BFFD00000FFFC000000000000000000),
    .INIT_1D(256'h0000000000000FFFC000BFFD0FFFFFFF02FFFFFFE00000FFFC00000000000000),
    .INIT_1E(256'h000BFFC00001FFFC000000000000000000000000BFFC000000000000FFFFFFF0),
    .INIT_1F(256'hFF02FFFFFFE00000FFFD00000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000BFFC000000000000FFFFFFF000007FFFFFF80FFFC000BFFD0FFFFF),
    .INIT_21(256'hFFFD00000FFFFFFF00000000003FFFFFFC000BF0003FFFFFFFFFF0003FFFFFFC),
    .INIT_22(256'hFFF000007FFFFFF80FFFC000BFFD0FFFFFFF02FFFFFFE03FFFFFFFFFF0002FFF),
    .INIT_23(256'hFFFC000BF0003FFFFFFFFFF0003FFFFFFC0000000000BFFC000000000000FFFF),
    .INIT_24(256'hFFFFFF02FFFFFFE03FFFFFFFFFF0002FFFFFFD00000FFFFFFF00000000003FFF),
    .INIT_25(256'hFFFC0000000000BFFC000000000000FFFFFFF000007FFFFFF80FFFC000BFFD0F),
    .INIT_26(256'h2FFFFFFD00000FFFFFFF00000000003FFFFFFC000BF0003FFFFFFFFFF0003FFF),
    .INIT_27(256'h02FFF80000007FFF00000FFFC000BFFD0FFFFFFF02FFFFFFE03FFFFFFFFFF000),
    .INIT_28(256'hFFC002FFB8001FC00001FFFC00001EFF8002FFB400000000BFFC000000000000),
    .INIT_29(256'hFD002FFF800007FFF4000000FFFD00000FFFC001FFB807BFE000BFED0000000F),
    .INIT_2A(256'hFF8001FFF800000000BFFC00000000000002FFF80000007FFE00000FFFC000BF),
    .INIT_2B(256'h000FFFC000FFFC0BFFE000BFFE0000001FFF8000FFFC000FD00000FFFC00002F),
    .INIT_2C(256'h000002FFF80000007FFE00000FFFC000BFFD002FFF800003FFF0000000FFFC00),
    .INIT_2D(256'h001FFF8000FFFC000FD00000FFFC00002FFF8001FFF800000000BFFC00000000),
    .INIT_2E(256'h00FFFD002FFF800003FFF0000000FFFC00000FFFC000FFFC0BFFE000BFFE0000),
    .INIT_2F(256'h002FFF8001FFF800000000BFFC00000000000002FFF80000007FFE00000FFFD0),
    .INIT_30(256'hFC00000FFFC000FFF80BFFE000BFFE0000000FFF8000FFFC000FC00000FFFC00),
    .INIT_31(256'h0000000002FFF80000007FFE00000FFFFFFFFFFD002FFF800003FFF0000000FF),
    .INIT_32(256'h00000000000000FFFC0000000000FFFC00002FFF8001FFF800000000BFFC0000),
    .INIT_33(256'hFFFFFFFFFD002FFF800003FFF0000000FFFC00000FFFC00000000BFFE000BFFE),
    .INIT_34(256'hFC00002FFF8001FFF800000000BFFC00000000000002FFF80000007FFE00000F),
    .INIT_35(256'h00FFFC00000FFFC00000000BFFE000BFFE00000000000000FFFC0000000000FF),
    .INIT_36(256'h00000000000002FFF80000007FFE00000FFFFFFFFFFD002FFF800003FFF00000),
    .INIT_37(256'hBFFE00000000000000FFFC0000000000FFFC00002FFF8001FFF800000000BFFC),
    .INIT_38(256'h000FFFE000FFFD002FFF800003FFF0000000FFFC00000FFFC00000000BFFE000),
    .INIT_39(256'h00FFFC00002FFFEAABFFF800000000BFFC00000000000002FFF80000007FFE00),
    .INIT_3A(256'h000000FFFC00000FFFEAAAA8000BFFFAAAFFFE000000002AAAABFE0000000000),
    .INIT_3B(256'hBFFC00000000000002FFF80000007FFE00000FFFC000BFFD002FFF800003FFF0),
    .INIT_3C(256'hFFFFFFFE000000003FFFFFFC000000000000FFFC00002FFFFFFFFFF800000000),
    .INIT_3D(256'hFE00000FFFC000BFFD002FFF800003FFF0000000FFFC00000FFFFFFFFD000BFF),
    .INIT_3E(256'h000000FFFC00002FFFFFFFFFF800000000BFFC00000000000002FFF80000007F),
    .INIT_3F(256'hFFF0000000FFFC00000FFFFFFFFD000BFFFFFFFFFE000000003FFFFFFC000000),
    .INIT_40(256'h0000BFFC00000000000001FFF40000007FFE00000FFFC000BFFD002FFF800003),
    .INIT_41(256'h0BFFFFFFFFFE000000003FFFFFFC000000000000FFFC00001FFFFFFFFFF80000),
    .INIT_42(256'h007FFE00000FFFC000BFFD002FFF400003FFF0000000FFFC00000FFFFFFFFE00),
    .INIT_43(256'h0000000000FFFC000000000001FFF800000000BFFC0000000000000000000000),
    .INIT_44(256'h00000000000000FFFC00000FFFC000FFFC00000000BFFE0000001FFF80000000),
    .INIT_45(256'h00000000BFFC0000000000000000000000007FFE00000FFFC000BFFD00000000),
    .INIT_46(256'hFFFC00000000BFFE0000001FFF800000000000000000FFFC000000000001FFF8),
    .INIT_47(256'h0000007FFE00000FFFC000BFFD0000000000000000000000FFFC00000FFFC000),
    .INIT_48(256'h00000000000000FFFC000000000001FFF800000000BFFC000000000000000000),
    .INIT_49(256'h000000000000000000FFFC00000FFFC000FFFC00000000BFFE0000001FFF8000),
    .INIT_4A(256'hFFF800000000BFFC00000000000000AAA00000007FFE00000FFFC000BFFD0000),
    .INIT_4B(256'hC000FFFC02AA8000BFFE0000001FFF8000AAA40000000000FFFC00000AAA0001),
    .INIT_4C(256'hFFF80000007FFE00000FFFC000BFFD000AAA000002AAA0000000FFFC00000FFF),
    .INIT_4D(256'h8000FFFC0000000000FFFC00002FFF8001FFF800000000BFFC00000000000002),
    .INIT_4E(256'h002FFF800003FFF0000000FFFC00000FFFC000FFFC0BFFE000BFFE0000001FFF),
    .INIT_4F(256'h8001FFF800000000BFFC00000000000002FFF80000007FFE00000FFFC000BFFD),
    .INIT_50(256'h0FFFC000FFFC0BFFE000BFFE0000001FFF8000FFFC0000000000FFFC00002FFF),
    .INIT_51(256'h0002FFF8000000BFFE00000FFFC000BFFD002FFF800003FFF0000000FFFC0000),
    .INIT_52(256'h0FFF8001FFF80000000000FFFC00001FFF8002FFF800000000FFFC0000000000),
    .INIT_53(256'hBFFD002FFF800003FFF0000000FFFC00000FFFC000FFFC0BFFE000BFFE000000),
    .INIT_54(256'h003FFFFFFC000FFFFFFFFFFC00000000000002FFF8001FFFFFFFFFF80FFFC000),
    .INIT_55(256'h00000FFFFFFFFD00000FFFFFFF00000000003FFFFFFC000000003FFFFD000000),
    .INIT_56(256'h00000002FFF8001FFFFFFFFFF80FFFC000BFFD002FFF800003FFF0003FFFFE00),
    .INIT_57(256'h0000003FFFFFFC000000003FFFFD000000003FFFFFFC000FFFFFFFFFFC000000),
    .INIT_58(256'hC000BFFD002FFF800003FFF0003FFFFE0000000FFFFFFFFD00000FFFFFFF0000),
    .INIT_59(256'h0000003FFFFFFC000FFFFFFFFFFC00000000000002FFF8001FFFFFFFFFF80FFF),
    .INIT_5A(256'hFE0000000FFFFFFFFD00000FFFFFFF00000000003FFFFFFC000000003FFFFD00),
    .INIT_5B(256'h000000000000955000095555555550025540002554002FFF800003FFF0003FFF),
    .INIT_5C(256'h0000000000155555540000000015555400000000155555540005555555555400),
    .INIT_5D(256'h0000000000000009550000015550001555540000000555555554000005555555),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    addr_hi_reg_2
       (.ADDRARDADDR({1'b1,addr_hi0_n_93,addr_hi0_n_94,addr_hi0_n_95,addr_hi0_n_96,addr_hi0_n_97,addr_hi0_n_98,addr_hi0_n_99,addr_hi0_n_100,addr_hi0_n_101,addr_hi0_n_102,addr_hi0_n_103,addr_hi0_n_104,addr_hi0_n_105,addr_hi0_n_106,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_addr_hi_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_addr_hi_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(n_0_1212_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_addr_hi_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_addr_hi_reg_2_DOADO_UNCONNECTED[31:2],addr_hi_reg_2_n_35,addr_hi_reg_2_n_36}),
        .DOBDO(NLW_addr_hi_reg_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_addr_hi_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_addr_hi_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_addr_hi_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(CEP),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_addr_hi_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_addr_hi_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_addr_hi_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_addr_hi_reg_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "addr_hi" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "16383" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    addr_hi_reg_3
       (.ADDRARDADDR({1'b1,addr_hi0_n_93,addr_hi0_n_94,addr_hi0_n_95,addr_hi0_n_96,addr_hi0_n_97,addr_hi0_n_98,addr_hi0_n_99,addr_hi0_n_100,addr_hi0_n_101,addr_hi0_n_102,addr_hi0_n_103,addr_hi0_n_104,addr_hi0_n_105,addr_hi0_n_106,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_addr_hi_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_addr_hi_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(n_0_1212_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_addr_hi_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_addr_hi_reg_3_DOADO_UNCONNECTED[31:2],addr_hi_reg_3_n_35,addr_hi_reg_3_n_36}),
        .DOBDO(NLW_addr_hi_reg_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_addr_hi_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_addr_hi_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_addr_hi_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(CEP),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_addr_hi_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_addr_hi_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_addr_hi_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_addr_hi_reg_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_kebab[0]_i_1 
       (.I0(p_1_out_n_106),
        .O(\addr_kebab[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_kebab[12]_i_10 
       (.I0(p_1_out_n_96),
        .I1(\addr_kebab_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_burger_reg[4]_1 ),
        .I4(\addr_burger_reg[4]_0 ),
        .O(\addr_kebab[12]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[12]_i_11 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_97),
        .O(\addr_kebab[12]_i_11_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_kebab[12]_i_6 
       (.I0(p_1_out_n_96),
        .O(\addr_kebab[12]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[12]_i_7 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[12]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_kebab[12]_i_8 
       (.I0(p_1_out_n_95),
        .I1(p_1_out_n_94),
        .O(\addr_kebab[12]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_kebab[12]_i_9 
       (.I0(p_1_out_n_96),
        .I1(p_1_out_n_95),
        .O(\addr_kebab[12]_i_9_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[4]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[4]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[4]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[4]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[4]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[4]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[4]_i_5 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[4]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[4]_i_6 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_102),
        .O(\addr_kebab[4]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[4]_i_7 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_103),
        .O(\addr_kebab[4]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[4]_i_8 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_104),
        .O(\addr_kebab[4]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[4]_i_9 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_105),
        .O(\addr_kebab[4]_i_9_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[8]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[8]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[8]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[8]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[8]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[8]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[8]_i_5 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_kebab_reg[4]_0 ),
        .I3(\addr_kebab_reg[4]_1 ),
        .O(\addr_kebab[8]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[8]_i_6 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_98),
        .O(\addr_kebab[8]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[8]_i_7 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_99),
        .O(\addr_kebab[8]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[8]_i_8 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_100),
        .O(\addr_kebab[8]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_kebab[8]_i_9 
       (.I0(\addr_kebab_reg[4]_1 ),
        .I1(\addr_kebab_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(p_1_out_n_101),
        .O(\addr_kebab[8]_i_9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[0] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab[0]_i_1_n_1 ),
        .Q(addr_kebab[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[10] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[12]_i_2_n_7 ),
        .Q(addr_kebab[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[11] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[12]_i_2_n_6 ),
        .Q(addr_kebab[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[12] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[12]_i_2_n_5 ),
        .Q(addr_kebab[12]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[12]_i_2 
       (.CI(\addr_kebab_reg[8]_i_1_n_1 ),
        .CO(\NLW_addr_kebab_reg[12]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_out_n_96,\addr_kebab[12]_i_6_n_1 ,\addr_kebab[12]_i_7_n_1 }),
        .O({\addr_kebab_reg[12]_i_2_n_5 ,\addr_kebab_reg[12]_i_2_n_6 ,\addr_kebab_reg[12]_i_2_n_7 ,\addr_kebab_reg[12]_i_2_n_8 }),
        .S({\addr_kebab[12]_i_8_n_1 ,\addr_kebab[12]_i_9_n_1 ,\addr_kebab[12]_i_10_n_1 ,\addr_kebab[12]_i_11_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[1] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[4]_i_1_n_8 ),
        .Q(addr_kebab[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[2] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[4]_i_1_n_7 ),
        .Q(addr_kebab[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[3] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[4]_i_1_n_6 ),
        .Q(addr_kebab[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[4] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[4]_i_1_n_5 ),
        .Q(addr_kebab[4]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\addr_kebab_reg[4]_i_1_n_1 ,\NLW_addr_kebab_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(p_1_out_n_106),
        .DI({\addr_kebab[4]_i_2_n_1 ,\addr_kebab[4]_i_3_n_1 ,\addr_kebab[4]_i_4_n_1 ,\addr_kebab[4]_i_5_n_1 }),
        .O({\addr_kebab_reg[4]_i_1_n_5 ,\addr_kebab_reg[4]_i_1_n_6 ,\addr_kebab_reg[4]_i_1_n_7 ,\addr_kebab_reg[4]_i_1_n_8 }),
        .S({\addr_kebab[4]_i_6_n_1 ,\addr_kebab[4]_i_7_n_1 ,\addr_kebab[4]_i_8_n_1 ,\addr_kebab[4]_i_9_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[5] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[8]_i_1_n_8 ),
        .Q(addr_kebab[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[6] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[8]_i_1_n_7 ),
        .Q(addr_kebab[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[7] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[8]_i_1_n_6 ),
        .Q(addr_kebab[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[8] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[8]_i_1_n_5 ),
        .Q(addr_kebab[8]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[8]_i_1 
       (.CI(\addr_kebab_reg[4]_i_1_n_1 ),
        .CO({\addr_kebab_reg[8]_i_1_n_1 ,\NLW_addr_kebab_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\addr_kebab[8]_i_2_n_1 ,\addr_kebab[8]_i_3_n_1 ,\addr_kebab[8]_i_4_n_1 ,\addr_kebab[8]_i_5_n_1 }),
        .O({\addr_kebab_reg[8]_i_1_n_5 ,\addr_kebab_reg[8]_i_1_n_6 ,\addr_kebab_reg[8]_i_1_n_7 ,\addr_kebab_reg[8]_i_1_n_8 }),
        .S({\addr_kebab[8]_i_6_n_1 ,\addr_kebab[8]_i_7_n_1 ,\addr_kebab[8]_i_8_n_1 ,\addr_kebab[8]_i_9_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_kebab_reg[9] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_kebab_reg[0]_0 ),
        .D(\addr_kebab_reg[12]_i_2_n_8 ),
        .Q(addr_kebab[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[11]_i_5 
       (.I0(O[1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[11]_i_6 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_lolipop[11]_i_7 
       (.I0(O[1]),
        .I1(O[2]),
        .O(\addr_lolipop_reg[11]_i_16 [2]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_lolipop[11]_i_8 
       (.I0(O[1]),
        .I1(\addr_burger_reg[4]_3 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_1 ),
        .I4(\addr_burger_reg[4]_0 ),
        .O(\addr_lolipop_reg[11]_i_16 [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[11]_i_9 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(O[0]),
        .O(\addr_lolipop_reg[11]_i_16 [0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[4]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_1 [3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[4]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_1 [2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[4]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_1 [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[4]_i_5 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_1 [0]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[4]_i_6 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[4]_0 [2]),
        .O(\h_count_reg_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[4]_i_7 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[4]_0 [1]),
        .O(\h_count_reg_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[4]_i_8 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[4]_0 [0]),
        .O(\h_count_reg_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[4]_i_9 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_burger_reg[4]_4 [0]),
        .O(\h_count_reg_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[8]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_2 [3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[8]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_2 [2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[8]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_2 [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[8]_i_5 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_burger_reg[4]_2 ),
        .I3(\addr_burger_reg[4]_3 ),
        .O(\addr_burger_reg[7]_i_30_2 [0]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[8]_i_6 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[8]_0 [3]),
        .O(\addr_lolipop_reg[8]_i_10 [3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[8]_i_7 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[8]_0 [2]),
        .O(\addr_lolipop_reg[8]_i_10 [2]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[8]_i_8 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[8]_0 [1]),
        .O(\addr_lolipop_reg[8]_i_10 [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_lolipop[8]_i_9 
       (.I0(\addr_burger_reg[4]_3 ),
        .I1(\addr_burger_reg[4]_2 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_lolipop_reg[8]_0 [0]),
        .O(\addr_lolipop_reg[8]_i_10 [0]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[0] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(D[0]),
        .Q(addr_lolipop[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[10] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [9]),
        .Q(addr_lolipop[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[11] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [10]),
        .Q(addr_lolipop[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[1] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [0]),
        .Q(addr_lolipop[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[2] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [1]),
        .Q(addr_lolipop[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[3] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [2]),
        .Q(addr_lolipop[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[4] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [3]),
        .Q(addr_lolipop[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[5] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [4]),
        .Q(addr_lolipop[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[6] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [5]),
        .Q(addr_lolipop[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[7] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [6]),
        .Q(addr_lolipop[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[8] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [7]),
        .Q(addr_lolipop[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_lolipop_reg[9] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_lolipop_reg[0]_0 ),
        .D(\addr_lolipop_reg[11]_0 [8]),
        .Q(addr_lolipop[9]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "addr_milk" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000003D003D003D003D003D003D003D003D0000000000000000),
    .INIT_01(256'h0000000000000000003D003D003D003D003D003D003D003D0000000000000000),
    .INIT_02(256'h00000000000000000039003D0039003900390039003900390000000000000000),
    .INIT_03(256'h000000000000002E003200390039003900390039003900390039000000000000),
    .INIT_04(256'h00000000002E002E002E001F001F001F001F001F001F001F001F001F00000000),
    .INIT_05(256'h00000000002E002E002E001F001F001F001F0032001F001F001F001F00000000),
    .INIT_06(256'h00000000002E002E002E001F001F001F001F003D001F0039001F001F00000000),
    .INIT_07(256'h00000000002E002E0032001F0032001F001F003D0039003D0032001F00000000),
    .INIT_08(256'h00000000002E002E002E0039003D00390032003D003F003D003D003900000000),
    .INIT_09(256'h00000000002E002E002E003D003F003900390032002E002E003D003D00000000),
    .INIT_0A(256'h00000000002E002E002E0039003D00320032003200320032003D003D00000000),
    .INIT_0B(256'h00000000002E0032002E003D003D003D003D003D003D003D003D003D00000000),
    .INIT_0C(256'h00000000002E002E002E001F0039003D0039003F001F00320032001F00000000),
    .INIT_0D(256'h00000000002400190024001F00320032001F003F001F001F001F001F00000000),
    .INIT_0E(256'h00000000002E00240024001F001F001F001F001F001F001F001F001F00000000),
    .INIT_0F(256'h0000000000000000002E001F001F001F001F001F001F001F001F000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    addr_milk_reg
       (.ADDRARDADDR({1'b0,1'b0,ADDRARDADDR,C[0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(n_0_1212_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_addr_milk_reg_DOADO_UNCONNECTED[15:8],addr_milk_reg_n_9,addr_milk_reg_n_10,addr_milk_reg_n_11,addr_milk_reg_n_12,addr_milk_reg_n_13,addr_milk_reg_n_14,addr_milk_reg_n_15,addr_milk_reg_n_16}),
        .DOBDO(NLW_addr_milk_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_addr_milk_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_addr_milk_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(addr_milk_reg_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[4]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13 [3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[4]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13 [2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[4]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13 [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[4]_i_5 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13 [0]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[4]_i_6 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[4]_2 [3]),
        .O(\h_count_reg_reg[0]_1 [3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[4]_i_7 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[4]_2 [2]),
        .O(\h_count_reg_reg[0]_1 [2]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[4]_i_8 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[4]_2 [1]),
        .O(\h_count_reg_reg[0]_1 [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[4]_i_9 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[4]_2 [0]),
        .O(\h_count_reg_reg[0]_1 [0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[8]_i_2 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13_0 [3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[8]_i_3 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13_0 [2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[8]_i_4 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13_0 [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[8]_i_5 
       (.I0(\addr_burger_reg[4]_0 ),
        .I1(\addr_burger_reg[4]_1 ),
        .I2(\addr_pizza_reg[4]_0 ),
        .I3(\addr_pizza_reg[4]_1 ),
        .O(\addr_pizza_reg[9]_i_13_0 [0]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[8]_i_6 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[8]_0 [3]),
        .O(\h_count_reg_reg[5] [3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[8]_i_7 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[8]_0 [2]),
        .O(\h_count_reg_reg[5] [2]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[8]_i_8 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[8]_0 [1]),
        .O(\h_count_reg_reg[5] [1]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr_pizza[8]_i_9 
       (.I0(\addr_pizza_reg[4]_1 ),
        .I1(\addr_pizza_reg[4]_0 ),
        .I2(\addr_burger_reg[4]_1 ),
        .I3(\addr_burger_reg[4]_0 ),
        .I4(\addr_pizza_reg[8]_0 [0]),
        .O(\h_count_reg_reg[5] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[0] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(D[0]),
        .Q(addr_pizza[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[1] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [0]),
        .Q(addr_pizza[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[2] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [1]),
        .Q(addr_pizza[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[3] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [2]),
        .Q(addr_pizza[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[4] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [3]),
        .Q(addr_pizza[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[5] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [4]),
        .Q(addr_pizza[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[6] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [5]),
        .Q(addr_pizza[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[7] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [6]),
        .Q(addr_pizza[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[8] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [7]),
        .Q(addr_pizza[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_pizza_reg[9] 
       (.C(n_0_1212_BUFG),
        .CE(\addr_pizza_reg[0]_0 ),
        .D(\addr_pizza_reg[9]_0 [8]),
        .Q(addr_pizza[9]),
        .R(1'b0));
  spriteROM__parameterized2 bone
       (.D({addr_bone_reg_n_9,addr_bone_reg_n_10,addr_bone_reg_n_11,addr_bone_reg_n_12,addr_bone_reg_n_13,addr_bone_reg_n_14,addr_bone_reg_n_15,addr_bone_reg_n_16}),
        .Q(milk_n_6),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data[6]_i_2 (addr_bone_reg_i_8),
        .\data[6]_i_2_0 (\data_reg[0]_2 ),
        .\data_reg[6]_0 (\data_reg[6]_0 ),
        .\data_reg[7]_0 ({\data_reg[7]_2 ,bone_n_3,bone_n_4,bone_n_5,bone_n_6,bone_n_7,bone_n_8}));
  spriteROM__parameterized3 burger
       (.DOADO({DOADO,data_reg__0[4:3],data_reg__0[1:0]}),
        .Q(addr_burger),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_reg[2] (\data_reg[0]_2 ),
        .\data_reg[5] (\data_reg[3]_2 ),
        .\data_reg[5]_0 ({milk_n_7,milk_n_8}),
        .\data_reg[5]_1 ({bone_n_3,bone_n_6}),
        .\data_reg[5]_2 (addr_bone_reg_i_8),
        .data_reg_0(data_reg_7),
        .data_reg_1(data_reg_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    data3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data3_OVERFLOW_UNCONNECTED),
        .P({NLW_data3_P_UNCONNECTED[47:15],data3_n_92,data3_n_93,data3_n_94,data3_n_95,data3_n_96,data3_n_97,data3_n_98,data3_n_99,data3_n_100,data3_n_101,data3_n_102,data3_n_103,data3_n_104,data3_n_105,data3_n_106}),
        .PATTERNBDETECT(NLW_data3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    data3__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({data3__0_n_25,data3__0_n_26,data3__0_n_27,data3__0_n_28,data3__0_n_29,data3__0_n_30,data3__0_n_31,data3__0_n_32,data3__0_n_33,data3__0_n_34,data3__0_n_35,data3__0_n_36,data3__0_n_37,data3__0_n_38,data3__0_n_39,data3__0_n_40,data3__0_n_41,data3__0_n_42,data3__0_n_43,data3__0_n_44,data3__0_n_45,data3__0_n_46,data3__0_n_47,data3__0_n_48,data3__0_n_49,data3__0_n_50,data3__0_n_51,data3__0_n_52,data3__0_n_53,data3__0_n_54}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data3__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data3__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data3__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data3__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data3__0_OVERFLOW_UNCONNECTED),
        .P({NLW_data3__0_P_UNCONNECTED[47:17],data3__0_n_90,data3__0_n_91,data3__0_n_92,data3__0_n_93,data3__0_n_94,data3__0_n_95,data3__0_n_96,P}),
        .PATTERNBDETECT(NLW_data3__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data3__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({data3__0_n_107,data3__0_n_108,data3__0_n_109,data3__0_n_110,data3__0_n_111,data3__0_n_112,data3__0_n_113,data3__0_n_114,data3__0_n_115,data3__0_n_116,data3__0_n_117,data3__0_n_118,data3__0_n_119,data3__0_n_120,data3__0_n_121,data3__0_n_122,data3__0_n_123,data3__0_n_124,data3__0_n_125,data3__0_n_126,data3__0_n_127,data3__0_n_128,data3__0_n_129,data3__0_n_130,data3__0_n_131,data3__0_n_132,data3__0_n_133,data3__0_n_134,data3__0_n_135,data3__0_n_136,data3__0_n_137,data3__0_n_138,data3__0_n_139,data3__0_n_140,data3__0_n_141,data3__0_n_142,data3__0_n_143,data3__0_n_144,data3__0_n_145,data3__0_n_146,data3__0_n_147,data3__0_n_148,data3__0_n_149,data3__0_n_150,data3__0_n_151,data3__0_n_152,data3__0_n_153,data3__0_n_154}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data3__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    data3__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({data3__0_n_25,data3__0_n_26,data3__0_n_27,data3__0_n_28,data3__0_n_29,data3__0_n_30,data3__0_n_31,data3__0_n_32,data3__0_n_33,data3__0_n_34,data3__0_n_35,data3__0_n_36,data3__0_n_37,data3__0_n_38,data3__0_n_39,data3__0_n_40,data3__0_n_41,data3__0_n_42,data3__0_n_43,data3__0_n_44,data3__0_n_45,data3__0_n_46,data3__0_n_47,data3__0_n_48,data3__0_n_49,data3__0_n_50,data3__0_n_51,data3__0_n_52,data3__0_n_53,data3__0_n_54}),
        .ACOUT(NLW_data3__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10],data5[10]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data3__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data3__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data3__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data3__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data3__1_OVERFLOW_UNCONNECTED),
        .P({NLW_data3__1_P_UNCONNECTED[47:15],data3__1_n_92,data3__1_n_93,data3__1_n_94,data3__1_n_95,data3__1_n_96,data3__1_n_97,data3__1_n_98,data3__1_n_99,data3__1_n_100,data3__1_n_101,data3__1_n_102,data3__1_n_103,data3__1_n_104,data3__1_n_105,data3__1_n_106}),
        .PATTERNBDETECT(NLW_data3__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data3__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({data3__0_n_107,data3__0_n_108,data3__0_n_109,data3__0_n_110,data3__0_n_111,data3__0_n_112,data3__0_n_113,data3__0_n_114,data3__0_n_115,data3__0_n_116,data3__0_n_117,data3__0_n_118,data3__0_n_119,data3__0_n_120,data3__0_n_121,data3__0_n_122,data3__0_n_123,data3__0_n_124,data3__0_n_125,data3__0_n_126,data3__0_n_127,data3__0_n_128,data3__0_n_129,data3__0_n_130,data3__0_n_131,data3__0_n_132,data3__0_n_133,data3__0_n_134,data3__0_n_135,data3__0_n_136,data3__0_n_137,data3__0_n_138,data3__0_n_139,data3__0_n_140,data3__0_n_141,data3__0_n_142,data3__0_n_143,data3__0_n_144,data3__0_n_145,data3__0_n_146,data3__0_n_147,data3__0_n_148,data3__0_n_149,data3__0_n_150,data3__0_n_151,data3__0_n_152,data3__0_n_153,data3__0_n_154}),
        .PCOUT(NLW_data3__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data3__1_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_160 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_161 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_162 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_163 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9]_1 [0]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_166 
       (.I0(CO),
        .I1(\data_reg[5]_i_221_n_5 ),
        .I2(\data_reg[5]_i_221_n_6 ),
        .O(\data[5]_i_166_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_167 
       (.I0(CO),
        .I1(\data_reg[5]_i_221_n_7 ),
        .I2(\data_reg[5]_i_221_n_8 ),
        .O(\data[5]_i_167_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_168 
       (.I0(CO),
        .I1(\data_reg[5]_i_222_n_5 ),
        .I2(\data_reg[5]_i_222_n_6 ),
        .O(\data[5]_i_168_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_169 
       (.I0(CO),
        .I1(\data_reg[5]_i_222_n_7 ),
        .I2(\data_reg[5]_i_222_n_8 ),
        .O(\data[5]_i_169_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_170 
       (.I0(\data_reg[5]_i_221_n_5 ),
        .I1(\data_reg[5]_i_221_n_6 ),
        .I2(CO),
        .O(\data[5]_i_170_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_171 
       (.I0(\data_reg[5]_i_221_n_7 ),
        .I1(\data_reg[5]_i_221_n_8 ),
        .I2(CO),
        .O(\data[5]_i_171_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_172 
       (.I0(\data_reg[5]_i_222_n_5 ),
        .I1(\data_reg[5]_i_222_n_6 ),
        .I2(CO),
        .O(\data[5]_i_172_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_173 
       (.I0(\data_reg[5]_i_222_n_7 ),
        .I1(\data_reg[5]_i_222_n_8 ),
        .I2(CO),
        .O(\data[5]_i_173_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_205 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_206 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9]_0 [0]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_213 
       (.I0(CO),
        .I1(data3__0_n_91),
        .I2(data3__0_n_92),
        .O(\data[5]_i_213_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_214 
       (.I0(CO),
        .I1(data3__0_n_93),
        .I2(data3__0_n_94),
        .O(\data[5]_i_214_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_215 
       (.I0(CO),
        .I1(data3__0_n_95),
        .I2(data3__0_n_96),
        .O(\data[5]_i_215_n_1 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \data[5]_i_216 
       (.I0(P[9]),
        .I1(data40_in[8]),
        .I2(P[8]),
        .I3(data40_in[7]),
        .O(\data[5]_i_216_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_217 
       (.I0(data3__0_n_91),
        .I1(data3__0_n_92),
        .I2(CO),
        .O(\data[5]_i_217_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_218 
       (.I0(data3__0_n_93),
        .I1(data3__0_n_94),
        .I2(CO),
        .O(\data[5]_i_218_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_219 
       (.I0(data3__0_n_95),
        .I1(data3__0_n_96),
        .I2(CO),
        .O(\data[5]_i_219_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_223 
       (.I0(data3_n_92),
        .I1(data3__1_n_92),
        .O(\data[5]_i_223_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_224 
       (.I0(data3__1_n_93),
        .I1(data3_n_93),
        .O(\data[5]_i_224_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_225 
       (.I0(data3__1_n_94),
        .I1(data3_n_94),
        .O(\data[5]_i_225_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_226 
       (.I0(data3__1_n_95),
        .I1(data3_n_95),
        .O(\data[5]_i_226_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_227 
       (.I0(data3__1_n_96),
        .I1(data3_n_96),
        .O(\data[5]_i_227_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_228 
       (.I0(data3__1_n_97),
        .I1(data3_n_97),
        .O(\data[5]_i_228_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_229 
       (.I0(data3__1_n_98),
        .I1(data3_n_98),
        .O(\data[5]_i_229_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_230 
       (.I0(data3__1_n_99),
        .I1(data3_n_99),
        .O(\data[5]_i_230_n_1 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \data[5]_i_243 
       (.I0(P[7]),
        .I1(data40_in[6]),
        .I2(P[6]),
        .I3(data40_in[5]),
        .O(\data[5]_i_243_n_1 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \data[5]_i_244 
       (.I0(P[5]),
        .I1(data40_in[4]),
        .I2(P[4]),
        .I3(data40_in[3]),
        .O(\data[5]_i_244_n_1 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \data[5]_i_245 
       (.I0(P[3]),
        .I1(data40_in[2]),
        .I2(P[2]),
        .I3(data40_in[1]),
        .O(\data[5]_i_245_n_1 ));
  LUT5 #(
    .INIT(32'hB22222B2)) 
    \data[5]_i_246 
       (.I0(P[1]),
        .I1(data40_in[0]),
        .I2(P[0]),
        .I3(A[0]),
        .I4(yPlayer),
        .O(\data[5]_i_246_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_251 
       (.I0(data3__1_n_100),
        .I1(data3_n_100),
        .O(\data[5]_i_251_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_252 
       (.I0(data3__1_n_101),
        .I1(data3_n_101),
        .O(\data[5]_i_252_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_253 
       (.I0(data3__1_n_102),
        .I1(data3_n_102),
        .O(\data[5]_i_253_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_254 
       (.I0(data3__1_n_103),
        .I1(data3_n_103),
        .O(\data[5]_i_254_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_255 
       (.I0(data3__1_n_104),
        .I1(data3_n_104),
        .O(\data[5]_i_255_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_256 
       (.I0(data3__1_n_105),
        .I1(data3_n_105),
        .O(\data[5]_i_256_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data[5]_i_257 
       (.I0(data3__1_n_106),
        .I1(data3_n_106),
        .O(\data[5]_i_257_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data[5]_i_37 
       (.I0(\data[7]_i_3 ),
        .I1(\data[7]_i_3_0 ),
        .I2(\data[7]_i_3_1 ),
        .I3(\data[7]_i_3_2 ),
        .O(addr_bone_reg_i_8));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_76 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_77 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_78 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_79 
       (.I0(CO),
        .I1(\data_reg[5]_i_27 ),
        .O(\v_count_reg_reg[9] [0]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_83 
       (.I0(CO),
        .I1(\data_reg[5]_i_175_n_5 ),
        .I2(\data_reg[5]_i_175_n_6 ),
        .O(\data[5]_i_83_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_84 
       (.I0(CO),
        .I1(\data_reg[5]_i_175_n_7 ),
        .I2(\data_reg[5]_i_175_n_8 ),
        .O(\data[5]_i_84_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_87 
       (.I0(\data_reg[5]_i_175_n_5 ),
        .I1(\data_reg[5]_i_175_n_6 ),
        .I2(CO),
        .O(\data[5]_i_87_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_88 
       (.I0(\data_reg[5]_i_175_n_7 ),
        .I1(\data_reg[5]_i_175_n_8 ),
        .I2(CO),
        .O(\data[5]_i_88_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[0] 
       (.C(n_0_1212_BUFG),
        .CE(\data_reg[5]_1 ),
        .D(\data_reg[0]_1 ),
        .Q(data_play[0]),
        .S(\data_reg[5]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[1] 
       (.C(n_0_1212_BUFG),
        .CE(\data_reg[5]_1 ),
        .D(\data_reg[1]_1 ),
        .Q(data_play[1]),
        .S(\data_reg[5]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[2] 
       (.C(n_0_1212_BUFG),
        .CE(\data_reg[5]_1 ),
        .D(\data_reg[2]_0 ),
        .Q(data_play[2]),
        .S(\data_reg[5]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[3] 
       (.C(n_0_1212_BUFG),
        .CE(\data_reg[5]_1 ),
        .D(\data_reg[3]_1 ),
        .Q(data_play[3]),
        .S(\data_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(n_0_1212_BUFG),
        .CE(1'b1),
        .D(\data_reg[4]_1 ),
        .Q(data_play[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[5] 
       (.C(n_0_1212_BUFG),
        .CE(\data_reg[5]_1 ),
        .D(\data_reg[5]_2 ),
        .Q(data_play[5]),
        .S(\data_reg[5]_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_165 
       (.CI(\data_reg[5]_i_212_n_1 ),
        .CO({\data_reg[5]_i_165_n_1 ,\NLW_data_reg[5]_i_165_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\data[5]_i_213_n_1 ,\data[5]_i_214_n_1 ,\data[5]_i_215_n_1 ,\data[5]_i_216_n_1 }),
        .O(\NLW_data_reg[5]_i_165_O_UNCONNECTED [3:0]),
        .S({\data[5]_i_217_n_1 ,\data[5]_i_218_n_1 ,\data[5]_i_219_n_1 ,\data_reg[5]_i_80_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_174 
       (.CI(\data_reg[5]_i_175_n_1 ),
        .CO(\NLW_data_reg[5]_i_174_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,data3__1_n_93,data3__1_n_94,data3__1_n_95}),
        .O(data3__1_0),
        .S({\data[5]_i_223_n_1 ,\data[5]_i_224_n_1 ,\data[5]_i_225_n_1 ,\data[5]_i_226_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_175 
       (.CI(\data_reg[5]_i_221_n_1 ),
        .CO({\data_reg[5]_i_175_n_1 ,\NLW_data_reg[5]_i_175_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({data3__1_n_96,data3__1_n_97,data3__1_n_98,data3__1_n_99}),
        .O({\data_reg[5]_i_175_n_5 ,\data_reg[5]_i_175_n_6 ,\data_reg[5]_i_175_n_7 ,\data_reg[5]_i_175_n_8 }),
        .S({\data[5]_i_227_n_1 ,\data[5]_i_228_n_1 ,\data[5]_i_229_n_1 ,\data[5]_i_230_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_212 
       (.CI(1'b0),
        .CO({\data_reg[5]_i_212_n_1 ,\NLW_data_reg[5]_i_212_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\data[5]_i_243_n_1 ,\data[5]_i_244_n_1 ,\data[5]_i_245_n_1 ,\data[5]_i_246_n_1 }),
        .O(\NLW_data_reg[5]_i_212_O_UNCONNECTED [3:0]),
        .S(S));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_221 
       (.CI(\data_reg[5]_i_222_n_1 ),
        .CO({\data_reg[5]_i_221_n_1 ,\NLW_data_reg[5]_i_221_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({data3__1_n_100,data3__1_n_101,data3__1_n_102,data3__1_n_103}),
        .O({\data_reg[5]_i_221_n_5 ,\data_reg[5]_i_221_n_6 ,\data_reg[5]_i_221_n_7 ,\data_reg[5]_i_221_n_8 }),
        .S({\data[5]_i_251_n_1 ,\data[5]_i_252_n_1 ,\data[5]_i_253_n_1 ,\data[5]_i_254_n_1 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \data_reg[5]_i_222 
       (.CI(1'b0),
        .CO({\data_reg[5]_i_222_n_1 ,\NLW_data_reg[5]_i_222_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({data3__1_n_104,data3__1_n_105,data3__1_n_106,1'b0}),
        .O({\data_reg[5]_i_222_n_5 ,\data_reg[5]_i_222_n_6 ,\data_reg[5]_i_222_n_7 ,\data_reg[5]_i_222_n_8 }),
        .S({\data[5]_i_255_n_1 ,\data[5]_i_256_n_1 ,\data[5]_i_257_n_1 ,data3__0_n_90}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_28 
       (.CI(\data_reg[5]_i_80_n_1 ),
        .CO({\data[5]_i_88_0 ,\NLW_data_reg[5]_i_28_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\data[5]_i_8 ,\data[5]_i_83_n_1 ,\data[5]_i_84_n_1 }),
        .O(\NLW_data_reg[5]_i_28_O_UNCONNECTED [3:0]),
        .S({\data[5]_i_8_0 ,\data[5]_i_87_n_1 ,\data[5]_i_88_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_80 
       (.CI(\data_reg[5]_i_165_n_1 ),
        .CO({\data_reg[5]_i_80_n_1 ,\NLW_data_reg[5]_i_80_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\data[5]_i_166_n_1 ,\data[5]_i_167_n_1 ,\data[5]_i_168_n_1 ,\data[5]_i_169_n_1 }),
        .O(\NLW_data_reg[5]_i_80_O_UNCONNECTED [3:0]),
        .S({\data[5]_i_170_n_1 ,\data[5]_i_171_n_1 ,\data[5]_i_172_n_1 ,\data[5]_i_173_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(n_0_1212_BUFG),
        .CE(1'b1),
        .D(\data_reg[6]_1 ),
        .Q(data_play[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(n_0_1212_BUFG),
        .CE(1'b1),
        .D(\data_reg[7]_3 ),
        .Q(data_play[7]),
        .R(1'b0));
  spriteROM__parameterized0 heart
       (.Q({\addr_heart_reg_n_1_[7] ,\addr_heart_reg_n_1_[6] ,\addr_heart_reg_n_1_[5] ,\addr_heart_reg_n_1_[4] ,\addr_heart_reg_n_1_[3] ,\addr_heart_reg_n_1_[2] ,\addr_heart_reg_n_1_[1] ,\addr_heart_reg_n_1_[0] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data(data));
  spriteROM hi
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_reg[7]_0 (\data_reg[7]_0 ),
        .out({addr_hi_reg_3_n_35,addr_hi_reg_3_n_36,addr_hi_reg_2_n_35,addr_hi_reg_2_n_36,addr_hi_reg_1_n_35,addr_hi_reg_1_n_36,addr_hi_reg_0_n_35,addr_hi_reg_0_n_36}));
  spriteROM__parameterized5 kebab
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data[7]_i_2 (\data[7]_i_2 ),
        .\data[7]_i_2_0 (lolipop_n_8),
        .data_reg_1_0(data_reg_1),
        .data_reg_1_1(addr_kebab),
        .out(out));
  spriteROM__parameterized6 lolipop
       (.DOADO(data_reg__0_0),
        .Q(addr_lolipop),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data[7]_i_6 (\data[7]_i_6_0 ),
        .\data[7]_i_6_0 (data_reg__0_1),
        .\data[7]_i_6_1 (Q),
        .\data[7]_i_6_2 (\data[7]_i_6 ),
        .data_reg_0(data_reg_6),
        .data_reg_1(lolipop_n_8));
  spriteROM__parameterized1 milk
       (.D({addr_milk_reg_n_9,addr_milk_reg_n_10,addr_milk_reg_n_11,addr_milk_reg_n_12,addr_milk_reg_n_13,addr_milk_reg_n_14,addr_milk_reg_n_15,addr_milk_reg_n_16}),
        .DOADO({data_reg__0[4:3],data_reg__0[1:0]}),
        .Q({\data_reg[7]_1 ,milk_n_6,milk_n_7,milk_n_8}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data[4]_i_3 ({bone_n_4,bone_n_5,bone_n_7,bone_n_8}),
        .\data[4]_i_3_0 (\data[4]_i_3 ),
        .\data_reg[0]_0 (\data_reg[0]_0 ),
        .\data_reg[0]_1 (\data_reg[0]_2 ),
        .\data_reg[1]_0 (\data_reg[1]_0 ),
        .\data_reg[3]_0 (\data_reg[3]_0 ),
        .\data_reg[3]_1 (addr_bone_reg_i_8),
        .\data_reg[3]_2 (\data_reg[3]_2 ),
        .\data_reg[4]_0 (\data_reg[4]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_out_0[10],p_0_out_0[10],p_0_out_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out_OVERFLOW_UNCONNECTED),
        .P(NLW_p_0_out_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p_0_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p_0_out_n_107,p_0_out_n_108,p_0_out_n_109,p_0_out_n_110,p_0_out_n_111,p_0_out_n_112,p_0_out_n_113,p_0_out_n_114,p_0_out_n_115,p_0_out_n_116,p_0_out_n_117,p_0_out_n_118,p_0_out_n_119,p_0_out_n_120,p_0_out_n_121,p_0_out_n_122,p_0_out_n_123,p_0_out_n_124,p_0_out_n_125,p_0_out_n_126,p_0_out_n_127,p_0_out_n_128,p_0_out_n_129,p_0_out_n_130,p_0_out_n_131,p_0_out_n_132,p_0_out_n_133,p_0_out_n_134,p_0_out_n_135,p_0_out_n_136,p_0_out_n_137,p_0_out_n_138,p_0_out_n_139,p_0_out_n_140,p_0_out_n_141,p_0_out_n_142,p_0_out_n_143,p_0_out_n_144,p_0_out_n_145,p_0_out_n_146,p_0_out_n_147,p_0_out_n_148,p_0_out_n_149,p_0_out_n_150,p_0_out_n_151,p_0_out_n_152,p_0_out_n_153,p_0_out_n_154}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_1_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_1_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,B,B,B,B,B,B,B,B,B,B,B,B,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_1_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_1_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_1_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(n_0_1212_BUFG),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_1_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_p_1_out_OVERFLOW_UNCONNECTED),
        .P({NLW_p_1_out_P_UNCONNECTED[47:13],p_1_out_n_94,p_1_out_n_95,p_1_out_n_96,p_1_out_n_97,p_1_out_n_98,p_1_out_n_99,p_1_out_n_100,p_1_out_n_101,p_1_out_n_102,p_1_out_n_103,p_1_out_n_104,p_1_out_n_105,p_1_out_n_106}),
        .PATTERNBDETECT(NLW_p_1_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_1_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({p_0_out_n_107,p_0_out_n_108,p_0_out_n_109,p_0_out_n_110,p_0_out_n_111,p_0_out_n_112,p_0_out_n_113,p_0_out_n_114,p_0_out_n_115,p_0_out_n_116,p_0_out_n_117,p_0_out_n_118,p_0_out_n_119,p_0_out_n_120,p_0_out_n_121,p_0_out_n_122,p_0_out_n_123,p_0_out_n_124,p_0_out_n_125,p_0_out_n_126,p_0_out_n_127,p_0_out_n_128,p_0_out_n_129,p_0_out_n_130,p_0_out_n_131,p_0_out_n_132,p_0_out_n_133,p_0_out_n_134,p_0_out_n_135,p_0_out_n_136,p_0_out_n_137,p_0_out_n_138,p_0_out_n_139,p_0_out_n_140,p_0_out_n_141,p_0_out_n_142,p_0_out_n_143,p_0_out_n_144,p_0_out_n_145,p_0_out_n_146,p_0_out_n_147,p_0_out_n_148,p_0_out_n_149,p_0_out_n_150,p_0_out_n_151,p_0_out_n_152,p_0_out_n_153,p_0_out_n_154}),
        .PCOUT(NLW_p_1_out_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_1_out_UNDERFLOW_UNCONNECTED));
  spriteROM__parameterized4 pizza
       (.DOADO(data_reg__0_0),
        .Q(addr_pizza),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data[5]_i_15 (\data[7]_i_6 ),
        .\data[5]_i_15_0 (Q),
        .\data[5]_i_15_1 (\data[7]_i_6_0 ),
        .data_reg_0(data_reg__0_1),
        .data_reg_1(data_reg),
        .data_reg_2(data_reg_0),
        .data_reg_3(data_reg_2),
        .data_reg_4(data_reg_3),
        .data_reg_5(data_reg_4),
        .data_reg_6(data_reg_5));
endmodule

module quad2SevenSeg
   (an_OBUF,
    Q,
    CLK);
  output [3:0]an_OBUF;
  output [1:0]Q;
  input CLK;

  wire CLK;
  wire [1:0]Q;
  wire [3:0]an_OBUF;
  wire \ps[0]_i_1_n_1 ;
  wire \ps[1]_i_1_n_1 ;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \ps[0]_i_1 
       (.I0(Q[0]),
        .O(\ps[0]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ps[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\ps[1]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ps_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ps[0]_i_1_n_1 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ps_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ps[1]_i_1_n_1 ),
        .Q(Q[1]),
        .R(1'b0));
endmodule

module sevenSeg
   (an_OBUF,
    Q,
    clk_IBUF_BUFG);
  output [3:0]an_OBUF;
  output [1:0]Q;
  input clk_IBUF_BUFG;

  wire [1:0]Q;
  wire [3:0]an_OBUF;
  wire clkDiv;
  wire clk_IBUF_BUFG;
  wire \genblk1[0].fdiv_n_1 ;
  wire \genblk1[10].fdiv_n_1 ;
  wire \genblk1[11].fdiv_n_1 ;
  wire \genblk1[12].fdiv_n_1 ;
  wire \genblk1[13].fdiv_n_1 ;
  wire \genblk1[14].fdiv_n_1 ;
  wire \genblk1[15].fdiv_n_1 ;
  wire \genblk1[16].fdiv_n_1 ;
  wire \genblk1[1].fdiv_n_1 ;
  wire \genblk1[2].fdiv_n_1 ;
  wire \genblk1[3].fdiv_n_1 ;
  wire \genblk1[4].fdiv_n_1 ;
  wire \genblk1[5].fdiv_n_1 ;
  wire \genblk1[6].fdiv_n_1 ;
  wire \genblk1[7].fdiv_n_1 ;
  wire \genblk1[8].fdiv_n_1 ;
  wire \genblk1[9].fdiv_n_1 ;

  clockDivider \genblk1[0].fdiv 
       (.clkDiv_reg_0(\genblk1[0].fdiv_n_1 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  clockDivider_0 \genblk1[10].fdiv 
       (.clkDiv_reg_0(\genblk1[10].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[9].fdiv_n_1 ));
  clockDivider_1 \genblk1[11].fdiv 
       (.clkDiv_reg_0(\genblk1[11].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[10].fdiv_n_1 ));
  clockDivider_2 \genblk1[12].fdiv 
       (.clkDiv_reg_0(\genblk1[12].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[11].fdiv_n_1 ));
  clockDivider_3 \genblk1[13].fdiv 
       (.clkDiv_reg_0(\genblk1[13].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[12].fdiv_n_1 ));
  clockDivider_4 \genblk1[14].fdiv 
       (.clkDiv_reg_0(\genblk1[14].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[13].fdiv_n_1 ));
  clockDivider_5 \genblk1[15].fdiv 
       (.clkDiv_reg_0(\genblk1[15].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[14].fdiv_n_1 ));
  clockDivider_6 \genblk1[16].fdiv 
       (.clkDiv_reg_0(\genblk1[16].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[15].fdiv_n_1 ));
  clockDivider_7 \genblk1[17].fdiv 
       (.CLK(clkDiv),
        .clkDiv_reg_0(\genblk1[16].fdiv_n_1 ));
  clockDivider_8 \genblk1[1].fdiv 
       (.clkDiv_reg_0(\genblk1[1].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[0].fdiv_n_1 ));
  clockDivider_9 \genblk1[2].fdiv 
       (.clkDiv_reg_0(\genblk1[2].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[1].fdiv_n_1 ));
  clockDivider_10 \genblk1[3].fdiv 
       (.clkDiv_reg_0(\genblk1[3].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[2].fdiv_n_1 ));
  clockDivider_11 \genblk1[4].fdiv 
       (.clkDiv_reg_0(\genblk1[4].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[3].fdiv_n_1 ));
  clockDivider_12 \genblk1[5].fdiv 
       (.clkDiv_reg_0(\genblk1[5].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[4].fdiv_n_1 ));
  clockDivider_13 \genblk1[6].fdiv 
       (.clkDiv_reg_0(\genblk1[6].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[5].fdiv_n_1 ));
  clockDivider_14 \genblk1[7].fdiv 
       (.clkDiv_reg_0(\genblk1[7].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[6].fdiv_n_1 ));
  clockDivider_15 \genblk1[8].fdiv 
       (.clkDiv_reg_0(\genblk1[8].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[7].fdiv_n_1 ));
  clockDivider_16 \genblk1[9].fdiv 
       (.clkDiv_reg_0(\genblk1[9].fdiv_n_1 ),
        .clkDiv_reg_1(\genblk1[8].fdiv_n_1 ));
  quad2SevenSeg q7seg
       (.CLK(clkDiv),
        .Q(Q),
        .an_OBUF(an_OBUF));
endmodule

module spriteROM
   (\data_reg[7]_0 ,
    out,
    clk_IBUF_BUFG);
  output [7:0]\data_reg[7]_0 ;
  input [7:0]out;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [7:0]\data_reg[7]_0 ;
  wire [7:0]out;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[0]),
        .Q(\data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[1]),
        .Q(\data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[2]),
        .Q(\data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[3]),
        .Q(\data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[4]),
        .Q(\data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[5]),
        .Q(\data_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[6]),
        .Q(\data_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out[7]),
        .Q(\data_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized0
   (data,
    Q,
    clk_IBUF_BUFG);
  output [0:0]data;
  input [7:0]Q;
  input clk_IBUF_BUFG;

  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]data;
  wire \data[4]_i_4_n_1 ;
  wire \data[4]_i_5_n_1 ;
  wire \data[4]_i_6_n_1 ;
  wire \data[4]_i_7_n_1 ;
  wire \data_reg[4]_i_1_n_1 ;
  wire \data_reg[4]_i_2_n_1 ;
  wire \data_reg[4]_i_3_n_1 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF666A0000)) 
    \data[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\data[4]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFC)) 
    \data[4]_i_5 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[6]),
        .O(\data[4]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h137FFF3333FF7310)) 
    \data[4]_i_6 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\data[4]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0013333773331000)) 
    \data[4]_i_7 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\data[4]_i_7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[4]_i_1_n_1 ),
        .Q(data),
        .R(1'b0));
  MUXF8 \data_reg[4]_i_1 
       (.I0(\data_reg[4]_i_2_n_1 ),
        .I1(\data_reg[4]_i_3_n_1 ),
        .O(\data_reg[4]_i_1_n_1 ),
        .S(Q[7]));
  MUXF7 \data_reg[4]_i_2 
       (.I0(\data[4]_i_4_n_1 ),
        .I1(\data[4]_i_5_n_1 ),
        .O(\data_reg[4]_i_2_n_1 ),
        .S(Q[5]));
  MUXF7 \data_reg[4]_i_3 
       (.I0(\data[4]_i_6_n_1 ),
        .I1(\data[4]_i_7_n_1 ),
        .O(\data_reg[4]_i_3_n_1 ),
        .S(Q[5]));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized1
   (\data_reg[0]_0 ,
    \data_reg[1]_0 ,
    \data_reg[3]_0 ,
    \data_reg[4]_0 ,
    Q,
    \data_reg[0]_1 ,
    \data[4]_i_3 ,
    \data_reg[3]_1 ,
    \data_reg[3]_2 ,
    DOADO,
    \data[4]_i_3_0 ,
    D,
    clk_IBUF_BUFG);
  output \data_reg[0]_0 ;
  output \data_reg[1]_0 ;
  output \data_reg[3]_0 ;
  output \data_reg[4]_0 ;
  output [3:0]Q;
  input \data_reg[0]_1 ;
  input [3:0]\data[4]_i_3 ;
  input \data_reg[3]_1 ;
  input \data_reg[3]_2 ;
  input [3:0]DOADO;
  input \data[4]_i_3_0 ;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [3:0]DOADO;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [3:0]\data[4]_i_3 ;
  wire \data[4]_i_3_0 ;
  wire \data_reg[0]_0 ;
  wire \data_reg[0]_1 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[3]_2 ;
  wire \data_reg[4]_0 ;
  wire \data_reg_n_1_[0] ;
  wire \data_reg_n_1_[1] ;
  wire \data_reg_n_1_[3] ;
  wire \data_reg_n_1_[4] ;

  LUT6 #(
    .INIT(64'h22E2FFFF22E222E2)) 
    \data[0]_i_2 
       (.I0(\data_reg_n_1_[0] ),
        .I1(\data_reg[0]_1 ),
        .I2(\data[4]_i_3 [0]),
        .I3(\data_reg[3]_1 ),
        .I4(\data_reg[3]_2 ),
        .I5(DOADO[0]),
        .O(\data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h22E2FFFF22E222E2)) 
    \data[1]_i_2 
       (.I0(\data_reg_n_1_[1] ),
        .I1(\data_reg[0]_1 ),
        .I2(\data[4]_i_3 [1]),
        .I3(\data_reg[3]_1 ),
        .I4(\data_reg[3]_2 ),
        .I5(DOADO[1]),
        .O(\data_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h22E2FFFF22E222E2)) 
    \data[3]_i_2 
       (.I0(\data_reg_n_1_[3] ),
        .I1(\data_reg[0]_1 ),
        .I2(\data[4]_i_3 [2]),
        .I3(\data_reg[3]_1 ),
        .I4(\data_reg[3]_2 ),
        .I5(DOADO[2]),
        .O(\data_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0ACAFACA0ACA0ACA)) 
    \data[4]_i_5__0 
       (.I0(\data_reg_n_1_[4] ),
        .I1(\data[4]_i_3 [3]),
        .I2(\data_reg[0]_1 ),
        .I3(\data_reg[3]_1 ),
        .I4(\data[4]_i_3_0 ),
        .I5(DOADO[3]),
        .O(\data_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\data_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\data_reg_n_1_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\data_reg_n_1_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\data_reg_n_1_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized2
   (\data_reg[6]_0 ,
    \data_reg[7]_0 ,
    \data[6]_i_2 ,
    \data[6]_i_2_0 ,
    Q,
    D,
    clk_IBUF_BUFG);
  output \data_reg[6]_0 ;
  output [6:0]\data_reg[7]_0 ;
  input \data[6]_i_2 ;
  input \data[6]_i_2_0 ;
  input [0:0]Q;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire \data[6]_i_2 ;
  wire \data[6]_i_2_0 ;
  wire \data_reg[6]_0 ;
  wire [6:0]\data_reg[7]_0 ;
  wire \data_reg_n_1_[6] ;

  LUT4 #(
    .INIT(16'hD0DF)) 
    \data[6]_i_3 
       (.I0(\data_reg_n_1_[6] ),
        .I1(\data[6]_i_2 ),
        .I2(\data[6]_i_2_0 ),
        .I3(Q),
        .O(\data_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\data_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\data_reg_n_1_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(\data_reg[7]_0 [6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized3
   (DOADO,
    data_reg_0,
    data_reg_1,
    clk_IBUF_BUFG,
    Q,
    \data_reg[5] ,
    \data_reg[5]_0 ,
    \data_reg[2] ,
    \data_reg[5]_1 ,
    \data_reg[5]_2 );
  output [5:0]DOADO;
  output data_reg_0;
  output data_reg_1;
  input clk_IBUF_BUFG;
  input [7:0]Q;
  input \data_reg[5] ;
  input [1:0]\data_reg[5]_0 ;
  input \data_reg[2] ;
  input [1:0]\data_reg[5]_1 ;
  input \data_reg[5]_2 ;

  wire [5:0]DOADO;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire \data_reg[2] ;
  wire \data_reg[5] ;
  wire [1:0]\data_reg[5]_0 ;
  wire [1:0]\data_reg[5]_1 ;
  wire \data_reg[5]_2 ;
  wire data_reg_0;
  wire data_reg_1;
  wire [5:2]data_reg__0;
  wire [15:8]NLW_data_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_data_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_data_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_data_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'h44F444F4FFF444F4)) 
    \data[2]_i_2 
       (.I0(\data_reg[5] ),
        .I1(data_reg__0[2]),
        .I2(\data_reg[5]_0 [0]),
        .I3(\data_reg[2] ),
        .I4(\data_reg[5]_1 [0]),
        .I5(\data_reg[5]_2 ),
        .O(data_reg_0));
  LUT6 #(
    .INIT(64'h44F444F4FFF444F4)) 
    \data[5]_i_13 
       (.I0(\data_reg[5] ),
        .I1(data_reg__0[5]),
        .I2(\data_reg[5]_0 [1]),
        .I3(\data_reg[2] ),
        .I4(\data_reg[5]_1 [1]),
        .I5(\data_reg[5]_2 ),
        .O(data_reg_1));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "burger/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000000003F003F003F003F003F003F003F003F003F003F003F003F00000000),
    .INIT_03(256'h0000003F003F003F003F003F003F00000000003F003F003F003F003F003F0000),
    .INIT_04(256'h003F003F003F003F003F0000003F003F003F003F0000003F003F003F003F003F),
    .INIT_05(256'h003F003F003F003F003F003F003F003F003F003F003F003F003F003F003F003F),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000003F003F003F003F003F003F003F003F003F003F003F003F003F003F0000),
    .INIT_08(256'h0000003F003F003F0000003F003F00000000003F003F0000003F003F003F0000),
    .INIT_09(256'h003F000000000000003F000000000000000000000000003F000000000000003F),
    .INIT_0A(256'h003F003F003F003F003F003F003F003F003F003F003F003F003F003F003F003F),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h003F003F003F0000003F003F00000000003F003F003F003F003F003F003F003F),
    .INIT_0D(256'h003F003F003F003F000000000000003F003F003F003F003F003F003F003F003F),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    data_reg
       (.ADDRARDADDR({1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_data_reg_DOADO_UNCONNECTED[15:8],DOADO[5:4],data_reg__0[5],DOADO[3:2],data_reg__0[2],DOADO[1:0]}),
        .DOBDO(NLW_data_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_data_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_data_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized4
   (data_reg_0,
    data_reg_1,
    data_reg_2,
    data_reg_3,
    data_reg_4,
    data_reg_5,
    data_reg_6,
    clk_IBUF_BUFG,
    Q,
    \data[5]_i_15 ,
    \data[5]_i_15_0 ,
    DOADO,
    \data[5]_i_15_1 );
  output [1:0]data_reg_0;
  output data_reg_1;
  output data_reg_2;
  output data_reg_3;
  output data_reg_4;
  output data_reg_5;
  output data_reg_6;
  input clk_IBUF_BUFG;
  input [9:0]Q;
  input \data[5]_i_15 ;
  input [1:0]\data[5]_i_15_0 ;
  input [5:0]DOADO;
  input \data[5]_i_15_1 ;

  wire [5:0]DOADO;
  wire [9:0]Q;
  wire clk_IBUF_BUFG;
  wire \data[5]_i_15 ;
  wire [1:0]\data[5]_i_15_0 ;
  wire \data[5]_i_15_1 ;
  wire [1:0]data_reg_0;
  wire data_reg_1;
  wire data_reg_2;
  wire data_reg_3;
  wire data_reg_4;
  wire data_reg_5;
  wire data_reg_6;
  wire [5:0]data_reg__0;
  wire [15:8]NLW_data_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_data_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_data_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_data_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    \data[0]_i_4 
       (.I0(data_reg__0[0]),
        .I1(\data[5]_i_15 ),
        .I2(\data[5]_i_15_0 [0]),
        .I3(\data[5]_i_15_0 [1]),
        .I4(DOADO[0]),
        .I5(\data[5]_i_15_1 ),
        .O(data_reg_1));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    \data[1]_i_4 
       (.I0(data_reg__0[1]),
        .I1(\data[5]_i_15 ),
        .I2(\data[5]_i_15_0 [0]),
        .I3(\data[5]_i_15_0 [1]),
        .I4(DOADO[1]),
        .I5(\data[5]_i_15_1 ),
        .O(data_reg_2));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    \data[2]_i_4 
       (.I0(data_reg__0[2]),
        .I1(\data[5]_i_15 ),
        .I2(\data[5]_i_15_0 [0]),
        .I3(\data[5]_i_15_0 [1]),
        .I4(DOADO[2]),
        .I5(\data[5]_i_15_1 ),
        .O(data_reg_3));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    \data[3]_i_4 
       (.I0(data_reg__0[3]),
        .I1(\data[5]_i_15 ),
        .I2(\data[5]_i_15_0 [0]),
        .I3(\data[5]_i_15_0 [1]),
        .I4(DOADO[3]),
        .I5(\data[5]_i_15_1 ),
        .O(data_reg_4));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    \data[4]_i_9 
       (.I0(data_reg__0[4]),
        .I1(\data[5]_i_15 ),
        .I2(\data[5]_i_15_0 [0]),
        .I3(\data[5]_i_15_0 [1]),
        .I4(DOADO[4]),
        .I5(\data[5]_i_15_1 ),
        .O(data_reg_5));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    \data[5]_i_42 
       (.I0(data_reg__0[5]),
        .I1(\data[5]_i_15 ),
        .I2(\data[5]_i_15_0 [0]),
        .I3(\data[5]_i_15_0 [1]),
        .I4(DOADO[5]),
        .I5(\data[5]_i_15_1 ),
        .O(data_reg_6));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "pizza/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000003F003F003F00000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000003F003F003F003F003F003F003F00000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h003F003F003F003F003F003F003F003F003F0000000000000000000000000000),
    .INIT_05(256'h000000000000000000000000000000000000000000000000000000000000003F),
    .INIT_06(256'h003F003F003F003F003F003F003F003F003F0000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000003F003F003F),
    .INIT_08(256'h003F003F003F00000000000000000000003F0000000000000000000000000000),
    .INIT_09(256'h00000000000000000000000000000000000000000000003F003F003F003F003F),
    .INIT_0A(256'h003F003F00000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000003F003F003F003F003F003F),
    .INIT_0C(256'h003F000000000000003F003F003F003F00000000000000000000000000000000),
    .INIT_0D(256'h000000000000000000000000000000000000003F003F003F003F003F003F003F),
    .INIT_0E(256'h000000000000003F003F003F003F003F003F003F000000000000000000000000),
    .INIT_0F(256'h00000000000000000000000000000000003F003F003F003F003F003F003F003F),
    .INIT_10(256'h00000000003F003F003F003F003F003F003F003F000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000003F003F003F003F003F003F003F00000000),
    .INIT_12(256'h0000003F003F003F003F003F003F003F003F003F000000000000000000000000),
    .INIT_13(256'h000000000000000000000000003F003F003F003F003F00000000000000000000),
    .INIT_14(256'h003F003F003F003F003F003F00000000003F003F003F00000000000000000000),
    .INIT_15(256'h00000000000000000000003F003F003F003F003F000000000000003F003F003F),
    .INIT_16(256'h003F003F003F003F003F003F00000000003F003F003F00000000000000000000),
    .INIT_17(256'h0000000000000000003F003F003F003F003F00000000003F003F003F003F003F),
    .INIT_18(256'h000000000000003F003F003F003F003F003F003F003F00000000000000000000),
    .INIT_19(256'h0000000000000000003F003F003F003F003F00000000003F003F003F003F003F),
    .INIT_1A(256'h00000000000000000000003F003F003F003F003F003F00000000000000000000),
    .INIT_1B(256'h000000000000003F003F003F003F003F003F0000003F003F003F003F00000000),
    .INIT_1C(256'h003F003F003F000000000000003F003F003F003F003F003F0000000000000000),
    .INIT_1D(256'h000000000000003F003F003F003F003F00000000003F003F003F000000000000),
    .INIT_1E(256'h003F003F003F003F00000000003F003F003F003F003F003F0000000000000000),
    .INIT_1F(256'h00000000003F003F003F003F003F003F00000000003F003F003F00000000003F),
    .INIT_20(256'h003F003F003F003F003F00000000003F003F003F000000000000000000000000),
    .INIT_21(256'h00000000003F003F003F003F003F000000000000003F003F00000000003F003F),
    .INIT_22(256'h003F003F003F003F003F00000000003F003F0000000000000000000000000000),
    .INIT_23(256'h0000003F003F003F003F003F000000000000003F003F003F00000000003F003F),
    .INIT_24(256'h003F003F003F003F003F00000000003F003F00000000003F003F000000000000),
    .INIT_25(256'h0000003F003F003F003F000000000000003F003F003F003F00000000003F003F),
    .INIT_26(256'h003F003F003F003F00000000003F003F003F00000000003F003F000000000000),
    .INIT_27(256'h0000003F003F003F000000000000003F003F003F003F003F003F00000000003F),
    .INIT_28(256'h003F003F003F000000000000003F003F003F00000000003F003F000000000000),
    .INIT_29(256'h0000003F003F003F00000000003F003F003F003F003F003F003F000000000000),
    .INIT_2A(256'h00000000000000000000003F003F003F003F00000000003F003F000000000000),
    .INIT_2B(256'h003F003F003F003F00000000003F003F003F003F003F003F003F003F00000000),
    .INIT_2C(256'h000000000000003F003F003F003F003F003F000000000000003F000000000000),
    .INIT_2D(256'h003F003F003F003F00000000003F003F003F003F003F003F003F003F003F003F),
    .INIT_2E(256'h003F003F003F003F003F003F003F003F003F003F000000000000000000000000),
    .INIT_2F(256'h003F003F003F003F00000000003F003F003F003F00000000003F003F003F003F),
    .INIT_30(256'h003F003F003F003F003F003F003F003F003F003F003F003F0000000000000000),
    .INIT_31(256'h00000000003F003F003F00000000003F003F003F003F0000003F003F003F003F),
    .INIT_32(256'h003F000000000000000000000000003F003F003F003F003F003F003F00000000),
    .INIT_33(256'h0000000000000000000000000000003F003F003F003F003F003F003F003F003F),
    .INIT_34(256'h000000000000003F0000000000000000003F003F003F0000003F003F003F0000),
    .INIT_35(256'h0000000000000000000000000000000000000000003F003F003F003F003F0000),
    .INIT_36(256'h0000003F003F003F003F003F00000000003F003F003F00000000003F003F0000),
    .INIT_37(256'h00000000000000000000000000000000000000000000000000000000003F0000),
    .INIT_38(256'h00000000003F003F003F003F003F00000000003F003F003F003F003F003F0000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h000000000000000000000000003F00000000003F003F003F003F003F003F0000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000003F003F003F003F003F003F),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h00000000000000000000000000000000000000000000000000000000003F003F),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    data_reg
       (.ADDRARDADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_data_reg_DOADO_UNCONNECTED[15:8],data_reg_0,data_reg__0}),
        .DOBDO(NLW_data_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_data_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_data_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized5
   (data_reg_1_0,
    out,
    Q,
    \data[7]_i_2 ,
    \data[7]_i_2_0 ,
    clk_IBUF_BUFG,
    data_reg_1_1);
  output data_reg_1_0;
  output [6:0]out;
  input [1:0]Q;
  input \data[7]_i_2 ;
  input \data[7]_i_2_0 ;
  input clk_IBUF_BUFG;
  input [12:0]data_reg_1_1;

  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \data[7]_i_2 ;
  wire \data[7]_i_2_0 ;
  wire [7:7]data_reg;
  wire data_reg_1_0;
  wire [12:0]data_reg_1_1;
  wire [6:0]out;
  wire NLW_data_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_SBITERR_UNCONNECTED;
  wire [31:4]NLW_data_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_SBITERR_UNCONNECTED;
  wire [31:4]NLW_data_reg_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_RDADDRECC_UNCONNECTED;

  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \data[7]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(data_reg),
        .I3(\data[7]_i_2 ),
        .I4(\data[7]_i_2_0 ),
        .O(data_reg_1_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "kebab/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000FFFF00000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h000000000FFF0000000000000000000000000000FFF000000000000000000000),
    .INIT_02(256'hFFF0000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'hFFFF00000000000000000000FFFFFFFFFFF00000000000000000000FFFFFFFFF),
    .INIT_04(256'h000000000000000000000000000000000000000000000000000000000FFFFFFF),
    .INIT_05(256'h0000000000FFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000),
    .INIT_06(256'h000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF000000),
    .INIT_07(256'hFFFFFFFFFFFFFFF0000000000000FFFFFFFFFFFFFFFFFF000000000000000000),
    .INIT_08(256'h00000000000000000000000000000FFFFFFFFFFFFFFFFFFF000000000000FFFF),
    .INIT_09(256'hFFFF00000000000FFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_0A(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFF),
    .INIT_0B(256'h00FFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000),
    .INIT_0C(256'h000FFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFF0000000),
    .INIT_0D(256'hFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'hFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFF),
    .INIT_0F(256'hFF0000000000000000000000000000000000000000000000000000FFFFFFFFFF),
    .INIT_10(256'hFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'h00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000),
    .INIT_13(256'h00000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF),
    .INIT_14(256'hFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000),
    .INIT_15(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFF),
    .INIT_16(256'h00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000),
    .INIT_17(256'h0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFF00000000000000000000000000000000000000000000000FFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'h0000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_2B(256'h00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000),
    .INIT_2D(256'h00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF),
    .INIT_30(256'hFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000),
    .INIT_31(256'hFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFF),
    .INIT_32(256'hFFF0000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_33(256'hFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000),
    .INIT_36(256'h00000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF),
    .INIT_37(256'hFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000),
    .INIT_38(256'h000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF),
    .INIT_39(256'h00000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000),
    .INIT_3A(256'h0000000FFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFF000),
    .INIT_3B(256'hFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFF0000000000FFFFFF),
    .INIT_3D(256'hFFF00000000000000000000000000000000000000000000000000000000FFFFF),
    .INIT_3E(256'hFFFF000000000000FFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFF),
    .INIT_40(256'h00000FFFFFFFFFFFFFFFFF000000000000000FFFFFFFFFFFFFFFF00000000000),
    .INIT_41(256'h00000000000000000000000000000000000000FFFFFFFFFFFFFFFF0000000000),
    .INIT_42(256'hFFFFFFFF0000000000000000000FFFFFFFFFFFF0000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000FFFFFFFFFFFF0000000000000000000FFFFF),
    .INIT_44(256'h000000000000000000FFFFFF0000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000FFFFFF0000000000000000000000000FFFFFFF0000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(0)) 
    data_reg_0
       (.ADDRARDADDR({1'b1,data_reg_1_1,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_DOADO_UNCONNECTED[31:4],out[3:0]}),
        .DOBDO(NLW_data_reg_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "kebab/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000333300000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000003330000000000000000000000000000333000000000000000000000),
    .INIT_02(256'h3330000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h3333000000000000000000003333333333300000000000000000000333333333),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000003333333),
    .INIT_05(256'h0000000000333333333333333000000000000000033333333333333330000000),
    .INIT_06(256'h0000000000000000000000000000000000000000003333333333333333000000),
    .INIT_07(256'h3333333333333330000000000000333333333333333333000000000000000000),
    .INIT_08(256'h0000000000000000000000000000033333333333333333330000000000003333),
    .INIT_09(256'h3333000000000003333333333333333333330000000000000000000000000000),
    .INIT_0A(256'h0000000000000000333333333333333333333000000000033333333333333333),
    .INIT_0B(256'h0033333333333333333333333000000000000000000000000000000000000000),
    .INIT_0C(256'h0003333333333333333333333300000000333333333333333333333330000000),
    .INIT_0D(256'h3333333333333000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h3333333333333330000003333333333333333333333333000000033333333333),
    .INIT_0F(256'h3300000000000000000000000000000000000000000000000000003333333333),
    .INIT_10(256'h3330000003333333333333333333333333300000333333333333333333333333),
    .INIT_11(256'h0000000000000000000000000000000000000000033333333333333333333333),
    .INIT_12(256'h3333333333333333333333300003333333333333333333333333333000000000),
    .INIT_13(256'h0000000000000000000000000000033333333333333333333333333300003333),
    .INIT_14(256'h3333333333330003333333333333333333333333333000000000000000000000),
    .INIT_15(256'h0000000000000000333333333333333333333333333300033333333333333333),
    .INIT_16(256'h0033333333333333333333333333333300000000000000000000000000000000),
    .INIT_17(256'h0000333333333333333333333333333330033333333333333333333333333333),
    .INIT_18(256'h3333333333333333333300000000000000000000000000000000000000000000),
    .INIT_19(256'h3333333333333333333330033333333333333333333333333333303333333333),
    .INIT_1A(256'h3333333300000000000000000000000000000000000000000000000333333333),
    .INIT_1B(256'h3333333333333333333333333333333333333333303333333333333333333333),
    .INIT_1C(256'h0000000000000000000000000000000000000000000333333333333333333333),
    .INIT_1D(256'h3333333333333333333333333333333333333333333333333333333333333000),
    .INIT_1E(256'h3333333333333333333333300000000333333333333333333333333333333333),
    .INIT_1F(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_20(256'h3333333333330333333333333333333333333333333333333333333333333333),
    .INIT_21(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_22(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_23(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_24(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_25(256'h3333333333333333333333333333333333333333333333333330333333333333),
    .INIT_26(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_27(256'h3333333333333333333333333333333333333000033333333333333333333333),
    .INIT_28(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_29(256'h0000000000000000000000000000000333333333333333333333333333333333),
    .INIT_2A(256'h3333333333333333333330333333333333333333333333333333000000000000),
    .INIT_2B(256'h0000000000000000000000033333333333333333333333333333333333333333),
    .INIT_2C(256'h3333333330333333333333333333333333333333000000000000000000000000),
    .INIT_2D(256'h0000000000033333333333333333333333333333300333333333333333333333),
    .INIT_2E(256'h3333333333333333333333333333000000000000000000000000000000000000),
    .INIT_2F(256'h3333333333333333333333333333300333333333333333333333333333330033),
    .INIT_30(256'h3333333333333330000000000000000000000000000000000000000000000000),
    .INIT_31(256'h3333333333333333300333333333333333333333333333330003333333333333),
    .INIT_32(256'h3330000000000000000000000000000000000000000000000000333333333333),
    .INIT_33(256'h3333000033333333333333333333333333330003333333333333333333333333),
    .INIT_34(256'h0000000000000000000000000000000000000000333333333333333333333333),
    .INIT_35(256'h3333333333333333333333300000333333333333333333333333330000000000),
    .INIT_36(256'h0000000000000000000000000000033333333333333333333333333300003333),
    .INIT_37(256'h3333333333000000333333333333333333333333330000000000000000000000),
    .INIT_38(256'h0000000000000000003333333333333333333333333000000333333333333333),
    .INIT_39(256'h0000033333333333333333333333300000000000000000000000000000000000),
    .INIT_3A(256'h0000000333333333333333333333330000000033333333333333333333333000),
    .INIT_3B(256'h3333333333333333000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h3333333333333333300000000003333333333333333333330000000000333333),
    .INIT_3D(256'h3330000000000000000000000000000000000000000000000000000000033333),
    .INIT_3E(256'h3333000000000000333333333333333333300000000000033333333333333333),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000333333333333333),
    .INIT_40(256'h0000033333333333333333000000000000000333333333333333300000000000),
    .INIT_41(256'h0000000000000000000000000000000000000033333333333333330000000000),
    .INIT_42(256'h3333333300000000000000000003333333333330000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000333333333333000000000000000000033333),
    .INIT_44(256'h0000000000000000003333330000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000333333000000000000000000000000033333330000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(0)) 
    data_reg_1
       (.ADDRARDADDR({1'b1,data_reg_1_1,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_DOADO_UNCONNECTED[31:4],data_reg,out[6:4]}),
        .DOBDO(NLW_data_reg_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized6
   (DOADO,
    data_reg_0,
    data_reg_1,
    clk_IBUF_BUFG,
    Q,
    \data[7]_i_6 ,
    \data[7]_i_6_0 ,
    \data[7]_i_6_1 ,
    \data[7]_i_6_2 );
  output [5:0]DOADO;
  output data_reg_0;
  output data_reg_1;
  input clk_IBUF_BUFG;
  input [11:0]Q;
  input \data[7]_i_6 ;
  input [1:0]\data[7]_i_6_0 ;
  input [1:0]\data[7]_i_6_1 ;
  input \data[7]_i_6_2 ;

  wire [5:0]DOADO;
  wire [11:0]Q;
  wire clk_IBUF_BUFG;
  wire \data[7]_i_6 ;
  wire [1:0]\data[7]_i_6_0 ;
  wire [1:0]\data[7]_i_6_1 ;
  wire \data[7]_i_6_2 ;
  wire data_reg_0;
  wire data_reg_1;
  wire [7:6]data_reg__0;
  wire NLW_data_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_DBITERR_UNCONNECTED;
  wire NLW_data_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_SBITERR_UNCONNECTED;
  wire [31:8]NLW_data_reg_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'h88F0008888000088)) 
    \data[6]_i_7 
       (.I0(data_reg__0[6]),
        .I1(\data[7]_i_6 ),
        .I2(\data[7]_i_6_0 [0]),
        .I3(\data[7]_i_6_1 [1]),
        .I4(\data[7]_i_6_1 [0]),
        .I5(\data[7]_i_6_2 ),
        .O(data_reg_0));
  LUT6 #(
    .INIT(64'h88F0008888000088)) 
    \data[7]_i_8 
       (.I0(data_reg__0[7]),
        .I1(\data[7]_i_6 ),
        .I2(\data[7]_i_6_0 [1]),
        .I3(\data[7]_i_6_1 [1]),
        .I4(\data[7]_i_6_1 [0]),
        .I5(\data[7]_i_6_2 ),
        .O(data_reg_1));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "lolipop/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000003F3F3F3F3F3F3F3F3F00000000000000003F3F3F3F3F0000000000),
    .INIT_01(256'h3F3F3F00003F3F3F3F3F3F3F3F3F3F3F3F3F0000003F3F3F3F3F3F3F3F3F3F3F),
    .INIT_02(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F003F3F3F3F3F3F3F3F3F3F),
    .INIT_03(256'h3F3F3F3F3F3F3F003F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_04(256'h3F3F3F3F3F3F3F3F3F00003F3F3F3F3F3F3F3F3F3F3F3F3F00003F3F3F3F3F3F),
    .INIT_05(256'h3F3F3F3F3F3F3F3F3F00000000003F3F3F3F3F3F3F3F3F3F3F0000003F3F3F3F),
    .INIT_06(256'h00000000003F3F3F00000000000000000000003F3F3F3F3F0000000000000000),
    .INIT_07(256'h00000000000000003F00000000000000000000000000003F0000000000000000),
    .INIT_08(256'h000000000000000000003F00000000000000000000000000003F000000000000),
    .INIT_09(256'h0000000000000000000000003F00000000000000000000000000003F00000000),
    .INIT_0A(256'h00000000000000000000000000003F00000000000000000000000000003F0000),
    .INIT_0B(256'h003F00000000000000000000000000003F00000000000000000000000000003F),
    .INIT_0C(256'h0000003F00000000000000000000000000003F00000000000000000000000000),
    .INIT_0D(256'h00000000003F00000000000000000000000000003F0000000000000000000000),
    .INIT_0E(256'h000000000000003F00000000000000000000000000003F000000000000000000),
    .INIT_0F(256'h0000000000000000003F00000000000000000000000000003F00000000000000),
    .INIT_10(256'h00000000000000000000003F00000000000000000000000000003F0000000000),
    .INIT_11(256'h000000000000000000000000003F00000000000000000000000000003F000000),
    .INIT_12(256'h3F00000000000000000000000000003F00000000000000000000000000003F00),
    .INIT_13(256'h00003F00000000000000000000000000003F0000000000000000000000000000),
    .INIT_14(256'h000000003F00000000000000000000000000003F000000000000000000000000),
    .INIT_15(256'h0000000000003F00000000000000000000000000003F00000000000000000000),
    .INIT_16(256'h00000000000000003F00000000000000000000000000003F0000000000000000),
    .INIT_17(256'h000000000000000000003F00000000000000000000000000003F000000000000),
    .INIT_18(256'h0000000000000000000000003F00000000000000000000000000003F00000000),
    .INIT_19(256'h00000000000000000000000000003F00000000000000000000000000003F0000),
    .INIT_1A(256'h003F00000000000000000000000000003F00000000000000000000000000003F),
    .INIT_1B(256'h0000003F00000000000000000000000000003F00000000000000000000000000),
    .INIT_1C(256'h00000000003F00000000000000000000000000003F0000000000000000000000),
    .INIT_1D(256'h000000000000003F00000000000000000000000000003F000000000000000000),
    .INIT_1E(256'h0000000000000000003F00000000000000000000000000003F00000000000000),
    .INIT_1F(256'h00000000000000000000003F00000000000000000000000000003F0000000000),
    .INIT_20(256'h000000000000000000000000003F00000000000000000000000000003F000000),
    .INIT_21(256'h3F00000000000000000000000000003F00000000000000000000000000003F00),
    .INIT_22(256'h00003F00000000000000000000000000003F0000000000000000000000000000),
    .INIT_23(256'h000000003F00000000000000000000000000003F000000000000000000000000),
    .INIT_24(256'h0000000000003F00000000000000000000000000003F00000000000000000000),
    .INIT_25(256'h00000000000000003F00000000000000000000000000003F0000000000000000),
    .INIT_26(256'h000000000000000000003F00000000000000000000000000003F000000000000),
    .INIT_27(256'h0000000000000000000000003F00000000000000000000000000003F00000000),
    .INIT_28(256'h00000000000000000000000000003F00000000000000000000000000003F0000),
    .INIT_29(256'h003F00000000000000000000000000003F00000000000000000000000000003F),
    .INIT_2A(256'h0000003F00000000000000000000000000003F00000000000000000000000000),
    .INIT_2B(256'h00000000003F00000000000000000000000000003F0000000000000000000000),
    .INIT_2C(256'h000000000000003F00000000000000000000000000003F000000000000000000),
    .INIT_2D(256'h0000000000000000003F00000000000000000000000000003F00000000000000),
    .INIT_2E(256'h00000000000000000000003F00000000000000000000000000003F0000000000),
    .INIT_2F(256'h000000000000000000000000003F00000000000000000000000000003F000000),
    .INIT_30(256'h3F00000000000000000000000000003F00000000000000000000000000003F00),
    .INIT_31(256'h00003F00000000000000000000000000003F0000000000000000000000000000),
    .INIT_32(256'h000000003F00000000000000000000000000003F000000000000000000000000),
    .INIT_33(256'h0000000000003F00000000000000000000000000003F00000000000000000000),
    .INIT_34(256'h00000000000000003F00000000000000000000000000003F0000000000000000),
    .INIT_35(256'h000000000000000000003F00000000000000000000000000003F000000000000),
    .INIT_36(256'h0000000000000000000000003F00000000000000000000000000003F00000000),
    .INIT_37(256'h00000000000000000000000000003F00000000000000000000000000003F0000),
    .INIT_38(256'h003F00000000000000000000000000003F00000000000000000000000000003F),
    .INIT_39(256'h0000003F00000000000000000000000000003F00000000000000000000000000),
    .INIT_3A(256'h00000000003F00000000000000000000000000003F0000000000000000000000),
    .INIT_3B(256'h000000000000003F00000000000000000000000000003F000000000000000000),
    .INIT_3C(256'h0000000000000000003F00000000000000000000000000003F00000000000000),
    .INIT_3D(256'h00000000000000000000003F00000000000000000000000000003F0000000000),
    .INIT_3E(256'h000000000000000000000000003F00000000000000000000000000003F000000),
    .INIT_3F(256'h3F00000000000000000000000000003F00000000000000000000000000003F00),
    .INIT_40(256'h003F3F3F000000000000000000000000003F0000000000000000000000000000),
    .INIT_41(256'h000000000000000000000000000000000000003F000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    data_reg
       (.ADDRARDADDR({1'b1,Q,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_DOADO_UNCONNECTED[31:8],data_reg__0,DOADO}),
        .DOBDO(NLW_data_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module vga
   (\v_count_reg_reg[7] ,
    Hsync_OBUF,
    Vsync_OBUF,
    \h_count_reg_reg[4] ,
    out,
    x,
    \v_count_reg_reg[8] ,
    \h_count_reg_reg[0] ,
    \addr_burger[4]_i_5 ,
    data_reg,
    \v_count_reg_reg[7]_0 ,
    \h_count_reg_reg[6] ,
    data_reg_0,
    data_reg_1,
    data_reg_2,
    data_reg_3,
    data_reg_4,
    DI,
    S,
    \addr_heart[7]_i_5 ,
    \h_count_reg_reg[0]_0 ,
    \v_count_reg_reg[8]_0 ,
    \h_count_reg_reg[4]_0 ,
    \h_count_reg_reg[5] ,
    \addr_kebab[12]_i_19 ,
    \addr_pizza[9]_i_11 ,
    \h_count_reg_reg[3] ,
    O,
    n_0_1212_BUFG_inst_n_1,
    vgaRed_OBUF,
    vgaGreen_OBUF,
    vgaBlue_OBUF,
    \data_reg[7]_0 ,
    data_play,
    data,
    n_0_1212_BUFG,
    clk_IBUF_BUFG,
    addr_milk_reg,
    yPlayer,
    addr_bone_reg,
    \data_reg[0]_0 ,
    \data_reg[1]_0 ,
    \data_reg[2]_0 ,
    \data_reg[3]_0 ,
    \data_reg[4]_0 ,
    \data_reg[5]_0 ,
    \data_reg[7]_1 ,
    \data[6]_i_2 ,
    \data_reg[7]_2 ,
    Q,
    \data_reg[5]_1 ,
    \data_reg[5]_2 ,
    \data_reg[5]_3 ,
    \addr_burger_reg[7] ,
    \data[5]_i_6 ,
    \data[5]_i_6_0 ,
    \addr_heart_reg[7]_i_13 ,
    \addr_heart_reg[7]_i_13_0 ,
    CO,
    \data[5]_i_6_1 ,
    addr_bone_reg_i_5,
    addr_bone_reg_0,
    addr_bone_reg_1,
    \data_reg[5]_4 ,
    data3,
    data3_0,
    addr_bone_reg_i_14,
    \addr_heart[7]_i_4 ,
    addr_bone_reg_i_7,
    addr_bone_reg_i_5_0,
    addr_bone_reg_2,
    addr_bone_reg_i_13,
    addr_bone_reg_3,
    addr_bone_reg_4,
    addr_bone_reg_5,
    E,
    \addr_kebab_reg[0] ,
    \addr_pizza_reg[0] ,
    \data_reg[4]_1 ,
    SR,
    \addr_heart_reg[0] ,
    \data_reg[0]_1 ,
    \data_reg[7]_3 ,
    \data_reg[6]_0 ,
    \data_reg[5]_5 ,
    \data_reg[4]_2 ,
    \data_reg[3]_1 ,
    \data_reg[2]_1 ,
    \data_reg[1]_1 ,
    \data_reg[0]_2 );
  output [2:0]\v_count_reg_reg[7] ;
  output Hsync_OBUF;
  output Vsync_OBUF;
  output \h_count_reg_reg[4] ;
  output [6:0]out;
  output [9:0]x;
  output \v_count_reg_reg[8] ;
  output \h_count_reg_reg[0] ;
  output \addr_burger[4]_i_5 ;
  output data_reg;
  output \v_count_reg_reg[7]_0 ;
  output \h_count_reg_reg[6] ;
  output data_reg_0;
  output data_reg_1;
  output data_reg_2;
  output data_reg_3;
  output data_reg_4;
  output [0:0]DI;
  output [0:0]S;
  output \addr_heart[7]_i_5 ;
  output \h_count_reg_reg[0]_0 ;
  output \v_count_reg_reg[8]_0 ;
  output \h_count_reg_reg[4]_0 ;
  output [2:0]\h_count_reg_reg[5] ;
  output \addr_kebab[12]_i_19 ;
  output \addr_pizza[9]_i_11 ;
  output \h_count_reg_reg[3] ;
  output [0:0]O;
  output n_0_1212_BUFG_inst_n_1;
  output [2:0]vgaRed_OBUF;
  output [3:0]vgaGreen_OBUF;
  output [3:0]vgaBlue_OBUF;
  output [0:0]\data_reg[7]_0 ;
  output [7:0]data_play;
  output [0:0]data;
  input n_0_1212_BUFG;
  input clk_IBUF_BUFG;
  input addr_milk_reg;
  input [0:0]yPlayer;
  input addr_bone_reg;
  input \data_reg[0]_0 ;
  input \data_reg[1]_0 ;
  input \data_reg[2]_0 ;
  input \data_reg[3]_0 ;
  input \data_reg[4]_0 ;
  input \data_reg[5]_0 ;
  input \data_reg[7]_1 ;
  input \data[6]_i_2 ;
  input \data_reg[7]_2 ;
  input [1:0]Q;
  input \data_reg[5]_1 ;
  input \data_reg[5]_2 ;
  input \data_reg[5]_3 ;
  input \addr_burger_reg[7] ;
  input \data[5]_i_6 ;
  input \data[5]_i_6_0 ;
  input [1:0]\addr_heart_reg[7]_i_13 ;
  input \addr_heart_reg[7]_i_13_0 ;
  input [0:0]CO;
  input \data[5]_i_6_1 ;
  input [9:0]addr_bone_reg_i_5;
  input addr_bone_reg_0;
  input addr_bone_reg_1;
  input \data_reg[5]_4 ;
  input [2:0]data3;
  input [1:0]data3_0;
  input [0:0]addr_bone_reg_i_14;
  input [0:0]\addr_heart[7]_i_4 ;
  input [1:0]addr_bone_reg_i_7;
  input [1:0]addr_bone_reg_i_5_0;
  input [0:0]addr_bone_reg_2;
  input [0:0]addr_bone_reg_i_13;
  input [3:0]addr_bone_reg_3;
  input [0:0]addr_bone_reg_4;
  input addr_bone_reg_5;
  input [0:0]E;
  input [0:0]\addr_kebab_reg[0] ;
  input [0:0]\addr_pizza_reg[0] ;
  input \data_reg[4]_1 ;
  input [0:0]SR;
  input [0:0]\addr_heart_reg[0] ;
  input \data_reg[0]_1 ;
  input \data_reg[7]_3 ;
  input \data_reg[6]_0 ;
  input \data_reg[5]_5 ;
  input \data_reg[4]_2 ;
  input \data_reg[3]_1 ;
  input \data_reg[2]_1 ;
  input \data_reg[1]_1 ;
  input \data_reg[0]_2 ;

  wire [13:2]A;
  wire CEP;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]E;
  wire Hsync_OBUF;
  wire [0:0]O;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire Vsync_OBUF;
  wire [7:0]addr_bone0;
  wire addr_bone_reg;
  wire addr_bone_reg_0;
  wire addr_bone_reg_1;
  wire [0:0]addr_bone_reg_2;
  wire [3:0]addr_bone_reg_3;
  wire [0:0]addr_bone_reg_4;
  wire addr_bone_reg_5;
  wire [0:0]addr_bone_reg_i_13;
  wire [0:0]addr_bone_reg_i_14;
  wire [9:0]addr_bone_reg_i_5;
  wire [1:0]addr_bone_reg_i_5_0;
  wire [1:0]addr_bone_reg_i_7;
  wire \addr_burger[4]_i_5 ;
  wire \addr_burger_reg[7] ;
  wire [7:0]addr_heart0;
  wire [0:0]\addr_heart[7]_i_4 ;
  wire \addr_heart[7]_i_5 ;
  wire [0:0]\addr_heart_reg[0] ;
  wire [1:0]\addr_heart_reg[7]_i_13 ;
  wire \addr_heart_reg[7]_i_13_0 ;
  wire \addr_kebab[12]_i_19 ;
  wire [0:0]\addr_kebab_reg[0] ;
  wire [7:1]addr_milk0;
  wire addr_milk_reg;
  wire \addr_pizza[9]_i_11 ;
  wire [0:0]\addr_pizza_reg[0] ;
  wire [7:6]\burger/data_reg__0 ;
  wire clk_IBUF_BUFG;
  wire [0:0]data;
  wire data2151_in;
  wire data217_in;
  wire data2194_in;
  wire data226_in;
  wire data27_in;
  wire [2:0]data3;
  wire data3193_in;
  wire data36_in;
  wire [1:0]data3_0;
  wire [9:1]data40_in;
  wire data416_in;
  wire data4195_in;
  wire data425_in;
  wire data45_in;
  wire data48_in;
  wire [30:0]data5;
  wire \data[5]_i_6 ;
  wire \data[5]_i_6_0 ;
  wire \data[5]_i_6_1 ;
  wire \data[6]_i_2 ;
  wire [7:0]data_play;
  wire data_reg;
  wire \data_reg[0]_0 ;
  wire \data_reg[0]_1 ;
  wire \data_reg[0]_2 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[1]_1 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[2]_1 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[4]_1 ;
  wire \data_reg[4]_2 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[5]_1 ;
  wire \data_reg[5]_2 ;
  wire \data_reg[5]_3 ;
  wire \data_reg[5]_4 ;
  wire \data_reg[5]_5 ;
  wire \data_reg[6]_0 ;
  wire [0:0]\data_reg[7]_0 ;
  wire \data_reg[7]_1 ;
  wire \data_reg[7]_2 ;
  wire \data_reg[7]_3 ;
  wire data_reg_0;
  wire data_reg_1;
  wire data_reg_2;
  wire data_reg_3;
  wire data_reg_4;
  wire \data_reg_n_1_[0] ;
  wire \data_reg_n_1_[1] ;
  wire \data_reg_n_1_[2] ;
  wire \data_reg_n_1_[3] ;
  wire \data_reg_n_1_[4] ;
  wire \data_reg_n_1_[5] ;
  wire \data_reg_n_1_[6] ;
  wire \data_reg_n_1_[7] ;
  wire \h_count_reg_reg[0] ;
  wire \h_count_reg_reg[0]_0 ;
  wire \h_count_reg_reg[3] ;
  wire \h_count_reg_reg[4] ;
  wire \h_count_reg_reg[4]_0 ;
  wire [2:0]\h_count_reg_reg[5] ;
  wire \h_count_reg_reg[6] ;
  wire n_0_1212_BUFG;
  wire n_0_1212_BUFG_inst_n_1;
  wire [6:0]out;
  wire [7:1]p_1_out__0;
  wire ps_n_1;
  wire ps_n_10;
  wire ps_n_100;
  wire ps_n_101;
  wire ps_n_102;
  wire ps_n_103;
  wire ps_n_104;
  wire ps_n_105;
  wire ps_n_106;
  wire ps_n_107;
  wire ps_n_2;
  wire ps_n_21;
  wire ps_n_28;
  wire ps_n_29;
  wire ps_n_3;
  wire ps_n_30;
  wire ps_n_31;
  wire ps_n_32;
  wire ps_n_33;
  wire ps_n_34;
  wire ps_n_35;
  wire ps_n_36;
  wire ps_n_37;
  wire ps_n_38;
  wire ps_n_39;
  wire ps_n_4;
  wire ps_n_40;
  wire ps_n_41;
  wire ps_n_42;
  wire ps_n_43;
  wire ps_n_44;
  wire ps_n_45;
  wire ps_n_46;
  wire ps_n_47;
  wire ps_n_48;
  wire ps_n_49;
  wire ps_n_5;
  wire ps_n_50;
  wire ps_n_51;
  wire ps_n_52;
  wire ps_n_53;
  wire ps_n_54;
  wire ps_n_55;
  wire ps_n_56;
  wire ps_n_57;
  wire ps_n_58;
  wire ps_n_59;
  wire ps_n_6;
  wire ps_n_60;
  wire ps_n_61;
  wire ps_n_62;
  wire ps_n_63;
  wire ps_n_65;
  wire ps_n_66;
  wire ps_n_67;
  wire ps_n_68;
  wire ps_n_69;
  wire ps_n_7;
  wire ps_n_70;
  wire ps_n_71;
  wire ps_n_72;
  wire ps_n_73;
  wire ps_n_74;
  wire ps_n_75;
  wire ps_n_76;
  wire ps_n_77;
  wire ps_n_78;
  wire ps_n_79;
  wire ps_n_8;
  wire ps_n_80;
  wire ps_n_81;
  wire ps_n_82;
  wire ps_n_83;
  wire ps_n_84;
  wire ps_n_85;
  wire ps_n_86;
  wire ps_n_87;
  wire ps_n_88;
  wire ps_n_89;
  wire ps_n_9;
  wire ps_n_90;
  wire ps_n_91;
  wire ps_n_92;
  wire ps_n_93;
  wire ps_n_94;
  wire ps_n_95;
  wire ps_n_96;
  wire ps_n_97;
  wire ps_n_98;
  wire ps_n_99;
  wire [10:0]rgb;
  wire [2:0]\v_count_reg_reg[7] ;
  wire \v_count_reg_reg[7]_0 ;
  wire \v_count_reg_reg[8] ;
  wire \v_count_reg_reg[8]_0 ;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen_OBUF;
  wire [2:0]vgaRed_OBUF;
  wire vga_sync_unit_n_107;
  wire vga_sync_unit_n_131;
  wire vga_sync_unit_n_132;
  wire vga_sync_unit_n_133;
  wire vga_sync_unit_n_134;
  wire vga_sync_unit_n_135;
  wire vga_sync_unit_n_136;
  wire vga_sync_unit_n_137;
  wire vga_sync_unit_n_138;
  wire vga_sync_unit_n_139;
  wire vga_sync_unit_n_14;
  wire vga_sync_unit_n_140;
  wire vga_sync_unit_n_141;
  wire vga_sync_unit_n_142;
  wire vga_sync_unit_n_143;
  wire vga_sync_unit_n_144;
  wire vga_sync_unit_n_145;
  wire vga_sync_unit_n_146;
  wire vga_sync_unit_n_147;
  wire vga_sync_unit_n_148;
  wire vga_sync_unit_n_149;
  wire vga_sync_unit_n_15;
  wire vga_sync_unit_n_150;
  wire vga_sync_unit_n_151;
  wire vga_sync_unit_n_152;
  wire vga_sync_unit_n_153;
  wire vga_sync_unit_n_154;
  wire vga_sync_unit_n_155;
  wire vga_sync_unit_n_156;
  wire vga_sync_unit_n_157;
  wire vga_sync_unit_n_158;
  wire vga_sync_unit_n_159;
  wire vga_sync_unit_n_16;
  wire vga_sync_unit_n_160;
  wire vga_sync_unit_n_161;
  wire vga_sync_unit_n_162;
  wire vga_sync_unit_n_163;
  wire vga_sync_unit_n_164;
  wire vga_sync_unit_n_165;
  wire vga_sync_unit_n_166;
  wire vga_sync_unit_n_167;
  wire vga_sync_unit_n_168;
  wire vga_sync_unit_n_169;
  wire vga_sync_unit_n_17;
  wire vga_sync_unit_n_170;
  wire vga_sync_unit_n_171;
  wire vga_sync_unit_n_172;
  wire vga_sync_unit_n_173;
  wire vga_sync_unit_n_174;
  wire vga_sync_unit_n_175;
  wire vga_sync_unit_n_176;
  wire vga_sync_unit_n_177;
  wire vga_sync_unit_n_178;
  wire vga_sync_unit_n_179;
  wire vga_sync_unit_n_18;
  wire vga_sync_unit_n_180;
  wire vga_sync_unit_n_181;
  wire vga_sync_unit_n_182;
  wire vga_sync_unit_n_183;
  wire vga_sync_unit_n_184;
  wire vga_sync_unit_n_185;
  wire vga_sync_unit_n_206;
  wire vga_sync_unit_n_207;
  wire vga_sync_unit_n_208;
  wire vga_sync_unit_n_209;
  wire vga_sync_unit_n_30;
  wire vga_sync_unit_n_31;
  wire vga_sync_unit_n_32;
  wire vga_sync_unit_n_33;
  wire vga_sync_unit_n_34;
  wire vga_sync_unit_n_35;
  wire vga_sync_unit_n_37;
  wire vga_sync_unit_n_39;
  wire vga_sync_unit_n_40;
  wire vga_sync_unit_n_41;
  wire vga_sync_unit_n_42;
  wire vga_sync_unit_n_43;
  wire vga_sync_unit_n_44;
  wire vga_sync_unit_n_45;
  wire vga_sync_unit_n_46;
  wire vga_sync_unit_n_47;
  wire vga_sync_unit_n_48;
  wire vga_sync_unit_n_49;
  wire vga_sync_unit_n_51;
  wire vga_sync_unit_n_62;
  wire vga_sync_unit_n_64;
  wire vga_sync_unit_n_76;
  wire vga_sync_unit_n_77;
  wire vga_sync_unit_n_78;
  wire vga_sync_unit_n_79;
  wire vga_sync_unit_n_80;
  wire vga_sync_unit_n_81;
  wire vga_sync_unit_n_82;
  wire vga_sync_unit_n_83;
  wire vga_sync_unit_n_84;
  wire vga_sync_unit_n_85;
  wire vga_sync_unit_n_92;
  wire vga_sync_unit_n_97;
  wire [9:0]x;
  wire [0:0]yPlayer;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[0]_2 ),
        .Q(\data_reg_n_1_[0] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[1]_1 ),
        .Q(\data_reg_n_1_[1] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[2]_1 ),
        .Q(\data_reg_n_1_[2] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[3]_1 ),
        .Q(\data_reg_n_1_[3] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[4]_2 ),
        .Q(\data_reg_n_1_[4] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[5]_5 ),
        .Q(\data_reg_n_1_[5] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[6]_0 ),
        .Q(\data_reg_n_1_[6] ),
        .R(\data_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_reg[7]_3 ),
        .Q(\data_reg_n_1_[7] ),
        .R(\data_reg[0]_1 ));
  paletteROM pal
       (.DI({\data_reg_n_1_[1] ,\data_reg_n_1_[0] }),
        .Q(rgb),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .color3_carry__0_0(\data_reg_n_1_[5] ),
        .color3_carry__0_1(\data_reg_n_1_[6] ),
        .color3_carry__0_2(\data_reg_n_1_[7] ),
        .\color_reg[9]_0 ({\data_reg_n_1_[4] ,\data_reg_n_1_[3] ,\data_reg_n_1_[2] }));
  playScreen ps
       (.A({A[13],A[9],vga_sync_unit_n_30,vga_sync_unit_n_31,vga_sync_unit_n_32,vga_sync_unit_n_33,vga_sync_unit_n_34,vga_sync_unit_n_35,A[2],vga_sync_unit_n_37,\v_count_reg_reg[7] [0]}),
        .ADDRARDADDR(addr_milk0),
        .B(vga_sync_unit_n_107),
        .C({vga_sync_unit_n_76,vga_sync_unit_n_77,vga_sync_unit_n_78,vga_sync_unit_n_79,vga_sync_unit_n_80,vga_sync_unit_n_81,vga_sync_unit_n_82,vga_sync_unit_n_83,vga_sync_unit_n_84,vga_sync_unit_n_85}),
        .CEP(CEP),
        .CO(vga_sync_unit_n_42),
        .D({p_1_out__0,x[0]}),
        .DI({ps_n_37,ps_n_38}),
        .DOADO(\burger/data_reg__0 ),
        .E(vga_sync_unit_n_62),
        .O({vga_sync_unit_n_155,vga_sync_unit_n_156,vga_sync_unit_n_157}),
        .P({ps_n_1,ps_n_2,ps_n_3,ps_n_4,ps_n_5,ps_n_6,ps_n_7,ps_n_8,ps_n_9,ps_n_10}),
        .Q(Q),
        .S({vga_sync_unit_n_15,vga_sync_unit_n_16,vga_sync_unit_n_17,vga_sync_unit_n_18}),
        .SR(SR),
        .addr_bone_reg_0(vga_sync_unit_n_92),
        .addr_bone_reg_1(addr_bone0),
        .addr_bone_reg_i_8(ps_n_30),
        .\addr_burger_reg[4]_0 (data48_in),
        .\addr_burger_reg[4]_1 (data36_in),
        .\addr_burger_reg[4]_2 (data226_in),
        .\addr_burger_reg[4]_3 (data425_in),
        .\addr_burger_reg[4]_4 ({vga_sync_unit_n_142,vga_sync_unit_n_143,vga_sync_unit_n_144,vga_sync_unit_n_145}),
        .\addr_burger_reg[7]_0 ({vga_sync_unit_n_146,vga_sync_unit_n_147}),
        .\addr_burger_reg[7]_i_30 ({ps_n_39,ps_n_40,ps_n_41}),
        .\addr_burger_reg[7]_i_30_0 ({ps_n_42,ps_n_43}),
        .\addr_burger_reg[7]_i_30_1 ({ps_n_44,ps_n_45,ps_n_46,ps_n_47}),
        .\addr_burger_reg[7]_i_30_2 ({ps_n_48,ps_n_49,ps_n_50,ps_n_51}),
        .\addr_burger_reg[7]_i_31 ({ps_n_68,ps_n_69}),
        .\addr_heart_reg[0]_0 (\addr_heart_reg[0] ),
        .\addr_heart_reg[7]_0 (addr_heart0),
        .\addr_kebab_reg[0]_0 (\addr_kebab_reg[0] ),
        .\addr_kebab_reg[4]_0 (data45_in),
        .\addr_kebab_reg[4]_1 (data27_in),
        .\addr_lolipop_reg[0]_0 (E),
        .\addr_lolipop_reg[11]_0 ({vga_sync_unit_n_158,vga_sync_unit_n_159,vga_sync_unit_n_160,vga_sync_unit_n_161,vga_sync_unit_n_162,vga_sync_unit_n_163,vga_sync_unit_n_164,vga_sync_unit_n_165,vga_sync_unit_n_166,vga_sync_unit_n_167,vga_sync_unit_n_168}),
        .\addr_lolipop_reg[11]_i_16 ({ps_n_78,ps_n_79,ps_n_80}),
        .\addr_lolipop_reg[4]_0 ({vga_sync_unit_n_148,vga_sync_unit_n_149,vga_sync_unit_n_150}),
        .\addr_lolipop_reg[8]_0 ({vga_sync_unit_n_151,vga_sync_unit_n_152,vga_sync_unit_n_153,vga_sync_unit_n_154}),
        .\addr_lolipop_reg[8]_i_10 ({ps_n_74,ps_n_75,ps_n_76,ps_n_77}),
        .addr_milk_reg_0(addr_milk_reg),
        .\addr_pizza_reg[0]_0 (\addr_pizza_reg[0] ),
        .\addr_pizza_reg[4]_0 (data217_in),
        .\addr_pizza_reg[4]_1 (data416_in),
        .\addr_pizza_reg[4]_2 ({vga_sync_unit_n_169,vga_sync_unit_n_170,vga_sync_unit_n_171,vga_sync_unit_n_172}),
        .\addr_pizza_reg[8]_0 ({vga_sync_unit_n_173,vga_sync_unit_n_174,vga_sync_unit_n_175,vga_sync_unit_n_176}),
        .\addr_pizza_reg[9]_0 ({vga_sync_unit_n_177,vga_sync_unit_n_178,vga_sync_unit_n_179,vga_sync_unit_n_180,vga_sync_unit_n_181,vga_sync_unit_n_182,vga_sync_unit_n_183,vga_sync_unit_n_184,vga_sync_unit_n_185}),
        .\addr_pizza_reg[9]_i_13 ({ps_n_52,ps_n_53,ps_n_54,ps_n_55}),
        .\addr_pizza_reg[9]_i_13_0 ({ps_n_56,ps_n_57,ps_n_58,ps_n_59}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data(data),
        .data3__1_0({ps_n_60,ps_n_61,ps_n_62,ps_n_63}),
        .data40_in(data40_in),
        .data5({data5[30],data5[9:0]}),
        .\data[4]_i_3 (vga_sync_unit_n_64),
        .\data[5]_i_8 ({vga_sync_unit_n_40,vga_sync_unit_n_41}),
        .\data[5]_i_88_0 (data2151_in),
        .\data[5]_i_8_0 ({vga_sync_unit_n_43,vga_sync_unit_n_44}),
        .\data[7]_i_2 (\h_count_reg_reg[4] ),
        .\data[7]_i_3 (data4195_in),
        .\data[7]_i_3_0 (data3193_in),
        .\data[7]_i_3_1 (data2194_in),
        .\data[7]_i_3_2 (CO),
        .\data[7]_i_6 (\v_count_reg_reg[7]_0 ),
        .\data[7]_i_6_0 (\h_count_reg_reg[6] ),
        .data_play(data_play),
        .data_reg(data_reg),
        .\data_reg[0]_0 (ps_n_29),
        .\data_reg[0]_1 (vga_sync_unit_n_45),
        .\data_reg[0]_2 (\h_count_reg_reg[0] ),
        .\data_reg[1]_0 (ps_n_31),
        .\data_reg[1]_1 (vga_sync_unit_n_46),
        .\data_reg[2]_0 (vga_sync_unit_n_47),
        .\data_reg[3]_0 (ps_n_33),
        .\data_reg[3]_1 (vga_sync_unit_n_48),
        .\data_reg[3]_2 (vga_sync_unit_n_97),
        .\data_reg[4]_0 (ps_n_34),
        .\data_reg[4]_1 (vga_sync_unit_n_209),
        .\data_reg[5]_0 (vga_sync_unit_n_206),
        .\data_reg[5]_1 (vga_sync_unit_n_51),
        .\data_reg[5]_2 (vga_sync_unit_n_49),
        .\data_reg[5]_i_27 (vga_sync_unit_n_14),
        .\data_reg[5]_i_80_0 (vga_sync_unit_n_39),
        .\data_reg[6]_0 (ps_n_36),
        .\data_reg[6]_1 (vga_sync_unit_n_208),
        .\data_reg[7]_0 ({ps_n_99,ps_n_100,ps_n_101,ps_n_102,ps_n_103,ps_n_104,ps_n_105,ps_n_106}),
        .\data_reg[7]_1 (ps_n_107),
        .\data_reg[7]_2 (\data_reg[7]_0 ),
        .\data_reg[7]_3 (vga_sync_unit_n_207),
        .data_reg_0(data_reg_0),
        .data_reg_1(ps_n_21),
        .data_reg_2(data_reg_1),
        .data_reg_3(data_reg_2),
        .data_reg_4(data_reg_3),
        .data_reg_5(data_reg_4),
        .data_reg_6(ps_n_28),
        .data_reg_7(ps_n_32),
        .data_reg_8(ps_n_35),
        .\h_count_reg_reg[0] ({ps_n_65,ps_n_66,ps_n_67}),
        .\h_count_reg_reg[0]_0 ({ps_n_70,ps_n_71,ps_n_72,ps_n_73}),
        .\h_count_reg_reg[0]_1 ({ps_n_81,ps_n_82,ps_n_83,ps_n_84}),
        .\h_count_reg_reg[5] ({ps_n_85,ps_n_86,ps_n_87,ps_n_88}),
        .n_0_1212_BUFG(n_0_1212_BUFG),
        .out(out),
        .p_0_out_0({vga_sync_unit_n_131,vga_sync_unit_n_132,vga_sync_unit_n_133,vga_sync_unit_n_134,vga_sync_unit_n_135,vga_sync_unit_n_136,vga_sync_unit_n_137,vga_sync_unit_n_138,vga_sync_unit_n_139,vga_sync_unit_n_140,vga_sync_unit_n_141}),
        .\v_count_reg_reg[9] ({ps_n_89,ps_n_90,ps_n_91,ps_n_92}),
        .\v_count_reg_reg[9]_0 ({ps_n_93,ps_n_94}),
        .\v_count_reg_reg[9]_1 ({ps_n_95,ps_n_96,ps_n_97,ps_n_98}),
        .yPlayer(yPlayer));
  vga_sync vga_sync_unit
       (.A({A[13],A[9],vga_sync_unit_n_30,vga_sync_unit_n_31,vga_sync_unit_n_32,vga_sync_unit_n_33,vga_sync_unit_n_34,vga_sync_unit_n_35,A[2],vga_sync_unit_n_37,\v_count_reg_reg[7] [0]}),
        .ADDRARDADDR(addr_milk0),
        .B(vga_sync_unit_n_107),
        .C({vga_sync_unit_n_76,vga_sync_unit_n_77,vga_sync_unit_n_78,vga_sync_unit_n_79,vga_sync_unit_n_80,vga_sync_unit_n_81,vga_sync_unit_n_82,vga_sync_unit_n_83,vga_sync_unit_n_84,vga_sync_unit_n_85}),
        .CEP(CEP),
        .CO(vga_sync_unit_n_42),
        .D({p_1_out__0,x[0]}),
        .DI(\v_count_reg_reg[7] [2]),
        .DOADO(\burger/data_reg__0 ),
        .E(vga_sync_unit_n_62),
        .Hsync_OBUF(Hsync_OBUF),
        .O(O),
        .P({ps_n_1,ps_n_2,ps_n_3,ps_n_4,ps_n_5,ps_n_6,ps_n_7,ps_n_8,ps_n_9,ps_n_10}),
        .Q(Q),
        .S({vga_sync_unit_n_15,vga_sync_unit_n_16,vga_sync_unit_n_17,vga_sync_unit_n_18}),
        .Vsync_OBUF(Vsync_OBUF),
        .addr_bone_reg(addr_bone_reg),
        .addr_bone_reg_0(CO),
        .addr_bone_reg_1(addr_bone_reg_0),
        .addr_bone_reg_2(addr_bone_reg_1),
        .addr_bone_reg_3(addr_bone_reg_2),
        .addr_bone_reg_4(addr_bone_reg_3),
        .addr_bone_reg_5(addr_bone_reg_4),
        .addr_bone_reg_6(addr_bone_reg_5),
        .addr_bone_reg_i_13_0(addr_bone_reg_i_13),
        .addr_bone_reg_i_14(addr_bone_reg_i_14),
        .addr_bone_reg_i_5_0(addr_bone_reg_i_5),
        .addr_bone_reg_i_5_1(addr_bone_reg_i_5_0),
        .addr_bone_reg_i_7_0(addr_bone_reg_i_7),
        .\addr_burger[4]_i_5_0 (\addr_burger[4]_i_5 ),
        .\addr_burger_reg[4] ({ps_n_39,ps_n_40,ps_n_41}),
        .\addr_burger_reg[4]_0 ({ps_n_65,ps_n_66,ps_n_67}),
        .\addr_burger_reg[7] (\addr_burger_reg[7] ),
        .\addr_burger_reg[7]_0 ({ps_n_42,ps_n_43}),
        .\addr_burger_reg[7]_1 ({ps_n_68,ps_n_69}),
        .\addr_heart[7]_i_4_0 (\addr_heart[7]_i_4 ),
        .\addr_heart[7]_i_5_0 (\addr_heart[7]_i_5 ),
        .\addr_heart_reg[7]_i_13_0 (\addr_heart_reg[7]_i_13 ),
        .\addr_heart_reg[7]_i_13_1 (\addr_heart_reg[7]_i_13_0 ),
        .\addr_kebab[12]_i_19_0 (\addr_kebab[12]_i_19 ),
        .\addr_lolipop[11]_i_9 ({vga_sync_unit_n_158,vga_sync_unit_n_159,vga_sync_unit_n_160,vga_sync_unit_n_161,vga_sync_unit_n_162,vga_sync_unit_n_163,vga_sync_unit_n_164,vga_sync_unit_n_165,vga_sync_unit_n_166,vga_sync_unit_n_167,vga_sync_unit_n_168}),
        .\addr_lolipop_reg[11] ({ps_n_37,ps_n_38}),
        .\addr_lolipop_reg[11]_0 ({ps_n_78,ps_n_79,ps_n_80}),
        .\addr_lolipop_reg[4] ({ps_n_44,ps_n_45,ps_n_46,ps_n_47}),
        .\addr_lolipop_reg[4]_0 ({ps_n_70,ps_n_71,ps_n_72,ps_n_73}),
        .\addr_lolipop_reg[8] ({ps_n_48,ps_n_49,ps_n_50,ps_n_51}),
        .\addr_lolipop_reg[8]_0 ({ps_n_74,ps_n_75,ps_n_76,ps_n_77}),
        .\addr_pizza[9]_i_11_0 (\addr_pizza[9]_i_11 ),
        .\addr_pizza[9]_i_6_0 ({vga_sync_unit_n_177,vga_sync_unit_n_178,vga_sync_unit_n_179,vga_sync_unit_n_180,vga_sync_unit_n_181,vga_sync_unit_n_182,vga_sync_unit_n_183,vga_sync_unit_n_184,vga_sync_unit_n_185}),
        .\addr_pizza_reg[4] ({ps_n_52,ps_n_53,ps_n_54,ps_n_55}),
        .\addr_pizza_reg[4]_0 ({ps_n_81,ps_n_82,ps_n_83,ps_n_84}),
        .\addr_pizza_reg[8] ({ps_n_56,ps_n_57,ps_n_58,ps_n_59}),
        .\addr_pizza_reg[8]_0 ({ps_n_85,ps_n_86,ps_n_87,ps_n_88}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data3(data3),
        .data3_0(data3_0),
        .data3__0(vga_sync_unit_n_39),
        .data3__1({vga_sync_unit_n_43,vga_sync_unit_n_44}),
        .data40_in(data40_in),
        .data5({data5[30],data5[9:0]}),
        .\data[5]_i_11_0 (vga_sync_unit_n_51),
        .\data[5]_i_6_0 (\data[5]_i_6 ),
        .\data[5]_i_6_1 (\data[5]_i_6_0 ),
        .\data[5]_i_6_2 (\data[5]_i_6_1 ),
        .\data[5]_i_8_0 ({ps_n_89,ps_n_90,ps_n_91,ps_n_92}),
        .\data[5]_i_9_0 (vga_sync_unit_n_206),
        .\data[6]_i_2_0 (\data[6]_i_2 ),
        .\data[6]_i_2_1 (ps_n_28),
        .\data[7]_i_2_0 ({ps_n_99,ps_n_100,ps_n_101,ps_n_102,ps_n_103,ps_n_104,ps_n_105,ps_n_106}),
        .\data[7]_i_2_1 (ps_n_107),
        .data_play({data_play[7:6],data_play[4]}),
        .\data_reg[0] (vga_sync_unit_n_45),
        .\data_reg[0]_0 (ps_n_29),
        .\data_reg[0]_1 (\data_reg[0]_0 ),
        .\data_reg[1] (vga_sync_unit_n_46),
        .\data_reg[1]_0 (ps_n_31),
        .\data_reg[1]_1 (\data_reg[1]_0 ),
        .\data_reg[2] (vga_sync_unit_n_47),
        .\data_reg[2]_0 (ps_n_32),
        .\data_reg[2]_1 (\data_reg[2]_0 ),
        .\data_reg[3] (vga_sync_unit_n_48),
        .\data_reg[3]_0 (ps_n_33),
        .\data_reg[3]_1 (\data_reg[3]_0 ),
        .\data_reg[4] (vga_sync_unit_n_209),
        .\data_reg[4]_0 (ps_n_34),
        .\data_reg[4]_1 (\data_reg[4]_0 ),
        .\data_reg[4]_2 (\data_reg[4]_1 ),
        .\data_reg[5] (vga_sync_unit_n_49),
        .\data_reg[5]_0 (ps_n_35),
        .\data_reg[5]_1 (\data_reg[5]_0 ),
        .\data_reg[5]_2 (\data_reg[5]_1 ),
        .\data_reg[5]_3 (\data_reg[5]_2 ),
        .\data_reg[5]_4 (\data_reg[5]_3 ),
        .\data_reg[5]_5 (ps_n_30),
        .\data_reg[5]_6 (data2151_in),
        .\data_reg[5]_7 (\data_reg[5]_4 ),
        .\data_reg[5]_i_27_0 ({ps_n_95,ps_n_96,ps_n_97,ps_n_98}),
        .\data_reg[5]_i_28 ({ps_n_60,ps_n_61,ps_n_62,ps_n_63}),
        .\data_reg[5]_i_71_0 ({ps_n_93,ps_n_94}),
        .\data_reg[6] (vga_sync_unit_n_208),
        .\data_reg[6]_0 (ps_n_36),
        .\data_reg[7] (vga_sync_unit_n_207),
        .\data_reg[7]_0 (\data_reg[7]_1 ),
        .\data_reg[7]_1 (\data_reg[7]_2 ),
        .\data_reg[7]_2 (ps_n_21),
        .\h_count_reg_reg[0]_0 (\h_count_reg_reg[0] ),
        .\h_count_reg_reg[0]_1 (\h_count_reg_reg[0]_0 ),
        .\h_count_reg_reg[0]_2 (vga_sync_unit_n_92),
        .\h_count_reg_reg[0]_3 (vga_sync_unit_n_97),
        .\h_count_reg_reg[0]_4 ({vga_sync_unit_n_142,vga_sync_unit_n_143,vga_sync_unit_n_144,vga_sync_unit_n_145}),
        .\h_count_reg_reg[0]_5 ({vga_sync_unit_n_146,vga_sync_unit_n_147}),
        .\h_count_reg_reg[0]_6 ({vga_sync_unit_n_148,vga_sync_unit_n_149,vga_sync_unit_n_150}),
        .\h_count_reg_reg[0]_7 ({vga_sync_unit_n_151,vga_sync_unit_n_152,vga_sync_unit_n_153,vga_sync_unit_n_154}),
        .\h_count_reg_reg[0]_8 ({vga_sync_unit_n_169,vga_sync_unit_n_170,vga_sync_unit_n_171,vga_sync_unit_n_172}),
        .\h_count_reg_reg[1]_0 (DI),
        .\h_count_reg_reg[1]_1 (S),
        .\h_count_reg_reg[3]_0 (\h_count_reg_reg[3] ),
        .\h_count_reg_reg[4]_0 (\h_count_reg_reg[4] ),
        .\h_count_reg_reg[4]_1 (x[4:1]),
        .\h_count_reg_reg[4]_2 (\h_count_reg_reg[4]_0 ),
        .\h_count_reg_reg[4]_3 (addr_bone0),
        .\h_count_reg_reg[4]_4 (addr_heart0),
        .\h_count_reg_reg[5]_0 (\h_count_reg_reg[5] ),
        .\h_count_reg_reg[5]_1 ({vga_sync_unit_n_173,vga_sync_unit_n_174,vga_sync_unit_n_175,vga_sync_unit_n_176}),
        .\h_count_reg_reg[6]_0 (\h_count_reg_reg[6] ),
        .\h_count_reg_reg[7]_0 (x[7:5]),
        .\h_count_reg_reg[8]_0 (vga_sync_unit_n_64),
        .\h_count_reg_reg[8]_1 (data425_in),
        .\h_count_reg_reg[8]_2 (data45_in),
        .\h_count_reg_reg[8]_3 (data416_in),
        .\h_count_reg_reg[9]_0 (vga_sync_unit_n_14),
        .\h_count_reg_reg[9]_1 (x[9:8]),
        .\h_count_reg_reg[9]_2 (data4195_in),
        .\h_count_reg_reg[9]_3 (data48_in),
        .\h_count_reg_reg[9]_4 ({vga_sync_unit_n_155,vga_sync_unit_n_156,vga_sync_unit_n_157}),
        .n_0_1212_BUFG(n_0_1212_BUFG),
        .n_0_1212_BUFG_inst_n_1(n_0_1212_BUFG_inst_n_1),
        .\v_count_reg_reg[3]_0 (\v_count_reg_reg[7] [1]),
        .\v_count_reg_reg[7]_0 (\v_count_reg_reg[7]_0 ),
        .\v_count_reg_reg[8]_0 (\v_count_reg_reg[8] ),
        .\v_count_reg_reg[8]_1 (\v_count_reg_reg[8]_0 ),
        .\v_count_reg_reg[8]_2 (data36_in),
        .\v_count_reg_reg[9]_0 ({vga_sync_unit_n_40,vga_sync_unit_n_41}),
        .\v_count_reg_reg[9]_1 (data3193_in),
        .\v_count_reg_reg[9]_2 (data2194_in),
        .\v_count_reg_reg[9]_3 (data226_in),
        .\v_count_reg_reg[9]_4 (data27_in),
        .\v_count_reg_reg[9]_5 (data217_in),
        .\v_count_reg_reg[9]_6 ({vga_sync_unit_n_131,vga_sync_unit_n_132,vga_sync_unit_n_133,vga_sync_unit_n_134,vga_sync_unit_n_135,vga_sync_unit_n_136,vga_sync_unit_n_137,vga_sync_unit_n_138,vga_sync_unit_n_139,vga_sync_unit_n_140,vga_sync_unit_n_141}),
        .vgaBlue_OBUF(vgaBlue_OBUF),
        .vgaGreen_OBUF(vgaGreen_OBUF),
        .\vgaRed[2] (rgb),
        .vgaRed_OBUF(vgaRed_OBUF),
        .yPlayer(yPlayer));
endmodule

module vga_sync
   (Hsync_OBUF,
    Vsync_OBUF,
    data5,
    \h_count_reg_reg[9]_0 ,
    S,
    data40_in,
    A,
    data3__0,
    \v_count_reg_reg[9]_0 ,
    CO,
    data3__1,
    \data_reg[0] ,
    \data_reg[1] ,
    \data_reg[2] ,
    \data_reg[3] ,
    \data_reg[5] ,
    \h_count_reg_reg[4]_0 ,
    \data[5]_i_11_0 ,
    DI,
    \v_count_reg_reg[3]_0 ,
    \h_count_reg_reg[9]_1 ,
    \v_count_reg_reg[8]_0 ,
    \h_count_reg_reg[4]_1 ,
    \h_count_reg_reg[0]_0 ,
    E,
    \addr_burger[4]_i_5_0 ,
    \h_count_reg_reg[8]_0 ,
    D,
    \v_count_reg_reg[7]_0 ,
    \h_count_reg_reg[1]_0 ,
    \h_count_reg_reg[1]_1 ,
    C,
    \h_count_reg_reg[7]_0 ,
    \addr_heart[7]_i_5_0 ,
    \h_count_reg_reg[0]_1 ,
    \v_count_reg_reg[8]_1 ,
    \h_count_reg_reg[0]_2 ,
    \h_count_reg_reg[9]_2 ,
    \v_count_reg_reg[9]_1 ,
    \v_count_reg_reg[9]_2 ,
    \h_count_reg_reg[4]_2 ,
    \h_count_reg_reg[0]_3 ,
    CEP,
    \h_count_reg_reg[5]_0 ,
    \h_count_reg_reg[9]_3 ,
    \v_count_reg_reg[8]_2 ,
    \v_count_reg_reg[9]_3 ,
    \h_count_reg_reg[8]_1 ,
    \h_count_reg_reg[6]_0 ,
    B,
    \v_count_reg_reg[9]_4 ,
    \h_count_reg_reg[8]_2 ,
    \addr_kebab[12]_i_19_0 ,
    \h_count_reg_reg[8]_3 ,
    \v_count_reg_reg[9]_5 ,
    \addr_pizza[9]_i_11_0 ,
    \h_count_reg_reg[3]_0 ,
    O,
    ADDRARDADDR,
    \h_count_reg_reg[4]_3 ,
    \v_count_reg_reg[9]_6 ,
    \h_count_reg_reg[0]_4 ,
    \h_count_reg_reg[0]_5 ,
    \h_count_reg_reg[0]_6 ,
    \h_count_reg_reg[0]_7 ,
    \h_count_reg_reg[9]_4 ,
    \addr_lolipop[11]_i_9 ,
    \h_count_reg_reg[0]_8 ,
    \h_count_reg_reg[5]_1 ,
    \addr_pizza[9]_i_6_0 ,
    \h_count_reg_reg[4]_4 ,
    n_0_1212_BUFG_inst_n_1,
    vgaRed_OBUF,
    vgaGreen_OBUF,
    vgaBlue_OBUF,
    \data[5]_i_9_0 ,
    \data_reg[7] ,
    \data_reg[6] ,
    \data_reg[4] ,
    clk_IBUF_BUFG,
    P,
    yPlayer,
    \data_reg[5]_i_28 ,
    \data_reg[0]_0 ,
    addr_bone_reg,
    \data[7]_i_2_0 ,
    \data_reg[0]_1 ,
    \data_reg[1]_0 ,
    \data_reg[1]_1 ,
    \data_reg[2]_0 ,
    \data_reg[2]_1 ,
    \data_reg[3]_0 ,
    \data_reg[3]_1 ,
    \data_reg[4]_0 ,
    \data_reg[4]_1 ,
    \data_reg[5]_0 ,
    \data_reg[5]_1 ,
    \data_reg[6]_0 ,
    \data_reg[7]_0 ,
    \data[6]_i_2_0 ,
    \data[6]_i_2_1 ,
    \data_reg[7]_1 ,
    \data_reg[7]_2 ,
    \data_reg[5]_2 ,
    Q,
    \data_reg[5]_3 ,
    \data_reg[5]_4 ,
    \data_reg[5]_5 ,
    \addr_burger_reg[7] ,
    \data[5]_i_6_0 ,
    \data[5]_i_6_1 ,
    \addr_heart_reg[7]_i_13_0 ,
    \addr_heart_reg[7]_i_13_1 ,
    \data_reg[5]_6 ,
    addr_bone_reg_0,
    \data[7]_i_2_1 ,
    DOADO,
    \data[5]_i_6_2 ,
    addr_bone_reg_i_5_0,
    addr_bone_reg_1,
    addr_bone_reg_2,
    \data_reg[5]_7 ,
    data3,
    data3_0,
    addr_bone_reg_i_14,
    \data_reg[5]_i_71_0 ,
    \data_reg[5]_i_27_0 ,
    \data[5]_i_8_0 ,
    \addr_heart[7]_i_4_0 ,
    addr_bone_reg_i_7_0,
    addr_bone_reg_i_5_1,
    addr_bone_reg_3,
    addr_bone_reg_i_13_0,
    addr_bone_reg_4,
    addr_bone_reg_5,
    \addr_burger_reg[4] ,
    \addr_burger_reg[4]_0 ,
    \addr_burger_reg[7]_0 ,
    \addr_burger_reg[7]_1 ,
    \addr_lolipop_reg[4] ,
    \addr_lolipop_reg[4]_0 ,
    \addr_lolipop_reg[8] ,
    \addr_lolipop_reg[8]_0 ,
    \addr_lolipop_reg[11] ,
    \addr_lolipop_reg[11]_0 ,
    \addr_pizza_reg[4] ,
    \addr_pizza_reg[4]_0 ,
    \addr_pizza_reg[8] ,
    \addr_pizza_reg[8]_0 ,
    addr_bone_reg_6,
    \vgaRed[2] ,
    data_play,
    \data_reg[4]_2 ,
    n_0_1212_BUFG);
  output Hsync_OBUF;
  output Vsync_OBUF;
  output [10:0]data5;
  output [0:0]\h_count_reg_reg[9]_0 ;
  output [3:0]S;
  output [8:0]data40_in;
  output [10:0]A;
  output [0:0]data3__0;
  output [1:0]\v_count_reg_reg[9]_0 ;
  output [0:0]CO;
  output [1:0]data3__1;
  output \data_reg[0] ;
  output \data_reg[1] ;
  output \data_reg[2] ;
  output \data_reg[3] ;
  output \data_reg[5] ;
  output \h_count_reg_reg[4]_0 ;
  output \data[5]_i_11_0 ;
  output [0:0]DI;
  output [0:0]\v_count_reg_reg[3]_0 ;
  output [1:0]\h_count_reg_reg[9]_1 ;
  output \v_count_reg_reg[8]_0 ;
  output [3:0]\h_count_reg_reg[4]_1 ;
  output \h_count_reg_reg[0]_0 ;
  output [0:0]E;
  output \addr_burger[4]_i_5_0 ;
  output \h_count_reg_reg[8]_0 ;
  output [7:0]D;
  output \v_count_reg_reg[7]_0 ;
  output [0:0]\h_count_reg_reg[1]_0 ;
  output [0:0]\h_count_reg_reg[1]_1 ;
  output [9:0]C;
  output [2:0]\h_count_reg_reg[7]_0 ;
  output \addr_heart[7]_i_5_0 ;
  output \h_count_reg_reg[0]_1 ;
  output \v_count_reg_reg[8]_1 ;
  output \h_count_reg_reg[0]_2 ;
  output [0:0]\h_count_reg_reg[9]_2 ;
  output [0:0]\v_count_reg_reg[9]_1 ;
  output [0:0]\v_count_reg_reg[9]_2 ;
  output \h_count_reg_reg[4]_2 ;
  output \h_count_reg_reg[0]_3 ;
  output CEP;
  output [2:0]\h_count_reg_reg[5]_0 ;
  output [0:0]\h_count_reg_reg[9]_3 ;
  output [0:0]\v_count_reg_reg[8]_2 ;
  output [0:0]\v_count_reg_reg[9]_3 ;
  output [0:0]\h_count_reg_reg[8]_1 ;
  output \h_count_reg_reg[6]_0 ;
  output [0:0]B;
  output [0:0]\v_count_reg_reg[9]_4 ;
  output [0:0]\h_count_reg_reg[8]_2 ;
  output \addr_kebab[12]_i_19_0 ;
  output [0:0]\h_count_reg_reg[8]_3 ;
  output [0:0]\v_count_reg_reg[9]_5 ;
  output \addr_pizza[9]_i_11_0 ;
  output \h_count_reg_reg[3]_0 ;
  output [0:0]O;
  output [6:0]ADDRARDADDR;
  output [7:0]\h_count_reg_reg[4]_3 ;
  output [10:0]\v_count_reg_reg[9]_6 ;
  output [3:0]\h_count_reg_reg[0]_4 ;
  output [1:0]\h_count_reg_reg[0]_5 ;
  output [2:0]\h_count_reg_reg[0]_6 ;
  output [3:0]\h_count_reg_reg[0]_7 ;
  output [2:0]\h_count_reg_reg[9]_4 ;
  output [10:0]\addr_lolipop[11]_i_9 ;
  output [3:0]\h_count_reg_reg[0]_8 ;
  output [3:0]\h_count_reg_reg[5]_1 ;
  output [8:0]\addr_pizza[9]_i_6_0 ;
  output [7:0]\h_count_reg_reg[4]_4 ;
  output n_0_1212_BUFG_inst_n_1;
  output [2:0]vgaRed_OBUF;
  output [3:0]vgaGreen_OBUF;
  output [3:0]vgaBlue_OBUF;
  output \data[5]_i_9_0 ;
  output \data_reg[7] ;
  output \data_reg[6] ;
  output \data_reg[4] ;
  input clk_IBUF_BUFG;
  input [9:0]P;
  input [0:0]yPlayer;
  input [3:0]\data_reg[5]_i_28 ;
  input \data_reg[0]_0 ;
  input addr_bone_reg;
  input [7:0]\data[7]_i_2_0 ;
  input \data_reg[0]_1 ;
  input \data_reg[1]_0 ;
  input \data_reg[1]_1 ;
  input \data_reg[2]_0 ;
  input \data_reg[2]_1 ;
  input \data_reg[3]_0 ;
  input \data_reg[3]_1 ;
  input \data_reg[4]_0 ;
  input \data_reg[4]_1 ;
  input \data_reg[5]_0 ;
  input \data_reg[5]_1 ;
  input \data_reg[6]_0 ;
  input \data_reg[7]_0 ;
  input \data[6]_i_2_0 ;
  input \data[6]_i_2_1 ;
  input \data_reg[7]_1 ;
  input \data_reg[7]_2 ;
  input \data_reg[5]_2 ;
  input [1:0]Q;
  input \data_reg[5]_3 ;
  input \data_reg[5]_4 ;
  input \data_reg[5]_5 ;
  input \addr_burger_reg[7] ;
  input \data[5]_i_6_0 ;
  input \data[5]_i_6_1 ;
  input [1:0]\addr_heart_reg[7]_i_13_0 ;
  input \addr_heart_reg[7]_i_13_1 ;
  input [0:0]\data_reg[5]_6 ;
  input [0:0]addr_bone_reg_0;
  input [0:0]\data[7]_i_2_1 ;
  input [1:0]DOADO;
  input \data[5]_i_6_2 ;
  input [9:0]addr_bone_reg_i_5_0;
  input addr_bone_reg_1;
  input addr_bone_reg_2;
  input \data_reg[5]_7 ;
  input [2:0]data3;
  input [1:0]data3_0;
  input [0:0]addr_bone_reg_i_14;
  input [1:0]\data_reg[5]_i_71_0 ;
  input [3:0]\data_reg[5]_i_27_0 ;
  input [3:0]\data[5]_i_8_0 ;
  input [0:0]\addr_heart[7]_i_4_0 ;
  input [1:0]addr_bone_reg_i_7_0;
  input [1:0]addr_bone_reg_i_5_1;
  input [0:0]addr_bone_reg_3;
  input [0:0]addr_bone_reg_i_13_0;
  input [3:0]addr_bone_reg_4;
  input [0:0]addr_bone_reg_5;
  input [2:0]\addr_burger_reg[4] ;
  input [2:0]\addr_burger_reg[4]_0 ;
  input [1:0]\addr_burger_reg[7]_0 ;
  input [1:0]\addr_burger_reg[7]_1 ;
  input [3:0]\addr_lolipop_reg[4] ;
  input [3:0]\addr_lolipop_reg[4]_0 ;
  input [3:0]\addr_lolipop_reg[8] ;
  input [3:0]\addr_lolipop_reg[8]_0 ;
  input [1:0]\addr_lolipop_reg[11] ;
  input [2:0]\addr_lolipop_reg[11]_0 ;
  input [3:0]\addr_pizza_reg[4] ;
  input [3:0]\addr_pizza_reg[4]_0 ;
  input [3:0]\addr_pizza_reg[8] ;
  input [3:0]\addr_pizza_reg[8]_0 ;
  input addr_bone_reg_6;
  input [10:0]\vgaRed[2] ;
  input [2:0]data_play;
  input \data_reg[4]_2 ;
  input n_0_1212_BUFG;

  wire [10:0]A;
  wire [6:0]ADDRARDADDR;
  wire [0:0]B;
  wire [9:0]C;
  wire CEP;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]DOADO;
  wire [0:0]E;
  wire Hsync_OBUF;
  wire [0:0]O;
  wire [9:0]P;
  wire [1:0]Q;
  wire [3:0]S;
  wire Vsync_OBUF;
  wire addr_bone_reg;
  wire [0:0]addr_bone_reg_0;
  wire addr_bone_reg_1;
  wire addr_bone_reg_2;
  wire [0:0]addr_bone_reg_3;
  wire [3:0]addr_bone_reg_4;
  wire [0:0]addr_bone_reg_5;
  wire addr_bone_reg_6;
  wire addr_bone_reg_i_10_n_1;
  wire addr_bone_reg_i_11_n_1;
  wire addr_bone_reg_i_12_n_1;
  wire [0:0]addr_bone_reg_i_13_0;
  wire addr_bone_reg_i_13_n_1;
  wire [0:0]addr_bone_reg_i_14;
  wire addr_bone_reg_i_19_n_1;
  wire addr_bone_reg_i_20_n_1;
  wire addr_bone_reg_i_22_n_1;
  wire addr_bone_reg_i_23_n_1;
  wire addr_bone_reg_i_24_n_1;
  wire addr_bone_reg_i_25_n_1;
  wire addr_bone_reg_i_26_n_1;
  wire addr_bone_reg_i_27_n_1;
  wire addr_bone_reg_i_33_n_5;
  wire addr_bone_reg_i_33_n_6;
  wire addr_bone_reg_i_33_n_7;
  wire addr_bone_reg_i_35_n_1;
  wire addr_bone_reg_i_38_n_1;
  wire addr_bone_reg_i_3_n_1;
  wire addr_bone_reg_i_40_n_1;
  wire addr_bone_reg_i_41_n_1;
  wire addr_bone_reg_i_42_n_1;
  wire addr_bone_reg_i_43_n_1;
  wire addr_bone_reg_i_46_n_1;
  wire addr_bone_reg_i_47_n_1;
  wire addr_bone_reg_i_48_n_1;
  wire addr_bone_reg_i_49_n_1;
  wire addr_bone_reg_i_50_n_1;
  wire addr_bone_reg_i_51_n_1;
  wire addr_bone_reg_i_52_n_1;
  wire addr_bone_reg_i_53_n_1;
  wire addr_bone_reg_i_54_n_1;
  wire addr_bone_reg_i_55_n_1;
  wire addr_bone_reg_i_57_n_1;
  wire addr_bone_reg_i_59_n_1;
  wire [9:0]addr_bone_reg_i_5_0;
  wire [1:0]addr_bone_reg_i_5_1;
  wire addr_bone_reg_i_60_n_1;
  wire addr_bone_reg_i_61_n_1;
  wire addr_bone_reg_i_62_n_1;
  wire addr_bone_reg_i_63_n_1;
  wire addr_bone_reg_i_73_n_1;
  wire addr_bone_reg_i_74_n_1;
  wire addr_bone_reg_i_75_n_1;
  wire addr_bone_reg_i_77_n_1;
  wire addr_bone_reg_i_78_n_1;
  wire addr_bone_reg_i_79_n_1;
  wire [1:0]addr_bone_reg_i_7_0;
  wire addr_bone_reg_i_9_n_1;
  wire \addr_burger[4]_i_11_n_1 ;
  wire \addr_burger[4]_i_12_n_1 ;
  wire \addr_burger[4]_i_13_n_1 ;
  wire \addr_burger[4]_i_14_n_1 ;
  wire \addr_burger[4]_i_5_0 ;
  wire \addr_burger[4]_i_9_n_1 ;
  wire \addr_burger[7]_i_100_n_1 ;
  wire \addr_burger[7]_i_101_n_1 ;
  wire \addr_burger[7]_i_102_n_1 ;
  wire \addr_burger[7]_i_103_n_1 ;
  wire \addr_burger[7]_i_104_n_1 ;
  wire \addr_burger[7]_i_105_n_1 ;
  wire \addr_burger[7]_i_106_n_1 ;
  wire \addr_burger[7]_i_107_n_1 ;
  wire \addr_burger[7]_i_108_n_1 ;
  wire \addr_burger[7]_i_10_n_1 ;
  wire \addr_burger[7]_i_110_n_1 ;
  wire \addr_burger[7]_i_111_n_1 ;
  wire \addr_burger[7]_i_113_n_1 ;
  wire \addr_burger[7]_i_114_n_1 ;
  wire \addr_burger[7]_i_116_n_1 ;
  wire \addr_burger[7]_i_118_n_1 ;
  wire \addr_burger[7]_i_119_n_1 ;
  wire \addr_burger[7]_i_120_n_1 ;
  wire \addr_burger[7]_i_121_n_1 ;
  wire \addr_burger[7]_i_122_n_1 ;
  wire \addr_burger[7]_i_123_n_1 ;
  wire \addr_burger[7]_i_124_n_1 ;
  wire \addr_burger[7]_i_125_n_1 ;
  wire \addr_burger[7]_i_126_n_1 ;
  wire \addr_burger[7]_i_127_n_1 ;
  wire \addr_burger[7]_i_128_n_1 ;
  wire \addr_burger[7]_i_129_n_1 ;
  wire \addr_burger[7]_i_130_n_1 ;
  wire \addr_burger[7]_i_131_n_1 ;
  wire \addr_burger[7]_i_132_n_1 ;
  wire \addr_burger[7]_i_133_n_1 ;
  wire \addr_burger[7]_i_134_n_1 ;
  wire \addr_burger[7]_i_135_n_1 ;
  wire \addr_burger[7]_i_136_n_1 ;
  wire \addr_burger[7]_i_137_n_1 ;
  wire \addr_burger[7]_i_138_n_1 ;
  wire \addr_burger[7]_i_139_n_1 ;
  wire \addr_burger[7]_i_13_n_1 ;
  wire \addr_burger[7]_i_140_n_1 ;
  wire \addr_burger[7]_i_141_n_1 ;
  wire \addr_burger[7]_i_142_n_1 ;
  wire \addr_burger[7]_i_143_n_1 ;
  wire \addr_burger[7]_i_144_n_1 ;
  wire \addr_burger[7]_i_145_n_1 ;
  wire \addr_burger[7]_i_146_n_1 ;
  wire \addr_burger[7]_i_147_n_1 ;
  wire \addr_burger[7]_i_148_n_1 ;
  wire \addr_burger[7]_i_149_n_1 ;
  wire \addr_burger[7]_i_14_n_1 ;
  wire \addr_burger[7]_i_150_n_1 ;
  wire \addr_burger[7]_i_151_n_1 ;
  wire \addr_burger[7]_i_152_n_1 ;
  wire \addr_burger[7]_i_153_n_1 ;
  wire \addr_burger[7]_i_154_n_1 ;
  wire \addr_burger[7]_i_155_n_1 ;
  wire \addr_burger[7]_i_156_n_1 ;
  wire \addr_burger[7]_i_157_n_1 ;
  wire \addr_burger[7]_i_158_n_1 ;
  wire \addr_burger[7]_i_159_n_1 ;
  wire \addr_burger[7]_i_15_n_1 ;
  wire \addr_burger[7]_i_160_n_1 ;
  wire \addr_burger[7]_i_161_n_1 ;
  wire \addr_burger[7]_i_162_n_1 ;
  wire \addr_burger[7]_i_16_n_1 ;
  wire \addr_burger[7]_i_17_n_1 ;
  wire \addr_burger[7]_i_18_n_1 ;
  wire \addr_burger[7]_i_23_n_1 ;
  wire \addr_burger[7]_i_24_n_1 ;
  wire \addr_burger[7]_i_25_n_1 ;
  wire \addr_burger[7]_i_26_n_1 ;
  wire \addr_burger[7]_i_27_n_1 ;
  wire \addr_burger[7]_i_28_n_1 ;
  wire \addr_burger[7]_i_32_n_1 ;
  wire \addr_burger[7]_i_33_n_1 ;
  wire \addr_burger[7]_i_34_n_1 ;
  wire \addr_burger[7]_i_35_n_1 ;
  wire \addr_burger[7]_i_36_n_1 ;
  wire \addr_burger[7]_i_37_n_1 ;
  wire \addr_burger[7]_i_38_n_1 ;
  wire \addr_burger[7]_i_39_n_1 ;
  wire \addr_burger[7]_i_3_n_1 ;
  wire \addr_burger[7]_i_40_n_1 ;
  wire \addr_burger[7]_i_41_n_1 ;
  wire \addr_burger[7]_i_43_n_1 ;
  wire \addr_burger[7]_i_44_n_1 ;
  wire \addr_burger[7]_i_45_n_1 ;
  wire \addr_burger[7]_i_46_n_1 ;
  wire \addr_burger[7]_i_47_n_1 ;
  wire \addr_burger[7]_i_48_n_1 ;
  wire \addr_burger[7]_i_4_n_1 ;
  wire \addr_burger[7]_i_50_n_1 ;
  wire \addr_burger[7]_i_52_n_1 ;
  wire \addr_burger[7]_i_54_n_1 ;
  wire \addr_burger[7]_i_55_n_1 ;
  wire \addr_burger[7]_i_57_n_1 ;
  wire \addr_burger[7]_i_58_n_1 ;
  wire \addr_burger[7]_i_63_n_1 ;
  wire \addr_burger[7]_i_64_n_1 ;
  wire \addr_burger[7]_i_65_n_1 ;
  wire \addr_burger[7]_i_66_n_1 ;
  wire \addr_burger[7]_i_68_n_1 ;
  wire \addr_burger[7]_i_70_n_1 ;
  wire \addr_burger[7]_i_71_n_1 ;
  wire \addr_burger[7]_i_72_n_1 ;
  wire \addr_burger[7]_i_73_n_1 ;
  wire \addr_burger[7]_i_74_n_1 ;
  wire \addr_burger[7]_i_75_n_1 ;
  wire \addr_burger[7]_i_76_n_1 ;
  wire \addr_burger[7]_i_77_n_1 ;
  wire \addr_burger[7]_i_78_n_1 ;
  wire \addr_burger[7]_i_80_n_1 ;
  wire \addr_burger[7]_i_81_n_1 ;
  wire \addr_burger[7]_i_82_n_1 ;
  wire \addr_burger[7]_i_83_n_1 ;
  wire \addr_burger[7]_i_84_n_1 ;
  wire \addr_burger[7]_i_85_n_1 ;
  wire \addr_burger[7]_i_86_n_1 ;
  wire \addr_burger[7]_i_87_n_1 ;
  wire \addr_burger[7]_i_88_n_1 ;
  wire \addr_burger[7]_i_89_n_1 ;
  wire \addr_burger[7]_i_90_n_1 ;
  wire \addr_burger[7]_i_91_n_1 ;
  wire \addr_burger[7]_i_92_n_1 ;
  wire \addr_burger[7]_i_93_n_1 ;
  wire \addr_burger[7]_i_94_n_1 ;
  wire \addr_burger[7]_i_95_n_1 ;
  wire \addr_burger[7]_i_96_n_1 ;
  wire \addr_burger[7]_i_97_n_1 ;
  wire \addr_burger[7]_i_98_n_1 ;
  wire \addr_burger[7]_i_99_n_1 ;
  wire [2:0]\addr_burger_reg[4] ;
  wire [2:0]\addr_burger_reg[4]_0 ;
  wire \addr_burger_reg[4]_i_10_n_1 ;
  wire \addr_burger_reg[4]_i_1_n_1 ;
  wire \addr_burger_reg[7] ;
  wire [1:0]\addr_burger_reg[7]_0 ;
  wire [1:0]\addr_burger_reg[7]_1 ;
  wire \addr_burger_reg[7]_i_109_n_1 ;
  wire \addr_burger_reg[7]_i_112_n_1 ;
  wire \addr_burger_reg[7]_i_115_n_1 ;
  wire \addr_burger_reg[7]_i_117_n_1 ;
  wire \addr_burger_reg[7]_i_31_n_6 ;
  wire \addr_burger_reg[7]_i_49_n_1 ;
  wire \addr_burger_reg[7]_i_51_n_1 ;
  wire \addr_burger_reg[7]_i_53_n_1 ;
  wire \addr_burger_reg[7]_i_56_n_1 ;
  wire \addr_burger_reg[7]_i_67_n_1 ;
  wire \addr_burger_reg[7]_i_69_n_1 ;
  wire \addr_burger_reg[7]_i_79_n_1 ;
  wire \addr_heart[3]_i_2_n_1 ;
  wire \addr_heart[7]_i_10_n_1 ;
  wire \addr_heart[7]_i_11_n_1 ;
  wire \addr_heart[7]_i_12_n_1 ;
  wire \addr_heart[7]_i_14_n_1 ;
  wire \addr_heart[7]_i_15_n_1 ;
  wire \addr_heart[7]_i_16_n_1 ;
  wire \addr_heart[7]_i_17_n_1 ;
  wire \addr_heart[7]_i_18_n_1 ;
  wire \addr_heart[7]_i_19_n_1 ;
  wire \addr_heart[7]_i_20_n_1 ;
  wire \addr_heart[7]_i_21_n_1 ;
  wire \addr_heart[7]_i_22_n_1 ;
  wire \addr_heart[7]_i_23_n_1 ;
  wire \addr_heart[7]_i_25_n_1 ;
  wire \addr_heart[7]_i_26_n_1 ;
  wire \addr_heart[7]_i_27_n_1 ;
  wire \addr_heart[7]_i_28_n_1 ;
  wire \addr_heart[7]_i_29_n_1 ;
  wire \addr_heart[7]_i_30_n_1 ;
  wire \addr_heart[7]_i_31_n_1 ;
  wire [0:0]\addr_heart[7]_i_4_0 ;
  wire \addr_heart[7]_i_5_0 ;
  wire \addr_heart[7]_i_7_n_1 ;
  wire \addr_heart[7]_i_8_n_1 ;
  wire \addr_heart[7]_i_9_n_1 ;
  wire \addr_heart_reg[3]_i_1_n_1 ;
  wire [1:0]\addr_heart_reg[7]_i_13_0 ;
  wire \addr_heart_reg[7]_i_13_1 ;
  wire addr_hi0_i_11_n_1;
  wire addr_hi0_i_12_n_1;
  wire addr_hi1_i_11_n_1;
  wire addr_hi_reg_0_i_10_n_1;
  wire addr_hi_reg_0_i_3_n_1;
  wire addr_hi_reg_0_i_4_n_1;
  wire addr_hi_reg_0_i_5_n_1;
  wire addr_hi_reg_0_i_6_n_1;
  wire addr_hi_reg_0_i_7_n_1;
  wire addr_hi_reg_0_i_8_n_1;
  wire addr_hi_reg_0_i_9_n_1;
  wire \addr_kebab[12]_i_12_n_1 ;
  wire \addr_kebab[12]_i_13_n_1 ;
  wire \addr_kebab[12]_i_14_n_1 ;
  wire \addr_kebab[12]_i_15_n_1 ;
  wire \addr_kebab[12]_i_18_n_1 ;
  wire \addr_kebab[12]_i_19_0 ;
  wire \addr_kebab[12]_i_20_n_1 ;
  wire \addr_kebab[12]_i_21_n_1 ;
  wire \addr_kebab[12]_i_22_n_1 ;
  wire \addr_kebab[12]_i_23_n_1 ;
  wire \addr_kebab[12]_i_25_n_1 ;
  wire \addr_kebab[12]_i_27_n_1 ;
  wire \addr_kebab[12]_i_30_n_1 ;
  wire \addr_kebab[12]_i_31_n_1 ;
  wire \addr_kebab[12]_i_32_n_1 ;
  wire \addr_kebab[12]_i_33_n_1 ;
  wire \addr_kebab[12]_i_34_n_1 ;
  wire \addr_kebab[12]_i_35_n_1 ;
  wire \addr_kebab[12]_i_36_n_1 ;
  wire \addr_kebab[12]_i_37_n_1 ;
  wire \addr_kebab[12]_i_38_n_1 ;
  wire \addr_kebab[12]_i_39_n_1 ;
  wire \addr_kebab[12]_i_40_n_1 ;
  wire \addr_kebab[12]_i_41_n_1 ;
  wire \addr_kebab[12]_i_43_n_1 ;
  wire \addr_kebab[12]_i_45_n_1 ;
  wire \addr_kebab[12]_i_46_n_1 ;
  wire \addr_kebab[12]_i_47_n_1 ;
  wire \addr_kebab[12]_i_48_n_1 ;
  wire \addr_kebab[12]_i_49_n_1 ;
  wire \addr_kebab[12]_i_50_n_1 ;
  wire \addr_kebab[12]_i_51_n_1 ;
  wire \addr_kebab[12]_i_52_n_1 ;
  wire \addr_kebab[12]_i_53_n_1 ;
  wire \addr_kebab[12]_i_54_n_1 ;
  wire \addr_kebab[12]_i_55_n_1 ;
  wire \addr_kebab[12]_i_56_n_1 ;
  wire \addr_kebab[12]_i_57_n_1 ;
  wire \addr_kebab_reg[12]_i_24_n_1 ;
  wire \addr_kebab_reg[12]_i_26_n_1 ;
  wire \addr_kebab_reg[12]_i_42_n_1 ;
  wire \addr_kebab_reg[12]_i_44_n_1 ;
  wire \addr_lolipop[11]_i_10_n_1 ;
  wire \addr_lolipop[11]_i_11_n_1 ;
  wire \addr_lolipop[11]_i_12_n_1 ;
  wire \addr_lolipop[11]_i_13_n_1 ;
  wire \addr_lolipop[11]_i_14_n_1 ;
  wire \addr_lolipop[11]_i_15_n_1 ;
  wire \addr_lolipop[11]_i_17_n_1 ;
  wire \addr_lolipop[11]_i_18_n_1 ;
  wire \addr_lolipop[11]_i_19_n_1 ;
  wire \addr_lolipop[11]_i_20_n_1 ;
  wire \addr_lolipop[11]_i_21_n_1 ;
  wire \addr_lolipop[11]_i_23_n_1 ;
  wire \addr_lolipop[11]_i_24_n_1 ;
  wire \addr_lolipop[11]_i_25_n_1 ;
  wire \addr_lolipop[11]_i_26_n_1 ;
  wire [10:0]\addr_lolipop[11]_i_9 ;
  wire \addr_lolipop[4]_i_11_n_1 ;
  wire \addr_lolipop[4]_i_12_n_1 ;
  wire \addr_lolipop[4]_i_13_n_1 ;
  wire \addr_lolipop[4]_i_14_n_1 ;
  wire \addr_lolipop[8]_i_11_n_1 ;
  wire \addr_lolipop[8]_i_12_n_1 ;
  wire \addr_lolipop[8]_i_13_n_1 ;
  wire \addr_lolipop[8]_i_14_n_1 ;
  wire \addr_lolipop[8]_i_15_n_1 ;
  wire \addr_lolipop[8]_i_16_n_1 ;
  wire \addr_lolipop[8]_i_17_n_1 ;
  wire \addr_lolipop[8]_i_18_n_1 ;
  wire \addr_lolipop[8]_i_20_n_1 ;
  wire \addr_lolipop[8]_i_21_n_1 ;
  wire \addr_lolipop[8]_i_22_n_1 ;
  wire \addr_lolipop[8]_i_23_n_1 ;
  wire [1:0]\addr_lolipop_reg[11] ;
  wire [2:0]\addr_lolipop_reg[11]_0 ;
  wire \addr_lolipop_reg[11]_i_22_n_5 ;
  wire \addr_lolipop_reg[11]_i_22_n_6 ;
  wire \addr_lolipop_reg[11]_i_22_n_7 ;
  wire \addr_lolipop_reg[11]_i_22_n_8 ;
  wire [3:0]\addr_lolipop_reg[4] ;
  wire [3:0]\addr_lolipop_reg[4]_0 ;
  wire \addr_lolipop_reg[4]_i_10_n_1 ;
  wire \addr_lolipop_reg[4]_i_1_n_1 ;
  wire [3:0]\addr_lolipop_reg[8] ;
  wire [3:0]\addr_lolipop_reg[8]_0 ;
  wire \addr_lolipop_reg[8]_i_10_n_1 ;
  wire \addr_lolipop_reg[8]_i_19_n_1 ;
  wire \addr_lolipop_reg[8]_i_19_n_5 ;
  wire \addr_lolipop_reg[8]_i_19_n_6 ;
  wire \addr_lolipop_reg[8]_i_19_n_7 ;
  wire \addr_lolipop_reg[8]_i_1_n_1 ;
  wire addr_milk_reg_i_10_n_1;
  wire addr_milk_reg_i_11_n_1;
  wire addr_milk_reg_i_12_n_1;
  wire addr_milk_reg_i_13_n_1;
  wire addr_milk_reg_i_14_n_1;
  wire addr_milk_reg_i_15_n_1;
  wire addr_milk_reg_i_16_n_1;
  wire addr_milk_reg_i_17_n_1;
  wire addr_milk_reg_i_3_n_1;
  wire addr_milk_reg_i_5_n_1;
  wire addr_milk_reg_i_6_n_1;
  wire addr_milk_reg_i_7_n_1;
  wire addr_milk_reg_i_8_n_1;
  wire addr_milk_reg_i_9_n_1;
  wire \addr_pizza[4]_i_11_n_1 ;
  wire \addr_pizza[4]_i_12_n_1 ;
  wire \addr_pizza[4]_i_13_n_1 ;
  wire \addr_pizza[4]_i_14_n_1 ;
  wire \addr_pizza[8]_i_11_n_1 ;
  wire \addr_pizza[8]_i_12_n_1 ;
  wire \addr_pizza[8]_i_13_n_1 ;
  wire \addr_pizza[8]_i_14_n_1 ;
  wire \addr_pizza[8]_i_15_n_1 ;
  wire \addr_pizza[8]_i_16_n_1 ;
  wire \addr_pizza[8]_i_17_n_1 ;
  wire \addr_pizza[9]_i_10_n_1 ;
  wire \addr_pizza[9]_i_11_0 ;
  wire \addr_pizza[9]_i_16_n_1 ;
  wire \addr_pizza[9]_i_18_n_1 ;
  wire \addr_pizza[9]_i_21_n_1 ;
  wire \addr_pizza[9]_i_23_n_1 ;
  wire \addr_pizza[9]_i_25_n_1 ;
  wire \addr_pizza[9]_i_26_n_1 ;
  wire \addr_pizza[9]_i_27_n_1 ;
  wire \addr_pizza[9]_i_28_n_1 ;
  wire \addr_pizza[9]_i_29_n_1 ;
  wire \addr_pizza[9]_i_30_n_1 ;
  wire \addr_pizza[9]_i_31_n_1 ;
  wire \addr_pizza[9]_i_32_n_1 ;
  wire \addr_pizza[9]_i_33_n_1 ;
  wire \addr_pizza[9]_i_34_n_1 ;
  wire \addr_pizza[9]_i_35_n_1 ;
  wire \addr_pizza[9]_i_37_n_1 ;
  wire \addr_pizza[9]_i_39_n_1 ;
  wire \addr_pizza[9]_i_42_n_1 ;
  wire \addr_pizza[9]_i_43_n_1 ;
  wire \addr_pizza[9]_i_44_n_1 ;
  wire \addr_pizza[9]_i_45_n_1 ;
  wire \addr_pizza[9]_i_46_n_1 ;
  wire \addr_pizza[9]_i_47_n_1 ;
  wire \addr_pizza[9]_i_48_n_1 ;
  wire \addr_pizza[9]_i_49_n_1 ;
  wire \addr_pizza[9]_i_50_n_1 ;
  wire \addr_pizza[9]_i_51_n_1 ;
  wire \addr_pizza[9]_i_52_n_1 ;
  wire \addr_pizza[9]_i_53_n_1 ;
  wire \addr_pizza[9]_i_54_n_1 ;
  wire \addr_pizza[9]_i_55_n_1 ;
  wire \addr_pizza[9]_i_56_n_1 ;
  wire \addr_pizza[9]_i_57_n_1 ;
  wire \addr_pizza[9]_i_58_n_1 ;
  wire \addr_pizza[9]_i_59_n_1 ;
  wire \addr_pizza[9]_i_60_n_1 ;
  wire \addr_pizza[9]_i_61_n_1 ;
  wire \addr_pizza[9]_i_62_n_1 ;
  wire \addr_pizza[9]_i_63_n_1 ;
  wire \addr_pizza[9]_i_64_n_1 ;
  wire \addr_pizza[9]_i_65_n_1 ;
  wire \addr_pizza[9]_i_66_n_1 ;
  wire [8:0]\addr_pizza[9]_i_6_0 ;
  wire \addr_pizza[9]_i_6_n_1 ;
  wire \addr_pizza[9]_i_7_n_1 ;
  wire [3:0]\addr_pizza_reg[4] ;
  wire [3:0]\addr_pizza_reg[4]_0 ;
  wire \addr_pizza_reg[4]_i_10_n_1 ;
  wire \addr_pizza_reg[4]_i_1_n_1 ;
  wire [3:0]\addr_pizza_reg[8] ;
  wire [3:0]\addr_pizza_reg[8]_0 ;
  wire \addr_pizza_reg[8]_i_10_n_1 ;
  wire \addr_pizza_reg[8]_i_1_n_1 ;
  wire \addr_pizza_reg[9]_i_12_n_8 ;
  wire \addr_pizza_reg[9]_i_15_n_1 ;
  wire \addr_pizza_reg[9]_i_17_n_1 ;
  wire \addr_pizza_reg[9]_i_22_n_1 ;
  wire \addr_pizza_reg[9]_i_24_n_1 ;
  wire \addr_pizza_reg[9]_i_36_n_1 ;
  wire \addr_pizza_reg[9]_i_38_n_1 ;
  wire \addr_pizza_reg[9]_i_40_n_8 ;
  wire \addr_pizza_reg[9]_i_41_n_1 ;
  wire \addr_pizza_reg[9]_i_41_n_5 ;
  wire \addr_pizza_reg[9]_i_41_n_6 ;
  wire \addr_pizza_reg[9]_i_41_n_7 ;
  wire clk_IBUF_BUFG;
  wire [2:0]data3;
  wire [1:0]data3_0;
  wire [0:0]data3__0;
  wire [1:0]data3__1;
  wire data3_i_10_n_1;
  wire data3_i_11_n_1;
  wire data3_i_12_n_1;
  wire data3_i_13_n_1;
  wire data3_i_14_n_1;
  wire data3_i_3_n_1;
  wire data3_i_4_n_1;
  wire [8:0]data40_in;
  wire [10:0]data5;
  wire \data[4]_i_11_n_1 ;
  wire \data[4]_i_3_n_1 ;
  wire \data[4]_i_4__0_n_1 ;
  wire \data[4]_i_7__0_n_1 ;
  wire \data[4]_i_8_n_1 ;
  wire \data[5]_i_100_n_1 ;
  wire \data[5]_i_101_n_1 ;
  wire \data[5]_i_102_n_1 ;
  wire \data[5]_i_103_n_1 ;
  wire \data[5]_i_104_n_1 ;
  wire \data[5]_i_105_n_1 ;
  wire \data[5]_i_106_n_1 ;
  wire \data[5]_i_107_n_1 ;
  wire \data[5]_i_108_n_1 ;
  wire \data[5]_i_109_n_1 ;
  wire \data[5]_i_10_n_1 ;
  wire \data[5]_i_110_n_1 ;
  wire \data[5]_i_111_n_1 ;
  wire \data[5]_i_112_n_1 ;
  wire \data[5]_i_113_n_1 ;
  wire \data[5]_i_114_n_1 ;
  wire \data[5]_i_115_n_1 ;
  wire \data[5]_i_116_n_1 ;
  wire \data[5]_i_117_n_1 ;
  wire \data[5]_i_118_n_1 ;
  wire \data[5]_i_119_n_1 ;
  wire \data[5]_i_11_0 ;
  wire \data[5]_i_11_n_1 ;
  wire \data[5]_i_120_n_1 ;
  wire \data[5]_i_121_n_1 ;
  wire \data[5]_i_122_n_1 ;
  wire \data[5]_i_123_n_1 ;
  wire \data[5]_i_124_n_1 ;
  wire \data[5]_i_125_n_1 ;
  wire \data[5]_i_126_n_1 ;
  wire \data[5]_i_127_n_1 ;
  wire \data[5]_i_128_n_1 ;
  wire \data[5]_i_129_n_1 ;
  wire \data[5]_i_12_n_1 ;
  wire \data[5]_i_130_n_1 ;
  wire \data[5]_i_131_n_1 ;
  wire \data[5]_i_132_n_1 ;
  wire \data[5]_i_133_n_1 ;
  wire \data[5]_i_134_n_1 ;
  wire \data[5]_i_135_n_1 ;
  wire \data[5]_i_136_n_1 ;
  wire \data[5]_i_137_n_1 ;
  wire \data[5]_i_138_n_1 ;
  wire \data[5]_i_139_n_1 ;
  wire \data[5]_i_140_n_1 ;
  wire \data[5]_i_141_n_1 ;
  wire \data[5]_i_142_n_1 ;
  wire \data[5]_i_143_n_1 ;
  wire \data[5]_i_144_n_1 ;
  wire \data[5]_i_145_n_1 ;
  wire \data[5]_i_146_n_1 ;
  wire \data[5]_i_147_n_1 ;
  wire \data[5]_i_148_n_1 ;
  wire \data[5]_i_149_n_1 ;
  wire \data[5]_i_14_n_1 ;
  wire \data[5]_i_150_n_1 ;
  wire \data[5]_i_151_n_1 ;
  wire \data[5]_i_152_n_1 ;
  wire \data[5]_i_153_n_1 ;
  wire \data[5]_i_154_n_1 ;
  wire \data[5]_i_156_n_1 ;
  wire \data[5]_i_157_n_1 ;
  wire \data[5]_i_158_n_1 ;
  wire \data[5]_i_159_n_1 ;
  wire \data[5]_i_16_n_1 ;
  wire \data[5]_i_176_n_1 ;
  wire \data[5]_i_177_n_1 ;
  wire \data[5]_i_178_n_1 ;
  wire \data[5]_i_179_n_1 ;
  wire \data[5]_i_17_n_1 ;
  wire \data[5]_i_180_n_1 ;
  wire \data[5]_i_181_n_1 ;
  wire \data[5]_i_182_n_1 ;
  wire \data[5]_i_183_n_1 ;
  wire \data[5]_i_184_n_1 ;
  wire \data[5]_i_185_n_1 ;
  wire \data[5]_i_186_n_1 ;
  wire \data[5]_i_187_n_1 ;
  wire \data[5]_i_188_n_1 ;
  wire \data[5]_i_189_n_1 ;
  wire \data[5]_i_18_n_1 ;
  wire \data[5]_i_190_n_1 ;
  wire \data[5]_i_191_n_1 ;
  wire \data[5]_i_192_n_1 ;
  wire \data[5]_i_193_n_1 ;
  wire \data[5]_i_194_n_1 ;
  wire \data[5]_i_195_n_1 ;
  wire \data[5]_i_196_n_1 ;
  wire \data[5]_i_197_n_1 ;
  wire \data[5]_i_198_n_1 ;
  wire \data[5]_i_199_n_1 ;
  wire \data[5]_i_19_n_1 ;
  wire \data[5]_i_201_n_1 ;
  wire \data[5]_i_202_n_1 ;
  wire \data[5]_i_203_n_1 ;
  wire \data[5]_i_204_n_1 ;
  wire \data[5]_i_207_n_1 ;
  wire \data[5]_i_208_n_1 ;
  wire \data[5]_i_20_n_1 ;
  wire \data[5]_i_210_n_1 ;
  wire \data[5]_i_211_n_1 ;
  wire \data[5]_i_21_n_1 ;
  wire \data[5]_i_22_n_1 ;
  wire \data[5]_i_231_n_1 ;
  wire \data[5]_i_232_n_1 ;
  wire \data[5]_i_233_n_1 ;
  wire \data[5]_i_234_n_1 ;
  wire \data[5]_i_235_n_1 ;
  wire \data[5]_i_236_n_1 ;
  wire \data[5]_i_237_n_1 ;
  wire \data[5]_i_238_n_1 ;
  wire \data[5]_i_239_n_1 ;
  wire \data[5]_i_23_n_1 ;
  wire \data[5]_i_240_n_1 ;
  wire \data[5]_i_241_n_1 ;
  wire \data[5]_i_242_n_1 ;
  wire \data[5]_i_24_n_1 ;
  wire \data[5]_i_25_n_1 ;
  wire \data[5]_i_29_n_1 ;
  wire \data[5]_i_31_n_1 ;
  wire \data[5]_i_32_n_1 ;
  wire \data[5]_i_33_n_1 ;
  wire \data[5]_i_34_n_1 ;
  wire \data[5]_i_35_n_1 ;
  wire \data[5]_i_36_n_1 ;
  wire \data[5]_i_39_n_1 ;
  wire \data[5]_i_43_n_1 ;
  wire \data[5]_i_44_n_1 ;
  wire \data[5]_i_45_n_1 ;
  wire \data[5]_i_46_n_1 ;
  wire \data[5]_i_47_n_1 ;
  wire \data[5]_i_48_n_1 ;
  wire \data[5]_i_49_n_1 ;
  wire \data[5]_i_50_n_1 ;
  wire \data[5]_i_51_n_1 ;
  wire \data[5]_i_52_n_1 ;
  wire \data[5]_i_53_n_1 ;
  wire \data[5]_i_54_n_1 ;
  wire \data[5]_i_55_n_1 ;
  wire \data[5]_i_56_n_1 ;
  wire \data[5]_i_57_n_1 ;
  wire \data[5]_i_58_n_1 ;
  wire \data[5]_i_59_n_1 ;
  wire \data[5]_i_5_n_1 ;
  wire \data[5]_i_60_n_1 ;
  wire \data[5]_i_61_n_1 ;
  wire \data[5]_i_62_n_1 ;
  wire \data[5]_i_63_n_1 ;
  wire \data[5]_i_65_n_1 ;
  wire \data[5]_i_66_n_1 ;
  wire \data[5]_i_67_n_1 ;
  wire \data[5]_i_69_n_1 ;
  wire \data[5]_i_6_0 ;
  wire \data[5]_i_6_1 ;
  wire \data[5]_i_6_2 ;
  wire \data[5]_i_6_n_1 ;
  wire \data[5]_i_70_n_1 ;
  wire \data[5]_i_72_n_1 ;
  wire \data[5]_i_73_n_1 ;
  wire \data[5]_i_74_n_1 ;
  wire \data[5]_i_75_n_1 ;
  wire \data[5]_i_89_n_1 ;
  wire [3:0]\data[5]_i_8_0 ;
  wire \data[5]_i_8_n_1 ;
  wire \data[5]_i_90_n_1 ;
  wire \data[5]_i_91_n_1 ;
  wire \data[5]_i_92_n_1 ;
  wire \data[5]_i_93_n_1 ;
  wire \data[5]_i_94_n_1 ;
  wire \data[5]_i_97_n_1 ;
  wire \data[5]_i_98_n_1 ;
  wire \data[5]_i_99_n_1 ;
  wire \data[5]_i_9_0 ;
  wire \data[5]_i_9_n_1 ;
  wire \data[6]_i_2_0 ;
  wire \data[6]_i_2_1 ;
  wire \data[6]_i_2_n_1 ;
  wire \data[6]_i_4_n_1 ;
  wire \data[6]_i_5_n_1 ;
  wire \data[7]_i_10_n_1 ;
  wire \data[7]_i_11_n_1 ;
  wire \data[7]_i_12_n_1 ;
  wire \data[7]_i_13_n_1 ;
  wire [7:0]\data[7]_i_2_0 ;
  wire [0:0]\data[7]_i_2_1 ;
  wire \data[7]_i_2_n_1 ;
  wire \data[7]_i_3_n_1 ;
  wire \data[7]_i_5_n_1 ;
  wire \data[7]_i_9_n_1 ;
  wire [2:0]data_play;
  wire \data_reg[0] ;
  wire \data_reg[0]_0 ;
  wire \data_reg[0]_1 ;
  wire \data_reg[1] ;
  wire \data_reg[1]_0 ;
  wire \data_reg[1]_1 ;
  wire \data_reg[2] ;
  wire \data_reg[2]_0 ;
  wire \data_reg[2]_1 ;
  wire \data_reg[3] ;
  wire \data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[4] ;
  wire \data_reg[4]_0 ;
  wire \data_reg[4]_1 ;
  wire \data_reg[4]_2 ;
  wire \data_reg[5] ;
  wire \data_reg[5]_0 ;
  wire \data_reg[5]_1 ;
  wire \data_reg[5]_2 ;
  wire \data_reg[5]_3 ;
  wire \data_reg[5]_4 ;
  wire \data_reg[5]_5 ;
  wire [0:0]\data_reg[5]_6 ;
  wire \data_reg[5]_7 ;
  wire \data_reg[5]_i_155_n_1 ;
  wire \data_reg[5]_i_200_n_1 ;
  wire \data_reg[5]_i_209_n_1 ;
  wire [3:0]\data_reg[5]_i_27_0 ;
  wire [3:0]\data_reg[5]_i_28 ;
  wire \data_reg[5]_i_68_n_1 ;
  wire [1:0]\data_reg[5]_i_71_0 ;
  wire \data_reg[5]_i_71_n_1 ;
  wire \data_reg[6] ;
  wire \data_reg[6]_0 ;
  wire \data_reg[7] ;
  wire \data_reg[7]_0 ;
  wire \data_reg[7]_1 ;
  wire \data_reg[7]_2 ;
  wire \h_count_reg_reg[0]_0 ;
  wire \h_count_reg_reg[0]_1 ;
  wire \h_count_reg_reg[0]_2 ;
  wire \h_count_reg_reg[0]_3 ;
  wire [3:0]\h_count_reg_reg[0]_4 ;
  wire [1:0]\h_count_reg_reg[0]_5 ;
  wire [2:0]\h_count_reg_reg[0]_6 ;
  wire [3:0]\h_count_reg_reg[0]_7 ;
  wire [3:0]\h_count_reg_reg[0]_8 ;
  wire [0:0]\h_count_reg_reg[1]_0 ;
  wire [0:0]\h_count_reg_reg[1]_1 ;
  wire \h_count_reg_reg[3]_0 ;
  wire \h_count_reg_reg[4]_0 ;
  wire [3:0]\h_count_reg_reg[4]_1 ;
  wire \h_count_reg_reg[4]_2 ;
  wire [7:0]\h_count_reg_reg[4]_3 ;
  wire [7:0]\h_count_reg_reg[4]_4 ;
  wire [2:0]\h_count_reg_reg[5]_0 ;
  wire [3:0]\h_count_reg_reg[5]_1 ;
  wire \h_count_reg_reg[6]_0 ;
  wire [2:0]\h_count_reg_reg[7]_0 ;
  wire \h_count_reg_reg[8]_0 ;
  wire [0:0]\h_count_reg_reg[8]_1 ;
  wire [0:0]\h_count_reg_reg[8]_2 ;
  wire [0:0]\h_count_reg_reg[8]_3 ;
  wire [0:0]\h_count_reg_reg[9]_0 ;
  wire [1:0]\h_count_reg_reg[9]_1 ;
  wire [0:0]\h_count_reg_reg[9]_2 ;
  wire [0:0]\h_count_reg_reg[9]_3 ;
  wire [2:0]\h_count_reg_reg[9]_4 ;
  wire hsync_next;
  wire n_0_1212_BUFG;
  wire n_0_1212_BUFG_inst_n_1;
  wire p_0_out_i_10_n_1;
  wire p_0_out_i_11_n_1;
  wire p_0_out_i_12_n_1;
  wire p_0_out_i_13_n_1;
  wire p_0_out_i_14_n_1;
  wire p_0_out_i_15_n_1;
  wire p_0_out_i_16_n_1;
  wire p_0_out_i_17_n_1;
  wire p_0_out_i_18_n_1;
  wire p_0_out_i_2_n_1;
  wire p_0_out_i_3_n_1;
  wire p_0_out_i_5_n_1;
  wire p_0_out_i_6_n_1;
  wire p_0_out_i_7_n_1;
  wire p_0_out_i_8_n_1;
  wire p_0_out_i_9_n_1;
  wire p_1_out_i_10_n_1;
  wire p_1_out_i_11_n_1;
  wire p_1_out_i_12_n_1;
  wire p_1_out_i_13_n_1;
  wire p_1_out_i_14_n_1;
  wire p_1_out_i_15_n_1;
  wire p_1_out_i_16_n_1;
  wire p_1_out_i_17_n_1;
  wire p_1_out_i_18_n_1;
  wire p_1_out_i_19_n_1;
  wire p_1_out_i_20_n_1;
  wire p_1_out_i_21_n_1;
  wire p_1_out_i_22_n_1;
  wire p_1_out_i_23_n_1;
  wire p_1_out_i_24_n_1;
  wire p_1_out_i_25_n_1;
  wire p_1_out_i_26_n_1;
  wire p_1_out_i_27_n_1;
  wire p_1_out_i_28_n_1;
  wire p_1_out_i_29_n_1;
  wire p_1_out_i_30_n_1;
  wire p_1_out_i_31_n_1;
  wire p_1_out_i_32_n_1;
  wire p_1_out_i_33_n_1;
  wire p_1_out_i_34_n_1;
  wire p_1_out_i_35_n_1;
  wire p_1_out_i_36_n_1;
  wire p_1_out_i_37_n_1;
  wire p_1_out_i_38_n_1;
  wire p_1_out_i_39_n_1;
  wire p_1_out_i_40_n_1;
  wire p_1_out_i_41_n_1;
  wire p_1_out_i_42_n_1;
  wire p_1_out_i_43_n_1;
  wire p_1_out_i_6_n_1;
  wire p_1_out_i_7_n_1;
  wire p_1_out_i_8_n_1;
  wire p_1_out_i_9_n_1;
  wire [1:0]pixel_next;
  wire [1:0]pixel_reg;
  wire \ps/data1 ;
  wire \ps/data111_in ;
  wire \ps/data118_out ;
  wire \ps/data120_in ;
  wire \ps/data127_out ;
  wire \ps/data19_out ;
  wire \ps/data2 ;
  wire \ps/data214_in ;
  wire \ps/data223_in ;
  wire \ps/data22_in ;
  wire \ps/data30_in ;
  wire \ps/data310_in ;
  wire \ps/data3150_in ;
  wire \ps/data3152_in ;
  wire \ps/data319_in ;
  wire \ps/data31_in ;
  wire \ps/data3__3 ;
  wire \ps/data4 ;
  wire \ps/data413_in ;
  wire \ps/data4161_in ;
  wire \ps/data422_in ;
  wire \ps/data436_in ;
  wire \ps/data43_in ;
  wire [7:5]\ps/p_4_in ;
  wire v_count_reg0;
  wire \v_count_reg[0]_i_1_n_1 ;
  wire \v_count_reg[0]_i_2_n_1 ;
  wire \v_count_reg[1]_i_1_n_1 ;
  wire \v_count_reg[2]_i_1_n_1 ;
  wire \v_count_reg[3]_i_1_n_1 ;
  wire \v_count_reg[4]_i_1_n_1 ;
  wire \v_count_reg[5]_i_1_n_1 ;
  wire \v_count_reg[5]_i_2_n_1 ;
  wire \v_count_reg[6]_i_1_n_1 ;
  wire \v_count_reg[7]_i_1_n_1 ;
  wire \v_count_reg[8]_i_1_n_1 ;
  wire \v_count_reg[9]_i_2_n_1 ;
  wire \v_count_reg[9]_i_3_n_1 ;
  wire \v_count_reg[9]_i_4_n_1 ;
  wire \v_count_reg[9]_i_5_n_1 ;
  wire [0:0]\v_count_reg_reg[3]_0 ;
  wire \v_count_reg_reg[7]_0 ;
  wire \v_count_reg_reg[8]_0 ;
  wire \v_count_reg_reg[8]_1 ;
  wire [0:0]\v_count_reg_reg[8]_2 ;
  wire [1:0]\v_count_reg_reg[9]_0 ;
  wire [0:0]\v_count_reg_reg[9]_1 ;
  wire [0:0]\v_count_reg_reg[9]_2 ;
  wire [0:0]\v_count_reg_reg[9]_3 ;
  wire [0:0]\v_count_reg_reg[9]_4 ;
  wire [0:0]\v_count_reg_reg[9]_5 ;
  wire [10:0]\v_count_reg_reg[9]_6 ;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen_OBUF;
  wire [10:0]\vgaRed[2] ;
  wire [2:0]vgaRed_OBUF;
  wire \vgaRed_OBUF[2]_inst_i_2_n_1 ;
  wire vsync_next;
  wire [9:1]y;
  wire [0:0]yPlayer;
  wire [2:0]NLW_addr_bone_reg_i_19_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_19_O_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_addr_bone_reg_i_22_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_22_O_UNCONNECTED;
  wire [2:0]NLW_addr_bone_reg_i_25_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_25_O_UNCONNECTED;
  wire [2:0]NLW_addr_bone_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_33_CO_UNCONNECTED;
  wire [0:0]NLW_addr_bone_reg_i_33_O_UNCONNECTED;
  wire [2:0]NLW_addr_bone_reg_i_38_CO_UNCONNECTED;
  wire [3:1]NLW_addr_bone_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_5_O_UNCONNECTED;
  wire [3:1]NLW_addr_bone_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_6_O_UNCONNECTED;
  wire [3:1]NLW_addr_bone_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_addr_bone_reg_i_7_O_UNCONNECTED;
  wire [2:0]\NLW_addr_burger_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[4]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_109_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_109_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_112_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_112_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_115_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_115_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_117_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_117_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_addr_burger_reg[7]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_21_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_22_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_29_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_30_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_31_CO_UNCONNECTED ;
  wire [3:3]\NLW_addr_burger_reg[7]_i_31_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_42_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_49_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_49_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_51_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_51_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_53_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_53_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_56_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_56_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_59_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_59_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_60_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_60_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_61_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_61_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_burger_reg[7]_i_62_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_62_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_67_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_67_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_69_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_69_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_burger_reg[7]_i_79_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_burger_reg[7]_i_79_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_heart_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_heart_reg[7]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_heart_reg[7]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_heart_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_kebab_reg[12]_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_16_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_kebab_reg[12]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_kebab_reg[12]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_24_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_kebab_reg[12]_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_26_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_kebab_reg[12]_i_28_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_28_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_kebab_reg[12]_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_29_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_kebab_reg[12]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_42_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_kebab_reg[12]_i_44_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_kebab_reg[12]_i_44_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_lolipop_reg[11]_i_16_CO_UNCONNECTED ;
  wire [3:3]\NLW_addr_lolipop_reg[11]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_lolipop_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_addr_lolipop_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_lolipop_reg[11]_i_22_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_lolipop_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_lolipop_reg[4]_i_10_CO_UNCONNECTED ;
  wire [0:0]\NLW_addr_lolipop_reg[4]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_lolipop_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_lolipop_reg[8]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_lolipop_reg[8]_i_19_CO_UNCONNECTED ;
  wire [0:0]\NLW_addr_lolipop_reg[8]_i_19_O_UNCONNECTED ;
  wire [3:0]NLW_addr_milk_reg_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_addr_milk_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_addr_milk_reg_i_3_CO_UNCONNECTED;
  wire [2:0]\NLW_addr_pizza_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[4]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[8]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_12_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_12_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_13_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_15_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_17_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_22_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_24_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_36_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_36_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_40_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_40_O_UNCONNECTED ;
  wire [2:0]\NLW_addr_pizza_reg[9]_i_41_CO_UNCONNECTED ;
  wire [0:0]\NLW_addr_pizza_reg[9]_i_41_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_8_O_UNCONNECTED ;
  wire [3:1]\NLW_addr_pizza_reg[9]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_addr_pizza_reg[9]_i_9_O_UNCONNECTED ;
  wire [3:0]NLW_data3_i_2_CO_UNCONNECTED;
  wire [3:2]NLW_data3_i_2_O_UNCONNECTED;
  wire [2:0]NLW_data3_i_3_CO_UNCONNECTED;
  wire [2:0]NLW_data3_i_4_CO_UNCONNECTED;
  wire [2:0]\NLW_data_reg[5]_i_155_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_155_O_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_164_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_reg[5]_i_164_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_200_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_200_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_209_CO_UNCONNECTED ;
  wire [3:1]\NLW_data_reg[5]_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_26_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_27_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_68_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_68_O_UNCONNECTED ;
  wire [2:0]\NLW_data_reg[5]_i_71_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_reg[5]_i_71_O_UNCONNECTED ;
  wire [3:0]NLW_p_0_out_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_p_0_out_i_1_O_UNCONNECTED;
  wire [2:0]NLW_p_0_out_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_p_0_out_i_3_CO_UNCONNECTED;
  wire [0:0]NLW_p_0_out_i_3_O_UNCONNECTED;
  wire [3:0]NLW_p_0_out_i_4_CO_UNCONNECTED;
  wire [2:0]NLW_p_1_out_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_10_O_UNCONNECTED;
  wire [2:0]NLW_p_1_out_i_13_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_13_O_UNCONNECTED;
  wire [3:1]NLW_p_1_out_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_2_O_UNCONNECTED;
  wire [3:1]NLW_p_1_out_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_3_O_UNCONNECTED;
  wire [3:1]NLW_p_1_out_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_4_O_UNCONNECTED;
  wire [3:1]NLW_p_1_out_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_5_O_UNCONNECTED;
  wire [2:0]NLW_p_1_out_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_6_O_UNCONNECTED;
  wire [2:0]NLW_p_1_out_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_i_8_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    addr_bone_reg_i_1
       (.I0(addr_bone_reg),
        .I1(\h_count_reg_reg[0]_0 ),
        .I2(\h_count_reg_reg[9]_2 ),
        .I3(\v_count_reg_reg[9]_1 ),
        .I4(\v_count_reg_reg[9]_2 ),
        .I5(addr_bone_reg_0),
        .O(\h_count_reg_reg[0]_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    addr_bone_reg_i_10
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(addr_bone_reg_2),
        .I2(addr_bone_reg_i_33_n_7),
        .O(addr_bone_reg_i_10_n_1));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    addr_bone_reg_i_11
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(addr_bone_reg_i_33_n_6),
        .I2(addr_bone_reg_i_33_n_5),
        .I3(addr_bone_reg_i_35_n_1),
        .I4(addr_bone_reg_1),
        .I5(addr_bone_reg_i_5_0[6]),
        .O(addr_bone_reg_i_11_n_1));
  LUT5 #(
    .INIT(32'h69969669)) 
    addr_bone_reg_i_12
       (.I0(addr_bone_reg_i_5_0[6]),
        .I1(addr_bone_reg_1),
        .I2(addr_bone_reg_i_9_n_1),
        .I3(addr_bone_reg_i_33_n_6),
        .I4(\h_count_reg_reg[7]_0 [1]),
        .O(addr_bone_reg_i_12_n_1));
  LUT6 #(
    .INIT(64'h9696699669966969)) 
    addr_bone_reg_i_13
       (.I0(addr_bone_reg_i_33_n_7),
        .I1(addr_bone_reg_i_5_0[5]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .I3(addr_bone_reg_i_5_0[4]),
        .I4(addr_bone_reg_6),
        .I5(O),
        .O(addr_bone_reg_i_13_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_19
       (.CI(1'b0),
        .CO({addr_bone_reg_i_19_n_1,NLW_addr_bone_reg_i_19_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({addr_bone_reg_i_40_n_1,addr_bone_reg_i_41_n_1,addr_bone_reg_i_42_n_1,addr_bone_reg_i_43_n_1}),
        .O(NLW_addr_bone_reg_i_19_O_UNCONNECTED[3:0]),
        .S({addr_bone_reg_i_5_1,addr_bone_reg_i_46_n_1,addr_bone_reg_i_47_n_1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_2
       (.CI(addr_bone_reg_i_3_n_1),
        .CO(NLW_addr_bone_reg_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,addr_bone_reg_i_9_n_1,addr_bone_reg_i_10_n_1,\h_count_reg_reg[4]_1 [3]}),
        .O(\h_count_reg_reg[4]_3 [7:4]),
        .S({addr_bone_reg_i_11_n_1,addr_bone_reg_i_12_n_1,addr_bone_reg_i_13_n_1,addr_bone_reg_5}));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_bone_reg_i_20
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(addr_bone_reg_i_5_0[9]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(addr_bone_reg_i_5_0[8]),
        .O(addr_bone_reg_i_20_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_22
       (.CI(1'b0),
        .CO({addr_bone_reg_i_22_n_1,NLW_addr_bone_reg_i_22_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({addr_bone_reg_i_48_n_1,addr_bone_reg_i_49_n_1,addr_bone_reg_i_50_n_1,addr_bone_reg_i_51_n_1}),
        .O(NLW_addr_bone_reg_i_22_O_UNCONNECTED[3:0]),
        .S({addr_bone_reg_i_52_n_1,addr_bone_reg_i_53_n_1,addr_bone_reg_i_54_n_1,addr_bone_reg_i_55_n_1}));
  LUT3 #(
    .INIT(8'hBA)) 
    addr_bone_reg_i_23
       (.I0(y[9]),
        .I1(yPlayer),
        .I2(y[8]),
        .O(addr_bone_reg_i_23_n_1));
  LUT3 #(
    .INIT(8'h09)) 
    addr_bone_reg_i_24
       (.I0(y[8]),
        .I1(yPlayer),
        .I2(y[9]),
        .O(addr_bone_reg_i_24_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_25
       (.CI(1'b0),
        .CO({addr_bone_reg_i_25_n_1,NLW_addr_bone_reg_i_25_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({addr_bone_reg_i_7_0[1],addr_bone_reg_i_57_n_1,addr_bone_reg_i_7_0[0],addr_bone_reg_i_59_n_1}),
        .O(NLW_addr_bone_reg_i_25_O_UNCONNECTED[3:0]),
        .S({addr_bone_reg_i_60_n_1,addr_bone_reg_i_61_n_1,addr_bone_reg_i_62_n_1,addr_bone_reg_i_63_n_1}));
  LUT3 #(
    .INIT(8'h04)) 
    addr_bone_reg_i_26
       (.I0(y[9]),
        .I1(yPlayer),
        .I2(y[8]),
        .O(addr_bone_reg_i_26_n_1));
  LUT3 #(
    .INIT(8'h09)) 
    addr_bone_reg_i_27
       (.I0(y[8]),
        .I1(yPlayer),
        .I2(y[9]),
        .O(addr_bone_reg_i_27_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_3
       (.CI(1'b0),
        .CO({addr_bone_reg_i_3_n_1,NLW_addr_bone_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\h_count_reg_reg[4]_1 [2:0],D[0]}),
        .O(\h_count_reg_reg[4]_3 [3:0]),
        .S(addr_bone_reg_4));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_33
       (.CI(1'b0),
        .CO(NLW_addr_bone_reg_i_33_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b1),
        .DI({1'b0,y[2:1],A[0]}),
        .O({addr_bone_reg_i_33_n_5,addr_bone_reg_i_33_n_6,addr_bone_reg_i_33_n_7,NLW_addr_bone_reg_i_33_O_UNCONNECTED[0]}),
        .S({addr_bone_reg_i_73_n_1,addr_bone_reg_i_74_n_1,addr_bone_reg_i_75_n_1,addr_bone_reg_i_13_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_bone_reg_i_35
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(addr_bone_reg_i_5_0[7]),
        .O(addr_bone_reg_i_35_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_bone_reg_i_38
       (.CI(1'b0),
        .CO({addr_bone_reg_i_38_n_1,NLW_addr_bone_reg_i_38_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({\v_count_reg_reg[3]_0 ,y[2:1],A[0]}),
        .O({data40_in[2:0],O}),
        .S({addr_bone_reg_i_77_n_1,addr_bone_reg_i_78_n_1,addr_bone_reg_i_79_n_1,addr_bone_reg_i_14}));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_bone_reg_i_40
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(addr_bone_reg_i_5_0[7]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(addr_bone_reg_i_5_0[6]),
        .O(addr_bone_reg_i_40_n_1));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_bone_reg_i_41
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(addr_bone_reg_i_5_0[5]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(addr_bone_reg_i_5_0[4]),
        .O(addr_bone_reg_i_41_n_1));
  LUT4 #(
    .INIT(16'h2F02)) 
    addr_bone_reg_i_42
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(addr_bone_reg_i_5_0[2]),
        .I2(addr_bone_reg_i_5_0[3]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(addr_bone_reg_i_42_n_1));
  LUT4 #(
    .INIT(16'h2F02)) 
    addr_bone_reg_i_43
       (.I0(D[0]),
        .I1(addr_bone_reg_i_5_0[0]),
        .I2(addr_bone_reg_i_5_0[1]),
        .I3(\h_count_reg_reg[4]_1 [0]),
        .O(addr_bone_reg_i_43_n_1));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_46
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(addr_bone_reg_i_5_0[2]),
        .I2(addr_bone_reg_i_5_0[3]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(addr_bone_reg_i_46_n_1));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_47
       (.I0(D[0]),
        .I1(addr_bone_reg_i_5_0[0]),
        .I2(addr_bone_reg_i_5_0[1]),
        .I3(\h_count_reg_reg[4]_1 [0]),
        .O(addr_bone_reg_i_47_n_1));
  LUT3 #(
    .INIT(8'hB2)) 
    addr_bone_reg_i_48
       (.I0(DI),
        .I1(yPlayer),
        .I2(y[6]),
        .O(addr_bone_reg_i_48_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    addr_bone_reg_i_49
       (.I0(y[4]),
        .I1(y[5]),
        .O(addr_bone_reg_i_49_n_1));
  CARRY4 addr_bone_reg_i_5
       (.CI(addr_bone_reg_i_19_n_1),
        .CO({NLW_addr_bone_reg_i_5_CO_UNCONNECTED[3:1],\h_count_reg_reg[9]_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,addr_bone_reg_i_20_n_1}),
        .O(NLW_addr_bone_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,addr_bone_reg_3}));
  LUT3 #(
    .INIT(8'h8E)) 
    addr_bone_reg_i_50
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(yPlayer),
        .O(addr_bone_reg_i_50_n_1));
  LUT3 #(
    .INIT(8'hCE)) 
    addr_bone_reg_i_51
       (.I0(A[0]),
        .I1(y[1]),
        .I2(yPlayer),
        .O(addr_bone_reg_i_51_n_1));
  LUT3 #(
    .INIT(8'h41)) 
    addr_bone_reg_i_52
       (.I0(y[6]),
        .I1(DI),
        .I2(yPlayer),
        .O(addr_bone_reg_i_52_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    addr_bone_reg_i_53
       (.I0(y[5]),
        .I1(y[4]),
        .O(addr_bone_reg_i_53_n_1));
  LUT3 #(
    .INIT(8'h41)) 
    addr_bone_reg_i_54
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(yPlayer),
        .O(addr_bone_reg_i_54_n_1));
  LUT3 #(
    .INIT(8'h41)) 
    addr_bone_reg_i_55
       (.I0(y[1]),
        .I1(yPlayer),
        .I2(A[0]),
        .O(addr_bone_reg_i_55_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    addr_bone_reg_i_57
       (.I0(y[5]),
        .I1(y[4]),
        .O(addr_bone_reg_i_57_n_1));
  LUT3 #(
    .INIT(8'h04)) 
    addr_bone_reg_i_59
       (.I0(y[1]),
        .I1(yPlayer),
        .I2(A[0]),
        .O(addr_bone_reg_i_59_n_1));
  CARRY4 addr_bone_reg_i_6
       (.CI(addr_bone_reg_i_22_n_1),
        .CO({NLW_addr_bone_reg_i_6_CO_UNCONNECTED[3:1],\v_count_reg_reg[9]_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,addr_bone_reg_i_23_n_1}),
        .O(NLW_addr_bone_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,addr_bone_reg_i_24_n_1}));
  LUT3 #(
    .INIT(8'h41)) 
    addr_bone_reg_i_60
       (.I0(y[6]),
        .I1(DI),
        .I2(yPlayer),
        .O(addr_bone_reg_i_60_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    addr_bone_reg_i_61
       (.I0(y[4]),
        .I1(y[5]),
        .O(addr_bone_reg_i_61_n_1));
  LUT3 #(
    .INIT(8'h41)) 
    addr_bone_reg_i_62
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(yPlayer),
        .O(addr_bone_reg_i_62_n_1));
  LUT3 #(
    .INIT(8'h41)) 
    addr_bone_reg_i_63
       (.I0(y[1]),
        .I1(yPlayer),
        .I2(A[0]),
        .O(addr_bone_reg_i_63_n_1));
  LUT4 #(
    .INIT(16'h0960)) 
    addr_bone_reg_i_69
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(addr_bone_reg_i_5_0[5]),
        .I2(addr_bone_reg_i_5_0[4]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .O(\h_count_reg_reg[5]_0 [2]));
  CARRY4 addr_bone_reg_i_7
       (.CI(addr_bone_reg_i_25_n_1),
        .CO({NLW_addr_bone_reg_i_7_CO_UNCONNECTED[3:1],\v_count_reg_reg[9]_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,addr_bone_reg_i_26_n_1}),
        .O(NLW_addr_bone_reg_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,addr_bone_reg_i_27_n_1}));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_70
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(addr_bone_reg_i_5_0[2]),
        .I2(addr_bone_reg_i_5_0[3]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(\h_count_reg_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_bone_reg_i_71
       (.I0(D[0]),
        .I1(addr_bone_reg_i_5_0[0]),
        .I2(addr_bone_reg_i_5_0[1]),
        .I3(\h_count_reg_reg[4]_1 [0]),
        .O(\h_count_reg_reg[5]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_bone_reg_i_73
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(yPlayer),
        .O(addr_bone_reg_i_73_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    addr_bone_reg_i_74
       (.I0(y[2]),
        .O(addr_bone_reg_i_74_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    addr_bone_reg_i_75
       (.I0(y[1]),
        .O(addr_bone_reg_i_75_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    addr_bone_reg_i_77
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(yPlayer),
        .O(addr_bone_reg_i_77_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    addr_bone_reg_i_78
       (.I0(y[2]),
        .O(addr_bone_reg_i_78_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    addr_bone_reg_i_79
       (.I0(y[1]),
        .O(addr_bone_reg_i_79_n_1));
  LUT3 #(
    .INIT(8'hE8)) 
    addr_bone_reg_i_9
       (.I0(addr_bone_reg_i_33_n_7),
        .I1(addr_bone_reg_2),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .O(addr_bone_reg_i_9_n_1));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \addr_burger[4]_i_11 
       (.I0(\h_count_reg_reg[9]_3 ),
        .I1(\v_count_reg_reg[8]_2 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\h_count_reg_reg[8]_1 ),
        .I4(A[0]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_burger[4]_i_11_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_burger[4]_i_12 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_burger[4]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_burger[4]_i_13 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_burger[4]_i_13_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_burger[4]_i_14 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_burger[4]_i_14_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[4]_i_5 
       (.I0(\h_count_reg_reg[9]_3 ),
        .I1(\v_count_reg_reg[8]_2 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\h_count_reg_reg[8]_1 ),
        .O(\ps/data127_out ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_burger[4]_i_9 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[4]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \addr_burger[7]_i_1 
       (.I0(\addr_burger[7]_i_3_n_1 ),
        .I1(\addr_burger[7]_i_4_n_1 ),
        .I2(\addr_burger[4]_i_5_0 ),
        .I3(addr_bone_reg),
        .I4(\addr_burger_reg[7] ),
        .I5(\h_count_reg_reg[8]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_burger[7]_i_10 
       (.I0(\addr_burger_reg[7]_i_31_n_6 ),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_burger[7]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_100 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_burger[7]_i_100_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_101 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_burger[7]_i_101_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_102 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_burger[7]_i_102_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_103 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_burger[7]_i_103_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_104 
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_burger[7]_i_104_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_105 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_105_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_106 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_106_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_107 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_107_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_108 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_108_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_110 
       (.I0(y[8]),
        .I1(y[9]),
        .O(\addr_burger[7]_i_110_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_111 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_burger[7]_i_111_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_113 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_burger[7]_i_113_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_114 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_114_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_116 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_burger[7]_i_116_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_118 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_118_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_119 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_burger[7]_i_119_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_120 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_burger[7]_i_120_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_121 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_burger[7]_i_121_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_122 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_122_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_123 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_burger[7]_i_123_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_124 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_124_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_125 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_125_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_126 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_126_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_127 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_127_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_128 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_128_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_burger[7]_i_129 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_129_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF007F)) 
    \addr_burger[7]_i_13 
       (.I0(\addr_heart[7]_i_20_n_1 ),
        .I1(y[6]),
        .I2(DI),
        .I3(\addr_kebab[12]_i_13_n_1 ),
        .I4(\addr_burger[7]_i_32_n_1 ),
        .I5(\addr_burger[7]_i_33_n_1 ),
        .O(\addr_burger[7]_i_13_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_burger[7]_i_130 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_130_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_burger[7]_i_131 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_burger[7]_i_131_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_burger[7]_i_132 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_burger[7]_i_132_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_burger[7]_i_133 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_burger[7]_i_133_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_134 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_burger[7]_i_134_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_135 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_135_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_136 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_136_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_137 
       (.I0(DI),
        .I1(y[6]),
        .O(\addr_burger[7]_i_137_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_138 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_burger[7]_i_138_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_139 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .O(\addr_burger[7]_i_139_n_1 ));
  LUT6 #(
    .INIT(64'h0000000008004C44)) 
    \addr_burger[7]_i_14 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .I2(\addr_burger[7]_i_34_n_1 ),
        .I3(\addr_burger[7]_i_35_n_1 ),
        .I4(\addr_burger[7]_i_36_n_1 ),
        .I5(\addr_burger[7]_i_37_n_1 ),
        .O(\addr_burger[7]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_140 
       (.I0(y[1]),
        .I1(A[0]),
        .O(\addr_burger[7]_i_140_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_141 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_burger[7]_i_141_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_142 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_burger[7]_i_142_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_143 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_143_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_144 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_burger[7]_i_144_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_145 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_burger[7]_i_145_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_146 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_burger[7]_i_146_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_147 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_burger[7]_i_147_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_148 
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_burger[7]_i_148_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_149 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_149_n_1 ));
  LUT6 #(
    .INIT(64'h0202022202020202)) 
    \addr_burger[7]_i_15 
       (.I0(\addr_burger[7]_i_38_n_1 ),
        .I1(\addr_burger[7]_i_39_n_1 ),
        .I2(\addr_burger[7]_i_40_n_1 ),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\addr_burger[7]_i_41_n_1 ),
        .O(\addr_burger[7]_i_15_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_150 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_150_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_151 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_151_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_152 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_152_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_153 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_burger[7]_i_153_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_154 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_burger[7]_i_154_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_155 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_burger[7]_i_155_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_156 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_156_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_157 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_burger[7]_i_157_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_158 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_158_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_159 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_159_n_1 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFFFDFDF)) 
    \addr_burger[7]_i_16 
       (.I0(\ps/data436_in ),
        .I1(\addr_burger[7]_i_43_n_1 ),
        .I2(\addr_burger[7]_i_44_n_1 ),
        .I3(y[1]),
        .I4(\addr_burger[7]_i_45_n_1 ),
        .I5(\addr_burger[7]_i_46_n_1 ),
        .O(\addr_burger[7]_i_16_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_160 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_160_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_161 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_161_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_162 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_162_n_1 ));
  LUT6 #(
    .INIT(64'h44444000FFFFFFFF)) 
    \addr_burger[7]_i_17 
       (.I0(addr_milk_reg_i_16_n_1),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(addr_hi_reg_0_i_9_n_1),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(addr_hi_reg_0_i_8_n_1),
        .O(\addr_burger[7]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'h2000000000000200)) 
    \addr_burger[7]_i_18 
       (.I0(\addr_burger[7]_i_47_n_1 ),
        .I1(\addr_burger[7]_i_48_n_1 ),
        .I2(y[4]),
        .I3(A[0]),
        .I4(y[1]),
        .I5(y[2]),
        .O(\addr_burger[7]_i_18_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[7]_i_23 
       (.I0(\ps/data31_in ),
        .I1(\ps/data43_in ),
        .I2(\ps/data223_in ),
        .I3(\ps/data422_in ),
        .O(\addr_burger[7]_i_23_n_1 ));
  LUT6 #(
    .INIT(64'h000000007F775555)) 
    \addr_burger[7]_i_24 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\addr_burger[7]_i_63_n_1 ),
        .I4(\addr_burger[7]_i_64_n_1 ),
        .I5(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_24_n_1 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \addr_burger[7]_i_25 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_burger[7]_i_25_n_1 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \addr_burger[7]_i_26 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(\h_count_reg_reg[4]_1 [0]),
        .I4(D[0]),
        .O(\addr_burger[7]_i_26_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_burger[7]_i_27 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_burger[7]_i_27_n_1 ));
  LUT6 #(
    .INIT(64'hFFEFEEEEAABABBBB)) 
    \addr_burger[7]_i_28 
       (.I0(\addr_kebab[12]_i_13_n_1 ),
        .I1(y[6]),
        .I2(\addr_burger[7]_i_65_n_1 ),
        .I3(\addr_burger[7]_i_66_n_1 ),
        .I4(y[5]),
        .I5(DI),
        .O(\addr_burger[7]_i_28_n_1 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \addr_burger[7]_i_3 
       (.I0(addr_bone_reg_0),
        .I1(\v_count_reg_reg[9]_2 ),
        .I2(\v_count_reg_reg[9]_1 ),
        .I3(\h_count_reg_reg[9]_2 ),
        .I4(\h_count_reg_reg[0]_0 ),
        .O(\addr_burger[7]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5554FFFF)) 
    \addr_burger[7]_i_32 
       (.I0(\addr_burger[7]_i_76_n_1 ),
        .I1(y[6]),
        .I2(y[5]),
        .I3(addr_hi_reg_0_i_6_n_1),
        .I4(\addr_burger[7]_i_41_n_1 ),
        .I5(y[9]),
        .O(\addr_burger[7]_i_32_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFDDD0FFFFDDDD)) 
    \addr_burger[7]_i_33 
       (.I0(\addr_burger[7]_i_35_n_1 ),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\addr_heart[7]_i_27_n_1 ),
        .O(\addr_burger[7]_i_33_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_34 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_burger[7]_i_34_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \addr_burger[7]_i_35 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(\h_count_reg_reg[7]_0 [1]),
        .I5(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_35_n_1 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \addr_burger[7]_i_36 
       (.I0(\addr_heart[7]_i_27_n_1 ),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_burger[7]_i_36_n_1 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDDDDDDFDD)) 
    \addr_burger[7]_i_37 
       (.I0(y[6]),
        .I1(\addr_burger[7]_i_77_n_1 ),
        .I2(y[4]),
        .I3(\addr_kebab[12]_i_23_n_1 ),
        .I4(y[2]),
        .I5(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_37_n_1 ));
  LUT6 #(
    .INIT(64'h0000000400040000)) 
    \addr_burger[7]_i_38 
       (.I0(\addr_burger[7]_i_78_n_1 ),
        .I1(DI),
        .I2(\v_count_reg_reg[3]_0 ),
        .I3(y[2]),
        .I4(y[6]),
        .I5(y[8]),
        .O(\addr_burger[7]_i_38_n_1 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFDF)) 
    \addr_burger[7]_i_39 
       (.I0(y[1]),
        .I1(A[0]),
        .I2(y[4]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\h_count_reg_reg[9]_1 [0]),
        .I5(addr_milk_reg_i_16_n_1),
        .O(\addr_burger[7]_i_39_n_1 ));
  LUT6 #(
    .INIT(64'h0000000002000202)) 
    \addr_burger[7]_i_4 
       (.I0(\addr_burger[7]_i_13_n_1 ),
        .I1(\addr_burger[7]_i_14_n_1 ),
        .I2(\addr_burger[7]_i_15_n_1 ),
        .I3(\addr_burger[7]_i_16_n_1 ),
        .I4(\addr_burger[7]_i_17_n_1 ),
        .I5(\addr_burger[7]_i_18_n_1 ),
        .O(\addr_burger[7]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_burger[7]_i_40 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_burger[7]_i_40_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_41 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_41_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFF7FFF7FF)) 
    \addr_burger[7]_i_43 
       (.I0(DI),
        .I1(y[8]),
        .I2(\addr_burger[7]_i_78_n_1 ),
        .I3(y[6]),
        .I4(\v_count_reg_reg[3]_0 ),
        .I5(y[4]),
        .O(\addr_burger[7]_i_43_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \addr_burger[7]_i_44 
       (.I0(A[0]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(y[4]),
        .O(\addr_burger[7]_i_44_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_45 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_45_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_46 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_burger[7]_i_46_n_1 ));
  LUT6 #(
    .INIT(64'hAAA2A0A0FFFFFFFF)) 
    \addr_burger[7]_i_47 
       (.I0(\addr_burger[7]_i_81_n_1 ),
        .I1(\addr_burger[7]_i_41_n_1 ),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(addr_hi_reg_0_i_8_n_1),
        .O(\addr_burger[7]_i_47_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF8FF)) 
    \addr_burger[7]_i_48 
       (.I0(\addr_burger[7]_i_34_n_1 ),
        .I1(\addr_burger[7]_i_40_n_1 ),
        .I2(\addr_heart[7]_i_30_n_1 ),
        .I3(y[6]),
        .I4(\h_count_reg_reg[9]_1 [1]),
        .I5(\addr_burger[7]_i_82_n_1 ),
        .O(\addr_burger[7]_i_48_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \addr_burger[7]_i_5 
       (.I0(\ps/data319_in ),
        .I1(\ps/data120_in ),
        .I2(\ps/data2 ),
        .I3(\ps/data30_in ),
        .I4(\addr_burger[7]_i_23_n_1 ),
        .I5(\ps/data127_out ),
        .O(\addr_burger[4]_i_5_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_50 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_50_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_52 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_burger[7]_i_52_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_54 
       (.I0(y[8]),
        .I1(y[9]),
        .O(\addr_burger[7]_i_54_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_55 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_burger[7]_i_55_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_57 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_burger[7]_i_57_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_58 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_58_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_burger[7]_i_63 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_63_n_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \addr_burger[7]_i_64 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_64_n_1 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \addr_burger[7]_i_65 
       (.I0(y[2]),
        .I1(y[1]),
        .I2(A[0]),
        .O(\addr_burger[7]_i_65_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_66 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[4]),
        .O(\addr_burger[7]_i_66_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_68 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_burger[7]_i_68_n_1 ));
  LUT6 #(
    .INIT(64'h0000000011111011)) 
    \addr_burger[7]_i_7 
       (.I0(\addr_burger[7]_i_24_n_1 ),
        .I1(\addr_burger[7]_i_25_n_1 ),
        .I2(\addr_burger[7]_i_26_n_1 ),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\addr_burger[7]_i_27_n_1 ),
        .I5(\addr_burger[7]_i_28_n_1 ),
        .O(\h_count_reg_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_70 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_70_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_burger[7]_i_71 
       (.I0(\h_count_reg_reg[8]_1 ),
        .I1(\v_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\ps/p_4_in [5]),
        .I5(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_71_n_1 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \addr_burger[7]_i_72 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\v_count_reg_reg[9]_3 ),
        .I4(\h_count_reg_reg[8]_1 ),
        .I5(\ps/p_4_in [5]),
        .O(\addr_burger[7]_i_72_n_1 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \addr_burger[7]_i_73 
       (.I0(\ps/p_4_in [6]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\ps/data127_out ),
        .I4(\ps/p_4_in [7]),
        .O(\addr_burger[7]_i_73_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_burger[7]_i_74 
       (.I0(\addr_burger[7]_i_71_n_1 ),
        .I1(\ps/p_4_in [6]),
        .I2(\ps/data127_out ),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_burger[7]_i_74_n_1 ));
  LUT4 #(
    .INIT(16'h6669)) 
    \addr_burger[7]_i_75 
       (.I0(\ps/p_4_in [5]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\ps/data127_out ),
        .I3(A[0]),
        .O(\addr_burger[7]_i_75_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_burger[7]_i_76 
       (.I0(DI),
        .I1(y[8]),
        .O(\addr_burger[7]_i_76_n_1 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \addr_burger[7]_i_77 
       (.I0(y[9]),
        .I1(y[5]),
        .I2(y[8]),
        .I3(DI),
        .O(\addr_burger[7]_i_77_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_78 
       (.I0(y[5]),
        .I1(y[9]),
        .O(\addr_burger[7]_i_78_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_80 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_burger[7]_i_80_n_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \addr_burger[7]_i_81 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_81_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \addr_burger[7]_i_82 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(DI),
        .I2(y[8]),
        .I3(y[5]),
        .I4(y[9]),
        .O(\addr_burger[7]_i_82_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_83 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_83_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_84 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_burger[7]_i_84_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_85 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_burger[7]_i_85_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_86 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_burger[7]_i_86_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_87 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_burger[7]_i_87_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_88 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_burger[7]_i_88_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_89 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_burger[7]_i_89_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_burger[7]_i_90 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_burger[7]_i_90_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_91 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_91_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_92 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_burger[7]_i_92_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_93 
       (.I0(DI),
        .I1(y[6]),
        .O(\addr_burger[7]_i_93_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_94 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_burger[7]_i_94_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_95 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .O(\addr_burger[7]_i_95_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_burger[7]_i_96 
       (.I0(y[1]),
        .I1(A[0]),
        .O(\addr_burger[7]_i_96_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_97 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_burger[7]_i_97_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_98 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_burger[7]_i_98_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_burger[7]_i_99 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_burger[7]_i_99_n_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\addr_burger_reg[4]_i_1_n_1 ,\NLW_addr_burger_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(C[0]),
        .DI({\addr_burger_reg[4] ,\ps/data127_out }),
        .O(D[4:1]),
        .S({\addr_burger_reg[4]_0 ,\addr_burger[4]_i_9_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[4]_i_10 
       (.CI(1'b0),
        .CO({\addr_burger_reg[4]_i_10_n_1 ,\NLW_addr_burger_reg[4]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(D[0]),
        .DI(\h_count_reg_reg[4]_1 ),
        .O(\h_count_reg_reg[0]_4 ),
        .S({\addr_burger[4]_i_11_n_1 ,\addr_burger[4]_i_12_n_1 ,\addr_burger[4]_i_13_n_1 ,\addr_burger[4]_i_14_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_109 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_109_n_1 ,\NLW_addr_burger_reg[7]_i_109_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_burger[7]_i_137_n_1 ,\addr_burger[7]_i_138_n_1 ,\addr_burger[7]_i_139_n_1 ,\addr_burger[7]_i_140_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_109_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_141_n_1 ,\addr_burger[7]_i_142_n_1 ,\addr_burger[7]_i_143_n_1 ,\addr_burger[7]_i_144_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_112 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_112_n_1 ,\NLW_addr_burger_reg[7]_i_112_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_burger[7]_i_145_n_1 ,\addr_burger[7]_i_146_n_1 ,\addr_burger[7]_i_147_n_1 ,\addr_burger[7]_i_148_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_112_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_149_n_1 ,\addr_burger[7]_i_150_n_1 ,\addr_burger[7]_i_151_n_1 ,\addr_burger[7]_i_152_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_115 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_115_n_1 ,\NLW_addr_burger_reg[7]_i_115_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_burger[7]_i_153_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_115_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_154_n_1 ,\addr_burger[7]_i_155_n_1 ,\addr_burger[7]_i_156_n_1 ,\addr_burger[7]_i_157_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_117 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_117_n_1 ,\NLW_addr_burger_reg[7]_i_117_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_burger[7]_i_158_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_117_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_159_n_1 ,\addr_burger[7]_i_160_n_1 ,\addr_burger[7]_i_161_n_1 ,\addr_burger[7]_i_162_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_19 
       (.CI(\addr_burger_reg[7]_i_49_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_19_CO_UNCONNECTED [3:1],\ps/data319_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_19_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_50_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_2 
       (.CI(\addr_burger_reg[4]_i_1_n_1 ),
        .CO(\NLW_addr_burger_reg[7]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\addr_burger_reg[7]_0 }),
        .O({\NLW_addr_burger_reg[7]_i_2_O_UNCONNECTED [3],D[7:5]}),
        .S({1'b0,\addr_burger[7]_i_10_n_1 ,\addr_burger_reg[7]_1 }));
  CARRY4 \addr_burger_reg[7]_i_20 
       (.CI(\addr_burger_reg[7]_i_51_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_20_CO_UNCONNECTED [3:1],\ps/data120_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_20_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_52_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_21 
       (.CI(\addr_burger_reg[7]_i_53_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_21_CO_UNCONNECTED [3:1],\ps/data2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\addr_burger[7]_i_54_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_21_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_55_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_22 
       (.CI(\addr_burger_reg[7]_i_56_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_22_CO_UNCONNECTED [3:1],\ps/data30_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\addr_burger[7]_i_57_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_22_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_58_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_29 
       (.CI(\addr_burger_reg[7]_i_67_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_29_CO_UNCONNECTED [3:1],\v_count_reg_reg[9]_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_29_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_68_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_30 
       (.CI(\addr_burger_reg[7]_i_69_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_30_CO_UNCONNECTED [3:1],\h_count_reg_reg[8]_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_30_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_70_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_31 
       (.CI(\addr_burger_reg[4]_i_10_n_1 ),
        .CO(\NLW_addr_burger_reg[7]_i_31_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\addr_burger[7]_i_71_n_1 ,\addr_burger[7]_i_72_n_1 }),
        .O({\NLW_addr_burger_reg[7]_i_31_O_UNCONNECTED [3],\addr_burger_reg[7]_i_31_n_6 ,\h_count_reg_reg[0]_5 }),
        .S({1'b0,\addr_burger[7]_i_73_n_1 ,\addr_burger[7]_i_74_n_1 ,\addr_burger[7]_i_75_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_42 
       (.CI(\addr_burger_reg[7]_i_79_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_42_CO_UNCONNECTED [3:1],\ps/data436_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_42_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_80_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_49 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_49_n_1 ,\NLW_addr_burger_reg[7]_i_49_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_burger[7]_i_83_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_49_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_84_n_1 ,\addr_burger[7]_i_85_n_1 ,\addr_burger[7]_i_86_n_1 ,\addr_burger[7]_i_87_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_51 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_51_n_1 ,\NLW_addr_burger_reg[7]_i_51_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_burger[7]_i_88_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_51_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_89_n_1 ,\addr_burger[7]_i_90_n_1 ,\addr_burger[7]_i_91_n_1 ,\addr_burger[7]_i_92_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_53 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_53_n_1 ,\NLW_addr_burger_reg[7]_i_53_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_burger[7]_i_93_n_1 ,\addr_burger[7]_i_94_n_1 ,\addr_burger[7]_i_95_n_1 ,\addr_burger[7]_i_96_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_53_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_97_n_1 ,\addr_burger[7]_i_98_n_1 ,\addr_burger[7]_i_99_n_1 ,\addr_burger[7]_i_100_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_56 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_56_n_1 ,\NLW_addr_burger_reg[7]_i_56_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_burger[7]_i_101_n_1 ,\addr_burger[7]_i_102_n_1 ,\addr_burger[7]_i_103_n_1 ,\addr_burger[7]_i_104_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_56_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_105_n_1 ,\addr_burger[7]_i_106_n_1 ,\addr_burger[7]_i_107_n_1 ,\addr_burger[7]_i_108_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_59 
       (.CI(\addr_burger_reg[7]_i_109_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_59_CO_UNCONNECTED [3:1],\ps/data31_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\addr_burger[7]_i_110_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_59_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_111_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_60 
       (.CI(\addr_burger_reg[7]_i_112_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_60_CO_UNCONNECTED [3:1],\ps/data43_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\addr_burger[7]_i_113_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_60_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_114_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_61 
       (.CI(\addr_burger_reg[7]_i_115_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_61_CO_UNCONNECTED [3:1],\ps/data223_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_61_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_116_n_1 }));
  CARRY4 \addr_burger_reg[7]_i_62 
       (.CI(\addr_burger_reg[7]_i_117_n_1 ),
        .CO({\NLW_addr_burger_reg[7]_i_62_CO_UNCONNECTED [3:1],\ps/data422_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_62_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_burger[7]_i_118_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_67 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_67_n_1 ,\NLW_addr_burger_reg[7]_i_67_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_burger[7]_i_119_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_67_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_120_n_1 ,\addr_burger[7]_i_121_n_1 ,\addr_burger[7]_i_122_n_1 ,\addr_burger[7]_i_123_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_69 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_69_n_1 ,\NLW_addr_burger_reg[7]_i_69_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_burger[7]_i_124_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_burger_reg[7]_i_69_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_125_n_1 ,\addr_burger[7]_i_126_n_1 ,\addr_burger[7]_i_127_n_1 ,\addr_burger[7]_i_128_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_burger_reg[7]_i_79 
       (.CI(1'b0),
        .CO({\addr_burger_reg[7]_i_79_n_1 ,\NLW_addr_burger_reg[7]_i_79_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_burger[7]_i_129_n_1 ,\addr_burger[7]_i_130_n_1 ,\addr_burger[7]_i_131_n_1 ,\addr_burger[7]_i_132_n_1 }),
        .O(\NLW_addr_burger_reg[7]_i_79_O_UNCONNECTED [3:0]),
        .S({\addr_burger[7]_i_133_n_1 ,\addr_burger[7]_i_134_n_1 ,\addr_burger[7]_i_135_n_1 ,\addr_burger[7]_i_136_n_1 }));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_heart[3]_i_2 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_heart[3]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_heart[7]_i_10 
       (.I0(\addr_heart[7]_i_7_n_1 ),
        .I1(y[1]),
        .I2(y[2]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_heart[7]_i_10_n_1 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \addr_heart[7]_i_11 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(y[1]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_heart[7]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_heart[7]_i_12 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(A[0]),
        .O(\addr_heart[7]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h0000888800F00000)) 
    \addr_heart[7]_i_14 
       (.I0(\addr_heart[7]_i_27_n_1 ),
        .I1(\addr_heart[7]_i_28_n_1 ),
        .I2(\addr_burger[7]_i_35_n_1 ),
        .I3(\addr_burger[7]_i_34_n_1 ),
        .I4(D[0]),
        .I5(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_heart[7]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h0000040B00000000)) 
    \addr_heart[7]_i_15 
       (.I0(y[1]),
        .I1(\addr_burger[7]_i_45_n_1 ),
        .I2(y[5]),
        .I3(y[4]),
        .I4(\addr_heart[7]_i_29_n_1 ),
        .I5(y[6]),
        .O(\addr_heart[7]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \addr_heart[7]_i_16 
       (.I0(\addr_heart[7]_i_30_n_1 ),
        .I1(y[9]),
        .I2(y[5]),
        .I3(DI),
        .I4(\h_count_reg_reg[9]_1 [1]),
        .I5(\addr_heart[7]_i_31_n_1 ),
        .O(\addr_heart[7]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hFFE0FFFFFFFFE0FF)) 
    \addr_heart[7]_i_17 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(addr_hi_reg_0_i_9_n_1),
        .I2(\addr_burger[7]_i_40_n_1 ),
        .I3(y[1]),
        .I4(A[0]),
        .I5(y[4]),
        .O(\addr_heart[7]_i_17_n_1 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \addr_heart[7]_i_18 
       (.I0(y[8]),
        .I1(y[9]),
        .I2(DI),
        .I3(y[6]),
        .O(\addr_heart[7]_i_18_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \addr_heart[7]_i_19 
       (.I0(y[1]),
        .I1(y[2]),
        .I2(\v_count_reg_reg[3]_0 ),
        .I3(y[5]),
        .I4(y[4]),
        .O(\addr_heart[7]_i_19_n_1 ));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \addr_heart[7]_i_20 
       (.I0(y[5]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[2]),
        .I3(y[1]),
        .I4(y[4]),
        .O(\addr_heart[7]_i_20_n_1 ));
  LUT4 #(
    .INIT(16'h007F)) 
    \addr_heart[7]_i_21 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_heart[7]_i_21_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \addr_heart[7]_i_22 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_heart[7]_i_22_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \addr_heart[7]_i_23 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_heart[7]_i_23_n_1 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \addr_heart[7]_i_25 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\addr_heart_reg[7]_i_13_0 [1]),
        .I3(\addr_heart_reg[7]_i_13_1 ),
        .O(\addr_heart[7]_i_25_n_1 ));
  LUT4 #(
    .INIT(16'h5104)) 
    \addr_heart[7]_i_26 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\addr_heart_reg[7]_i_13_1 ),
        .I2(\addr_heart_reg[7]_i_13_0 [1]),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_heart[7]_i_26_n_1 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \addr_heart[7]_i_27 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_heart[7]_i_27_n_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \addr_heart[7]_i_28 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_heart[7]_i_28_n_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \addr_heart[7]_i_29 
       (.I0(DI),
        .I1(y[9]),
        .I2(y[8]),
        .O(\addr_heart[7]_i_29_n_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \addr_heart[7]_i_30 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_heart[7]_i_30_n_1 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr_heart[7]_i_31 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .I2(y[6]),
        .I3(y[8]),
        .O(\addr_heart[7]_i_31_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_heart[7]_i_35 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\addr_heart_reg[7]_i_13_0 [0]),
        .O(\h_count_reg_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \addr_heart[7]_i_39 
       (.I0(\addr_heart_reg[7]_i_13_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(D[0]),
        .O(\h_count_reg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hE0E0E0FFC0C0C0C0)) 
    \addr_heart[7]_i_4 
       (.I0(\ps/data4161_in ),
        .I1(\addr_heart[7]_i_14_n_1 ),
        .I2(\addr_heart[7]_i_15_n_1 ),
        .I3(\addr_heart[7]_i_16_n_1 ),
        .I4(\addr_heart[7]_i_17_n_1 ),
        .I5(\addr_burger[7]_i_17_n_1 ),
        .O(\h_count_reg_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \addr_heart[7]_i_5 
       (.I0(\addr_heart[7]_i_18_n_1 ),
        .I1(\addr_heart[7]_i_19_n_1 ),
        .I2(\addr_heart[7]_i_20_n_1 ),
        .I3(\addr_heart[7]_i_21_n_1 ),
        .I4(\addr_heart[7]_i_22_n_1 ),
        .I5(\addr_heart[7]_i_23_n_1 ),
        .O(\v_count_reg_reg[8]_1 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr_heart[7]_i_7 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(y[1]),
        .O(\addr_heart[7]_i_7_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_heart[7]_i_8 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_heart[7]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h93366CC9)) 
    \addr_heart[7]_i_9 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[2]),
        .I3(y[1]),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_heart[7]_i_9_n_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \addr_heart_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_heart_reg[3]_i_1_n_1 ,\NLW_addr_heart_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\h_count_reg_reg[4]_1 [0],1'b0}),
        .O(\h_count_reg_reg[4]_4 [3:0]),
        .S({\h_count_reg_reg[4]_1 [2:1],\addr_heart[3]_i_2_n_1 ,D[0]}));
  CARRY4 \addr_heart_reg[7]_i_13 
       (.CI(\addr_heart[7]_i_4_0 ),
        .CO({\NLW_addr_heart_reg[7]_i_13_CO_UNCONNECTED [3:1],\ps/data4161_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\addr_heart[7]_i_25_n_1 }),
        .O(\NLW_addr_heart_reg[7]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_heart[7]_i_26_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_heart_reg[7]_i_3 
       (.CI(\addr_heart_reg[3]_i_1_n_1 ),
        .CO(\NLW_addr_heart_reg[7]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\addr_heart[7]_i_7_n_1 ,\h_count_reg_reg[4]_1 [3],\addr_heart[7]_i_8_n_1 }),
        .O(\h_count_reg_reg[4]_4 [7:4]),
        .S({\addr_heart[7]_i_9_n_1 ,\addr_heart[7]_i_10_n_1 ,\addr_heart[7]_i_11_n_1 ,\addr_heart[7]_i_12_n_1 }));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    addr_hi0_i_1
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .I4(\h_count_reg_reg[9]_1 [0]),
        .I5(addr_hi0_i_11_n_1),
        .O(C[9]));
  LUT1 #(
    .INIT(2'h1)) 
    addr_hi0_i_10
       (.I0(D[0]),
        .O(C[0]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    addr_hi0_i_11
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(D[0]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .O(addr_hi0_i_11_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    addr_hi0_i_12
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\h_count_reg_reg[9]_1 [0]),
        .I5(addr_hi0_i_11_n_1),
        .O(addr_hi0_i_12_n_1));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    addr_hi0_i_2
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .I5(addr_hi0_i_11_n_1),
        .O(C[8]));
  LUT4 #(
    .INIT(16'hAA6A)) 
    addr_hi0_i_3
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .I3(addr_hi0_i_11_n_1),
        .O(C[7]));
  LUT3 #(
    .INIT(8'hA6)) 
    addr_hi0_i_4
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(addr_hi0_i_11_n_1),
        .O(C[6]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    addr_hi0_i_5
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .I5(addr_hi0_i_11_n_1),
        .O(C[5]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    addr_hi0_i_6
       (.I0(addr_hi0_i_12_n_1),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(D[0]),
        .I4(\h_count_reg_reg[4]_1 [0]),
        .I5(\h_count_reg_reg[4]_1 [2]),
        .O(C[4]));
  LUT5 #(
    .INIT(32'h28888888)) 
    addr_hi0_i_7
       (.I0(addr_hi0_i_12_n_1),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .I3(D[0]),
        .I4(\h_count_reg_reg[4]_1 [1]),
        .O(C[3]));
  LUT4 #(
    .INIT(16'h2888)) 
    addr_hi0_i_8
       (.I0(addr_hi0_i_12_n_1),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(D[0]),
        .I3(\h_count_reg_reg[4]_1 [0]),
        .O(C[2]));
  LUT3 #(
    .INIT(8'h28)) 
    addr_hi0_i_9
       (.I0(addr_hi0_i_12_n_1),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(D[0]),
        .O(C[1]));
  LUT6 #(
    .INIT(64'h0000000055557757)) 
    addr_hi1_i_1
       (.I0(y[8]),
        .I1(DI),
        .I2(y[5]),
        .I3(addr_hi1_i_11_n_1),
        .I4(y[6]),
        .I5(y[9]),
        .O(A[10]));
  LUT1 #(
    .INIT(2'h1)) 
    addr_hi1_i_10
       (.I0(y[1]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'h0155)) 
    addr_hi1_i_11
       (.I0(y[4]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(\v_count_reg_reg[3]_0 ),
        .O(addr_hi1_i_11_n_1));
  LUT6 #(
    .INIT(64'h9999999995959995)) 
    addr_hi1_i_2
       (.I0(y[9]),
        .I1(y[8]),
        .I2(DI),
        .I3(y[5]),
        .I4(addr_hi1_i_11_n_1),
        .I5(y[6]),
        .O(A[9]));
  LUT5 #(
    .INIT(32'h55556566)) 
    addr_hi1_i_3
       (.I0(y[8]),
        .I1(y[6]),
        .I2(addr_hi1_i_11_n_1),
        .I3(y[5]),
        .I4(DI),
        .O(A[8]));
  LUT4 #(
    .INIT(16'hAA59)) 
    addr_hi1_i_4
       (.I0(DI),
        .I1(y[5]),
        .I2(addr_hi1_i_11_n_1),
        .I3(y[6]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hAAA9999955555555)) 
    addr_hi1_i_5
       (.I0(y[6]),
        .I1(y[4]),
        .I2(y[1]),
        .I3(y[2]),
        .I4(\v_count_reg_reg[3]_0 ),
        .I5(y[5]),
        .O(A[6]));
  LUT5 #(
    .INIT(32'h5555666A)) 
    addr_hi1_i_6
       (.I0(y[5]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[2]),
        .I3(y[1]),
        .I4(y[4]),
        .O(A[5]));
  LUT4 #(
    .INIT(16'hA955)) 
    addr_hi1_i_7
       (.I0(y[4]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(\v_count_reg_reg[3]_0 ),
        .O(A[4]));
  LUT3 #(
    .INIT(8'h56)) 
    addr_hi1_i_8
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .I2(y[1]),
        .O(A[3]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_hi1_i_9
       (.I0(y[2]),
        .I1(y[1]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hA8)) 
    addr_hi_reg_0_i_10
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .O(addr_hi_reg_0_i_10_n_1));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    addr_hi_reg_0_i_2
       (.I0(addr_hi_reg_0_i_3_n_1),
        .I1(addr_hi_reg_0_i_4_n_1),
        .I2(addr_hi_reg_0_i_5_n_1),
        .I3(addr_hi_reg_0_i_6_n_1),
        .I4(y[6]),
        .I5(addr_hi_reg_0_i_7_n_1),
        .O(CEP));
  LUT4 #(
    .INIT(16'h0051)) 
    addr_hi_reg_0_i_3
       (.I0(DI),
        .I1(y[5]),
        .I2(addr_hi1_i_11_n_1),
        .I3(y[6]),
        .O(addr_hi_reg_0_i_3_n_1));
  LUT5 #(
    .INIT(32'h80808000)) 
    addr_hi_reg_0_i_4
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(addr_milk_reg_i_13_n_1),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .O(addr_hi_reg_0_i_4_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    addr_hi_reg_0_i_5
       (.I0(y[8]),
        .I1(y[9]),
        .I2(\v_count_reg[9]_i_5_n_1 ),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(DI),
        .I5(\data_reg[5]_7 ),
        .O(addr_hi_reg_0_i_5_n_1));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    addr_hi_reg_0_i_6
       (.I0(y[4]),
        .I1(A[0]),
        .I2(y[1]),
        .I3(y[2]),
        .I4(\v_count_reg_reg[3]_0 ),
        .O(addr_hi_reg_0_i_6_n_1));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    addr_hi_reg_0_i_7
       (.I0(addr_hi_reg_0_i_8_n_1),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .I4(addr_hi_reg_0_i_9_n_1),
        .I5(addr_hi_reg_0_i_10_n_1),
        .O(addr_hi_reg_0_i_7_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    addr_hi_reg_0_i_8
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(addr_hi_reg_0_i_8_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    addr_hi_reg_0_i_9
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(addr_hi_reg_0_i_9_n_1));
  LUT4 #(
    .INIT(16'hA888)) 
    \addr_kebab[12]_i_12 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_kebab[12]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_kebab[12]_i_13 
       (.I0(y[8]),
        .I1(y[9]),
        .O(\addr_kebab[12]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'h1500FFFF15001500)) 
    \addr_kebab[12]_i_14 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\addr_lolipop[11]_i_11_n_1 ),
        .I3(\addr_burger[7]_i_64_n_1 ),
        .I4(\addr_kebab[12]_i_20_n_1 ),
        .I5(\addr_kebab[12]_i_21_n_1 ),
        .O(\addr_kebab[12]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'hA888A888A8A8A888)) 
    \addr_kebab[12]_i_15 
       (.I0(DI),
        .I1(\addr_kebab[12]_i_22_n_1 ),
        .I2(y[4]),
        .I3(\v_count_reg_reg[3]_0 ),
        .I4(y[2]),
        .I5(\addr_kebab[12]_i_23_n_1 ),
        .O(\addr_kebab[12]_i_15_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[12]_i_18 
       (.I0(\ps/data31_in ),
        .I1(\ps/data43_in ),
        .I2(\ps/data22_in ),
        .I3(\ps/data4 ),
        .O(\addr_kebab[12]_i_18_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_kebab[12]_i_19 
       (.I0(\h_count_reg_reg[9]_3 ),
        .I1(\v_count_reg_reg[8]_2 ),
        .I2(\h_count_reg_reg[8]_2 ),
        .I3(\v_count_reg_reg[9]_4 ),
        .O(\ps/data19_out ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_kebab[12]_i_20 
       (.I0(DI),
        .I1(y[6]),
        .O(\addr_kebab[12]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'h00011111FFFFFFFF)) 
    \addr_kebab[12]_i_21 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[4]),
        .I2(y[1]),
        .I3(A[0]),
        .I4(y[2]),
        .I5(y[5]),
        .O(\addr_kebab[12]_i_21_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_kebab[12]_i_22 
       (.I0(y[5]),
        .I1(y[6]),
        .O(\addr_kebab[12]_i_22_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_23 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_kebab[12]_i_23_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_25 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_kebab[12]_i_25_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_27 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_kebab[12]_i_27_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000000D0)) 
    \addr_kebab[12]_i_3 
       (.I0(\addr_kebab[12]_i_12_n_1 ),
        .I1(\addr_burger[7]_i_27_n_1 ),
        .I2(\addr_lolipop[11]_i_14_n_1 ),
        .I3(\addr_kebab[12]_i_13_n_1 ),
        .I4(\addr_kebab[12]_i_14_n_1 ),
        .I5(\addr_kebab[12]_i_15_n_1 ),
        .O(\h_count_reg_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_kebab[12]_i_30 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_kebab[12]_i_30_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_kebab[12]_i_31 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_kebab[12]_i_31_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_kebab[12]_i_32 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_kebab[12]_i_32_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_33 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_kebab[12]_i_33_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_kebab[12]_i_34 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_kebab[12]_i_34_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_35 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_kebab[12]_i_35_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_kebab[12]_i_36 
       (.I0(DI),
        .O(\addr_kebab[12]_i_36_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_kebab[12]_i_37 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_kebab[12]_i_37_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_kebab[12]_i_38 
       (.I0(DI),
        .I1(y[6]),
        .O(\addr_kebab[12]_i_38_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_39 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_kebab[12]_i_39_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_kebab[12]_i_40 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .O(\addr_kebab[12]_i_40_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_41 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_kebab[12]_i_41_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_43 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_kebab[12]_i_43_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_45 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_kebab[12]_i_45_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_kebab[12]_i_46 
       (.I0(DI),
        .O(\addr_kebab[12]_i_46_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_kebab[12]_i_47 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_kebab[12]_i_47_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_kebab[12]_i_48 
       (.I0(DI),
        .I1(y[6]),
        .O(\addr_kebab[12]_i_48_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_49 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_kebab[12]_i_49_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \addr_kebab[12]_i_5 
       (.I0(\ps/data3__3 ),
        .I1(\ps/data1 ),
        .I2(\ps/data2 ),
        .I3(\ps/data30_in ),
        .I4(\addr_kebab[12]_i_18_n_1 ),
        .I5(\ps/data19_out ),
        .O(\addr_kebab[12]_i_19_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_kebab[12]_i_50 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .O(\addr_kebab[12]_i_50_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_51 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_kebab[12]_i_51_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_kebab[12]_i_52 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_kebab[12]_i_52_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_kebab[12]_i_53 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_kebab[12]_i_53_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_kebab[12]_i_54 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_kebab[12]_i_54_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_55 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_kebab[12]_i_55_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_kebab[12]_i_56 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_kebab[12]_i_56_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_kebab[12]_i_57 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_kebab[12]_i_57_n_1 ));
  CARRY4 \addr_kebab_reg[12]_i_16 
       (.CI(\addr_kebab_reg[12]_i_24_n_1 ),
        .CO({\NLW_addr_kebab_reg[12]_i_16_CO_UNCONNECTED [3:1],\ps/data3__3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_16_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_kebab[12]_i_25_n_1 }));
  CARRY4 \addr_kebab_reg[12]_i_17 
       (.CI(\addr_kebab_reg[12]_i_26_n_1 ),
        .CO({\NLW_addr_kebab_reg[12]_i_17_CO_UNCONNECTED [3:1],\ps/data1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_17_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_kebab[12]_i_27_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[12]_i_24 
       (.CI(1'b0),
        .CO({\addr_kebab_reg[12]_i_24_n_1 ,\NLW_addr_kebab_reg[12]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_kebab[12]_i_30_n_1 ,1'b0,\addr_kebab[12]_i_31_n_1 ,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_24_O_UNCONNECTED [3:0]),
        .S({\addr_kebab[12]_i_32_n_1 ,\addr_kebab[12]_i_33_n_1 ,\addr_kebab[12]_i_34_n_1 ,\addr_kebab[12]_i_35_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[12]_i_26 
       (.CI(1'b0),
        .CO({\addr_kebab_reg[12]_i_26_n_1 ,\NLW_addr_kebab_reg[12]_i_26_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_kebab[12]_i_36_n_1 ,1'b0,\addr_kebab[12]_i_37_n_1 ,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_26_O_UNCONNECTED [3:0]),
        .S({\addr_kebab[12]_i_38_n_1 ,\addr_kebab[12]_i_39_n_1 ,\addr_kebab[12]_i_40_n_1 ,\addr_kebab[12]_i_41_n_1 }));
  CARRY4 \addr_kebab_reg[12]_i_28 
       (.CI(\addr_kebab_reg[12]_i_42_n_1 ),
        .CO({\NLW_addr_kebab_reg[12]_i_28_CO_UNCONNECTED [3:1],\ps/data22_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_28_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_kebab[12]_i_43_n_1 }));
  CARRY4 \addr_kebab_reg[12]_i_29 
       (.CI(\addr_kebab_reg[12]_i_44_n_1 ),
        .CO({\NLW_addr_kebab_reg[12]_i_29_CO_UNCONNECTED [3:1],\ps/data4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_29_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_kebab[12]_i_45_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[12]_i_42 
       (.CI(1'b0),
        .CO({\addr_kebab_reg[12]_i_42_n_1 ,\NLW_addr_kebab_reg[12]_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_kebab[12]_i_46_n_1 ,1'b0,\addr_kebab[12]_i_47_n_1 ,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_42_O_UNCONNECTED [3:0]),
        .S({\addr_kebab[12]_i_48_n_1 ,\addr_kebab[12]_i_49_n_1 ,\addr_kebab[12]_i_50_n_1 ,\addr_kebab[12]_i_51_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_kebab_reg[12]_i_44 
       (.CI(1'b0),
        .CO({\addr_kebab_reg[12]_i_44_n_1 ,\NLW_addr_kebab_reg[12]_i_44_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\addr_kebab[12]_i_52_n_1 ,1'b0,\addr_kebab[12]_i_53_n_1 ,1'b0}),
        .O(\NLW_addr_kebab_reg[12]_i_44_O_UNCONNECTED [3:0]),
        .S({\addr_kebab[12]_i_54_n_1 ,\addr_kebab[12]_i_55_n_1 ,\addr_kebab[12]_i_56_n_1 ,\addr_kebab[12]_i_57_n_1 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_lolipop[11]_i_10 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(\addr_lolipop[11]_i_10_n_1 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \addr_lolipop[11]_i_11 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(D[0]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .O(\addr_lolipop[11]_i_11_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \addr_lolipop[11]_i_12 
       (.I0(y[9]),
        .I1(y[8]),
        .I2(y[6]),
        .I3(DI),
        .O(\addr_lolipop[11]_i_12_n_1 ));
  LUT4 #(
    .INIT(16'h0111)) 
    \addr_lolipop[11]_i_13 
       (.I0(y[9]),
        .I1(y[8]),
        .I2(y[6]),
        .I3(DI),
        .O(\addr_lolipop[11]_i_13_n_1 ));
  LUT3 #(
    .INIT(8'h04)) 
    \addr_lolipop[11]_i_14 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_lolipop[11]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \addr_lolipop[11]_i_15 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .I4(\h_count_reg_reg[7]_0 [1]),
        .I5(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_lolipop[11]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_lolipop[11]_i_17 
       (.I0(\h_count_reg_reg[8]_1 ),
        .I1(\v_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\addr_lolipop_reg[11]_i_22_n_7 ),
        .I5(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_lolipop[11]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_lolipop[11]_i_18 
       (.I0(\h_count_reg_reg[8]_1 ),
        .I1(\v_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\addr_lolipop_reg[11]_i_22_n_8 ),
        .I5(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_lolipop[11]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA95555555)) 
    \addr_lolipop[11]_i_19 
       (.I0(\addr_lolipop_reg[11]_i_22_n_5 ),
        .I1(\h_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\v_count_reg_reg[9]_3 ),
        .I4(\h_count_reg_reg[8]_1 ),
        .I5(\addr_lolipop_reg[11]_i_22_n_6 ),
        .O(\addr_lolipop[11]_i_19_n_1 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \addr_lolipop[11]_i_20 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\addr_lolipop_reg[11]_i_22_n_7 ),
        .I2(\ps/data127_out ),
        .I3(\addr_lolipop_reg[11]_i_22_n_6 ),
        .O(\addr_lolipop[11]_i_20_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_lolipop[11]_i_21 
       (.I0(\addr_lolipop[11]_i_18_n_1 ),
        .I1(\addr_lolipop_reg[11]_i_22_n_7 ),
        .I2(\ps/data127_out ),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_lolipop[11]_i_21_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[11]_i_23 
       (.I0(DI),
        .O(\addr_lolipop[11]_i_23_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[11]_i_24 
       (.I0(y[6]),
        .O(\addr_lolipop[11]_i_24_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[11]_i_25 
       (.I0(y[5]),
        .O(\addr_lolipop[11]_i_25_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[11]_i_26 
       (.I0(y[4]),
        .O(\addr_lolipop[11]_i_26_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFFFFF)) 
    \addr_lolipop[11]_i_3 
       (.I0(\addr_lolipop[11]_i_10_n_1 ),
        .I1(\addr_lolipop[11]_i_11_n_1 ),
        .I2(\addr_lolipop[11]_i_12_n_1 ),
        .I3(\addr_lolipop[11]_i_13_n_1 ),
        .I4(\addr_lolipop[11]_i_14_n_1 ),
        .I5(\addr_lolipop[11]_i_15_n_1 ),
        .O(\h_count_reg_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \addr_lolipop[4]_i_11 
       (.I0(\h_count_reg_reg[9]_3 ),
        .I1(\v_count_reg_reg[8]_2 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\h_count_reg_reg[8]_1 ),
        .I4(A[0]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_lolipop[4]_i_11_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_lolipop[4]_i_12 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_lolipop[4]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_lolipop[4]_i_13 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_lolipop[4]_i_13_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_lolipop[4]_i_14 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_lolipop[4]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF2AAAAAAA)) 
    \addr_lolipop[8]_i_11 
       (.I0(\addr_lolipop_reg[8]_i_19_n_5 ),
        .I1(\h_count_reg_reg[8]_1 ),
        .I2(\v_count_reg_reg[9]_3 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .I5(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_lolipop[8]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_lolipop[8]_i_12 
       (.I0(\h_count_reg_reg[8]_1 ),
        .I1(\v_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\addr_lolipop_reg[8]_i_19_n_6 ),
        .I5(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_lolipop[8]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_lolipop[8]_i_13 
       (.I0(\h_count_reg_reg[8]_1 ),
        .I1(\v_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\addr_lolipop_reg[8]_i_19_n_7 ),
        .I5(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_lolipop[8]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \addr_lolipop[8]_i_14 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\v_count_reg_reg[9]_3 ),
        .I4(\h_count_reg_reg[8]_1 ),
        .I5(\addr_lolipop_reg[8]_i_19_n_7 ),
        .O(\addr_lolipop[8]_i_14_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_lolipop[8]_i_15 
       (.I0(\addr_lolipop[8]_i_11_n_1 ),
        .I1(\addr_lolipop_reg[11]_i_22_n_8 ),
        .I2(\ps/data127_out ),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .O(\addr_lolipop[8]_i_15_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_lolipop[8]_i_16 
       (.I0(\addr_lolipop[8]_i_12_n_1 ),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\ps/data127_out ),
        .I3(\addr_lolipop_reg[8]_i_19_n_5 ),
        .O(\addr_lolipop[8]_i_16_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_lolipop[8]_i_17 
       (.I0(\addr_lolipop[8]_i_13_n_1 ),
        .I1(\addr_lolipop_reg[8]_i_19_n_6 ),
        .I2(\ps/data127_out ),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_lolipop[8]_i_17_n_1 ));
  LUT4 #(
    .INIT(16'h6669)) 
    \addr_lolipop[8]_i_18 
       (.I0(\addr_lolipop_reg[8]_i_19_n_7 ),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\ps/data127_out ),
        .I3(A[0]),
        .O(\addr_lolipop[8]_i_18_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[8]_i_20 
       (.I0(\v_count_reg_reg[3]_0 ),
        .O(\addr_lolipop[8]_i_20_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[8]_i_21 
       (.I0(y[2]),
        .O(\addr_lolipop[8]_i_21_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[8]_i_22 
       (.I0(y[1]),
        .O(\addr_lolipop[8]_i_22_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_lolipop[8]_i_23 
       (.I0(A[0]),
        .O(\addr_lolipop[8]_i_23_n_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[11]_i_16 
       (.CI(\addr_lolipop_reg[8]_i_10_n_1 ),
        .CO(\NLW_addr_lolipop_reg[11]_i_16_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\addr_lolipop[11]_i_17_n_1 ,\addr_lolipop[11]_i_18_n_1 }),
        .O({\NLW_addr_lolipop_reg[11]_i_16_O_UNCONNECTED [3],\h_count_reg_reg[9]_4 }),
        .S({1'b0,\addr_lolipop[11]_i_19_n_1 ,\addr_lolipop[11]_i_20_n_1 ,\addr_lolipop[11]_i_21_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[11]_i_2 
       (.CI(\addr_lolipop_reg[8]_i_1_n_1 ),
        .CO(\NLW_addr_lolipop_reg[11]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\addr_lolipop_reg[11] }),
        .O({\NLW_addr_lolipop_reg[11]_i_2_O_UNCONNECTED [3],\addr_lolipop[11]_i_9 [10:8]}),
        .S({1'b0,\addr_lolipop_reg[11]_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[11]_i_22 
       (.CI(\addr_lolipop_reg[8]_i_19_n_1 ),
        .CO(\NLW_addr_lolipop_reg[11]_i_22_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,y[6:4]}),
        .O({\addr_lolipop_reg[11]_i_22_n_5 ,\addr_lolipop_reg[11]_i_22_n_6 ,\addr_lolipop_reg[11]_i_22_n_7 ,\addr_lolipop_reg[11]_i_22_n_8 }),
        .S({\addr_lolipop[11]_i_23_n_1 ,\addr_lolipop[11]_i_24_n_1 ,\addr_lolipop[11]_i_25_n_1 ,\addr_lolipop[11]_i_26_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\addr_lolipop_reg[4]_i_1_n_1 ,\NLW_addr_lolipop_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(C[0]),
        .DI(\addr_lolipop_reg[4] ),
        .O(\addr_lolipop[11]_i_9 [3:0]),
        .S(\addr_lolipop_reg[4]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[4]_i_10 
       (.CI(1'b0),
        .CO({\addr_lolipop_reg[4]_i_10_n_1 ,\NLW_addr_lolipop_reg[4]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(D[0]),
        .DI(\h_count_reg_reg[4]_1 ),
        .O({\h_count_reg_reg[0]_6 ,\NLW_addr_lolipop_reg[4]_i_10_O_UNCONNECTED [0]}),
        .S({\addr_lolipop[4]_i_11_n_1 ,\addr_lolipop[4]_i_12_n_1 ,\addr_lolipop[4]_i_13_n_1 ,\addr_lolipop[4]_i_14_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[8]_i_1 
       (.CI(\addr_lolipop_reg[4]_i_1_n_1 ),
        .CO({\addr_lolipop_reg[8]_i_1_n_1 ,\NLW_addr_lolipop_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\addr_lolipop_reg[8] ),
        .O(\addr_lolipop[11]_i_9 [7:4]),
        .S(\addr_lolipop_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[8]_i_10 
       (.CI(\addr_lolipop_reg[4]_i_10_n_1 ),
        .CO({\addr_lolipop_reg[8]_i_10_n_1 ,\NLW_addr_lolipop_reg[8]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\addr_lolipop[8]_i_11_n_1 ,\addr_lolipop[8]_i_12_n_1 ,\addr_lolipop[8]_i_13_n_1 ,\addr_lolipop[8]_i_14_n_1 }),
        .O(\h_count_reg_reg[0]_7 ),
        .S({\addr_lolipop[8]_i_15_n_1 ,\addr_lolipop[8]_i_16_n_1 ,\addr_lolipop[8]_i_17_n_1 ,\addr_lolipop[8]_i_18_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_lolipop_reg[8]_i_19 
       (.CI(1'b0),
        .CO({\addr_lolipop_reg[8]_i_19_n_1 ,\NLW_addr_lolipop_reg[8]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\v_count_reg_reg[3]_0 ,y[2:1],A[0]}),
        .O({\addr_lolipop_reg[8]_i_19_n_5 ,\addr_lolipop_reg[8]_i_19_n_6 ,\addr_lolipop_reg[8]_i_19_n_7 ,\NLW_addr_lolipop_reg[8]_i_19_O_UNCONNECTED [0]}),
        .S({\addr_lolipop[8]_i_20_n_1 ,\addr_lolipop[8]_i_21_n_1 ,\addr_lolipop[8]_i_22_n_1 ,\addr_lolipop[8]_i_23_n_1 }));
  LUT1 #(
    .INIT(2'h1)) 
    addr_milk_reg_i_10
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .O(addr_milk_reg_i_10_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    addr_milk_reg_i_11
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(A[0]),
        .O(addr_milk_reg_i_11_n_1));
  LUT3 #(
    .INIT(8'h7F)) 
    addr_milk_reg_i_12
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .O(addr_milk_reg_i_12_n_1));
  LUT5 #(
    .INIT(32'h80000000)) 
    addr_milk_reg_i_13
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .O(addr_milk_reg_i_13_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    addr_milk_reg_i_14
       (.I0(y[5]),
        .I1(y[9]),
        .I2(y[6]),
        .I3(DI),
        .I4(y[8]),
        .I5(addr_milk_reg_i_16_n_1),
        .O(addr_milk_reg_i_14_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888083)) 
    addr_milk_reg_i_15
       (.I0(y[5]),
        .I1(y[4]),
        .I2(\v_count_reg_reg[3]_0 ),
        .I3(y[6]),
        .I4(y[2]),
        .I5(addr_milk_reg_i_17_n_1),
        .O(addr_milk_reg_i_15_n_1));
  LUT2 #(
    .INIT(4'h7)) 
    addr_milk_reg_i_16
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(addr_milk_reg_i_16_n_1));
  LUT3 #(
    .INIT(8'hFE)) 
    addr_milk_reg_i_17
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .O(addr_milk_reg_i_17_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_milk_reg_i_2
       (.CI(addr_milk_reg_i_3_n_1),
        .CO(NLW_addr_milk_reg_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,addr_milk_reg_i_5_n_1,addr_milk_reg_i_6_n_1}),
        .O({NLW_addr_milk_reg_i_2_O_UNCONNECTED[3],ADDRARDADDR[6:4]}),
        .S({1'b0,addr_milk_reg_i_7_n_1,addr_milk_reg_i_8_n_1,addr_milk_reg_i_9_n_1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 addr_milk_reg_i_3
       (.CI(1'b0),
        .CO({addr_milk_reg_i_3_n_1,NLW_addr_milk_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(D[0]),
        .DI({addr_milk_reg_i_10_n_1,1'b0,1'b0,1'b0}),
        .O(ADDRARDADDR[3:0]),
        .S({addr_milk_reg_i_11_n_1,\h_count_reg_reg[4]_1 [2:0]}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0D)) 
    addr_milk_reg_i_4
       (.I0(D[0]),
        .I1(addr_milk_reg_i_12_n_1),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(addr_milk_reg_i_13_n_1),
        .I4(addr_milk_reg_i_14_n_1),
        .I5(addr_milk_reg_i_15_n_1),
        .O(\h_count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    addr_milk_reg_i_5
       (.I0(y[1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(addr_milk_reg_i_5_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    addr_milk_reg_i_6
       (.I0(y[1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(addr_milk_reg_i_6_n_1));
  LUT4 #(
    .INIT(16'h1EE1)) 
    addr_milk_reg_i_7
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(y[2]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\v_count_reg_reg[3]_0 ),
        .O(addr_milk_reg_i_7_n_1));
  LUT4 #(
    .INIT(16'h1EE1)) 
    addr_milk_reg_i_8
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(y[1]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(y[2]),
        .O(addr_milk_reg_i_8_n_1));
  LUT3 #(
    .INIT(8'h69)) 
    addr_milk_reg_i_9
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(y[1]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .O(addr_milk_reg_i_9_n_1));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_pizza[4]_i_11 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[8]_3 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_pizza[4]_i_11_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_pizza[4]_i_12 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[8]_3 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_pizza[4]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_pizza[4]_i_13 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[8]_3 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_pizza[4]_i_13_n_1 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \addr_pizza[4]_i_14 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(\h_count_reg_reg[8]_3 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_pizza[4]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_pizza[8]_i_11 
       (.I0(\h_count_reg_reg[8]_3 ),
        .I1(\v_count_reg_reg[9]_5 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\addr_pizza_reg[9]_i_41_n_6 ),
        .I5(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_pizza[8]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \addr_pizza[8]_i_12 
       (.I0(\h_count_reg_reg[8]_3 ),
        .I1(\v_count_reg_reg[9]_5 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .I4(\addr_pizza_reg[9]_i_41_n_7 ),
        .I5(\h_count_reg_reg[7]_0 [1]),
        .O(\addr_pizza[8]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \addr_pizza[8]_i_13 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[9]_3 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\v_count_reg_reg[9]_5 ),
        .I4(\h_count_reg_reg[8]_3 ),
        .I5(\addr_pizza_reg[9]_i_41_n_7 ),
        .O(\addr_pizza[8]_i_13_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_pizza[8]_i_14 
       (.I0(\addr_pizza[8]_i_11_n_1 ),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\addr_pizza_reg[9]_i_41_n_5 ),
        .I3(\ps/data118_out ),
        .O(\addr_pizza[8]_i_14_n_1 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \addr_pizza[8]_i_15 
       (.I0(\addr_pizza[8]_i_12_n_1 ),
        .I1(\addr_pizza_reg[9]_i_41_n_6 ),
        .I2(\ps/data118_out ),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_pizza[8]_i_15_n_1 ));
  LUT4 #(
    .INIT(16'h6669)) 
    \addr_pizza[8]_i_16 
       (.I0(\addr_pizza_reg[9]_i_41_n_7 ),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\ps/data118_out ),
        .I3(A[0]),
        .O(\addr_pizza[8]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \addr_pizza[8]_i_17 
       (.I0(\h_count_reg_reg[9]_3 ),
        .I1(\v_count_reg_reg[8]_2 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\h_count_reg_reg[8]_3 ),
        .I4(A[0]),
        .I5(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_pizza[8]_i_17_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[9]_i_10 
       (.I0(\ps/data31_in ),
        .I1(\ps/data43_in ),
        .I2(\ps/data413_in ),
        .I3(\ps/data214_in ),
        .O(\addr_pizza[9]_i_10_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr_pizza[9]_i_11 
       (.I0(\h_count_reg_reg[9]_3 ),
        .I1(\v_count_reg_reg[8]_2 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\h_count_reg_reg[8]_3 ),
        .O(\ps/data118_out ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_16 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_pizza[9]_i_16_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_18 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_pizza[9]_i_18_n_1 ));
  LUT5 #(
    .INIT(32'h96666669)) 
    \addr_pizza[9]_i_21 
       (.I0(\addr_pizza_reg[9]_i_40_n_8 ),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\addr_pizza_reg[9]_i_41_n_5 ),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\ps/data118_out ),
        .O(\addr_pizza[9]_i_21_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_23 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_pizza[9]_i_23_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_25 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_pizza[9]_i_25_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_26 
       (.I0(y[5]),
        .O(\addr_pizza[9]_i_26_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_27 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_pizza[9]_i_27_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_28 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_pizza[9]_i_28_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_29 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_pizza[9]_i_29_n_1 ));
  LUT6 #(
    .INIT(64'hFFFAFFF9FFFFFFFF)) 
    \addr_pizza[9]_i_3 
       (.I0(DI),
        .I1(y[6]),
        .I2(y[8]),
        .I3(y[9]),
        .I4(\addr_pizza[9]_i_7_n_1 ),
        .I5(\addr_lolipop[11]_i_14_n_1 ),
        .O(\v_count_reg_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_30 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_pizza[9]_i_30_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_31 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_pizza[9]_i_31_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_32 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_pizza[9]_i_32_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_33 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_pizza[9]_i_33_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_34 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_pizza[9]_i_34_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_35 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_pizza[9]_i_35_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_37 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(\addr_pizza[9]_i_37_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_39 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\addr_pizza[9]_i_39_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_42 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_pizza[9]_i_42_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_43 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_pizza[9]_i_43_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_44 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_pizza[9]_i_44_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_45 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_pizza[9]_i_45_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_46 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_pizza[9]_i_46_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_47 
       (.I0(y[5]),
        .O(\addr_pizza[9]_i_47_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_48 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_pizza[9]_i_48_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_49 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_pizza[9]_i_49_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \addr_pizza[9]_i_5 
       (.I0(\ps/data111_in ),
        .I1(\ps/data310_in ),
        .I2(\ps/data2 ),
        .I3(\ps/data30_in ),
        .I4(\addr_pizza[9]_i_10_n_1 ),
        .I5(\ps/data118_out ),
        .O(\addr_pizza[9]_i_11_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_50 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_pizza[9]_i_50_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_51 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_pizza[9]_i_51_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_52 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .O(\addr_pizza[9]_i_52_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_53 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\addr_pizza[9]_i_53_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_54 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\addr_pizza[9]_i_54_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_55 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(\addr_pizza[9]_i_55_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_56 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(\addr_pizza[9]_i_56_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_57 
       (.I0(y[5]),
        .O(\addr_pizza[9]_i_57_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_58 
       (.I0(y[6]),
        .I1(DI),
        .O(\addr_pizza[9]_i_58_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_pizza[9]_i_59 
       (.I0(y[5]),
        .I1(y[4]),
        .O(\addr_pizza[9]_i_59_n_1 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr_pizza[9]_i_6 
       (.I0(\addr_pizza_reg[9]_i_12_n_8 ),
        .I1(\h_count_reg_reg[8]_3 ),
        .I2(\v_count_reg_reg[9]_5 ),
        .I3(\v_count_reg_reg[8]_2 ),
        .I4(\h_count_reg_reg[9]_3 ),
        .O(\addr_pizza[9]_i_6_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_60 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\addr_pizza[9]_i_60_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_pizza[9]_i_61 
       (.I0(A[0]),
        .I1(y[1]),
        .O(\addr_pizza[9]_i_61_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_62 
       (.I0(y[4]),
        .O(\addr_pizza[9]_i_62_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_63 
       (.I0(\v_count_reg_reg[3]_0 ),
        .O(\addr_pizza[9]_i_63_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_64 
       (.I0(y[2]),
        .O(\addr_pizza[9]_i_64_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_65 
       (.I0(y[1]),
        .O(\addr_pizza[9]_i_65_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_pizza[9]_i_66 
       (.I0(A[0]),
        .O(\addr_pizza[9]_i_66_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \addr_pizza[9]_i_7 
       (.I0(y[2]),
        .I1(y[1]),
        .I2(A[0]),
        .I3(\v_count_reg_reg[3]_0 ),
        .I4(y[4]),
        .I5(y[5]),
        .O(\addr_pizza[9]_i_7_n_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[4]_i_1_n_1 ,\NLW_addr_pizza_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(C[0]),
        .DI(\addr_pizza_reg[4] ),
        .O(\addr_pizza[9]_i_6_0 [3:0]),
        .S(\addr_pizza_reg[4]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[4]_i_10 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[4]_i_10_n_1 ,\NLW_addr_pizza_reg[4]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(D[0]),
        .DI(\h_count_reg_reg[4]_1 ),
        .O(\h_count_reg_reg[0]_8 ),
        .S({\addr_pizza[4]_i_11_n_1 ,\addr_pizza[4]_i_12_n_1 ,\addr_pizza[4]_i_13_n_1 ,\addr_pizza[4]_i_14_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[8]_i_1 
       (.CI(\addr_pizza_reg[4]_i_1_n_1 ),
        .CO({\addr_pizza_reg[8]_i_1_n_1 ,\NLW_addr_pizza_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\addr_pizza_reg[8] ),
        .O(\addr_pizza[9]_i_6_0 [7:4]),
        .S(\addr_pizza_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[8]_i_10 
       (.CI(\addr_pizza_reg[4]_i_10_n_1 ),
        .CO({\addr_pizza_reg[8]_i_10_n_1 ,\NLW_addr_pizza_reg[8]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\addr_pizza[8]_i_11_n_1 ,\addr_pizza[8]_i_12_n_1 ,\addr_pizza[8]_i_13_n_1 ,\h_count_reg_reg[7]_0 [0]}),
        .O(\h_count_reg_reg[5]_1 ),
        .S({\addr_pizza[8]_i_14_n_1 ,\addr_pizza[8]_i_15_n_1 ,\addr_pizza[8]_i_16_n_1 ,\addr_pizza[8]_i_17_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \addr_pizza_reg[9]_i_12 
       (.CI(\addr_pizza_reg[8]_i_10_n_1 ),
        .CO(\NLW_addr_pizza_reg[9]_i_12_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_pizza_reg[9]_i_12_O_UNCONNECTED [3:1],\addr_pizza_reg[9]_i_12_n_8 }),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_21_n_1 }));
  CARRY4 \addr_pizza_reg[9]_i_13 
       (.CI(\addr_pizza_reg[9]_i_22_n_1 ),
        .CO({\NLW_addr_pizza_reg[9]_i_13_CO_UNCONNECTED [3:1],\h_count_reg_reg[8]_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_23_n_1 }));
  CARRY4 \addr_pizza_reg[9]_i_14 
       (.CI(\addr_pizza_reg[9]_i_24_n_1 ),
        .CO({\NLW_addr_pizza_reg[9]_i_14_CO_UNCONNECTED [3:1],\v_count_reg_reg[9]_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_14_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_25_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_15 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_15_n_1 ,\NLW_addr_pizza_reg[9]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_pizza[9]_i_26_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_15_O_UNCONNECTED [3:0]),
        .S({\addr_pizza[9]_i_27_n_1 ,\addr_pizza[9]_i_28_n_1 ,\addr_pizza[9]_i_29_n_1 ,\addr_pizza[9]_i_30_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_17 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_17_n_1 ,\NLW_addr_pizza_reg[9]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_pizza[9]_i_31_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_17_O_UNCONNECTED [3:0]),
        .S({\addr_pizza[9]_i_32_n_1 ,\addr_pizza[9]_i_33_n_1 ,\addr_pizza[9]_i_34_n_1 ,\addr_pizza[9]_i_35_n_1 }));
  CARRY4 \addr_pizza_reg[9]_i_19 
       (.CI(\addr_pizza_reg[9]_i_36_n_1 ),
        .CO({\NLW_addr_pizza_reg[9]_i_19_CO_UNCONNECTED [3:1],\ps/data413_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_19_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_37_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \addr_pizza_reg[9]_i_2 
       (.CI(\addr_pizza_reg[8]_i_1_n_1 ),
        .CO(\NLW_addr_pizza_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_pizza_reg[9]_i_2_O_UNCONNECTED [3:1],\addr_pizza[9]_i_6_0 [8]}),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_6_n_1 }));
  CARRY4 \addr_pizza_reg[9]_i_20 
       (.CI(\addr_pizza_reg[9]_i_38_n_1 ),
        .CO({\NLW_addr_pizza_reg[9]_i_20_CO_UNCONNECTED [3:1],\ps/data214_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_20_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_39_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_22 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_22_n_1 ,\NLW_addr_pizza_reg[9]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_pizza[9]_i_42_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_22_O_UNCONNECTED [3:0]),
        .S({\addr_pizza[9]_i_43_n_1 ,\addr_pizza[9]_i_44_n_1 ,\addr_pizza[9]_i_45_n_1 ,\addr_pizza[9]_i_46_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_24 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_24_n_1 ,\NLW_addr_pizza_reg[9]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_pizza[9]_i_47_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_24_O_UNCONNECTED [3:0]),
        .S({\addr_pizza[9]_i_48_n_1 ,\addr_pizza[9]_i_49_n_1 ,\addr_pizza[9]_i_50_n_1 ,\addr_pizza[9]_i_51_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_36 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_36_n_1 ,\NLW_addr_pizza_reg[9]_i_36_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_pizza[9]_i_52_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_36_O_UNCONNECTED [3:0]),
        .S({\addr_pizza[9]_i_53_n_1 ,\addr_pizza[9]_i_54_n_1 ,\addr_pizza[9]_i_55_n_1 ,\addr_pizza[9]_i_56_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_38 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_38_n_1 ,\NLW_addr_pizza_reg[9]_i_38_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,\addr_pizza[9]_i_57_n_1 ,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_38_O_UNCONNECTED [3:0]),
        .S({\addr_pizza[9]_i_58_n_1 ,\addr_pizza[9]_i_59_n_1 ,\addr_pizza[9]_i_60_n_1 ,\addr_pizza[9]_i_61_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \addr_pizza_reg[9]_i_40 
       (.CI(\addr_pizza_reg[9]_i_41_n_1 ),
        .CO(\NLW_addr_pizza_reg[9]_i_40_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_pizza_reg[9]_i_40_O_UNCONNECTED [3:1],\addr_pizza_reg[9]_i_40_n_8 }),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_62_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \addr_pizza_reg[9]_i_41 
       (.CI(1'b0),
        .CO({\addr_pizza_reg[9]_i_41_n_1 ,\NLW_addr_pizza_reg[9]_i_41_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\v_count_reg_reg[3]_0 ,y[2:1],A[0]}),
        .O({\addr_pizza_reg[9]_i_41_n_5 ,\addr_pizza_reg[9]_i_41_n_6 ,\addr_pizza_reg[9]_i_41_n_7 ,\NLW_addr_pizza_reg[9]_i_41_O_UNCONNECTED [0]}),
        .S({\addr_pizza[9]_i_63_n_1 ,\addr_pizza[9]_i_64_n_1 ,\addr_pizza[9]_i_65_n_1 ,\addr_pizza[9]_i_66_n_1 }));
  CARRY4 \addr_pizza_reg[9]_i_8 
       (.CI(\addr_pizza_reg[9]_i_15_n_1 ),
        .CO({\NLW_addr_pizza_reg[9]_i_8_CO_UNCONNECTED [3:1],\ps/data111_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_16_n_1 }));
  CARRY4 \addr_pizza_reg[9]_i_9 
       (.CI(\addr_pizza_reg[9]_i_17_n_1 ),
        .CO({\NLW_addr_pizza_reg[9]_i_9_CO_UNCONNECTED [3:1],\ps/data310_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_pizza_reg[9]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\addr_pizza[9]_i_18_n_1 }));
  LUT1 #(
    .INIT(2'h1)) 
    data3_i_1
       (.I0(\h_count_reg_reg[9]_0 ),
        .O(data5[10]));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_10
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(addr_bone_reg_i_5_0[4]),
        .O(data3_i_10_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_11
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(addr_bone_reg_i_5_0[3]),
        .O(data3_i_11_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_12
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(addr_bone_reg_i_5_0[2]),
        .O(data3_i_12_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_13
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(addr_bone_reg_i_5_0[1]),
        .O(data3_i_13_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    data3_i_14
       (.I0(D[0]),
        .I1(addr_bone_reg_i_5_0[0]),
        .O(data3_i_14_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 data3_i_2
       (.CI(data3_i_3_n_1),
        .CO({NLW_data3_i_2_CO_UNCONNECTED[3],\h_count_reg_reg[9]_0 ,NLW_data3_i_2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\h_count_reg_reg[9]_1 }),
        .O({NLW_data3_i_2_O_UNCONNECTED[3:2],data5[9:8]}),
        .S({1'b0,1'b1,data3_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 data3_i_3
       (.CI(data3_i_4_n_1),
        .CO({data3_i_3_n_1,NLW_data3_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\h_count_reg_reg[7]_0 ,\h_count_reg_reg[4]_1 [3]}),
        .O(data5[7:4]),
        .S({data3,data3_i_10_n_1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 data3_i_4
       (.CI(1'b0),
        .CO({data3_i_4_n_1,NLW_data3_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({\h_count_reg_reg[4]_1 [2:0],D[0]}),
        .O(data5[3:0]),
        .S({data3_i_11_n_1,data3_i_12_n_1,data3_i_13_n_1,data3_i_14_n_1}));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data[0]_i_1 
       (.I0(\data[5]_i_12_n_1 ),
        .I1(\data_reg[0]_0 ),
        .I2(addr_bone_reg),
        .I3(\data[7]_i_2_0 [0]),
        .I4(CEP),
        .I5(\data_reg[0]_1 ),
        .O(\data_reg[0] ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data[1]_i_1 
       (.I0(\data[5]_i_12_n_1 ),
        .I1(\data_reg[1]_0 ),
        .I2(addr_bone_reg),
        .I3(\data[7]_i_2_0 [1]),
        .I4(CEP),
        .I5(\data_reg[1]_1 ),
        .O(\data_reg[1] ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data[2]_i_1 
       (.I0(\data[5]_i_12_n_1 ),
        .I1(\data_reg[2]_0 ),
        .I2(addr_bone_reg),
        .I3(\data[7]_i_2_0 [2]),
        .I4(CEP),
        .I5(\data_reg[2]_1 ),
        .O(\data_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \data[3]_i_1 
       (.I0(\data[5]_i_12_n_1 ),
        .I1(\data_reg[3]_0 ),
        .I2(addr_bone_reg),
        .I3(\data[7]_i_2_0 [3]),
        .I4(\data[5]_i_14_n_1 ),
        .I5(\data_reg[3]_1 ),
        .O(\data_reg[3] ));
  LUT6 #(
    .INIT(64'hF4F4F4FFF4F4F400)) 
    \data[4]_i_1 
       (.I0(\data_reg[4]_2 ),
        .I1(\data[5]_i_5_n_1 ),
        .I2(\data[4]_i_3_n_1 ),
        .I3(\data[4]_i_4__0_n_1 ),
        .I4(\data[5]_i_6_n_1 ),
        .I5(data_play[0]),
        .O(\data_reg[4] ));
  LUT6 #(
    .INIT(64'h2022FFFF00000000)) 
    \data[4]_i_11 
       (.I0(\addr_lolipop[11]_i_14_n_1 ),
        .I1(\data[5]_i_118_n_1 ),
        .I2(\data[5]_i_117_n_1 ),
        .I3(\data[5]_i_134_n_1 ),
        .I4(\data[5]_i_99_n_1 ),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[4]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \data[4]_i_3 
       (.I0(\data[5]_i_12_n_1 ),
        .I1(\data_reg[4]_0 ),
        .I2(addr_bone_reg),
        .I3(\data[7]_i_2_0 [4]),
        .I4(\data[5]_i_14_n_1 ),
        .I5(\data_reg[4]_1 ),
        .O(\data[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h888888888888AAA8)) 
    \data[4]_i_4__0 
       (.I0(\data_reg[5]_2 ),
        .I1(\data[5]_i_8_n_1 ),
        .I2(\data_reg[5]_3 ),
        .I3(\data[5]_i_31_n_1 ),
        .I4(\data[4]_i_7__0_n_1 ),
        .I5(\data[4]_i_8_n_1 ),
        .O(\data[4]_i_4__0_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data[4]_i_7__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\data[5]_i_51_n_1 ),
        .I3(\data[5]_i_43_n_1 ),
        .I4(\data[4]_i_11_n_1 ),
        .I5(\data[5]_i_50_n_1 ),
        .O(\data[4]_i_7__0_n_1 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \data[4]_i_8 
       (.I0(\data[5]_i_33_n_1 ),
        .I1(\data[5]_i_56_n_1 ),
        .I2(\data[5]_i_57_n_1 ),
        .I3(\data[5]_i_58_n_1 ),
        .I4(\data[5]_i_54_n_1 ),
        .I5(\data[5]_i_55_n_1 ),
        .O(\data[4]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h8800800088008800)) 
    \data[5]_i_1 
       (.I0(\addr_heart[7]_i_5_0 ),
        .I1(\data[5]_i_5_n_1 ),
        .I2(\data[5]_i_6_n_1 ),
        .I3(\data_reg[5]_2 ),
        .I4(\data[5]_i_8_n_1 ),
        .I5(\data[5]_i_9_n_1 ),
        .O(\data[5]_i_9_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \data[5]_i_10 
       (.I0(\data[5]_i_25_n_1 ),
        .I1(\data[5]_i_24_n_1 ),
        .I2(\h_count_reg_reg[4]_0 ),
        .I3(\data[5]_i_35_n_1 ),
        .I4(\data[5]_i_22_n_1 ),
        .I5(\data[5]_i_21_n_1 ),
        .O(\data[5]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF4FF)) 
    \data[5]_i_100 
       (.I0(\data[5]_i_124_n_1 ),
        .I1(\addr_burger[7]_i_34_n_1 ),
        .I2(\h_count_reg_reg[9]_1 [1]),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\addr_kebab[12]_i_13_n_1 ),
        .I5(\h_count_reg_reg[7]_0 [2]),
        .O(\data[5]_i_100_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2000000)) 
    \data[5]_i_101 
       (.I0(\data[5]_i_146_n_1 ),
        .I1(\addr_kebab[12]_i_23_n_1 ),
        .I2(y[2]),
        .I3(y[4]),
        .I4(\v_count_reg_reg[3]_0 ),
        .I5(y[5]),
        .O(\data[5]_i_101_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data[5]_i_102 
       (.I0(\ps/data2 ),
        .I1(\ps/data30_in ),
        .O(\data[5]_i_102_n_1 ));
  LUT6 #(
    .INIT(64'hF000000100000001)) 
    \data[5]_i_103 
       (.I0(y[5]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[4]),
        .I3(y[2]),
        .I4(y[1]),
        .I5(A[0]),
        .O(\data[5]_i_103_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \data[5]_i_104 
       (.I0(\data[5]_i_188_n_1 ),
        .I1(\addr_burger[7]_i_82_n_1 ),
        .I2(\h_count_reg_reg[9]_1 [1]),
        .I3(y[6]),
        .I4(\addr_heart[7]_i_30_n_1 ),
        .I5(\data[5]_i_189_n_1 ),
        .O(\data[5]_i_104_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE3FFF)) 
    \data[5]_i_105 
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\addr_burger[7]_i_27_n_1 ),
        .O(\data[5]_i_105_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF4FFFFF)) 
    \data[5]_i_106 
       (.I0(\data[5]_i_190_n_1 ),
        .I1(\data[5]_i_144_n_1 ),
        .I2(\data[5]_i_191_n_1 ),
        .I3(\data[5]_i_192_n_1 ),
        .I4(addr_hi_reg_0_i_8_n_1),
        .I5(\addr_lolipop[11]_i_11_n_1 ),
        .O(\data[5]_i_106_n_1 ));
  LUT6 #(
    .INIT(64'h2F0000000F0F0F0F)) 
    \data[5]_i_107 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\data[5]_i_144_n_1 ),
        .I2(addr_hi_reg_0_i_8_n_1),
        .I3(\addr_heart[7]_i_23_n_1 ),
        .I4(\data[5]_i_193_n_1 ),
        .I5(\h_count_reg_reg[7]_0 [2]),
        .O(\data[5]_i_107_n_1 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \data[5]_i_108 
       (.I0(\addr_lolipop[11]_i_11_n_1 ),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\h_count_reg_reg[7]_0 [0]),
        .O(\data[5]_i_108_n_1 ));
  LUT6 #(
    .INIT(64'h200020002000E000)) 
    \data[5]_i_109 
       (.I0(\data[5]_i_194_n_1 ),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\addr_burger[7]_i_34_n_1 ),
        .O(\data[5]_i_109_n_1 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \data[5]_i_11 
       (.I0(\data[5]_i_36_n_1 ),
        .I1(\addr_burger[7]_i_15_n_1 ),
        .I2(\addr_burger[7]_i_14_n_1 ),
        .I3(\addr_burger[7]_i_13_n_1 ),
        .I4(\h_count_reg_reg[0]_0 ),
        .I5(\data_reg[5]_5 ),
        .O(\data[5]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h000000000000FF07)) 
    \data[5]_i_110 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\addr_burger[7]_i_27_n_1 ),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .I5(\h_count_reg_reg[9]_1 [1]),
        .O(\data[5]_i_110_n_1 ));
  LUT6 #(
    .INIT(64'h0000000040FFFFFF)) 
    \data[5]_i_111 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\data[5]_i_191_n_1 ),
        .I2(\data[5]_i_195_n_1 ),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .I5(\h_count_reg_reg[9]_1 [1]),
        .O(\data[5]_i_111_n_1 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF7F7F7F7F)) 
    \data[5]_i_112 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\addr_burger[7]_i_41_n_1 ),
        .O(\data[5]_i_112_n_1 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \data[5]_i_113 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(D[0]),
        .O(\data[5]_i_113_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFF3F22333333)) 
    \data[5]_i_114 
       (.I0(addr_milk_reg_i_12_n_1),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\data[5]_i_196_n_1 ),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\addr_heart[7]_i_30_n_1 ),
        .O(\data[5]_i_114_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[5]_i_115 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .O(\data[5]_i_115_n_1 ));
  LUT5 #(
    .INIT(32'hFF80FFFF)) 
    \data[5]_i_116 
       (.I0(\addr_lolipop[11]_i_11_n_1 ),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\addr_burger[7]_i_64_n_1 ),
        .O(\data[5]_i_116_n_1 ));
  LUT5 #(
    .INIT(32'hAAAAA800)) 
    \data[5]_i_117 
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_117_n_1 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \data[5]_i_118 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_118_n_1 ));
  LUT6 #(
    .INIT(64'hFBFFFBBFFFBFFFBF)) 
    \data[5]_i_119 
       (.I0(\addr_burger[7]_i_27_n_1 ),
        .I1(\addr_lolipop[11]_i_14_n_1 ),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .I4(\h_count_reg_reg[4]_1 [0]),
        .I5(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_119_n_1 ));
  LUT6 #(
    .INIT(64'h7777777F77777777)) 
    \data[5]_i_12 
       (.I0(\h_count_reg_reg[0]_0 ),
        .I1(\data_reg[5]_5 ),
        .I2(\data[5]_i_36_n_1 ),
        .I3(\addr_burger[7]_i_15_n_1 ),
        .I4(\addr_burger[7]_i_14_n_1 ),
        .I5(\addr_burger[7]_i_13_n_1 ),
        .O(\data[5]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h0010000000110000)) 
    \data[5]_i_120 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\addr_burger[7]_i_41_n_1 ),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .I4(\addr_burger[7]_i_40_n_1 ),
        .I5(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_120_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFABFF)) 
    \data[5]_i_121 
       (.I0(addr_milk_reg_i_16_n_1),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\h_count_reg_reg[7]_0 [0]),
        .O(\data[5]_i_121_n_1 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \data[5]_i_122 
       (.I0(\data[5]_i_125_n_1 ),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\data[5]_i_194_n_1 ),
        .O(\data[5]_i_122_n_1 ));
  LUT5 #(
    .INIT(32'h001F0000)) 
    \data[5]_i_123 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .I4(\addr_burger[7]_i_64_n_1 ),
        .O(\data[5]_i_123_n_1 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \data[5]_i_124 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_124_n_1 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data[5]_i_125 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(D[0]),
        .O(\data[5]_i_125_n_1 ));
  LUT5 #(
    .INIT(32'h77777FFF)) 
    \data[5]_i_126 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .I3(D[0]),
        .I4(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_126_n_1 ));
  LUT6 #(
    .INIT(64'hCCDDCCDDCCDDCCDF)) 
    \data[5]_i_127 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(addr_milk_reg_i_16_n_1),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(\h_count_reg_reg[4]_1 [0]),
        .I5(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_127_n_1 ));
  LUT6 #(
    .INIT(64'h0000FF80FFFFFFFF)) 
    \data[5]_i_128 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(addr_milk_reg_i_16_n_1),
        .I5(addr_hi_reg_0_i_8_n_1),
        .O(\data[5]_i_128_n_1 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0D0F0FFF0)) 
    \data[5]_i_129 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\data[5]_i_144_n_1 ),
        .I2(addr_hi_reg_0_i_8_n_1),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .I4(\data[5]_i_193_n_1 ),
        .I5(addr_milk_reg_i_13_n_1),
        .O(\data[5]_i_129_n_1 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \data[5]_i_130 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_130_n_1 ));
  LUT6 #(
    .INIT(64'h4FFFCFCF4444CCCC)) 
    \data[5]_i_131 
       (.I0(\data[5]_i_194_n_1 ),
        .I1(\addr_burger[7]_i_35_n_1 ),
        .I2(\data[5]_i_134_n_1 ),
        .I3(\data[5]_i_197_n_1 ),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .I5(\data[5]_i_198_n_1 ),
        .O(\data[5]_i_131_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data[5]_i_132 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_132_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \data[5]_i_133 
       (.I0(\data[5]_i_194_n_1 ),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[9]_1 [1]),
        .I3(\data[5]_i_134_n_1 ),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_133_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data[5]_i_134 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\data[5]_i_134_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \data[5]_i_135 
       (.I0(\addr_lolipop[11]_i_11_n_1 ),
        .I1(addr_hi_reg_0_i_8_n_1),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_135_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \data[5]_i_136 
       (.I0(\data[5]_i_144_n_1 ),
        .I1(addr_hi_reg_0_i_8_n_1),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(addr_milk_reg_i_16_n_1),
        .I5(\data[5]_i_199_n_1 ),
        .O(\data[5]_i_136_n_1 ));
  LUT6 #(
    .INIT(64'h00F0000088880000)) 
    \data[5]_i_137 
       (.I0(\addr_heart[7]_i_27_n_1 ),
        .I1(\addr_heart[7]_i_28_n_1 ),
        .I2(\addr_burger[7]_i_35_n_1 ),
        .I3(\addr_burger[7]_i_34_n_1 ),
        .I4(D[0]),
        .I5(\h_count_reg_reg[4]_1 [0]),
        .O(\data[5]_i_137_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data[5]_i_138 
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_138_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data[5]_i_139 
       (.I0(A[0]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(\v_count_reg_reg[3]_0 ),
        .O(\data[5]_i_139_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \data[5]_i_14 
       (.I0(y[9]),
        .I1(y[8]),
        .I2(addr_hi_reg_0_i_3_n_1),
        .I3(addr_hi_reg_0_i_7_n_1),
        .I4(\data[5]_i_39_n_1 ),
        .I5(\data_reg[5]_7 ),
        .O(\data[5]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h5070505070707070)) 
    \data[5]_i_140 
       (.I0(Q[1]),
        .I1(\addr_lolipop[11]_i_10_n_1 ),
        .I2(Q[0]),
        .I3(\addr_burger[7]_i_41_n_1 ),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\addr_lolipop[11]_i_15_n_1 ),
        .O(\data[5]_i_140_n_1 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \data[5]_i_141 
       (.I0(y[8]),
        .I1(DI),
        .I2(y[6]),
        .I3(y[4]),
        .I4(y[5]),
        .O(\data[5]_i_141_n_1 ));
  LUT6 #(
    .INIT(64'hFFEA0000FFFFFFFF)) 
    \data[5]_i_142 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(D[0]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\addr_burger[7]_i_64_n_1 ),
        .O(\data[5]_i_142_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data[5]_i_143 
       (.I0(\data[5]_i_141_n_1 ),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(y[9]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\data[5]_i_143_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data[5]_i_144 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(\data[5]_i_144_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \data[5]_i_145 
       (.I0(\addr_burger[7]_i_27_n_1 ),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .I2(\data[5]_i_195_n_1 ),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .I4(\data_reg[5]_4 ),
        .I5(\addr_kebab[12]_i_13_n_1 ),
        .O(\data[5]_i_145_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data[5]_i_146 
       (.I0(DI),
        .I1(y[6]),
        .O(\data[5]_i_146_n_1 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \data[5]_i_147 
       (.I0(DI),
        .I1(yPlayer),
        .I2(y[6]),
        .O(\data[5]_i_147_n_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \data[5]_i_148 
       (.I0(y[5]),
        .I1(yPlayer),
        .I2(y[4]),
        .O(\data[5]_i_148_n_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \data[5]_i_149 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(yPlayer),
        .O(\data[5]_i_149_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_150 
       (.I0(yPlayer),
        .I1(y[1]),
        .I2(A[0]),
        .O(\data[5]_i_150_n_1 ));
  LUT3 #(
    .INIT(8'h41)) 
    \data[5]_i_151 
       (.I0(y[6]),
        .I1(DI),
        .I2(yPlayer),
        .O(\data[5]_i_151_n_1 ));
  LUT3 #(
    .INIT(8'h41)) 
    \data[5]_i_152 
       (.I0(y[5]),
        .I1(y[4]),
        .I2(yPlayer),
        .O(\data[5]_i_152_n_1 ));
  LUT3 #(
    .INIT(8'h60)) 
    \data[5]_i_153 
       (.I0(y[2]),
        .I1(yPlayer),
        .I2(\v_count_reg_reg[3]_0 ),
        .O(\data[5]_i_153_n_1 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_154 
       (.I0(y[1]),
        .I1(A[0]),
        .I2(yPlayer),
        .O(\data[5]_i_154_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_156 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_156_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_157 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_157_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_158 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_158_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_159 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_159_n_1 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \data[5]_i_16 
       (.I0(\data[5]_i_43_n_1 ),
        .I1(\data[5]_i_44_n_1 ),
        .I2(\data[5]_i_45_n_1 ),
        .I3(\data[5]_i_46_n_1 ),
        .I4(\data[5]_i_47_n_1 ),
        .I5(Q[0]),
        .O(\data[5]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \data[5]_i_17 
       (.I0(\data[5]_i_43_n_1 ),
        .I1(\data[5]_i_48_n_1 ),
        .I2(\data[5]_i_49_n_1 ),
        .I3(\data[5]_i_50_n_1 ),
        .I4(\data[5]_i_51_n_1 ),
        .I5(Q[0]),
        .O(\data[5]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \data[5]_i_176 
       (.I0(y[9]),
        .I1(y[5]),
        .I2(y[2]),
        .I3(y[6]),
        .I4(A[0]),
        .I5(y[1]),
        .O(\data[5]_i_176_n_1 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \data[5]_i_177 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\h_count_reg_reg[9]_1 [1]),
        .O(\data[5]_i_177_n_1 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \data[5]_i_178 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[7]_0 [1]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .O(\data[5]_i_178_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[5]_i_179 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\data[5]_i_179_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFBFFFFF)) 
    \data[5]_i_18 
       (.I0(\data[5]_i_52_n_1 ),
        .I1(\data[5]_i_53_n_1 ),
        .I2(\data[5]_i_46_n_1 ),
        .I3(\data[5]_i_54_n_1 ),
        .I4(\data[5]_i_55_n_1 ),
        .I5(\data_reg[5]_3 ),
        .O(\data[5]_i_18_n_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \data[5]_i_180 
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .O(\data[5]_i_180_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data[5]_i_181 
       (.I0(y[2]),
        .I1(y[1]),
        .I2(y[5]),
        .I3(y[6]),
        .I4(\v_count_reg_reg[3]_0 ),
        .I5(y[4]),
        .O(\data[5]_i_181_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_182 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .I2(y[1]),
        .O(\data[5]_i_182_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[5]_i_183 
       (.I0(y[9]),
        .I1(y[8]),
        .O(\data[5]_i_183_n_1 ));
  LUT6 #(
    .INIT(64'h8888888088808880)) 
    \data[5]_i_184 
       (.I0(y[5]),
        .I1(y[6]),
        .I2(\v_count_reg_reg[3]_0 ),
        .I3(y[4]),
        .I4(y[1]),
        .I5(y[2]),
        .O(\data[5]_i_184_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000003100)) 
    \data[5]_i_185 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .I2(\addr_burger[7]_i_41_n_1 ),
        .I3(\data[5]_i_191_n_1 ),
        .I4(\h_count_reg_reg[9]_1 [1]),
        .I5(\h_count_reg_reg[7]_0 [1]),
        .O(\data[5]_i_185_n_1 ));
  LUT5 #(
    .INIT(32'h777F7F7F)) 
    \data[5]_i_186 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .O(\data[5]_i_186_n_1 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \data[5]_i_187 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .O(\data[5]_i_187_n_1 ));
  LUT4 #(
    .INIT(16'h7FFB)) 
    \data[5]_i_188 
       (.I0(y[4]),
        .I1(A[0]),
        .I2(y[1]),
        .I3(y[2]),
        .O(\data[5]_i_188_n_1 ));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \data[5]_i_189 
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[7]_0 [0]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_189_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \data[5]_i_19 
       (.I0(\data[5]_i_33_n_1 ),
        .I1(\data[5]_i_56_n_1 ),
        .I2(\data[5]_i_57_n_1 ),
        .I3(\data[5]_i_58_n_1 ),
        .I4(\data[5]_i_54_n_1 ),
        .I5(\data[5]_i_55_n_1 ),
        .O(\data[5]_i_19_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_190 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(D[0]),
        .I2(\h_count_reg_reg[4]_1 [0]),
        .O(\data[5]_i_190_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data[5]_i_191 
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\data[5]_i_191_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[5]_i_192 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(\data[5]_i_192_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data[5]_i_193 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(\data[5]_i_193_n_1 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \data[5]_i_194 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(\data[5]_i_194_n_1 ));
  LUT4 #(
    .INIT(16'h010F)) 
    \data[5]_i_195 
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_195_n_1 ));
  LUT4 #(
    .INIT(16'h0015)) 
    \data[5]_i_196 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(D[0]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .O(\data[5]_i_196_n_1 ));
  LUT3 #(
    .INIT(8'h07)) 
    \data[5]_i_197 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .I2(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_197_n_1 ));
  LUT5 #(
    .INIT(32'h00040404)) 
    \data[5]_i_198 
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .O(\data[5]_i_198_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data[5]_i_199 
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [0]),
        .I3(\h_count_reg_reg[4]_1 [2]),
        .O(\data[5]_i_199_n_1 ));
  LUT6 #(
    .INIT(64'hFFD0FFD0FFFFFFD0)) 
    \data[5]_i_2 
       (.I0(\data[5]_i_9_n_1 ),
        .I1(\data[5]_i_8_n_1 ),
        .I2(\data_reg[5]_2 ),
        .I3(\data[5]_i_10_n_1 ),
        .I4(addr_bone_reg),
        .I5(\data[5]_i_11_n_1 ),
        .O(\data[5]_i_11_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2AAA)) 
    \data[5]_i_20 
       (.I0(addr_bone_reg),
        .I1(\data_reg[5]_5 ),
        .I2(\h_count_reg_reg[0]_0 ),
        .I3(\addr_burger[7]_i_13_n_1 ),
        .I4(\data[5]_i_59_n_1 ),
        .I5(\data[5]_i_36_n_1 ),
        .O(\data[5]_i_20_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_201 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_201_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_202 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_202_n_1 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \data[5]_i_203 
       (.I0(CO),
        .I1(data5[9]),
        .I2(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_203_n_1 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \data[5]_i_204 
       (.I0(data40_in[8]),
        .I1(data5[8]),
        .I2(data5[7]),
        .I3(data40_in[7]),
        .O(\data[5]_i_204_n_1 ));
  LUT3 #(
    .INIT(8'h24)) 
    \data[5]_i_207 
       (.I0(\h_count_reg_reg[9]_0 ),
        .I1(data5[9]),
        .I2(CO),
        .O(\data[5]_i_207_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_208 
       (.I0(data5[8]),
        .I1(data40_in[8]),
        .I2(data5[7]),
        .I3(data40_in[7]),
        .O(\data[5]_i_208_n_1 ));
  LUT6 #(
    .INIT(64'h88A8888888A888A8)) 
    \data[5]_i_21 
       (.I0(\data[5]_i_60_n_1 ),
        .I1(\data[5]_i_61_n_1 ),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\data[5]_i_62_n_1 ),
        .I5(\data[5]_i_63_n_1 ),
        .O(\data[5]_i_21_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[5]_i_210 
       (.I0(y[9]),
        .O(\data[5]_i_210_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_211 
       (.I0(y[8]),
        .I1(yPlayer),
        .O(\data[5]_i_211_n_1 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \data[5]_i_22 
       (.I0(\data[5]_i_6_2 ),
        .I1(\ps/data127_out ),
        .I2(\addr_burger[7]_i_23_n_1 ),
        .I3(\data[5]_i_65_n_1 ),
        .I4(\h_count_reg_reg[8]_0 ),
        .I5(CEP),
        .O(\data[5]_i_22_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_220 
       (.I0(data40_in[8]),
        .I1(P[9]),
        .I2(data40_in[7]),
        .I3(P[8]),
        .O(data3__0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \data[5]_i_23 
       (.I0(\h_count_reg_reg[4]_0 ),
        .I1(\data[5]_i_66_n_1 ),
        .I2(\addr_kebab[12]_i_18_n_1 ),
        .I3(\ps/data19_out ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[5]_i_23_n_1 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \data[5]_i_231 
       (.I0(data40_in[6]),
        .I1(data5[6]),
        .I2(data5[5]),
        .I3(data40_in[5]),
        .O(\data[5]_i_231_n_1 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \data[5]_i_232 
       (.I0(data40_in[4]),
        .I1(data5[4]),
        .I2(data5[3]),
        .I3(data40_in[3]),
        .O(\data[5]_i_232_n_1 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \data[5]_i_233 
       (.I0(data40_in[2]),
        .I1(data5[2]),
        .I2(data5[1]),
        .I3(data40_in[1]),
        .O(\data[5]_i_233_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_234 
       (.I0(data5[0]),
        .I1(data40_in[0]),
        .O(\data[5]_i_234_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_235 
       (.I0(data5[6]),
        .I1(data40_in[6]),
        .I2(data5[5]),
        .I3(data40_in[5]),
        .O(\data[5]_i_235_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_236 
       (.I0(data5[4]),
        .I1(data40_in[4]),
        .I2(data5[3]),
        .I3(data40_in[3]),
        .O(\data[5]_i_236_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_237 
       (.I0(data5[2]),
        .I1(data40_in[2]),
        .I2(data5[1]),
        .I3(data40_in[1]),
        .O(\data[5]_i_237_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_238 
       (.I0(A[0]),
        .I1(yPlayer),
        .I2(data5[0]),
        .I3(data40_in[0]),
        .O(\data[5]_i_238_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data[5]_i_239 
       (.I0(DI),
        .I1(yPlayer),
        .O(\data[5]_i_239_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \data[5]_i_24 
       (.I0(\data[5]_i_6_0 ),
        .I1(\data[5]_i_6_1 ),
        .I2(\ps/data118_out ),
        .I3(\addr_pizza[9]_i_10_n_1 ),
        .I4(\data[5]_i_67_n_1 ),
        .I5(\v_count_reg_reg[7]_0 ),
        .O(\data[5]_i_24_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[5]_i_240 
       (.I0(y[6]),
        .O(\data[5]_i_240_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[5]_i_241 
       (.I0(y[5]),
        .O(\data[5]_i_241_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[5]_i_242 
       (.I0(y[4]),
        .O(\data[5]_i_242_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_247 
       (.I0(data40_in[6]),
        .I1(P[7]),
        .I2(data40_in[5]),
        .I3(P[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_248 
       (.I0(data40_in[4]),
        .I1(P[5]),
        .I2(data40_in[3]),
        .I3(P[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \data[5]_i_249 
       (.I0(data40_in[2]),
        .I1(P[3]),
        .I2(data40_in[1]),
        .I3(P[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \data[5]_i_25 
       (.I0(\h_count_reg_reg[6]_0 ),
        .I1(Q[1]),
        .I2(\data[5]_i_65_n_1 ),
        .I3(\addr_burger[7]_i_23_n_1 ),
        .I4(\ps/data127_out ),
        .I5(Q[0]),
        .O(\data[5]_i_25_n_1 ));
  LUT5 #(
    .INIT(32'h09909009)) 
    \data[5]_i_250 
       (.I0(data40_in[0]),
        .I1(P[1]),
        .I2(yPlayer),
        .I3(A[0]),
        .I4(P[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hF200FFFFF200F200)) 
    \data[5]_i_29 
       (.I0(\data[5]_i_89_n_1 ),
        .I1(\data[5]_i_90_n_1 ),
        .I2(\data[5]_i_91_n_1 ),
        .I3(\data[5]_i_92_n_1 ),
        .I4(\data[5]_i_93_n_1 ),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_29_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \data[5]_i_3 
       (.I0(\data[5]_i_12_n_1 ),
        .I1(\data_reg[5]_0 ),
        .I2(addr_bone_reg),
        .I3(\data[7]_i_2_0 [5]),
        .I4(\data[5]_i_14_n_1 ),
        .I5(\data_reg[5]_1 ),
        .O(\data_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \data[5]_i_31 
       (.I0(\data[5]_i_97_n_1 ),
        .I1(\data[5]_i_98_n_1 ),
        .I2(\data[5]_i_54_n_1 ),
        .I3(\data[5]_i_46_n_1 ),
        .I4(\data[5]_i_53_n_1 ),
        .I5(\data[5]_i_52_n_1 ),
        .O(\data[5]_i_31_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \data[5]_i_32 
       (.I0(\data[5]_i_50_n_1 ),
        .I1(\data[5]_i_49_n_1 ),
        .I2(\data[5]_i_99_n_1 ),
        .I3(\data[5]_i_94_n_1 ),
        .I4(\data[5]_i_43_n_1 ),
        .I5(\data[5]_i_51_n_1 ),
        .O(\data[5]_i_32_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFF0E00000000)) 
    \data[5]_i_33 
       (.I0(\v_count_reg[9]_i_5_n_1 ),
        .I1(addr_hi1_i_11_n_1),
        .I2(DI),
        .I3(\data[5]_i_100_n_1 ),
        .I4(\data[5]_i_101_n_1 ),
        .I5(\data[5]_i_6_1 ),
        .O(\data[5]_i_33_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data[5]_i_34 
       (.I0(\data[5]_i_97_n_1 ),
        .I1(\data[5]_i_98_n_1 ),
        .I2(\data[5]_i_54_n_1 ),
        .I3(\data[5]_i_58_n_1 ),
        .I4(\data[5]_i_57_n_1 ),
        .I5(\data[5]_i_56_n_1 ),
        .O(\data[5]_i_34_n_1 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \data[5]_i_35 
       (.I0(\data_reg[5]_4 ),
        .I1(\ps/data19_out ),
        .I2(\addr_kebab[12]_i_18_n_1 ),
        .I3(\data[5]_i_102_n_1 ),
        .I4(\ps/data1 ),
        .I5(\ps/data3__3 ),
        .O(\data[5]_i_35_n_1 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \data[5]_i_36 
       (.I0(\ps/data436_in ),
        .I1(\addr_burger[7]_i_43_n_1 ),
        .I2(\data[5]_i_103_n_1 ),
        .I3(\addr_burger[7]_i_17_n_1 ),
        .I4(\data[5]_i_104_n_1 ),
        .I5(\addr_burger[7]_i_47_n_1 ),
        .O(\data[5]_i_36_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5555555)) 
    \data[5]_i_38 
       (.I0(\h_count_reg_reg[0]_0 ),
        .I1(\h_count_reg_reg[9]_2 ),
        .I2(\v_count_reg_reg[9]_1 ),
        .I3(\v_count_reg_reg[9]_2 ),
        .I4(addr_bone_reg_0),
        .I5(\h_count_reg_reg[8]_0 ),
        .O(\h_count_reg_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \data[5]_i_39 
       (.I0(y[5]),
        .I1(addr_hi_reg_0_i_6_n_1),
        .I2(y[6]),
        .I3(addr_hi_reg_0_i_4_n_1),
        .I4(\h_count_reg_reg[9]_1 [1]),
        .I5(DI),
        .O(\data[5]_i_39_n_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data[5]_i_4 
       (.I0(\h_count_reg_reg[0]_1 ),
        .I1(\v_count_reg_reg[8]_1 ),
        .O(\addr_heart[7]_i_5_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF00000000)) 
    \data[5]_i_43 
       (.I0(\data[5]_i_105_n_1 ),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[7]_0 [2]),
        .I4(\data[5]_i_106_n_1 ),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_43_n_1 ));
  LUT6 #(
    .INIT(64'h0202020202000202)) 
    \data[5]_i_44 
       (.I0(\data[5]_i_94_n_1 ),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[9]_1 [1]),
        .I3(\data[5]_i_107_n_1 ),
        .I4(\data[5]_i_108_n_1 ),
        .I5(\data[5]_i_109_n_1 ),
        .O(\data[5]_i_44_n_1 ));
  LUT6 #(
    .INIT(64'h1000000010001000)) 
    \data[5]_i_45 
       (.I0(\data[5]_i_110_n_1 ),
        .I1(addr_hi_reg_0_i_8_n_1),
        .I2(\data[5]_i_94_n_1 ),
        .I3(\data[5]_i_111_n_1 ),
        .I4(\data[5]_i_112_n_1 ),
        .I5(\addr_lolipop[11]_i_14_n_1 ),
        .O(\data[5]_i_45_n_1 ));
  LUT6 #(
    .INIT(64'hFFE0FFFFFFFFFFFF)) 
    \data[5]_i_46 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\data[5]_i_113_n_1 ),
        .I2(addr_hi_reg_0_i_10_n_1),
        .I3(addr_hi_reg_0_i_7_n_1),
        .I4(addr_hi_reg_0_i_8_n_1),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_46_n_1 ));
  LUT6 #(
    .INIT(64'h1010000010FF0000)) 
    \data[5]_i_47 
       (.I0(\data[5]_i_114_n_1 ),
        .I1(\data[5]_i_115_n_1 ),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\addr_burger[7]_i_24_n_1 ),
        .I4(\data[5]_i_94_n_1 ),
        .I5(\data[5]_i_116_n_1 ),
        .O(\data[5]_i_47_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_48 
       (.I0(\data[5]_i_94_n_1 ),
        .I1(\data[5]_i_99_n_1 ),
        .O(\data[5]_i_48_n_1 ));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    \data[5]_i_49 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .I2(\data[5]_i_117_n_1 ),
        .I3(\data[5]_i_94_n_1 ),
        .I4(\data[5]_i_118_n_1 ),
        .I5(\addr_lolipop[11]_i_14_n_1 ),
        .O(\data[5]_i_49_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \data[5]_i_5 
       (.I0(\data[5]_i_16_n_1 ),
        .I1(\data[5]_i_17_n_1 ),
        .I2(Q[1]),
        .I3(\data[5]_i_8_n_1 ),
        .I4(\data[5]_i_18_n_1 ),
        .I5(\data[5]_i_19_n_1 ),
        .O(\data[5]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFDFDDDD00000000)) 
    \data[5]_i_50 
       (.I0(\data[5]_i_119_n_1 ),
        .I1(\data[5]_i_120_n_1 ),
        .I2(\data[5]_i_121_n_1 ),
        .I3(\data[5]_i_122_n_1 ),
        .I4(addr_hi_reg_0_i_8_n_1),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_50_n_1 ));
  LUT6 #(
    .INIT(64'h0000000010001100)) 
    \data[5]_i_51 
       (.I0(\data[5]_i_123_n_1 ),
        .I1(\addr_burger[7]_i_25_n_1 ),
        .I2(\data[5]_i_124_n_1 ),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\data[5]_i_125_n_1 ),
        .I5(\v_count_reg_reg[8]_0 ),
        .O(\data[5]_i_51_n_1 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \data[5]_i_52 
       (.I0(\data[5]_i_94_n_1 ),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\data[5]_i_126_n_1 ),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\addr_burger[7]_i_64_n_1 ),
        .I5(\data[5]_i_113_n_1 ),
        .O(\data[5]_i_52_n_1 ));
  LUT6 #(
    .INIT(64'hE000C0C0FFFFFFFF)) 
    \data[5]_i_53 
       (.I0(\data[5]_i_127_n_1 ),
        .I1(\data[5]_i_128_n_1 ),
        .I2(\data[5]_i_106_n_1 ),
        .I3(\data[5]_i_129_n_1 ),
        .I4(addr_hi_reg_0_i_8_n_1),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_53_n_1 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data[5]_i_54 
       (.I0(\data[5]_i_114_n_1 ),
        .I1(\data[5]_i_105_n_1 ),
        .I2(\h_count_reg_reg[9]_1 [1]),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_54_n_1 ));
  LUT6 #(
    .INIT(64'hEF00FFFFEFEFFFFF)) 
    \data[5]_i_55 
       (.I0(\data[5]_i_110_n_1 ),
        .I1(addr_hi_reg_0_i_8_n_1),
        .I2(\data[5]_i_111_n_1 ),
        .I3(\data[5]_i_130_n_1 ),
        .I4(\data[5]_i_94_n_1 ),
        .I5(\data[5]_i_131_n_1 ),
        .O(\data[5]_i_55_n_1 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \data[5]_i_56 
       (.I0(addr_hi_reg_0_i_8_n_1),
        .I1(addr_hi_reg_0_i_9_n_1),
        .I2(\data[5]_i_94_n_1 ),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\data[5]_i_132_n_1 ),
        .I5(addr_hi_reg_0_i_10_n_1),
        .O(\data[5]_i_56_n_1 ));
  LUT6 #(
    .INIT(64'h5D0055005D005D00)) 
    \data[5]_i_57 
       (.I0(\data[5]_i_133_n_1 ),
        .I1(\addr_lolipop[11]_i_14_n_1 ),
        .I2(\data[5]_i_118_n_1 ),
        .I3(\data[5]_i_94_n_1 ),
        .I4(\data[5]_i_117_n_1 ),
        .I5(\data[5]_i_134_n_1 ),
        .O(\data[5]_i_57_n_1 ));
  LUT6 #(
    .INIT(64'h00A2FFFF00000000)) 
    \data[5]_i_58 
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\addr_burger[7]_i_41_n_1 ),
        .I2(\h_count_reg_reg[4]_1 [1]),
        .I3(\data[5]_i_135_n_1 ),
        .I4(\data[5]_i_136_n_1 ),
        .I5(\data[5]_i_94_n_1 ),
        .O(\data[5]_i_58_n_1 ));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \data[5]_i_59 
       (.I0(\addr_burger[7]_i_37_n_1 ),
        .I1(\data[5]_i_137_n_1 ),
        .I2(\data[5]_i_138_n_1 ),
        .I3(\addr_burger[7]_i_40_n_1 ),
        .I4(\addr_burger[7]_i_39_n_1 ),
        .I5(\addr_burger[7]_i_38_n_1 ),
        .O(\data[5]_i_59_n_1 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFFFE)) 
    \data[5]_i_6 
       (.I0(\data[5]_i_20_n_1 ),
        .I1(\data[5]_i_21_n_1 ),
        .I2(\data[5]_i_22_n_1 ),
        .I3(\data[5]_i_23_n_1 ),
        .I4(\data[5]_i_24_n_1 ),
        .I5(\data[5]_i_25_n_1 ),
        .O(\data[5]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAA88AA80AA88AA88)) 
    \data[5]_i_60 
       (.I0(\data_reg[5]_7 ),
        .I1(DI),
        .I2(\addr_burger[7]_i_46_n_1 ),
        .I3(\addr_kebab[12]_i_13_n_1 ),
        .I4(y[6]),
        .I5(\data[5]_i_139_n_1 ),
        .O(\data[5]_i_60_n_1 ));
  LUT6 #(
    .INIT(64'h0020002000000020)) 
    \data[5]_i_61 
       (.I0(\data[5]_i_140_n_1 ),
        .I1(\data[5]_i_141_n_1 ),
        .I2(\addr_lolipop[11]_i_14_n_1 ),
        .I3(y[9]),
        .I4(y[8]),
        .I5(\data[5]_i_139_n_1 ),
        .O(\data[5]_i_61_n_1 ));
  LUT6 #(
    .INIT(64'h2222222200002220)) 
    \data[5]_i_62 
       (.I0(\data[5]_i_142_n_1 ),
        .I1(\data[5]_i_143_n_1 ),
        .I2(\addr_burger[7]_i_41_n_1 ),
        .I3(\data[5]_i_144_n_1 ),
        .I4(\h_count_reg_reg[4]_1 [3]),
        .I5(\addr_burger[7]_i_27_n_1 ),
        .O(\data[5]_i_62_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEAAA)) 
    \data[5]_i_63 
       (.I0(\data[5]_i_145_n_1 ),
        .I1(y[4]),
        .I2(y[5]),
        .I3(\data[5]_i_146_n_1 ),
        .I4(\data[5]_i_139_n_1 ),
        .I5(\data[5]_i_123_n_1 ),
        .O(\data[5]_i_63_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data[5]_i_65 
       (.I0(\ps/data30_in ),
        .I1(\ps/data2 ),
        .I2(\ps/data120_in ),
        .I3(\ps/data319_in ),
        .O(\data[5]_i_65_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data[5]_i_66 
       (.I0(\ps/data30_in ),
        .I1(\ps/data2 ),
        .I2(\ps/data1 ),
        .I3(\ps/data3__3 ),
        .O(\data[5]_i_66_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data[5]_i_67 
       (.I0(\ps/data30_in ),
        .I1(\ps/data2 ),
        .I2(\ps/data310_in ),
        .I3(\ps/data111_in ),
        .O(\data[5]_i_67_n_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \data[5]_i_69 
       (.I0(y[9]),
        .I1(yPlayer),
        .I2(y[8]),
        .O(\data[5]_i_69_n_1 ));
  LUT3 #(
    .INIT(8'h09)) 
    \data[5]_i_70 
       (.I0(y[8]),
        .I1(yPlayer),
        .I2(y[9]),
        .O(\data[5]_i_70_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_72 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_72_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_73 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_73_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_74 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_74_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[5]_i_75 
       (.I0(CO),
        .I1(\h_count_reg_reg[9]_0 ),
        .O(\data[5]_i_75_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \data[5]_i_8 
       (.I0(\h_count_reg_reg[0]_1 ),
        .I1(\v_count_reg_reg[8]_1 ),
        .I2(\ps/data3152_in ),
        .I3(\ps/data3150_in ),
        .I4(\data_reg[5]_6 ),
        .I5(\data[5]_i_29_n_1 ),
        .O(\data[5]_i_8_n_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_81 
       (.I0(CO),
        .I1(\data_reg[5]_i_28 [3]),
        .I2(\data_reg[5]_i_28 [2]),
        .O(\v_count_reg_reg[9]_0 [1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data[5]_i_82 
       (.I0(CO),
        .I1(\data_reg[5]_i_28 [1]),
        .I2(\data_reg[5]_i_28 [0]),
        .O(\v_count_reg_reg[9]_0 [0]));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_85 
       (.I0(\data_reg[5]_i_28 [3]),
        .I1(\data_reg[5]_i_28 [2]),
        .I2(CO),
        .O(data3__1[1]));
  LUT3 #(
    .INIT(8'h18)) 
    \data[5]_i_86 
       (.I0(\data_reg[5]_i_28 [1]),
        .I1(\data_reg[5]_i_28 [0]),
        .I2(CO),
        .O(data3__1[0]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \data[5]_i_89 
       (.I0(\addr_burger[7]_i_78_n_1 ),
        .I1(y[8]),
        .I2(DI),
        .I3(\v_count_reg_reg[3]_0 ),
        .I4(y[6]),
        .I5(y[2]),
        .O(\data[5]_i_89_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \data[5]_i_9 
       (.I0(\data_reg[5]_3 ),
        .I1(\data[5]_i_31_n_1 ),
        .I2(\data_reg[5]_4 ),
        .I3(\data[5]_i_32_n_1 ),
        .I4(\data[5]_i_33_n_1 ),
        .I5(\data[5]_i_34_n_1 ),
        .O(\data[5]_i_9_n_1 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \data[5]_i_90 
       (.I0(y[4]),
        .I1(A[0]),
        .I2(y[1]),
        .O(\data[5]_i_90_n_1 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \data[5]_i_91 
       (.I0(y[4]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[8]),
        .I3(DI),
        .I4(\data[5]_i_176_n_1 ),
        .O(\data[5]_i_91_n_1 ));
  LUT5 #(
    .INIT(32'h0001FFF8)) 
    \data[5]_i_92 
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [0]),
        .I4(\h_count_reg_reg[9]_1 [1]),
        .O(\data[5]_i_92_n_1 ));
  LUT6 #(
    .INIT(64'hDDDDDDD0DDDDDDDD)) 
    \data[5]_i_93 
       (.I0(addr_milk_reg_i_13_n_1),
        .I1(\data[5]_i_177_n_1 ),
        .I2(\data[5]_i_178_n_1 ),
        .I3(\data[5]_i_179_n_1 ),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .I5(\data[5]_i_180_n_1 ),
        .O(\data[5]_i_93_n_1 ));
  LUT6 #(
    .INIT(64'h00000000BBBBBBB8)) 
    \data[5]_i_94 
       (.I0(\data[5]_i_181_n_1 ),
        .I1(DI),
        .I2(y[6]),
        .I3(\addr_burger[7]_i_46_n_1 ),
        .I4(\data[5]_i_182_n_1 ),
        .I5(\data[5]_i_183_n_1 ),
        .O(\data[5]_i_94_n_1 ));
  LUT6 #(
    .INIT(64'hFCFDFCFDFFFDFCFD)) 
    \data[5]_i_95 
       (.I0(\data[5]_i_184_n_1 ),
        .I1(y[8]),
        .I2(y[9]),
        .I3(DI),
        .I4(y[6]),
        .I5(\addr_kebab[12]_i_21_n_1 ),
        .O(\v_count_reg_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFD55001500000000)) 
    \data[5]_i_96 
       (.I0(\addr_burger[7]_i_64_n_1 ),
        .I1(\addr_lolipop[11]_i_11_n_1 ),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [3]),
        .I4(\addr_burger[7]_i_27_n_1 ),
        .I5(\addr_lolipop[11]_i_14_n_1 ),
        .O(\h_count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h88808800888088C0)) 
    \data[5]_i_97 
       (.I0(\data[5]_i_185_n_1 ),
        .I1(\data[5]_i_94_n_1 ),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\h_count_reg_reg[7]_0 [2]),
        .I5(\data[5]_i_186_n_1 ),
        .O(\data[5]_i_97_n_1 ));
  LUT6 #(
    .INIT(64'h0008888888888888)) 
    \data[5]_i_98 
       (.I0(\data[5]_i_131_n_1 ),
        .I1(\data[5]_i_94_n_1 ),
        .I2(\h_count_reg_reg[4]_1 [2]),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[7]_0 [1]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_98_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFBFBBBBBBBBFB)) 
    \data[5]_i_99 
       (.I0(\data[5]_i_187_n_1 ),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .I2(\addr_burger[7]_i_41_n_1 ),
        .I3(\h_count_reg_reg[4]_1 [1]),
        .I4(\h_count_reg_reg[4]_1 [2]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(\data[5]_i_99_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAA200)) 
    \data[6]_i_1 
       (.I0(\data[6]_i_2_n_1 ),
        .I1(\data[5]_i_9_n_1 ),
        .I2(\data[5]_i_8_n_1 ),
        .I3(\data_reg[5]_2 ),
        .I4(\data[5]_i_6_n_1 ),
        .I5(data_play[1]),
        .O(\data_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77750000)) 
    \data[6]_i_2 
       (.I0(\data_reg[6]_0 ),
        .I1(\data[6]_i_4_n_1 ),
        .I2(\addr_burger[7]_i_4_n_1 ),
        .I3(\data_reg[7]_0 ),
        .I4(addr_bone_reg),
        .I5(\data[6]_i_5_n_1 ),
        .O(\data[6]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \data[6]_i_4 
       (.I0(\h_count_reg_reg[8]_0 ),
        .I1(\data_reg[5]_5 ),
        .I2(\h_count_reg_reg[0]_0 ),
        .I3(DOADO[0]),
        .O(\data[6]_i_4_n_1 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFF100F100F100)) 
    \data[6]_i_5 
       (.I0(\data[6]_i_2_0 ),
        .I1(\h_count_reg_reg[4]_0 ),
        .I2(\data[6]_i_2_1 ),
        .I3(\data_reg[7]_0 ),
        .I4(CEP),
        .I5(\data[7]_i_2_0 [6]),
        .O(\data[6]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAA200)) 
    \data[7]_i_1 
       (.I0(\data[7]_i_2_n_1 ),
        .I1(\data[5]_i_9_n_1 ),
        .I2(\data[5]_i_8_n_1 ),
        .I3(\data_reg[5]_2 ),
        .I4(\data[5]_i_6_n_1 ),
        .I5(data_play[2]),
        .O(\data_reg[7] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data[7]_i_10 
       (.I0(y[4]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[6]),
        .I3(y[2]),
        .O(\data[7]_i_10_n_1 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \data[7]_i_11 
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .I2(y[5]),
        .I3(y[4]),
        .O(\data[7]_i_11_n_1 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \data[7]_i_12 
       (.I0(y[6]),
        .I1(y[9]),
        .I2(y[5]),
        .O(\data[7]_i_12_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data[7]_i_13 
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .I2(y[8]),
        .I3(DI),
        .O(\data[7]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'hFFF5FFF4FFFFFFF4)) 
    \data[7]_i_2 
       (.I0(\data[7]_i_3_n_1 ),
        .I1(\addr_burger[7]_i_4_n_1 ),
        .I2(\data_reg[7]_1 ),
        .I3(\data[7]_i_5_n_1 ),
        .I4(\data_reg[7]_0 ),
        .I5(\data_reg[7]_2 ),
        .O(\data[7]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \data[7]_i_3 
       (.I0(\h_count_reg_reg[8]_0 ),
        .I1(\data_reg[5]_5 ),
        .I2(\h_count_reg_reg[0]_0 ),
        .I3(addr_bone_reg),
        .I4(DOADO[1]),
        .O(\data[7]_i_3_n_1 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'hFF202020)) 
    \data[7]_i_5 
       (.I0(addr_bone_reg),
        .I1(\h_count_reg_reg[0]_0 ),
        .I2(\data[7]_i_2_1 ),
        .I3(CEP),
        .I4(\data[7]_i_2_0 [7]),
        .O(\data[7]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \data[7]_i_7 
       (.I0(addr_bone_reg_0),
        .I1(\v_count_reg_reg[9]_2 ),
        .I2(\v_count_reg_reg[9]_1 ),
        .I3(\h_count_reg_reg[9]_2 ),
        .I4(\data[7]_i_9_n_1 ),
        .I5(\addr_burger[7]_i_26_n_1 ),
        .O(\h_count_reg_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data[7]_i_9 
       (.I0(addr_milk_reg_i_17_n_1),
        .I1(\data[7]_i_10_n_1 ),
        .I2(\data[7]_i_11_n_1 ),
        .I3(\data[7]_i_12_n_1 ),
        .I4(\data[7]_i_13_n_1 ),
        .I5(addr_milk_reg_i_13_n_1),
        .O(\data[7]_i_9_n_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_155 
       (.CI(\data_reg[5]_i_200_n_1 ),
        .CO({\data_reg[5]_i_155_n_1 ,\NLW_data_reg[5]_i_155_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\data[5]_i_201_n_1 ,\data[5]_i_202_n_1 ,\data[5]_i_203_n_1 ,\data[5]_i_204_n_1 }),
        .O(\NLW_data_reg[5]_i_155_O_UNCONNECTED [3:0]),
        .S({\data_reg[5]_i_71_0 ,\data[5]_i_207_n_1 ,\data[5]_i_208_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_164 
       (.CI(\data_reg[5]_i_209_n_1 ),
        .CO({\NLW_data_reg[5]_i_164_CO_UNCONNECTED [3],CO,\NLW_data_reg[5]_i_164_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,y[9:8]}),
        .O({\NLW_data_reg[5]_i_164_O_UNCONNECTED [3:2],data40_in[8:7]}),
        .S({1'b0,1'b1,\data[5]_i_210_n_1 ,\data[5]_i_211_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_200 
       (.CI(1'b0),
        .CO({\data_reg[5]_i_200_n_1 ,\NLW_data_reg[5]_i_200_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\data[5]_i_231_n_1 ,\data[5]_i_232_n_1 ,\data[5]_i_233_n_1 ,\data[5]_i_234_n_1 }),
        .O(\NLW_data_reg[5]_i_200_O_UNCONNECTED [3:0]),
        .S({\data[5]_i_235_n_1 ,\data[5]_i_236_n_1 ,\data[5]_i_237_n_1 ,\data[5]_i_238_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_209 
       (.CI(addr_bone_reg_i_38_n_1),
        .CO({\data_reg[5]_i_209_n_1 ,\NLW_data_reg[5]_i_209_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({DI,y[6:4]}),
        .O(data40_in[6:3]),
        .S({\data[5]_i_239_n_1 ,\data[5]_i_240_n_1 ,\data[5]_i_241_n_1 ,\data[5]_i_242_n_1 }));
  CARRY4 \data_reg[5]_i_26 
       (.CI(\data_reg[5]_i_68_n_1 ),
        .CO({\NLW_data_reg[5]_i_26_CO_UNCONNECTED [3:1],\ps/data3152_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\data[5]_i_69_n_1 }),
        .O(\NLW_data_reg[5]_i_26_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\data[5]_i_70_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_27 
       (.CI(\data_reg[5]_i_71_n_1 ),
        .CO({\ps/data3150_in ,\NLW_data_reg[5]_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\data[5]_i_72_n_1 ,\data[5]_i_73_n_1 ,\data[5]_i_74_n_1 ,\data[5]_i_75_n_1 }),
        .O(\NLW_data_reg[5]_i_27_O_UNCONNECTED [3:0]),
        .S(\data[5]_i_8_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_68 
       (.CI(1'b0),
        .CO({\data_reg[5]_i_68_n_1 ,\NLW_data_reg[5]_i_68_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\data[5]_i_147_n_1 ,\data[5]_i_148_n_1 ,\data[5]_i_149_n_1 ,\data[5]_i_150_n_1 }),
        .O(\NLW_data_reg[5]_i_68_O_UNCONNECTED [3:0]),
        .S({\data[5]_i_151_n_1 ,\data[5]_i_152_n_1 ,\data[5]_i_153_n_1 ,\data[5]_i_154_n_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \data_reg[5]_i_71 
       (.CI(\data_reg[5]_i_155_n_1 ),
        .CO({\data_reg[5]_i_71_n_1 ,\NLW_data_reg[5]_i_71_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\data[5]_i_156_n_1 ,\data[5]_i_157_n_1 ,\data[5]_i_158_n_1 ,\data[5]_i_159_n_1 }),
        .O(\NLW_data_reg[5]_i_71_O_UNCONNECTED [3:0]),
        .S(\data_reg[5]_i_27_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[1]),
        .Q(\h_count_reg_reg[4]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[2]),
        .Q(\h_count_reg_reg[4]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[3]),
        .Q(\h_count_reg_reg[4]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[4]),
        .Q(\h_count_reg_reg[4]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[5]),
        .Q(\h_count_reg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[6]),
        .Q(\h_count_reg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[7]),
        .Q(\h_count_reg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[8]),
        .Q(\h_count_reg_reg[9]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_1212_BUFG),
        .D(C[9]),
        .Q(\h_count_reg_reg[9]_1 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008080808080800)) 
    hsync_reg_i_1
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .I2(\h_count_reg_reg[9]_1 [0]),
        .I3(\h_count_reg_reg[7]_0 [1]),
        .I4(\h_count_reg_reg[7]_0 [0]),
        .I5(\h_count_reg_reg[4]_1 [3]),
        .O(hsync_next));
  FDRE #(
    .INIT(1'b0)) 
    hsync_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(hsync_next),
        .Q(Hsync_OBUF),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    n_0_1212_BUFG_inst_i_1
       (.I0(pixel_reg[0]),
        .I1(pixel_reg[1]),
        .O(n_0_1212_BUFG_inst_n_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_0_out_i_1
       (.CI(p_0_out_i_2_n_1),
        .CO(NLW_p_0_out_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,y[9:8]}),
        .O({NLW_p_0_out_i_1_O_UNCONNECTED[3],\v_count_reg_reg[9]_6 [10:8]}),
        .S({1'b0,1'b1,p_0_out_i_5_n_1,p_0_out_i_6_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_10
       (.I0(y[4]),
        .O(p_0_out_i_10_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_11
       (.I0(\v_count_reg_reg[3]_0 ),
        .O(p_0_out_i_11_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_12
       (.I0(y[2]),
        .O(p_0_out_i_12_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_13
       (.I0(y[1]),
        .O(p_0_out_i_13_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_14
       (.I0(A[0]),
        .O(p_0_out_i_14_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_15
       (.I0(\v_count_reg_reg[3]_0 ),
        .O(p_0_out_i_15_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_16
       (.I0(y[2]),
        .O(p_0_out_i_16_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_17
       (.I0(y[1]),
        .O(p_0_out_i_17_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_18
       (.I0(A[0]),
        .O(p_0_out_i_18_n_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_0_out_i_2
       (.CI(p_0_out_i_3_n_1),
        .CO({p_0_out_i_2_n_1,NLW_p_0_out_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,y[6:4]}),
        .O(\v_count_reg_reg[9]_6 [7:4]),
        .S({p_0_out_i_7_n_1,p_0_out_i_8_n_1,p_0_out_i_9_n_1,p_0_out_i_10_n_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_0_out_i_3
       (.CI(1'b0),
        .CO({p_0_out_i_3_n_1,NLW_p_0_out_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({\v_count_reg_reg[3]_0 ,y[2:1],A[0]}),
        .O({\v_count_reg_reg[9]_6 [3:1],NLW_p_0_out_i_3_O_UNCONNECTED[0]}),
        .S({p_0_out_i_11_n_1,p_0_out_i_12_n_1,p_0_out_i_13_n_1,p_0_out_i_14_n_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_0_out_i_4
       (.CI(1'b0),
        .CO(NLW_p_0_out_i_4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b1),
        .DI({1'b0,y[2:1],A[0]}),
        .O({\ps/p_4_in ,\v_count_reg_reg[9]_6 [0]}),
        .S({p_0_out_i_15_n_1,p_0_out_i_16_n_1,p_0_out_i_17_n_1,p_0_out_i_18_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_5
       (.I0(y[9]),
        .O(p_0_out_i_5_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_6
       (.I0(y[8]),
        .O(p_0_out_i_6_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_7
       (.I0(DI),
        .O(p_0_out_i_7_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_8
       (.I0(y[6]),
        .O(p_0_out_i_8_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_i_9
       (.I0(y[5]),
        .O(p_0_out_i_9_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    p_1_out_i_1
       (.I0(\v_count_reg_reg[9]_4 ),
        .I1(\h_count_reg_reg[8]_2 ),
        .I2(\v_count_reg_reg[8]_2 ),
        .I3(\h_count_reg_reg[9]_3 ),
        .O(B));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_1_out_i_10
       (.CI(1'b0),
        .CO({p_1_out_i_10_n_1,NLW_p_1_out_i_10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({p_1_out_i_28_n_1,p_1_out_i_29_n_1,p_1_out_i_30_n_1,p_1_out_i_31_n_1}),
        .O(NLW_p_1_out_i_10_O_UNCONNECTED[3:0]),
        .S({p_1_out_i_32_n_1,p_1_out_i_33_n_1,p_1_out_i_34_n_1,p_1_out_i_35_n_1}));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_11
       (.I0(y[8]),
        .I1(y[9]),
        .O(p_1_out_i_11_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_12
       (.I0(y[9]),
        .I1(y[8]),
        .O(p_1_out_i_12_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_1_out_i_13
       (.CI(1'b0),
        .CO({p_1_out_i_13_n_1,NLW_p_1_out_i_13_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({p_1_out_i_36_n_1,p_1_out_i_37_n_1,p_1_out_i_38_n_1,p_1_out_i_39_n_1}),
        .O(NLW_p_1_out_i_13_O_UNCONNECTED[3:0]),
        .S({p_1_out_i_40_n_1,p_1_out_i_41_n_1,p_1_out_i_42_n_1,p_1_out_i_43_n_1}));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_14
       (.I0(\h_count_reg_reg[9]_1 [1]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .O(p_1_out_i_14_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_15
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(p_1_out_i_15_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_i_16
       (.I0(DI),
        .O(p_1_out_i_16_n_1));
  LUT2 #(
    .INIT(4'h7)) 
    p_1_out_i_17
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(p_1_out_i_17_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    p_1_out_i_18
       (.I0(DI),
        .I1(y[6]),
        .O(p_1_out_i_18_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_19
       (.I0(y[5]),
        .I1(y[4]),
        .O(p_1_out_i_19_n_1));
  CARRY4 p_1_out_i_2
       (.CI(p_1_out_i_6_n_1),
        .CO({NLW_p_1_out_i_2_CO_UNCONNECTED[3:1],\v_count_reg_reg[9]_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_1_out_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_1_out_i_7_n_1}));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out_i_20
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .O(p_1_out_i_20_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_21
       (.I0(A[0]),
        .I1(y[1]),
        .O(p_1_out_i_21_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_i_22
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .O(p_1_out_i_22_n_1));
  LUT2 #(
    .INIT(4'h7)) 
    p_1_out_i_23
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(p_1_out_i_23_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    p_1_out_i_24
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(p_1_out_i_24_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_25
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(p_1_out_i_25_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    p_1_out_i_26
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(p_1_out_i_26_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_27
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(p_1_out_i_27_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_28
       (.I0(DI),
        .I1(y[6]),
        .O(p_1_out_i_28_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_29
       (.I0(y[4]),
        .I1(y[5]),
        .O(p_1_out_i_29_n_1));
  CARRY4 p_1_out_i_3
       (.CI(p_1_out_i_8_n_1),
        .CO({NLW_p_1_out_i_3_CO_UNCONNECTED[3:1],\h_count_reg_reg[8]_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_1_out_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_1_out_i_9_n_1}));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_30
       (.I0(\v_count_reg_reg[3]_0 ),
        .I1(y[2]),
        .O(p_1_out_i_30_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_31
       (.I0(y[1]),
        .I1(A[0]),
        .O(p_1_out_i_31_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_32
       (.I0(y[6]),
        .I1(DI),
        .O(p_1_out_i_32_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_33
       (.I0(y[5]),
        .I1(y[4]),
        .O(p_1_out_i_33_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_34
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(p_1_out_i_34_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_35
       (.I0(A[0]),
        .I1(y[1]),
        .O(p_1_out_i_35_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_36
       (.I0(\h_count_reg_reg[7]_0 [2]),
        .I1(\h_count_reg_reg[7]_0 [1]),
        .O(p_1_out_i_36_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_37
       (.I0(\h_count_reg_reg[7]_0 [0]),
        .I1(\h_count_reg_reg[4]_1 [3]),
        .O(p_1_out_i_37_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_38
       (.I0(\h_count_reg_reg[4]_1 [1]),
        .I1(\h_count_reg_reg[4]_1 [2]),
        .O(p_1_out_i_38_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    p_1_out_i_39
       (.I0(D[0]),
        .I1(\h_count_reg_reg[4]_1 [0]),
        .O(p_1_out_i_39_n_1));
  CARRY4 p_1_out_i_4
       (.CI(p_1_out_i_10_n_1),
        .CO({NLW_p_1_out_i_4_CO_UNCONNECTED[3:1],\v_count_reg_reg[8]_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_out_i_11_n_1}),
        .O(NLW_p_1_out_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_1_out_i_12_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_40
       (.I0(\h_count_reg_reg[7]_0 [1]),
        .I1(\h_count_reg_reg[7]_0 [2]),
        .O(p_1_out_i_40_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_41
       (.I0(\h_count_reg_reg[4]_1 [3]),
        .I1(\h_count_reg_reg[7]_0 [0]),
        .O(p_1_out_i_41_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_42
       (.I0(\h_count_reg_reg[4]_1 [2]),
        .I1(\h_count_reg_reg[4]_1 [1]),
        .O(p_1_out_i_42_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_43
       (.I0(\h_count_reg_reg[4]_1 [0]),
        .I1(D[0]),
        .O(p_1_out_i_43_n_1));
  CARRY4 p_1_out_i_5
       (.CI(p_1_out_i_13_n_1),
        .CO({NLW_p_1_out_i_5_CO_UNCONNECTED[3:1],\h_count_reg_reg[9]_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_out_i_14_n_1}),
        .O(NLW_p_1_out_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_1_out_i_15_n_1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_1_out_i_6
       (.CI(1'b0),
        .CO({p_1_out_i_6_n_1,NLW_p_1_out_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({p_1_out_i_16_n_1,1'b0,p_1_out_i_17_n_1,1'b0}),
        .O(NLW_p_1_out_i_6_O_UNCONNECTED[3:0]),
        .S({p_1_out_i_18_n_1,p_1_out_i_19_n_1,p_1_out_i_20_n_1,p_1_out_i_21_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_7
       (.I0(y[9]),
        .I1(y[8]),
        .O(p_1_out_i_7_n_1));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 p_1_out_i_8
       (.CI(1'b0),
        .CO({p_1_out_i_8_n_1,NLW_p_1_out_i_8_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({p_1_out_i_22_n_1,1'b0,p_1_out_i_23_n_1,1'b0}),
        .O(NLW_p_1_out_i_8_O_UNCONNECTED[3:0]),
        .S({p_1_out_i_24_n_1,p_1_out_i_25_n_1,p_1_out_i_26_n_1,p_1_out_i_27_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    p_1_out_i_9
       (.I0(\h_count_reg_reg[9]_1 [0]),
        .I1(\h_count_reg_reg[9]_1 [1]),
        .O(p_1_out_i_9_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_reg[0]_i_1 
       (.I0(pixel_reg[0]),
        .O(pixel_next[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_reg[1]_i_1 
       (.I0(pixel_reg[0]),
        .I1(pixel_reg[1]),
        .O(pixel_next[1]));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pixel_next[0]),
        .Q(pixel_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pixel_next[1]),
        .Q(pixel_reg[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \v_count_reg[0]_i_1 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(\v_count_reg[0]_i_2_n_1 ),
        .I3(y[1]),
        .I4(A[0]),
        .O(\v_count_reg[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \v_count_reg[0]_i_2 
       (.I0(y[8]),
        .I1(y[9]),
        .I2(y[6]),
        .I3(DI),
        .I4(y[5]),
        .I5(y[4]),
        .O(\v_count_reg[0]_i_2_n_1 ));
  LUT3 #(
    .INIT(8'h28)) 
    \v_count_reg[1]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[1]),
        .I2(A[0]),
        .O(\v_count_reg[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count_reg[2]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[2]),
        .I2(A[0]),
        .I3(y[1]),
        .O(\v_count_reg[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count_reg[3]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(y[1]),
        .I3(A[0]),
        .I4(y[2]),
        .O(\v_count_reg[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count_reg[4]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[4]),
        .I2(y[1]),
        .I3(A[0]),
        .I4(\v_count_reg_reg[3]_0 ),
        .I5(y[2]),
        .O(\v_count_reg[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \v_count_reg[5]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[5]),
        .I2(\v_count_reg[5]_i_2_n_1 ),
        .I3(A[0]),
        .I4(y[1]),
        .I5(y[4]),
        .O(\v_count_reg[5]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \v_count_reg[5]_i_2 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .O(\v_count_reg[5]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count_reg[6]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[6]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(y[5]),
        .O(\v_count_reg[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count_reg[7]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(DI),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(y[6]),
        .I4(y[5]),
        .O(\v_count_reg[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count_reg[8]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[8]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(DI),
        .I4(y[5]),
        .I5(y[6]),
        .O(\v_count_reg[8]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \v_count_reg[9]_i_1 
       (.I0(pixel_reg[1]),
        .I1(pixel_reg[0]),
        .I2(addr_hi0_i_12_n_1),
        .O(v_count_reg0));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \v_count_reg[9]_i_2 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(y[9]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(y[8]),
        .I4(\v_count_reg[9]_i_5_n_1 ),
        .I5(DI),
        .O(\v_count_reg[9]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \v_count_reg[9]_i_3 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(\v_count_reg[0]_i_2_n_1 ),
        .I3(y[1]),
        .I4(A[0]),
        .O(\v_count_reg[9]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count_reg[9]_i_4 
       (.I0(y[2]),
        .I1(\v_count_reg_reg[3]_0 ),
        .I2(A[0]),
        .I3(y[1]),
        .I4(y[4]),
        .O(\v_count_reg[9]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \v_count_reg[9]_i_5 
       (.I0(y[5]),
        .I1(y[6]),
        .O(\v_count_reg[9]_i_5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[0]_i_1_n_1 ),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[1]_i_1_n_1 ),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[2]_i_1_n_1 ),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[3]_i_1_n_1 ),
        .Q(\v_count_reg_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[4]_i_1_n_1 ),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[5]_i_1_n_1 ),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[6]_i_1_n_1 ),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[7]_i_1_n_1 ),
        .Q(DI),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[8]_i_1_n_1 ),
        .Q(y[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[9]_i_2_n_1 ),
        .Q(y[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaBlue_OBUF[0]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [0]),
        .O(vgaBlue_OBUF[0]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaBlue_OBUF[1]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [1]),
        .O(vgaBlue_OBUF[1]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaBlue_OBUF[2]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [2]),
        .O(vgaBlue_OBUF[2]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaBlue_OBUF[3]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [3]),
        .O(vgaBlue_OBUF[3]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaGreen_OBUF[0]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [4]),
        .O(vgaGreen_OBUF[0]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaGreen_OBUF[1]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [5]),
        .O(vgaGreen_OBUF[1]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaGreen_OBUF[2]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [6]),
        .O(vgaGreen_OBUF[2]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaGreen_OBUF[3]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [7]),
        .O(vgaGreen_OBUF[3]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaRed_OBUF[0]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [8]),
        .O(vgaRed_OBUF[0]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaRed_OBUF[1]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [9]),
        .O(vgaRed_OBUF[1]));
  LUT6 #(
    .INIT(64'h0155000000000000)) 
    \vgaRed_OBUF[2]_inst_i_1 
       (.I0(y[9]),
        .I1(\h_count_reg_reg[9]_1 [0]),
        .I2(\h_count_reg_reg[7]_0 [2]),
        .I3(\h_count_reg_reg[9]_1 [1]),
        .I4(\vgaRed_OBUF[2]_inst_i_2_n_1 ),
        .I5(\vgaRed[2] [10]),
        .O(vgaRed_OBUF[2]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \vgaRed_OBUF[2]_inst_i_2 
       (.I0(DI),
        .I1(y[5]),
        .I2(y[6]),
        .I3(y[8]),
        .O(\vgaRed_OBUF[2]_inst_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00010004)) 
    vsync_reg_i_1
       (.I0(\v_count_reg[0]_i_2_n_1 ),
        .I1(y[1]),
        .I2(\v_count_reg_reg[3]_0 ),
        .I3(y[2]),
        .I4(A[0]),
        .O(vsync_next));
  FDRE #(
    .INIT(1'b0)) 
    vsync_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(vsync_next),
        .Q(Vsync_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
