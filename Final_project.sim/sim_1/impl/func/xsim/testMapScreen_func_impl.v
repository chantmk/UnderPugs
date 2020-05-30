// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat May 30 15:46:52 2020
// Host        : LAPTOP-N3N9V3PL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/ThammakornK/Documents/Chula/3_Junior/2/HW_Lab/HWProject/Final_project.sim/sim_1/impl/func/xsim/testMapScreen_func_impl.v
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
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire [3:0]cnt_reg__0;
  wire \datacur[0]_i_1_n_0 ;
  wire \datacur[1]_i_1_n_0 ;
  wire \datacur[2]_i_1_n_0 ;
  wire \datacur[3]_i_1_n_0 ;
  wire \datacur[4]_i_1_n_0 ;
  wire \datacur[5]_i_1_n_0 ;
  wire \datacur[6]_i_1_n_0 ;
  wire \datacur[7]_i_1_n_0 ;
  wire db_clk_n_0;
  wire flag;
  wire flag_0;
  wire flag_i_1_n_0;
  wire \keycode_reg[0]_0 ;
  wire [7:0]\keycode_reg[15]_0 ;
  wire \keycode_reg[1]_0 ;
  wire \keycode_reg[2]_0 ;
  wire \keycode_reg[3]_0 ;
  wire \keycode_reg[4]_0 ;
  wire \keycode_reg[5]_0 ;
  wire \keycode_reg[6]_0 ;
  wire \keycode_reg[7]_0 ;
  wire \keycodev[15]_i_10_n_0 ;
  wire \keycodev[15]_i_11_n_0 ;
  wire \keycodev[15]_i_12_n_0 ;
  wire \keycodev[15]_i_2_n_0 ;
  wire \keycodev[15]_i_3_n_0 ;
  wire \keycodev[15]_i_4_n_0 ;
  wire \keycodev[15]_i_5_n_0 ;
  wire \keycodev[15]_i_7_n_0 ;
  wire \keycodev[15]_i_8_n_0 ;
  wire \keycodev[15]_i_9_n_0 ;
  wire \keycodev_reg[0] ;
  wire [1:0]\keycodev_reg[15] ;
  wire oflag_i_1_n_0;
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
        .I2(Q[4]),
        .I3(\keycode_reg[4]_0 ),
        .I4(\keycode_reg[5]_0 ),
        .I5(Q[5]),
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg__0[1]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(cnt0[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(db_clk_n_0),
        .CE(cnt),
        .D(cnt0[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[0]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[0]),
        .O(\datacur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[1]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[1]),
        .O(\datacur[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \datacur[2]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[2]),
        .O(\datacur[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[3]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[3]),
        .O(\datacur[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[4]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[4]),
        .O(\datacur[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[5]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[5]),
        .O(\datacur[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \datacur[6]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[3]),
        .I5(p_1_in[6]),
        .O(\datacur[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \datacur[7]_i_1 
       (.I0(O),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[0]),
        .I5(p_1_in[7]),
        .O(\datacur[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[0] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[0]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[1] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[1]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[2] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[2]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[3] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[3]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[4] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[4]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[5] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[5]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[6] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[6]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[7] 
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(\datacur[7]_i_1_n_0 ),
        .Q(p_1_in[7]),
        .R(1'b0));
  debouncer db_clk
       (.CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .O_reg_0(db_clk_n_0),
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
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    flag_reg
       (.C(db_clk_n_0),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[0]),
        .Q(\keycode_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[10] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[2]_0 ),
        .Q(\keycode_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[11] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[3]_0 ),
        .Q(\keycode_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[12] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[4]_0 ),
        .Q(\keycode_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[13] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[5]_0 ),
        .Q(\keycode_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[14] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[6]_0 ),
        .Q(\keycode_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[15] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[7]_0 ),
        .Q(\keycode_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[1]),
        .Q(\keycode_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[2]),
        .Q(\keycode_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[3]),
        .Q(\keycode_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[4]),
        .Q(\keycode_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[5] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[5]),
        .Q(\keycode_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[6] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[6]),
        .Q(\keycode_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[7] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(p_1_in[7]),
        .Q(\keycode_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[8] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[0]_0 ),
        .Q(\keycode_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[9] 
       (.C(CLK50MHZ_BUFG),
        .CE(oflag_i_1_n_0),
        .D(\keycode_reg[1]_0 ),
        .Q(\keycode_reg[15]_0 [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF000E40000000000)) 
    \keycodev[15]_i_1 
       (.I0(\keycodev[15]_i_2_n_0 ),
        .I1(CO),
        .I2(\keycodev[15]_i_3_n_0 ),
        .I3(flag),
        .I4(\keycodev[15]_i_4_n_0 ),
        .I5(\keycodev[15]_i_5_n_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \keycodev[15]_i_10 
       (.I0(Q[4]),
        .I1(\keycode_reg[4]_0 ),
        .O(\keycodev[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_11 
       (.I0(\keycode_reg[7]_0 ),
        .I1(Q[7]),
        .I2(\keycode_reg[6]_0 ),
        .I3(Q[6]),
        .O(\keycodev[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_12 
       (.I0(\keycode_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\keycode_reg[0]_0 ),
        .I3(Q[0]),
        .O(\keycodev[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \keycodev[15]_i_2 
       (.I0(\keycode_reg[15]_0 [0]),
        .I1(\keycode_reg[15]_0 [1]),
        .I2(\keycode_reg[15]_0 [2]),
        .I3(\keycode_reg[15]_0 [4]),
        .I4(\keycode_reg[15]_0 [5]),
        .I5(\keycode_reg[15]_0 [3]),
        .O(\keycodev[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \keycodev[15]_i_3 
       (.I0(\keycodev_reg[0] ),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(\keycodev[15]_i_7_n_0 ),
        .O(\keycodev[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \keycodev[15]_i_4 
       (.I0(\keycode_reg[15]_0 [7]),
        .I1(\keycode_reg[15]_0 [6]),
        .O(\keycodev[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \keycodev[15]_i_5 
       (.I0(\keycode_reg[3]_0 ),
        .I1(\keycode_reg[2]_0 ),
        .I2(\keycode_reg[1]_0 ),
        .I3(\keycode_reg[0]_0 ),
        .I4(\keycodev[15]_i_8_n_0 ),
        .O(\keycodev[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBE)) 
    \keycodev[15]_i_7 
       (.I0(\keycodev[15]_i_9_n_0 ),
        .I1(\keycode_reg[5]_0 ),
        .I2(Q[5]),
        .I3(\keycodev[15]_i_10_n_0 ),
        .I4(\keycodev[15]_i_11_n_0 ),
        .I5(\keycodev[15]_i_12_n_0 ),
        .O(\keycodev[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \keycodev[15]_i_8 
       (.I0(\keycode_reg[5]_0 ),
        .I1(\keycode_reg[4]_0 ),
        .I2(\keycode_reg[6]_0 ),
        .I3(\keycode_reg[7]_0 ),
        .O(\keycodev[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_9 
       (.I0(\keycode_reg[3]_0 ),
        .I1(Q[3]),
        .I2(\keycode_reg[2]_0 ),
        .I3(Q[2]),
        .O(\keycodev[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    oflag_i_1
       (.I0(flag_0),
        .I1(pflag),
        .O(oflag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    oflag_reg
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(oflag_i_1_n_0),
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

(* ECO_CHECKSUM = "32a42bf5" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire dp;
  wire keyboard_handler_n_10;
  wire keyboard_handler_n_11;
  wire keyboard_handler_n_8;
  wire keyboard_handler_n_9;
  wire logic_n_0;
  wire [1:0]ps;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [1:1]state;
  wire [3:0]vgaBlue;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen;
  wire [3:0]vgaGreen_OBUF;
  wire [3:0]vgaRed;
  wire [2:0]vgaRed_OBUF;
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
       (.Hsync_OBUF(Hsync_OBUF),
        .Q(state),
        .Vsync_OBUF(Vsync_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_reg[7]_0 (logic_n_0),
        .vgaBlue_OBUF(vgaBlue_OBUF),
        .vgaGreen_OBUF(vgaGreen_OBUF),
        .vgaRed_OBUF(vgaRed_OBUF));
  kb_top keyboard_handler
       (.CLK50MHZ(CLK50MHZ),
        .CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .D({keyboard_handler_n_8,keyboard_handler_n_9,keyboard_handler_n_10}),
        .E(keyboard_handler_n_11),
        .PS2Clk_IBUF(PS2Clk_IBUF),
        .PS2Data_IBUF(PS2Data_IBUF),
        .Q(ps),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .seg_OBUF(seg_OBUF));
  game_logic logic
       (.D({keyboard_handler_n_8,keyboard_handler_n_9,keyboard_handler_n_10}),
        .E(keyboard_handler_n_11),
        .Q(state),
        .\state_reg[0]_0 (logic_n_0));
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

module clockDivider
   (clkDiv_reg_0,
    clk_IBUF_BUFG);
  output clkDiv_reg_0;
  input clk_IBUF_BUFG;

  wire clkDiv_i_1_n_0;
  wire clkDiv_reg_0;
  wire clk_IBUF_BUFG;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkDiv_i_1_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_0
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__9_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__9
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__9_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_1
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__10_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__10
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__10_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_10
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__2_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__2
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__2_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_11
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__3_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__3
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__3_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_12
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__4_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__4
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__4_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_13
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__5_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__5
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__5_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_14
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__6_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__6
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__6_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_15
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__7_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__7
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__7_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_16
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__8_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__8
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__8_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_2
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__11_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__11
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__11_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_3
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__12_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__12
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__12_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_4
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__13_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__13
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__13_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_5
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__14_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__14
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__14_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__14_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_6
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__15_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__15
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__15_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__15_n_0),
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
  wire clkDiv_i_1__16_n_0;
  wire clkDiv_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__16
       (.I0(CLK),
        .O(clkDiv_i_1__16_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_0),
        .CE(1'b1),
        .D(clkDiv_i_1__16_n_0),
        .Q(CLK),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_8
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__0_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__0
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__0_n_0),
        .Q(clkDiv_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider_9
   (clkDiv_reg_0,
    clkDiv_reg_1);
  output clkDiv_reg_0;
  input clkDiv_reg_1;

  wire clkDiv_i_1__1_n_0;
  wire clkDiv_reg_0;
  wire clkDiv_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    clkDiv_i_1__1
       (.I0(clkDiv_reg_0),
        .O(clkDiv_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkDiv_reg
       (.C(clkDiv_reg_1),
        .CE(1'b1),
        .D(clkDiv_i_1__1_n_0),
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
  wire O_i_1_n_0;
  wire O_i_2_n_0;
  wire O_reg_0;
  wire PS2Clk_IBUF;
  wire clear;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
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
        .I5(O_i_2_n_0),
        .O(O_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    O_i_2
       (.I0(Iv),
        .I1(PS2Clk_IBUF),
        .O(O_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    O_reg
       (.C(CLK50MHZ_BUFG),
        .CE(O_i_1_n_0),
        .D(PS2Clk_IBUF),
        .Q(O_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444444C44444)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(O_i_2_n_0),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .I4(count_reg[1]),
        .I5(count_reg[2]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000FF00FF000000)) 
    \count[1]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(O_i_2_n_0),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D00F000F000F000)) 
    \count[2]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(O_i_2_n_0),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00007F80000080)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(PS2Clk_IBUF),
        .I4(Iv),
        .I5(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(O_i_2_n_0),
        .I5(count_reg[4]),
        .O(\count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
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
  wire Iv_i_1__0_n_0;
  wire Iv_reg_n_0;
  wire O;
  wire O_i_1__0_n_0;
  wire O_i_2__0_n_0;
  wire PS2Data_IBUF;
  wire \count[4]_i_1__0_n_0 ;
  wire [4:0]count_reg__0;
  wire [4:0]p_0_in;

  LUT2 #(
    .INIT(4'h6)) 
    Iv_i_1__0
       (.I0(PS2Data_IBUF),
        .I1(Iv_reg_n_0),
        .O(Iv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(CLK50MHZ_BUFG),
        .CE(Iv_i_1__0_n_0),
        .D(PS2Data_IBUF),
        .Q(Iv_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004004)) 
    O_i_1__0
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[4]),
        .I2(Iv_reg_n_0),
        .I3(PS2Data_IBUF),
        .I4(O_i_2__0_n_0),
        .O(O_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    O_i_2__0
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .O(O_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    O_reg
       (.C(CLK50MHZ_BUFG),
        .CE(O_i_1__0_n_0),
        .D(PS2Data_IBUF),
        .Q(O),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
        .O(\count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
        .CE(\count[4]_i_1__0_n_0 ),
        .D(p_0_in[0]),
        .Q(count_reg__0[0]),
        .R(Iv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_0 ),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]),
        .R(Iv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_0 ),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]),
        .R(Iv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_0 ),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]),
        .R(Iv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK50MHZ_BUFG),
        .CE(\count[4]_i_1__0_n_0 ),
        .D(p_0_in[4]),
        .Q(count_reg__0[4]),
        .R(Iv_i_1__0_n_0));
endmodule

module game_logic
   (\state_reg[0]_0 ,
    Q,
    D,
    E);
  output \state_reg[0]_0 ;
  output [0:0]Q;
  input [2:0]D;
  input [0:0]E;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [2:0]state;
  wire \state_reg[0]_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \data[7]_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .O(\state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(state[2]));
endmodule

module kb_top
   (CLK50MHZ,
    seg_OBUF,
    D,
    E,
    clk_IBUF_BUFG,
    PS2Clk_IBUF,
    CLK50MHZ_BUFG,
    PS2Data_IBUF,
    Q);
  output CLK50MHZ;
  output [6:0]seg_OBUF;
  output [2:0]D;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input PS2Clk_IBUF;
  input CLK50MHZ_BUFG;
  input PS2Data_IBUF;
  input [1:0]Q;

  wire CLK50MHZ;
  wire CLK50MHZ_BUFG;
  wire CLK50MHZ_i_1_n_0;
  wire [2:0]D;
  wire [0:0]E;
  wire PS2Clk_IBUF;
  wire PS2Data_IBUF;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire cn0_carry_n_0;
  wire data0;
  wire [15:8]key;
  wire [7:0]keycodev;
  wire \keycodev[15]_i_6_n_0 ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire [7:0]sel0;
  wire \state_reg[2]_i_3_n_0 ;
  wire uut_n_0;
  wire uut_n_1;
  wire uut_n_10;
  wire uut_n_11;
  wire uut_n_2;
  wire uut_n_20;
  wire uut_n_21;
  wire uut_n_22;
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
        .O(CLK50MHZ_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK50MHZ_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CLK50MHZ_i_1_n_0),
        .Q(CLK50MHZ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cn0_carry
       (.CI(1'b0),
        .CO({cn0_carry_n_0,NLW_cn0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_cn0_carry_O_UNCONNECTED[3:0]),
        .S({uut_n_8,uut_n_9,uut_n_10,uut_n_11}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cn0_carry__0
       (.CI(cn0_carry_n_0),
        .CO({NLW_cn0_carry__0_CO_UNCONNECTED[3:2],data0,NLW_cn0_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_cn0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,uut_n_21,uut_n_22}));
  LUT4 #(
    .INIT(16'h0001)) 
    \keycodev[15]_i_6 
       (.I0(key[9]),
        .I1(key[8]),
        .I2(key[11]),
        .I3(key[10]),
        .O(\keycodev[15]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_0),
        .Q(keycodev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[2]),
        .Q(key[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[3]),
        .Q(key[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[4]),
        .Q(key[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[5]),
        .Q(key[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[6]),
        .Q(key[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[7]),
        .Q(key[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_1),
        .Q(keycodev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_2),
        .Q(keycodev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_3),
        .Q(keycodev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_4),
        .Q(keycodev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_5),
        .Q(keycodev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_6),
        .Q(keycodev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(uut_n_7),
        .Q(keycodev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[0]),
        .Q(key[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(uut_n_20),
        .D(sel0[1]),
        .Q(key[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4184)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h8C02)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'hC124)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'h223A)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'h480E)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4019)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(key[11]),
        .I1(key[15]),
        .I2(keycodev[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(keycodev[7]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(key[10]),
        .I1(key[14]),
        .I2(keycodev[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(keycodev[6]),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(key[8]),
        .I1(key[12]),
        .I2(keycodev[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(keycodev[4]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(key[9]),
        .I1(key[13]),
        .I2(keycodev[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(keycodev[5]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_reg[0]_i_1 
       (.I0(keycodev[1]),
        .I1(keycodev[3]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hE0)) 
    \state_reg[1]_i_1 
       (.I0(keycodev[3]),
        .I1(keycodev[5]),
        .I2(keycodev[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \state_reg[2]_i_1 
       (.I0(keycodev[1]),
        .I1(keycodev[6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h2028202820282008)) 
    \state_reg[2]_i_2 
       (.I0(\state_reg[2]_i_3_n_0 ),
        .I1(keycodev[0]),
        .I2(keycodev[1]),
        .I3(keycodev[4]),
        .I4(keycodev[5]),
        .I5(keycodev[3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000040000040440)) 
    \state_reg[2]_i_3 
       (.I0(keycodev[7]),
        .I1(keycodev[2]),
        .I2(keycodev[6]),
        .I3(keycodev[4]),
        .I4(keycodev[5]),
        .I5(keycodev[3]),
        .O(\state_reg[2]_i_3_n_0 ));
  PS2Receiver uut
       (.CLK50MHZ_BUFG(CLK50MHZ_BUFG),
        .CO(data0),
        .E(uut_n_20),
        .PS2Clk_IBUF(PS2Clk_IBUF),
        .PS2Data_IBUF(PS2Data_IBUF),
        .Q({key,keycodev}),
        .S({uut_n_8,uut_n_9,uut_n_10,uut_n_11}),
        .\keycode_reg[0]_0 (uut_n_0),
        .\keycode_reg[15]_0 (sel0),
        .\keycode_reg[1]_0 (uut_n_1),
        .\keycode_reg[2]_0 (uut_n_2),
        .\keycode_reg[3]_0 (uut_n_3),
        .\keycode_reg[4]_0 (uut_n_4),
        .\keycode_reg[5]_0 (uut_n_5),
        .\keycode_reg[6]_0 (uut_n_6),
        .\keycode_reg[7]_0 (uut_n_7),
        .\keycodev_reg[0] (\keycodev[15]_i_6_n_0 ),
        .\keycodev_reg[15] ({uut_n_21,uut_n_22}));
endmodule

module paletteROM
   (vgaBlue_OBUF,
    vgaGreen_OBUF,
    vgaRed_OBUF,
    \vgaBlue[0] ,
    Q,
    clk_IBUF_BUFG);
  output [3:0]vgaBlue_OBUF;
  output [3:0]vgaGreen_OBUF;
  output [2:0]vgaRed_OBUF;
  input \vgaBlue[0] ;
  input [7:0]Q;
  input clk_IBUF_BUFG;

  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:0]color3;
  wire color3_carry__0_i_1_n_0;
  wire color3_carry__0_i_2_n_0;
  wire color3_carry__0_i_3_n_0;
  wire color3_carry__0_i_4_n_0;
  wire color3_carry_i_1_n_0;
  wire color3_carry_i_2_n_0;
  wire color3_carry_i_3_n_0;
  wire color3_carry_n_0;
  wire \color[0]_i_2_n_0 ;
  wire \color[0]_i_3_n_0 ;
  wire \color[0]_i_4_n_0 ;
  wire \color[10]_i_2_n_0 ;
  wire \color[10]_i_3_n_0 ;
  wire \color[10]_i_4_n_0 ;
  wire \color[1]_i_2_n_0 ;
  wire \color[1]_i_3_n_0 ;
  wire \color[1]_i_4_n_0 ;
  wire \color[2]_i_2_n_0 ;
  wire \color[2]_i_3_n_0 ;
  wire \color[2]_i_4_n_0 ;
  wire \color[3]_i_2_n_0 ;
  wire \color[3]_i_3_n_0 ;
  wire \color[3]_i_4_n_0 ;
  wire \color[3]_i_5_n_0 ;
  wire \color[4]_i_2_n_0 ;
  wire \color[4]_i_3_n_0 ;
  wire \color[4]_i_4_n_0 ;
  wire \color[5]_i_2_n_0 ;
  wire \color[5]_i_3_n_0 ;
  wire \color[5]_i_4_n_0 ;
  wire \color[6]_i_2_n_0 ;
  wire \color[6]_i_3_n_0 ;
  wire \color[6]_i_4_n_0 ;
  wire \color[7]_i_2_n_0 ;
  wire \color[7]_i_4_n_0 ;
  wire \color[7]_i_6_n_0 ;
  wire \color[7]_i_7_n_0 ;
  wire \color[8]_i_2_n_0 ;
  wire \color[8]_i_3_n_0 ;
  wire \color[8]_i_4_n_0 ;
  wire \color[9]_i_2_n_0 ;
  wire \color[9]_i_3_n_0 ;
  wire \color[9]_i_4_n_0 ;
  wire [10:0]p_2_out;
  wire [10:0]rgb;
  wire [7:6]sel;
  wire \vgaBlue[0] ;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen_OBUF;
  wire [2:0]vgaRed_OBUF;
  wire [2:0]NLW_color3_carry_CO_UNCONNECTED;
  wire [3:0]NLW_color3_carry__0_CO_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 color3_carry
       (.CI(1'b0),
        .CO({color3_carry_n_0,NLW_color3_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({Q[1:0],1'b0,1'b1}),
        .O(color3[3:0]),
        .S({color3_carry_i_1_n_0,color3_carry_i_2_n_0,color3_carry_i_3_n_0,Q[0]}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 color3_carry__0
       (.CI(color3_carry_n_0),
        .CO(NLW_color3_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[4:2]}),
        .O(color3[7:4]),
        .S({color3_carry__0_i_1_n_0,color3_carry__0_i_2_n_0,color3_carry__0_i_3_n_0,color3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_1
       (.I0(Q[5]),
        .I1(Q[7]),
        .O(color3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_2
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(color3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_3
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(color3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry__0_i_4
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(color3_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry_i_1
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(color3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    color3_carry_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(color3_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    color3_carry_i_3
       (.I0(Q[1]),
        .O(color3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[0]_i_1 
       (.I0(\color[0]_i_2_n_0 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_0 ),
        .I3(color3[7]),
        .I4(\color[0]_i_3_n_0 ),
        .I5(\color[0]_i_4_n_0 ),
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
        .O(\color[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACBE8E816B736387)) 
    \color[0]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h102B13957B17B030)) 
    \color[0]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[10]_i_1 
       (.I0(\color[10]_i_2_n_0 ),
        .I1(color3[7]),
        .I2(\color[10]_i_3_n_0 ),
        .I3(color3[6]),
        .I4(\color[10]_i_4_n_0 ),
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
        .O(\color[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACD061A0FA09A492)) 
    \color[10]_i_3 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[1]),
        .I5(color3[0]),
        .O(\color[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8060088400000000)) 
    \color[10]_i_4 
       (.I0(color3[3]),
        .I1(color3[5]),
        .I2(color3[2]),
        .I3(color3[0]),
        .I4(color3[1]),
        .I5(color3[4]),
        .O(\color[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[1]_i_1 
       (.I0(\color[1]_i_2_n_0 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_0 ),
        .I3(color3[7]),
        .I4(\color[1]_i_3_n_0 ),
        .I5(\color[1]_i_4_n_0 ),
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
        .O(\color[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE545D96663775402)) 
    \color[1]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5EAAEEA22A916388)) 
    \color[1]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[2]_i_1 
       (.I0(\color[2]_i_2_n_0 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_0 ),
        .I3(color3[7]),
        .I4(\color[2]_i_3_n_0 ),
        .I5(\color[2]_i_4_n_0 ),
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
        .O(\color[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h413CF7E9C992B39E)) 
    \color[2]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h31D68260456C1086)) 
    \color[2]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2CFB2C3820CB2008)) 
    \color[3]_i_1 
       (.I0(\color[3]_i_2_n_0 ),
        .I1(color3[6]),
        .I2(\color[3]_i_3_n_0 ),
        .I3(color3[7]),
        .I4(\color[3]_i_4_n_0 ),
        .I5(\color[3]_i_5_n_0 ),
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
        .O(\color[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \color[3]_i_3 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .O(\color[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1EE308183C8C8E61)) 
    \color[3]_i_4 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0880000060080800)) 
    \color[3]_i_5 
       (.I0(color3[4]),
        .I1(color3[2]),
        .I2(color3[1]),
        .I3(color3[3]),
        .I4(color3[5]),
        .I5(color3[0]),
        .O(\color[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[4]_i_1 
       (.I0(\color[4]_i_2_n_0 ),
        .I1(sel[7]),
        .I2(\color[4]_i_3_n_0 ),
        .I3(sel[6]),
        .I4(\color[4]_i_4_n_0 ),
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
        .O(\color[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7B5EC2DB4F82C227)) 
    \color[4]_i_3 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A569A2E8D081C5C)) 
    \color[4]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[5]_i_1 
       (.I0(\color[5]_i_2_n_0 ),
        .I1(sel[7]),
        .I2(\color[5]_i_3_n_0 ),
        .I3(sel[6]),
        .I4(\color[5]_i_4_n_0 ),
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
        .O(\color[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1A0BC7EF4017BD41)) 
    \color[5]_i_3 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FD5500B5FB5C200)) 
    \color[5]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[6]_i_1 
       (.I0(\color[6]_i_2_n_0 ),
        .I1(sel[7]),
        .I2(\color[6]_i_3_n_0 ),
        .I3(sel[6]),
        .I4(\color[6]_i_4_n_0 ),
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
        .O(\color[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0D386599FF35F2C)) 
    \color[6]_i_3 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h112CB7F104920920)) 
    \color[6]_i_4 
       (.I0(color3[0]),
        .I1(color3[1]),
        .I2(color3[2]),
        .I3(color3[3]),
        .I4(color3[4]),
        .I5(color3[5]),
        .O(\color[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[7]_i_1 
       (.I0(\color[7]_i_2_n_0 ),
        .I1(sel[7]),
        .I2(\color[7]_i_4_n_0 ),
        .I3(sel[6]),
        .I4(\color[7]_i_6_n_0 ),
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
        .O(\color[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \color[7]_i_3 
       (.I0(color3[0]),
        .I1(\color[3]_i_3_n_0 ),
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
        .O(\color[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \color[7]_i_5 
       (.I0(color3[0]),
        .I1(color3[4]),
        .I2(\color[7]_i_7_n_0 ),
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
        .O(\color[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \color[7]_i_7 
       (.I0(color3[1]),
        .I1(color3[2]),
        .O(\color[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[8]_i_1 
       (.I0(\color[8]_i_2_n_0 ),
        .I1(color3[7]),
        .I2(\color[8]_i_3_n_0 ),
        .I3(color3[6]),
        .I4(\color[8]_i_4_n_0 ),
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
        .O(\color[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h393612F48677D264)) 
    \color[8]_i_3 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[0]),
        .I5(color3[1]),
        .O(\color[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE869C9D8A4C8CACC)) 
    \color[8]_i_4 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[0]),
        .I3(color3[1]),
        .I4(color3[2]),
        .I5(color3[5]),
        .O(\color[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \color[9]_i_1 
       (.I0(\color[9]_i_2_n_0 ),
        .I1(color3[7]),
        .I2(\color[9]_i_3_n_0 ),
        .I3(color3[6]),
        .I4(\color[9]_i_4_n_0 ),
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
        .O(\color[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h562B5E5E856E1BD9)) 
    \color[9]_i_3 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[2]),
        .I4(color3[1]),
        .I5(color3[0]),
        .O(\color[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1071B4426824B268)) 
    \color[9]_i_4 
       (.I0(color3[3]),
        .I1(color3[4]),
        .I2(color3[5]),
        .I3(color3[0]),
        .I4(color3[1]),
        .I5(color3[2]),
        .O(\color[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(rgb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[10]),
        .Q(rgb[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(rgb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[2]),
        .Q(rgb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[3]),
        .Q(rgb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[4]),
        .Q(rgb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[5]),
        .Q(rgb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[6]),
        .Q(rgb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[7]),
        .Q(rgb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[8]),
        .Q(rgb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[9]),
        .Q(rgb[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaBlue_OBUF[0]_inst_i_1 
       (.I0(rgb[0]),
        .I1(\vgaBlue[0] ),
        .O(vgaBlue_OBUF[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaBlue_OBUF[1]_inst_i_1 
       (.I0(rgb[1]),
        .I1(\vgaBlue[0] ),
        .O(vgaBlue_OBUF[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaBlue_OBUF[2]_inst_i_1 
       (.I0(rgb[2]),
        .I1(\vgaBlue[0] ),
        .O(vgaBlue_OBUF[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaBlue_OBUF[3]_inst_i_1 
       (.I0(rgb[3]),
        .I1(\vgaBlue[0] ),
        .O(vgaBlue_OBUF[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaGreen_OBUF[0]_inst_i_1 
       (.I0(rgb[4]),
        .I1(\vgaBlue[0] ),
        .O(vgaGreen_OBUF[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaGreen_OBUF[1]_inst_i_1 
       (.I0(rgb[5]),
        .I1(\vgaBlue[0] ),
        .O(vgaGreen_OBUF[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaGreen_OBUF[2]_inst_i_1 
       (.I0(rgb[6]),
        .I1(\vgaBlue[0] ),
        .O(vgaGreen_OBUF[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaGreen_OBUF[3]_inst_i_1 
       (.I0(rgb[7]),
        .I1(\vgaBlue[0] ),
        .O(vgaGreen_OBUF[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaRed_OBUF[0]_inst_i_1 
       (.I0(rgb[8]),
        .I1(\vgaBlue[0] ),
        .O(vgaRed_OBUF[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaRed_OBUF[1]_inst_i_1 
       (.I0(rgb[9]),
        .I1(\vgaBlue[0] ),
        .O(vgaRed_OBUF[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \vgaRed_OBUF[2]_inst_i_1 
       (.I0(rgb[10]),
        .I1(\vgaBlue[0] ),
        .O(vgaRed_OBUF[2]));
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
  wire \ps[0]_i_1_n_0 ;
  wire \ps[1]_i_1_n_0 ;

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
        .O(\ps[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ps[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\ps[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ps_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ps[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ps_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ps[1]_i_1_n_0 ),
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
  wire \genblk1[0].fdiv_n_0 ;
  wire \genblk1[10].fdiv_n_0 ;
  wire \genblk1[11].fdiv_n_0 ;
  wire \genblk1[12].fdiv_n_0 ;
  wire \genblk1[13].fdiv_n_0 ;
  wire \genblk1[14].fdiv_n_0 ;
  wire \genblk1[15].fdiv_n_0 ;
  wire \genblk1[16].fdiv_n_0 ;
  wire \genblk1[1].fdiv_n_0 ;
  wire \genblk1[2].fdiv_n_0 ;
  wire \genblk1[3].fdiv_n_0 ;
  wire \genblk1[4].fdiv_n_0 ;
  wire \genblk1[5].fdiv_n_0 ;
  wire \genblk1[6].fdiv_n_0 ;
  wire \genblk1[7].fdiv_n_0 ;
  wire \genblk1[8].fdiv_n_0 ;
  wire \genblk1[9].fdiv_n_0 ;

  clockDivider \genblk1[0].fdiv 
       (.clkDiv_reg_0(\genblk1[0].fdiv_n_0 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  clockDivider_0 \genblk1[10].fdiv 
       (.clkDiv_reg_0(\genblk1[10].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[9].fdiv_n_0 ));
  clockDivider_1 \genblk1[11].fdiv 
       (.clkDiv_reg_0(\genblk1[11].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[10].fdiv_n_0 ));
  clockDivider_2 \genblk1[12].fdiv 
       (.clkDiv_reg_0(\genblk1[12].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[11].fdiv_n_0 ));
  clockDivider_3 \genblk1[13].fdiv 
       (.clkDiv_reg_0(\genblk1[13].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[12].fdiv_n_0 ));
  clockDivider_4 \genblk1[14].fdiv 
       (.clkDiv_reg_0(\genblk1[14].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[13].fdiv_n_0 ));
  clockDivider_5 \genblk1[15].fdiv 
       (.clkDiv_reg_0(\genblk1[15].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[14].fdiv_n_0 ));
  clockDivider_6 \genblk1[16].fdiv 
       (.clkDiv_reg_0(\genblk1[16].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[15].fdiv_n_0 ));
  clockDivider_7 \genblk1[17].fdiv 
       (.CLK(clkDiv),
        .clkDiv_reg_0(\genblk1[16].fdiv_n_0 ));
  clockDivider_8 \genblk1[1].fdiv 
       (.clkDiv_reg_0(\genblk1[1].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[0].fdiv_n_0 ));
  clockDivider_9 \genblk1[2].fdiv 
       (.clkDiv_reg_0(\genblk1[2].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[1].fdiv_n_0 ));
  clockDivider_10 \genblk1[3].fdiv 
       (.clkDiv_reg_0(\genblk1[3].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[2].fdiv_n_0 ));
  clockDivider_11 \genblk1[4].fdiv 
       (.clkDiv_reg_0(\genblk1[4].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[3].fdiv_n_0 ));
  clockDivider_12 \genblk1[5].fdiv 
       (.clkDiv_reg_0(\genblk1[5].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[4].fdiv_n_0 ));
  clockDivider_13 \genblk1[6].fdiv 
       (.clkDiv_reg_0(\genblk1[6].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[5].fdiv_n_0 ));
  clockDivider_14 \genblk1[7].fdiv 
       (.clkDiv_reg_0(\genblk1[7].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[6].fdiv_n_0 ));
  clockDivider_15 \genblk1[8].fdiv 
       (.clkDiv_reg_0(\genblk1[8].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[7].fdiv_n_0 ));
  clockDivider_16 \genblk1[9].fdiv 
       (.clkDiv_reg_0(\genblk1[9].fdiv_n_0 ),
        .clkDiv_reg_1(\genblk1[8].fdiv_n_0 ));
  quad2SevenSeg q7seg
       (.CLK(clkDiv),
        .Q(Q),
        .an_OBUF(an_OBUF));
endmodule

module spriteROM
   (out,
    data_reg,
    clk_IBUF_BUFG,
    Q,
    data_reg_0_7_0);
  output [6:0]out;
  output [6:0]data_reg;
  input clk_IBUF_BUFG;
  input [14:0]Q;
  input [14:0]data_reg_0_7_0;

  wire [14:0]Q;
  wire clk_IBUF_BUFG;
  wire [6:0]data_reg;
  wire [14:0]data_reg_0_7_0;
  wire [6:0]out;
  wire NLW_data_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_7_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
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
    .INIT_01(256'h0004000004020000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000400100000000002010000000000010000000000020000000080400000000),
    .INIT_03(256'hFFFFFF00FFFFE003FFFF87FFFF807FFF01000000000400100000000002000040),
    .INIT_04(256'hFFFFFFFF803FFFF003FFF8003FFFFFFFFFFC03FFFFFFFFFF81FFFFFFFE0007FF),
    .INIT_05(256'hF03FFFFFFFC000FFFFFFFFE01FFFFC007FFFF0FFFFF00FFFE01FFFFFFFFF8003),
    .INIT_06(256'hFC03FFFFFFFFF0007FFFFFFFF007FFFE007FFF0007FFFFFFFFFF807FFFFFFFFF),
    .INIT_07(256'hFFFFF00FFFFFFFFFFE07FFFFFFF8001FFFFFFFFC03FFFF800FFFFE1FFFFE01FF),
    .INIT_08(256'h01FFFFC3FFFFC03FFFF87FFFFFFFFE000FFFFFFFFE00FFFFC00FFFE000FFFFFF),
    .INIT_09(256'hF801FFFD01CFFFFFFFFFFE0DFFFFFFFFFFC0FFFFFFFF381BFFFFFFFFB07FFFF0),
    .INIT_0A(256'hFFFFFFFFFF0FFFFE003FFFF87FFFF807FFFF0FFFFFFFFF9C05FFFFFFFFD81FFF),
    .INIT_0B(256'hC7FFFFFFFFFF03FFFF003FFFFC7FFFFFFFFFFFC1FFFFFFFFFFF81FFFFFFFFF83),
    .INIT_0C(256'hFFFF03FFFFFFFFF07FFFFFFFFFF1FFFFC007FFFF0FFFFF00FFFFE1FFFFFFFFFF),
    .INIT_0D(256'h1FFFFC3FFFFFFFFFF8FFFFFFFFFFE07FFFE007FFFF8FFFFFFFFFFFF87FFFFFFF),
    .INIT_0E(256'hFFFFFFFF0FFFFFFFFFFFE07FFFFFFFFE0FFFFFFFFFFE3FFFF800FFFFE1FFFFE0),
    .INIT_0F(256'hFF001FFFFC3FFFFC03FFFF87FFFFFFFFFF1FFFFFFFFFFC0FFFFC00FFFFF1FFFF),
    .INIT_10(256'hFFFF801FFFFE3FFFFFFFFFFFE1FFFFFFFFFFFC0FFFFFFFFFC1FFFFFFFFFFC7FF),
    .INIT_11(256'hF83FFFFF87FFF8FFFFE0FBFFFF87FFFF807FFFF0FFFFFFFFFFE3FFFFFFFFFF81),
    .INIT_12(256'hFFFC7FFFFFFFFFF03FFFF003FFFFC7FFFFFFFFFFFC3FFFFFFFFFFF81FFFFFFFF),
    .INIT_13(256'hFFFFFFF03FFFFFFFFF07FFFFF0FFFF1FFFFC1FFFFFF0FFFFF00FFFFE1FFFFFFF),
    .INIT_14(256'hFE01FFFFC3FFFFFFFFFF8FFFFFFFFFFE07FFFE007FFFF8FFFFFFFFFFFF87FFFF),
    .INIT_15(256'hFFFFFFFFFFF0FFFFFFFFFFFE07FFFFFFFFE0FFFFFF1FFFE3FFFF83FFFFFE1FFF),
    .INIT_16(256'h7FFFF07FFFFFC3FFFFC03FFFF87FFFFFFFFFF1FFFFFFFFFFC0FFFFC00FFFFF1F),
    .INIT_17(256'hF81FFFF801FFFFE3FFFFFFFFFFFE1FFFFFFFFFFFC0FFFFFFFFFC1FFFFFC3FFFC),
    .INIT_18(256'hFFFF83FFFFFC7FFF8FFFFE0FFFFFF87FFFF807FFFF0FFFFFFFFFFE3FFFFFFFFF),
    .INIT_19(256'hFFFFFFC7FFFFFFFFFF03FFFF003FFFFC7FFFFFFFFFFFC3FFFFFFFFFFF81FFFFF),
    .INIT_1A(256'hFFFFFFFFFF0400007FFFF07FFFE00FFFF1FFFFC1FFFFFF0FFFFF00FFFFE1FFFF),
    .INIT_1B(256'hFFFFE01FFFFC3FFFFFFFFFF8FFFFFFFFFFE07FFFE007FFFF8FFFFFFFFFFFF87F),
    .INIT_1C(256'hF1FFFFFFFFFFFF0FFFFFFFFFFFE000000FFFFE0FFFFE01FFFE3FFFF83FFFFFE1),
    .INIT_1D(256'hFFC7FFFF07FFFFFC3FFFFC03FFFF87FFFFFFFFFF1FFFFFFFFFFC0FFFFC00FFFF),
    .INIT_1E(256'hFFFF81FFFF801FFFFE3FFFFFFFFFFFE1FFFFFFFFFFFC000001FFFFC1FFFFC03F),
    .INIT_1F(256'h003FFFF83FFFF807FFF8FFFFE07FFFFF87FFFF807FFFF0FFFFFFFFFFE3FFFFFF),
    .INIT_20(256'hFFFFFFFFFC7FFFFFFFFFF03FFFF003FFFFC7FFFFFFFFFFFC3FFFFFFFFFFF8000),
    .INIT_21(256'h87FFFFFFFFFFF0000007FFFF07FFFF00FFFF1FFFFC1FFFFFF0FFFFF00FFFFE1F),
    .INIT_22(256'hFE1FFFFE01FFFFC3FFFFFFFFFF8FFFFFFFFFFE07FFFE007FFFF8FFFFFFFFFFFF),
    .INIT_23(256'hFFFF1FFFFFFFFFFFF0FFFFFFFFBFFE000001FFFFE0FFFFE01FFFE3FFFFC3FFFF),
    .INIT_24(256'h03FFFC7FFFFFFFF1FFC3FFFFC03FFFF8FFFFFFFFFFF0FFFFFEFFFFC0FFFFC00F),
    .INIT_25(256'h003FFFF81FFFF801FFFFE3FFFF8000FFFE1FFFFE0007FFC00FFFFFFFFC1FFFFC),
    .INIT_26(256'h01FFFFFFFF83FFFF807FFF8FFFFFFFFE3FF87FFFF807FFFF00000001FFFE0000),
    .INIT_27(256'hE00000003FFFC0000007FFFF03FFFF003FFFFC7FFFF8001FFFC3FFFFC000FFF8),
    .INIT_28(256'hFFF87FFFF8001FFF003FFFFFFFF07FFFF00FFFF1FFFFFFFFC7FF0FFFFF00FFFF),
    .INIT_29(256'hF8FFE1FFFFE01FFFFC00000007FFF8000000FFFFE07FFFE007FFFF8FFFFF0003),
    .INIT_2A(256'h00FFFFF1FFFFE000FFFF0FFFFF0003FFE003FFFFFFFE0FFFFE01FFFE3FFFFFFF),
    .INIT_2B(256'hFFC03FFFC7FFFFFFFF1FFC3FFFFC03FFFF80000000FFFF0000001FFFFC0FFFFC),
    .INIT_2C(256'hFFFFC3FFFF81FFFF801FFFFE3FFFFFFFFFFFE1FFFFFFFFFFFC00FFF9FFFFC1FF),
    .INIT_2D(256'hFF8000003FFFF83FFFF807FFF8FFFFFFFFE3FF87FFFF807FFFF0FFFFFFFFFFE3),
    .INIT_2E(256'hFFFE1FFFFFFFFFFC7FFFF87FFFF03FFFF003FFFFC7FFFFFFFFFFFC3FFFFFFFFF),
    .INIT_2F(256'hFFFFFF87FFFFFFFFFFF0000007FFFF07FFFF00FFFF1FFFFFFFFC7FF0FFFFF00F),
    .INIT_30(256'hFFFF8FFE1FFFFE01FFFFC3FFFFFFFFFF8FFFFF0FFFFE07FFFE007FFFF8FFFFFF),
    .INIT_31(256'hFFC00FFFFF1FFFFFFFFFFFF0FFFFFFFFFFFE000000FFFFE0FFFFE01FFFE3FFFF),
    .INIT_32(256'h1FFFFFC3FFFC7FFFFFFE11FFC3FFFFC03FFFF87FFFFFFFFFF1FFFFE1FFFFC0FF),
    .INIT_33(256'h023FF8003FFFF81FFFF801FFFFE300FFFFFFFFFE08007FFFFFFFC1FFFFDFFFFC),
    .INIT_34(256'hFFFFF81FFFFFFFFF83FFFFF87FFF8FFFFFFFC03FF87FFFF807FFFF0FFFC00000),
    .INIT_35(256'h00FFFFE1FFF000000007FF0007FFFF03FFFF003FFFFC000FFFFFFFFFC00007FF),
    .INIT_36(256'hFFFFFFFFF80000FFFFFFFF03FFFFFFFFF07FFFFF0FFFF1FFFFFFF807FF0FFFFF),
    .INIT_37(256'hFFFFFF00FFE1FFFFE01FFFFC3FFE00000000FFE000FFFFE07FFFE007FFFF8001),
    .INIT_38(256'h0FFFFC01FFFFF0003FFFFFFFFF00001FFFFFFFE07FFFFFFFFE0FFFFFF1FFFE3F),
    .INIT_39(256'hFFC1FFFFFC3FFFC7FFFFFFE01FFC3FFFFC03FFFF87FFC00000001FFC001FFFFC),
    .INIT_3A(256'h000003FF8003FFFF81FFFF801FFFFE0007FFFFFFFFE00003FFFFFFFC0FFFFFFF),
    .INIT_3B(256'h7FFE1FFF81FFFFFFFFF83FFFFFBBFFF8FFFFFF0403FF87FFFF7FBFFFF0FFF800),
    .INIT_3C(256'hFFFFFFFFFE1FFFFFFFFFFC7FEFFFBFFFF03FFFF7FBFFFFC001000001FFFC3FFF),
    .INIT_3D(256'h000000003FFF87FFFFFF81FFF03FFFFFFFFF07FFFFFFFFFF1FFFFFE0007FF0FF),
    .INIT_3E(256'hE3FFFFFC000FFE1FFFFFFFFFFFC3FFFFFFFFFF8FFFFFFFFFFE07FFFFFFFFFFF8),
    .INIT_3F(256'hFFC0FFFFFFFFFFFF0000000007FFF0FFFFFFF03FFE07FFFFFFFFE0FFFFFFFFFF),
    .INIT_40(256'hFFFFFC1FFFFFFFFFFC7FFFFF8001FFC3FFFFFFFFFFF87FFFFFFFFFF1FFFFFFFF),
    .INIT_41(256'hFFFFFFFE3FFFFFFFFFF81FFFFFFFFFFFE000000000FFFE1FFFFFFE07FFC0FFFF),
    .INIT_42(256'hFFFFFFC0FFF81FFFFFFFFF83FFFFFFFFFF8FFFFFF0003FF87FFFFFFFFFFF0FFF),
    .INIT_43(256'h0FFFFFFFFFFFE1FFFFFFFFFFC7FFFFFFFFFF03FFFFFFFFFFFC000000001FFFC3),
    .INIT_44(256'hFF8000000003FFF87FFFFFFC1FFF03FFFFFFFFF0FFFFFFFFFFF1FFFFFF0007FF),
    .INIT_45(256'hFFFE3FFFF80000FFE1FFFFFFFFFFFC7FFFFFFFFFF87BFFFFFFFFE07FFFFFFFFF),
    .INIT_46(256'hFFFFFC0FFFFFFFFFFFF0000000007FFF0FFFFF0003FFE07FFFFFFFFE01FFFFFF),
    .INIT_47(256'hFFFFFFFFC03FFFFFFFFFC7FFFF00001FFC3FFFFFFFFFFF807FFFFFFFFF00FFFF),
    .INIT_48(256'h0FFFFFFFFFE01FFFFFFFFF81FFFFFFFFFFFE000000000FFFE1FFFFE0007FFC0F),
    .INIT_49(256'hFC3FFFFC000FFF81FFFFFFFFF807FFFFFFFFF8FFFFE00003FF87FFFFFFFFFFF0),
    .INIT_4A(256'h7FF0FFFFFFFFFFFE01FFFFFFFFFC03FFFFFFFFF03FFFFFFFFFFFC000000001FF),
    .INIT_4B(256'hFFFFF8000000003FFF87FFFF8001FFF03FFFFFFFFF00FFFFFFFFFF1FFFFC0000),
    .INIT_4C(256'hFFFFFFC1FFFFC00007FC1FFFFFFFFFFFE01FFFFFFFFF807FFFFFFFFE07FFFFFF),
    .INIT_4D(256'hFFFFFFFFE0FFFFFFFFFFFE0000000007FFE0FFFFE0007FFF0FFFFFFFFFC00FFF),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000007FFFFFFFFE007),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_0
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_0_DOADO_UNCONNECTED[31:1],out[0]}),
        .DOBDO({NLW_data_reg_0_0_DOBDO_UNCONNECTED[31:1],data_reg[0]}),
        .DOPADOP(NLW_data_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "1" *) 
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
    .INIT_01(256'hFFF83FFFF801FFF8000000000000000000000000000000000000000000000000),
    .INIT_02(256'h1FFF8000FFFFFFFFFFC00FFFFFFFFFFC0FFFFFFFF0001FFFFFFFF003FFFF001F),
    .INIT_03(256'hFFFFFE007FFFF007FFFF03FFFF003FFE00FFFFFFFFF8000FFFFFFFF801FFFF80),
    .INIT_04(256'hFFFFFFFE003FFFF001FFF0001FFFFFFFFFF801FFFFFFFFFFC1FFFFFFFF0001FF),
    .INIT_05(256'hF83FFFFFFFE0003FFFFFFFC00FFFFE00FFFFE07FFFE007FFC01FFFFFFFFF0001),
    .INIT_06(256'hF803FFFFFFFFE0003FFFFFFFC007FFFE003FFE0003FFFFFFFFFF003FFFFFFFFF),
    .INIT_07(256'hFFFFE007FFFFFFFFFF07FFFFFFFC0007FFFFFFF801FFFFC01FFFFC0FFFFC00FF),
    .INIT_08(256'h03FFFF81FFFF801FFF007FFFFFFFFC0007FFFFFFF800FFFFC007FFC0007FFFFF),
    .INIT_09(256'hF800FFF8000FFFFFFFFFFC00FFFFFFFFFFE0FFFFFFFF8000FFFFFFFF003FFFF8),
    .INIT_0A(256'h3FFFFFFFE007FFFF007FFFF03FFFF003FFF10FFFFFFFFF8000FFFFFFFF001FFF),
    .INIT_0B(256'h001FFFFFFFF183FFFF001FFF0003FFFFFFFFFF831FFFFFFFFFFC1FFFFFFFF106),
    .INIT_0C(256'hFFFF83FFFFFFFFE0FFFFFFFFFFC0FFFFE00FFFFE07FFFE007FFFE1FFFFFFFFF8),
    .INIT_0D(256'h0FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE003FFFF07FFFFFFFFFFF03FFFFFFF),
    .INIT_0E(256'hFFFFFFFE07FFFFFFFFFFF07FFFFFFFFC1FFFFFFFFFF81FFFFC01FFFFC0FFFFC0),
    .INIT_0F(256'hFF803FFFF81FFFF801FFFF87FFFFFFFFFE07FFFFFFFFFE0FFFFC007FFFC0FFFF),
    .INIT_10(256'hFFFF800FFFF81FFFFFFFFFFFC0FFFFFFFFFFFE0FFFFFFFFF83FFFFFFFFFF03FF),
    .INIT_11(256'hF07FFFFFFBFFE07FFFF007FFFF03FFFF003FFFF0FFFFFFFFFFC1FFFFFFFFFFC1),
    .INIT_12(256'hFFF83FFFFFFFFFF83FFFF001FFFF03FFFFFFFFFFF81FFFFFFFFFFFC1FFFFFFFF),
    .INIT_13(256'hFFFFFFF83FFFFFFFFE0FFFFFE07FFC0FFFFE0FFFFFE07FFFE007FFFE1FFFFFFF),
    .INIT_14(256'hFC00FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE003FFFE07FFFFFFFFFFF03FFFF),
    .INIT_15(256'hFFFFFFFFFFE07FFFFFFFFFFF07FFFFFFFFC1FFFFFC0FFF81FFFFC1FFFFFC0FFF),
    .INIT_16(256'h3FFFF83FFFFF81FFFF801FFFF87FFFFFFFFFE0FFFFFFFFFFE0FFFFC007FFFC0F),
    .INIT_17(256'hFC1FFFF800FFFF81FFFFFFFFFFFC0FFFFFFFFFFFE0FFFFFFFFF83FFFFF81FFF0),
    .INIT_18(256'hFFFF07FFFFF03FFE07FFFF07FFFFF03FFFF003FFFF0FFFFFFFFFFC1FFFFFFFFF),
    .INIT_19(256'hFFFFFF83FFFFFFFFFF83FFFF001FFFF03FFFFFFFFFFF81FFFFFFFFFFFC1FFFFF),
    .INIT_1A(256'hFFFFFFFFFF800000FFFFE0FFFFF007FFC0FFFFE0FFFFFE07FFFE007FFFE1FFFF),
    .INIT_1B(256'hFFFFC00FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE003FFFE07FFFFFFFFFFF03F),
    .INIT_1C(256'hC0FFFFFFFFFFFE07FFFFFFFFFFF000000FFFFC1FFFFC00FFF81FFFFC1FFFFFC0),
    .INIT_1D(256'hFF03FFFF83FFFFF81FFFF801FFFF87FFFFFFFFFE0FFFFFFFFFFE0FFFFC007FFF),
    .INIT_1E(256'hFFFFC1FFFF800FFFF81FFFFFFFFFFFC0FFFFFFFFFFFE000001FFFF83FFFF801F),
    .INIT_1F(256'h003FFFF07FFFF003FFE07FFFF07FFFFF03FFFF003FFFF0FFFFFFFFFFC1FFFFFF),
    .INIT_20(256'hFFFFFFFFF81FFFFFFFFFF83FFFF001FFFF03FFFFFFFFFFF81FFFFFFFFFFFC000),
    .INIT_21(256'h03FFFFFFFFFFF8000007FFFE0FFFFE007FFC0FFFFE0FFFFFE07FFFE007FFFE1F),
    .INIT_22(256'hFC0FFFFC00FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE003FFFE07FFFFFFFFFFF),
    .INIT_23(256'hFFFC0FFFFC0003FFE07FFFE0007FFF003FFEFFFFC1FFFFC00FFF81FFFFBDFF07),
    .INIT_24(256'h01FFF03FFFFFFFC0FF81FFFF801FFFF800000007FFE0000000FFFFE0FFFFC007),
    .INIT_25(256'h001FFFFC1FFFF800FFFF81FFFFC0007FFC0FFFFC0007FFE007FFFFFFF83FFFF8),
    .INIT_26(256'h00FFFFFFFF07FFFF003FFE07FFFFFFF81FF03FFFF003FFFF00000000FFFC0000),
    .INIT_27(256'hE00000001FFF80000003FFFF83FFFF001FFFF03FFFF0000FFF81FFFF8001FFFC),
    .INIT_28(256'hFFF03FFFF0003FFF801FFFFFFFE0FFFFE007FFC0FFFFFFFF03FE07FFFE007FFF),
    .INIT_29(256'hE07FC0FFFFC00FFFFC00000003FFF00000007FFFF07FFFE003FFFE07FFFE0001),
    .INIT_2A(256'h007FFFC0FFFFC0003FFE07FFFE0007FFF006001FFFFC1FFFFC00FFF81FFFFFFF),
    .INIT_2B(256'hFF801FFF03FFFFFFFC0FF81FFFF801FFFF800000007FFE0000000FFFFE0FFFFC),
    .INIT_2C(256'h000001FFFFC1FFFF800FFFF81FFFFC000FFFC0FFFFC000FFFE000003FFFF83FF),
    .INIT_2D(256'hFFC000003FFFF07FFFF003FFE07FFFFFFF81FF03FFFF003FFFF08000000FFFC0),
    .INIT_2E(256'hFFFE1FFFFFFFFFF83FFFF03FFFF83FFFF001FFFF03FFFFFFFFFFF81FFFFFFFFF),
    .INIT_2F(256'hFFFFFF03FFFFFFFFFFF8000007FFFE0FFFFE007FFC0FFFFFFFF03FE07FFFE007),
    .INIT_30(256'hFFFF07FC0FFFFC00FFFFC3FFFFFFFFFF03FFFE07FFFF07FFFE003FFFE07FFFFF),
    .INIT_31(256'hFFC007FFFC0FFFFFFFFFFFE07FFFFFFFFFFF000000FFFFC1FFFFC00FFF81FFFF),
    .INIT_32(256'h3FFFF801FFF03FFFFFFDE0FF81FFFF801FFFF87FFFFFFFFFE0FFFFC0FFFFE0FF),
    .INIT_33(256'hFC1FF7FC1FFFFC1FFFF800FFFF80FF7FFFFFFFFC17FFBFFFFFFFE000003FFFF8),
    .INIT_34(256'hFFFFFC1FFFFFFFFF07FFFFF03FFE07FFFFFF801FF03FFFF003FFFF0FFFBFFFFF),
    .INIT_35(256'h007FFFE1FFF800000003FE0003FFFF83FFFF001FFFF0001FFFFFFFFF80000FFF),
    .INIT_36(256'hFFFFFFFFF00001FFFFFFFF83FFFFFFFFE0FFFFFE07FFC0FFFFFFF003FE07FFFE),
    .INIT_37(256'hFFFFFE007FC0FFFFC00FFFFC3FFF000000007FC0007FFFF07FFFE003FFFE0003),
    .INIT_38(256'h0FFFFC007FFFC0007FFFFFFFFE00003FFFFFFFF07FFFFFFFFC1FFFFFC0FFF81F),
    .INIT_39(256'hFF83FFFFF81FFF03FFFFFFC00FF81FFFF801FFFF87FFE00000000FF8000FFFFE),
    .INIT_3A(256'h000001FF0001FFFFC1FFFF800FFFF8000FFFFFFFFFC00007FFFFFFFE0FFFFFFF),
    .INIT_3B(256'hFFFC0FFFC1FFFFFFFFF07FFFFF03FFE07FFFFF8001FF03FFFF007FFFF0FFFC00),
    .INIT_3C(256'hFFFFFFFFFE1FFF000000003FF0003FFFF83FFFF801FFFF0000000000FFF80000),
    .INIT_3D(256'h000000001FFF03FFFFFFC1FFF83FFFFFFFFE0FFFFFFFFFFC0FFFFFE0003FE07F),
    .INIT_3E(256'h81FFFFFC0007FC0FFFFFFFFFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFFFFFFFFE0),
    .INIT_3F(256'hFFE0FFFFFFFFFFFC0000000003FFE07FFFFFF87FFF07FFFFFFFFC1FFFFFFFFFF),
    .INIT_40(256'hFFFFF83FFFFFFFFFF03FFFFF8000FF81FFFFFFFFFFF87FFFFFFFFFE0FFFFFFFF),
    .INIT_41(256'hFFFFFFFC0FFFFFFFFFFC1FFFFFFFFFFF80000000007FFC0FFFFFFF0FFFE0FFFF),
    .INIT_42(256'hFFFFFFE1FFFC1FFFFFFFFF07FFFFFFFFFE07FFFFF0001FF03FFFFFFFFFFF0FFF),
    .INIT_43(256'h07FFFFFFFFFFE1FFFFFFFFFF83FFFFFFFFFF83FFFFFFFFFFF0000000000FFF81),
    .INIT_44(256'hFE0000000001FFF03FFFF0003FFF83FFFFFFFFE007FFFFFFFFC0FFFFC00003FE),
    .INIT_45(256'hFFF81FFFFC00007FC0FFFFFFFFFFFC01FFFFFFFFF003FFFFFFFFF07FFFFFFFFF),
    .INIT_46(256'hFFFFFE0FFFFFFFFFFFC0000000003FFE07FFFE0007FFF07FFFFFFFFC007FFFFF),
    .INIT_47(256'hFFFFFFFF800FFFFFFFFF03FFFF80000FF81FFFFFFFFFFF803FFFFFFFFE007FFF),
    .INIT_48(256'h07FFFFFFFFC00FFFFFFFFFC1FFFFFFFFFFF80000000007FFC0FFFFC000FFFE0F),
    .INIT_49(256'hF81FFFF8001FFFC1FFFFFFFFF001FFFFFFFFE07FFFF00001FF03FFFFFFFFFFF0),
    .INIT_4A(256'h2FA05F7FFEFDFFFA00FFFFFFFFF801FFFFFFFFF83FFFFFFFFFFF8000000000FF),
    .INIT_4B(256'hFFFBA00000000017BD027EFE00017BD82FEFFFDFFA002FFEFFFDF40BF7F60000),
    .INIT_4C(256'h000000000000000000000000000000000036FFFDFBFF002FEFDFFFBB057FFEFD),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_1
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_1_DOADO_UNCONNECTED[31:1],out[1]}),
        .DOBDO({NLW_data_reg_0_1_DOBDO_UNCONNECTED[31:1],data_reg[1]}),
        .DOPADOP(NLW_data_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
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
    .INIT_01(256'h0004200000020008000000000000000000000000000000000000000000000000),
    .INIT_02(256'h1000400100000000002000000000000200000000080010000000080400008020),
    .INIT_03(256'hFFFFFF00FFFFE003FFFF87FFFF003FFE00000000000400100000000800000000),
    .INIT_04(256'hFFFFFFFF007FFFF803FFF8001FFFFFFFFFF803FFFFFFFFFFC3FFFFFFFF0003FF),
    .INIT_05(256'hF87FFFFFFFE0007FFFFFFFE01FFFFC00FFFFF0FFFFE007FFC03FFFFFFFFF0003),
    .INIT_06(256'hF807FFFFFFFFE0007FFFFFFFE00FFFFF007FFF0003FFFFFFFFFF807FFFFFFFFF),
    .INIT_07(256'hFFFFE00FFFFFFFFFFF0FFFFFFFFC000FFFFFFFFC03FFFF801FFFFE1FFFFC00FF),
    .INIT_08(256'h03FFFFC3FFFF801FFF00FFFFFFFFFC000FFFFFFFFC01FFFFE00FFFE0007FFFFF),
    .INIT_09(256'hFC01FFFC001FFFFFFFFFFC01FFFFFFFFFFE1FFFFFFFF0003FFFFFFFF807FFFF0),
    .INIT_0A(256'hFFFFFFFFFE0FFFFE007FFFF87FFFF003FFFF9FFFFFFFFFC001FFFFFFFF803FFF),
    .INIT_0B(256'hC3FFFFFFFFFF87FFFF803FFFF87FFFFFFFFFFF81FFFFFFFFFFFC3FFFFFFFFF03),
    .INIT_0C(256'hFFFF87FFFFFFFFE07FFFFFFFFFE1FFFFC00FFFFF0FFFFE007FFFF3FFFFFFFFFF),
    .INIT_0D(256'h0FFFFE7FFFFFFFFFF87FFFFFFFFFE0FFFFF007FFFF0FFFFFFFFFFFF03FFFFFFF),
    .INIT_0E(256'hFFFFFFFE07FFFFFFFFFFF0FFFFFFFFFC0FFFFFFFFFFC3FFFF801FFFFE1FFFFC0),
    .INIT_0F(256'hFF003FFFFC3FFFF801FFFFCFFFFFFFFFFF0FFFFFFFFFFC1FFFFE00FFFFE1FFFF),
    .INIT_10(256'hFFFFC01FFFFC3FFFFFFFFFFFC0FFFFFFFFFFFE1FFFFFFFFF81FFFFFFFFFF87FF),
    .INIT_11(256'hF03FFFFF83FFF0FFFFE07BFFFF87FFFF003FFFF9FFFFFFFFFFE1FFFFFFFFFF83),
    .INIT_12(256'hFFFC3FFFFFFFFFF07FFFF803FFFF87FFFFFFFFFFF81FFFFFFFFFFFC3FFFFFFFF),
    .INIT_13(256'hFFFFFFF87FFFFFFFFE07FFFFF0FFFE1FFFFC0FFFFFF0FFFFE007FFFF3FFFFFFF),
    .INIT_14(256'hFC00FFFFE7FFFFFFFFFF87FFFFFFFFFE0FFFFF007FFFF0FFFFFFFFFFFF03FFFF),
    .INIT_15(256'hFFFFFFFFFFE07FFFFFFFFFFF0FFFFFFFFFC0FFFFFE1FFFC3FFFF81FFFFFE1FFF),
    .INIT_16(256'h7FFFF03FFFFFC3FFFF801FFFFCFFFFFFFFFFF0FFFFFFFFFFC1FFFFE00FFFFE1F),
    .INIT_17(256'hF83FFFFC01FFFFC3FFFFFFFFFFFC0FFFFFFFFFFFE1FFFFFFFFF81FFFFFC3FFF8),
    .INIT_18(256'hFFFF03FFFFF87FFF0FFFFE07FFFFF87FFFF003FFFF9FFFFFFFFFFE1FFFFFFFFF),
    .INIT_19(256'hFFFFFFC3FFFFFFFFFF07FFFF803FFFF87FFFFFFFFFFF81FFFFFFFFFFFC3FFFFF),
    .INIT_1A(256'hFFFFFFFFFF87FFFF7FFFE07FFFFF0FFFE1FFFFC0FFFFFF0FFFFE007FFFF3FFFF),
    .INIT_1B(256'hFFFFC00FFFFE7FFFFFFFFFF87FFFFFFFFFE0FFFFF007FFFF0FFFFFFFFFFFF03F),
    .INIT_1C(256'hE1FFFFFFFFFFFE07FFFFFFFFFFF000001FFFFC0FFFFE01FFFC3FFFF81FFFFFE1),
    .INIT_1D(256'hFF87FFFF03FFFFFC3FFFF801FFFFCFFFFFFFFFFF0FFFFFFFFFFC1FFFFE00FFFF),
    .INIT_1E(256'hFFFF83FFFFC01FFFFC3FFFFFFFFFFFC0FFFFFFFFFFFE000003FFFF81FFFFC03F),
    .INIT_1F(256'h007FFFF03FFFF807FFF0FFFFE0FFFFFF87FFFF003FFFF9FFFFFFFFFFE1FFFFFF),
    .INIT_20(256'hFFFFFFFFFC3FFFFFFFFFF07FFFF803FFFF87FFFFFFFFFFF81FFFFFFFFFFFC000),
    .INIT_21(256'h03FFFFFFFFFFF800000FFFFE07FFFF00FFFE1FFFFC0FFFFFF0FFFFE007FFFF3F),
    .INIT_22(256'hFE1FFFFC00FFFFE7FFFFFFFFFF87FFFFFFFFFE0FFFFF007FFFF0FFFFFFFFFFFF),
    .INIT_23(256'hFFFE1FFFFDFFFFFFE07FFFEFFFBFFF005003FFFFC0FFFFE01FFFC3FFFFE5FF77),
    .INIT_24(256'h03FFF87FFFFFFFE1FFC3FFFF801FFFFCFFFFFFF7FFF0FFFFFFFFFFC1FFFFE00F),
    .INIT_25(256'h003FFFF83FFFFC01FFFFC3FFFF80007FFC0FFFFE000FFFE007FFFFFFF81FFFFC),
    .INIT_26(256'h00FFFFFFFF03FFFF807FFF0FFFFFFFFC3FF87FFFF003FFFF80000000FFFE0000),
    .INIT_27(256'hF00000001FFFC0000007FFFF07FFFF803FFFF87FFFF0001FFF81FFFFC001FFFC),
    .INIT_28(256'hFFF03FFFF8003FFF801FFFFFFFE07FFFF00FFFE1FFFFFFFF87FF0FFFFE007FFF),
    .INIT_29(256'hF0FFE1FFFFC00FFFFE00000003FFF8000000FFFFE0FFFFF007FFFF0FFFFE0001),
    .INIT_2A(256'h00FFFFE1FFFFC0007FFE07FFFF0007FFF003FFFFFFFC0FFFFE01FFFC3FFFFFFF),
    .INIT_2B(256'hFFC03FFF87FFFFFFFE1FFC3FFFF801FFFFC0000000FFFF0000001FFFFC1FFFFE),
    .INIT_2C(256'hFFFF83FFFF83FFFFC01FFFFC3FFFFFFFFFFFC0FFFFFFFFFFFE000003FFFF81FF),
    .INIT_2D(256'hFFC000007FFFF03FFFF807FFF0FFFFFFFFC3FF87FFFF003FFFF9FFFFFFFFFFE1),
    .INIT_2E(256'hFFFF3FFFFFFFFFFC3FFFF87FFFF07FFFF803FFFF87FFFFFFFFFFF81FFFFFFFFF),
    .INIT_2F(256'hFFFFFF03FFFFFFFFFFF800000FFFFE07FFFF00FFFE1FFFFFFFF87FF0FFFFE007),
    .INIT_30(256'hFFFF0FFE1FFFFC00FFFFE7FFFFFFFFFF87FFFF0FFFFE0FFFFF007FFFF0FFFFFF),
    .INIT_31(256'hFFE00FFFFE1FFFFFFFFFFFE07FFFFFFFFFFF000001FFFFC0FFFFE01FFFC3FFFF),
    .INIT_32(256'h1FFFFBC3FFF87FFFFFFC01FFC3FFFF801FFFFCFFFFFFFFFFF0FFFFE1FFFFC1FF),
    .INIT_33(256'h021FF8043FFFF83FFFFC01FFFFC200FFFFFFFFFC10007FFFFFFFE0FFFFFFFFF8),
    .INIT_34(256'hFFFFFC3FFFFFFFFF03FFFFF87FFF0FFFFFFFC03FF87FFFF003FFFF9FFFC00000),
    .INIT_35(256'h007FFFF3FFF800000003FE0007FFFF07FFFF803FFFF8001FFFFFFFFF80000FFF),
    .INIT_36(256'hFFFFFFFFF00001FFFFFFFF87FFFFFFFFE07FFFFF0FFFE1FFFFFFF807FF0FFFFE),
    .INIT_37(256'hFFFFFF00FFE1FFFFE00FFFFE7FFF000000007FC000FFFFE0FFFFF007FFFF0003),
    .INIT_38(256'h1FFFFE00FFFFE0007FFFFFFFFE00003FFFFFFFF0FFFFFFFFFC0FFFFFE1FFFC3F),
    .INIT_39(256'hFF81FFFFFC3FFF87FFFFFFE01FFC3FFFF801FFFFCFFFE00000000FF8001FFFFC),
    .INIT_3A(256'h000001FF0003FFFF83FFFFC01FFFFC000FFFFFFFFFC00007FFFFFFFE1FFFFFFF),
    .INIT_3B(256'h7FFDEFFFC3FFFFFFFFF03FFFFFC7FFF0FFFFFF7C03FF87FFFF807FFFF9FFFC00),
    .INIT_3C(256'hFFFFFFFFFF3FFF000000003FF0007FFFF07FFFF007FFFF8000FFFFFFFFF80000),
    .INIT_3D(256'h000000001FFF03FFFFFFC3FFF87FFFFFFFFE07FFFFFFFFFE1FFFFFF0007FF0FF),
    .INIT_3E(256'hC3FFFFFE000FFE1FFFFFFFFFFFE7FFFFFFFFFF87FFFFFFFFFE0FFFFFFFFFFFF0),
    .INIT_3F(256'hFFC1FFFFFFFFFFFE0000000007FFE07FFFFFF87FFF0FFFFFFFFFC0FFFFFFFFFF),
    .INIT_40(256'hFFFFF81FFFFFFFFFF87FFFFFC001FFC3FFFFFFFFFFFCFFFFFFFFFFF0FFFFFFFF),
    .INIT_41(256'hFFFFFFFE1FFFFFFFFFF83FFFFFFFFFFFC0000000007FFC0FFFFFFF0FFFE1FFFF),
    .INIT_42(256'hFFFFFFE1FFFC3FFFFFFFFF03FFFFFFFFFF0FFFFFF8003FF87FFFFFFFFFFF9FFF),
    .INIT_43(256'h0FFFFFFFFFFFF3FFFFFFFFFFC3FFFFFFFFFF07FFFFFFFFFFF8000000000FFF81),
    .INIT_44(256'hFF0000000001FFF03FFFF7FC3FFF87FFFFFFFFE0F7FFFFFFFFE1FFFFDF0007FF),
    .INIT_45(256'hFFFC3FFFF80000FFE1FFFFFFFFFFFE7FFFFFFFFFF87FFFFFFFFFE0FFFFFFFFFF),
    .INIT_46(256'hFFFFFC1FFFFFFFFFFFE0000000003FFE07FFFF0007FFF0FFFFFFFFFC00FFFFFF),
    .INIT_47(256'hFFFFFFFF801FFFFFFFFF87FFFF00001FFC3FFFFFFFFFFFC03FFFFFFFFF00FFFF),
    .INIT_48(256'h07FFFFFFFFE01FFFFFFFFF83FFFFFFFFFFFC0000000007FFC0FFFFE000FFFE1F),
    .INIT_49(256'hF81FFFFC001FFFC3FFFFFFFFF003FFFFFFFFF0FFFFE00003FF87FFFFFFFFFFF8),
    .INIT_4A(256'h7FF07FFFFFFFFFFF00FFFFFFFFFC03FFFFFFFFF07FFFFFFFFFFF8000000000FF),
    .INIT_4B(256'hFFFFF0000000001FFF83FFFF8003FFF87FFFFFFFFE007FFFFFFFFE1FFFFC0000),
    .INIT_4C(256'h00000000000000000000000000000000001FFFFFFFFF807FFFFFFFFF0FFFFFFF),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_2
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_2_DOADO_UNCONNECTED[31:1],out[2]}),
        .DOBDO({NLW_data_reg_0_2_DOBDO_UNCONNECTED[31:1],data_reg[2]}),
        .DOPADOP(NLW_data_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "3" *) 
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
    .INIT_01(256'h0000200000020008000000000000000000000000000000000000000000000000),
    .INIT_02(256'h1000000100000000002000000000000010000000000010000000000000000000),
    .INIT_03(256'hFFFFFF00FFFFE003FFFF87FFFF007FFF01000000000400000000000802000040),
    .INIT_04(256'hFFFFFFFF003FFFF003FFF8003FFFFFFFFFFC01FFFFFFFFFFC1FFFFFFFF0003FF),
    .INIT_05(256'hF83FFFFFFFE0007FFFFFFFE01FFFFC00FFFFF0FFFFE00FFFE01FFFFFFFFF8003),
    .INIT_06(256'hFC03FFFFFFFFF0007FFFFFFFE007FFFE007FFF0007FFFFFFFFFF803FFFFFFFFF),
    .INIT_07(256'hFFFFF007FFFFFFFFFF07FFFFFFFC000FFFFFFFFC03FFFF801FFFFE1FFFFC01FF),
    .INIT_08(256'h03FFFFC3FFFF803FFF807FFFFFFFFE000FFFFFFFFC00FFFFC00FFFE000FFFFFF),
    .INIT_09(256'hF801FFFC000FFFFFFFFFFE00FFFFFFFFFFE0FFFFFFFF0001FFFFFFFF807FFFF0),
    .INIT_0A(256'hFFFFFFFFFF0FFFFE007FFFF87FFFF007FFFF0FFFFFFFFF8001FFFFFFFF801FFF),
    .INIT_0B(256'h83FFFFFFFFFF83FFFF003FFFF83FFFFFFFFFFFC1FFFFFFFFFFFC1FFFFFFFFF83),
    .INIT_0C(256'hFFFF83FFFFFFFFF07FFFFFFFFFE1FFFFC00FFFFF0FFFFE00FFFFE1FFFFFFFFFF),
    .INIT_0D(256'h1FFFFC3FFFFFFFFFF07FFFFFFFFFE07FFFE007FFFF07FFFFFFFFFFF87FFFFFFF),
    .INIT_0E(256'hFFFFFFFF0FFFFFFFFFFFF07FFFFFFFFE0FFFFFFFFFFC3FFFF801FFFFE1FFFFC0),
    .INIT_0F(256'hFF003FFFFC3FFFF803FFFF87FFFFFFFFFE0FFFFFFFFFFC0FFFFC00FFFFE0FFFF),
    .INIT_10(256'hFFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFE0FFFFFFFFFC1FFFFFFFFFF87FF),
    .INIT_11(256'hF83FFFFF87FFF0FFFFE073FFFF87FFFF007FFFF0FFFFFFFFFFC1FFFFFFFFFF81),
    .INIT_12(256'hFFF83FFFFFFFFFF03FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFFC1FFFFFFFF),
    .INIT_13(256'hFFFFFFF83FFFFFFFFF07FFFFF0FFFE1FFFFC1FFFFFF0FFFFE00FFFFE1FFFFFFF),
    .INIT_14(256'hFC01FFFFC3FFFFFFFFFF07FFFFFFFFFE07FFFE007FFFF07FFFFFFFFFFF87FFFF),
    .INIT_15(256'hFFFFFFFFFFF0FFFFFFFFFFFF07FFFFFFFFE0FFFFFE1FFFC3FFFF83FFFFFE1FFF),
    .INIT_16(256'h7FFFF07FFFFFC3FFFF803FFFF87FFFFFFFFFE0FFFFFFFFFFC0FFFFC00FFFFE0F),
    .INIT_17(256'hF81FFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFE0FFFFFFFFFC1FFFFFC3FFF8),
    .INIT_18(256'hFFFF83FFFFF87FFF0FFFFE0FFFFFF87FFFF007FFFF0FFFFFFFFFFC1FFFFFFFFF),
    .INIT_19(256'hFFFFFF83FFFFFFFFFF03FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFFC1FFFFF),
    .INIT_1A(256'hFFFFFFFFFF8400007FFFF07FFFF00FFFE1FFFFC1FFFFFF0FFFFE00FFFFE1FFFF),
    .INIT_1B(256'hFFFFC01FFFFC3FFFFFFFFFF07FFFFFFFFFE07FFFE007FFFF07FFFFFFFFFFF87F),
    .INIT_1C(256'hE0FFFFFFFFFFFF0FFFFFFFFFFFF000000FFFFE0FFFFC01FFFC3FFFF83FFFFFE1),
    .INIT_1D(256'hFF87FFFF07FFFFFC3FFFF803FFFF87FFFFFFFFFE0FFFFFFFFFFC0FFFFC00FFFF),
    .INIT_1E(256'hFFFF81FFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFE000001FFFFC1FFFFC03F),
    .INIT_1F(256'h003FFFF83FFFF807FFF0FFFFE07FFFFF87FFFF007FFFF0FFFFFFFFFFC1FFFFFF),
    .INIT_20(256'hFFFFFFFFF83FFFFFFFFFF03FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFFC000),
    .INIT_21(256'h87FFFFFFFFFFF8000007FFFF07FFFF00FFFE1FFFFC1FFFFFF0FFFFE00FFFFE1F),
    .INIT_22(256'hFE1FFFFC01FFFFC3FFFFFFFFFF07FFFFFFFFFE07FFFE007FFFF07FFFFFFFFFFF),
    .INIT_23(256'hFFFE0FFFFFFFFFFFF0FFFFFFFFBFFF001003FFFFE0FFFFE01FFFC3FFFFE7FFFF),
    .INIT_24(256'h03FFF87FFFFFFFE0FFC3FFFF803FFFF87FFFFFFFFFE0FFFFFEFFFFC0FFFFC00F),
    .INIT_25(256'h003FFFF81FFFF801FFFFC1FFFF8000FFFE1FFFFC0007FFE00FFFFFFFFC1FFFFC),
    .INIT_26(256'h01FFFFFFFF83FFFF807FFF0FFFFFFFFC3FF87FFFF007FFFF00000000FFFC0000),
    .INIT_27(256'hE00000001FFF80000007FFFF03FFFF003FFFF83FFFF8001FFFC3FFFF8001FFFC),
    .INIT_28(256'hFFF87FFFF0003FFF803FFFFFFFF07FFFF00FFFE1FFFFFFFF83FF0FFFFE00FFFF),
    .INIT_29(256'hF07FE1FFFFC01FFFFC00000003FFF0000000FFFFE07FFFE007FFFF07FFFF0003),
    .INIT_2A(256'h00FFFFE0FFFFE0007FFF0FFFFE0007FFF003FFFFFFFE0FFFFE01FFFC3FFFFFFF),
    .INIT_2B(256'hFFC03FFF87FFFFFFFE0FFC3FFFF803FFFF800000007FFE0000001FFFFC0FFFFC),
    .INIT_2C(256'hFFFFC3FFFF81FFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFE000003FFFFC1FF),
    .INIT_2D(256'hFFC000003FFFF83FFFF807FFF0FFFFFFFFC1FF87FFFF007FFFF0FFFFFFFFFFC1),
    .INIT_2E(256'hFFFE1FFFFFFFFFF83FFFF87FFFF03FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFF),
    .INIT_2F(256'hFFFFFF87FFFFFFFFFFF8000007FFFF07FFFF00FFFE1FFFFFFFF83FF0FFFFE00F),
    .INIT_30(256'hFFFF07FE1FFFFC01FFFFC3FFFFFFFFFF07FFFF0FFFFE07FFFE007FFFF07FFFFF),
    .INIT_31(256'hFFC00FFFFE0FFFFFFFFFFFF0FFFFFFFFFFFF000000FFFFE0FFFFC01FFFC3FFFF),
    .INIT_32(256'h1FFFFD03FFF87FFFFFFE00FFC3FFFF803FFFF87FFFFFFFFFE0FFFFE1FFFFC0FF),
    .INIT_33(256'h001FF8043FFFF81FFFF801FFFFC100FFFFFFFFFE18007FFFFFFFE08000BFFFFC),
    .INIT_34(256'hFFFFFC1FFFFFFFFF83FFFFF87FFF0FFFFFFFC01FF87FFFF007FFFF0FFFC00000),
    .INIT_35(256'h00FFFFE1FFF800000003FF0007FFFF03FFFF003FFFF8001FFFFFFFFFC0000FFF),
    .INIT_36(256'hFFFFFFFFF80001FFFFFFFF83FFFFFFFFF07FFFFF0FFFE1FFFFFFF803FF0FFFFE),
    .INIT_37(256'hFFFFFF007FE1FFFFC01FFFFC3FFF000000007FE000FFFFE07FFFE007FFFF0003),
    .INIT_38(256'h0FFFFC00FFFFE0007FFFFFFFFF00003FFFFFFFF07FFFFFFFFE0FFFFFE1FFFC3F),
    .INIT_39(256'hFFC1FFFFFC3FFF87FFFFFFE00FFC3FFFF803FFFF87FFE00000000FFC001FFFFC),
    .INIT_3A(256'h000001FF8003FFFF81FFFF801FFFFC000FFFFFFFFFE00007FFFFFFFE0FFFFFFF),
    .INIT_3B(256'h7FFE1FFFC1FFFFFFFFF83FFFFFBBFFF0FFFFFF0001FF87FFFF7FFFFFF0FFFC00),
    .INIT_3C(256'hFFFFFFFFFE1FFFFFFFFFF83FFFFFBFFFF03FFFF7FBFFFF8001000001FFFC3FFF),
    .INIT_3D(256'h000000003FFF87FFFFFFC1FFF83FFFFFFFFF07FFFFFFFFFE1FFFFFE0003FF0FF),
    .INIT_3E(256'hC3FFFFFC0007FE1FFFFFFFFFFFC3FFFFFFFFFF07FFFFFFFFFE07FFFFFFFFFFF0),
    .INIT_3F(256'hFFC0FFFFFFFFFFFE0000000007FFF0FFFFFFF87FFF07FFFFFFFFE0FFFFFFFFFF),
    .INIT_40(256'hFFFFFC1FFFFFFFFFF87FFFFF8000FFC3FFFFFFFFFFF87FFFFFFFFFE0FFFFFFFF),
    .INIT_41(256'hFFFFFFFC1FFFFFFFFFF81FFFFFFFFFFFC000000000FFFE1FFFFFFF0FFFE0FFFF),
    .INIT_42(256'hFFFFFFE1FFFC1FFFFFFFFF83FFFFFFFFFF0FFFFFF0001FF87FFFFFFFFFFF0FFF),
    .INIT_43(256'h0FFFFFFFFFFFE1FFFFFFFFFF83FFFFFFFFFF03FFFFFFFFFFF8000000001FFFC3),
    .INIT_44(256'hFF0000000003FFF87FFFFFF83FFF83FFFFFFFFF0FFFFFFFFFFE1FFFFFE0003FF),
    .INIT_45(256'hFFFC3FFFF800007FE1FFFFFFFFFFFC3FFFFFFFFFF07BFFFFFFFFE07FFFFFFFFF),
    .INIT_46(256'hFFFFFC0FFFFFFFFFFFE0000000007FFF0FFFFE0007FFF07FFFFFFFFE00FFFFFF),
    .INIT_47(256'hFFFFFFFFC01FFFFFFFFF87FFFF00000FFC3FFFFFFFFFFF807FFFFFFFFE00FFFF),
    .INIT_48(256'h0FFFFFFFFFC01FFFFFFFFF81FFFFFFFFFFFC000000000FFFE1FFFFC000FFFE0F),
    .INIT_49(256'hFC3FFFF8001FFFC1FFFFFFFFF803FFFFFFFFF0FFFFE00001FF87FFFFFFFFFFF0),
    .INIT_4A(256'h3FF0FFFFFFFFFFFE01FFFFFFFFF803FFFFFFFFF03FFFFFFFFFFF8000000001FF),
    .INIT_4B(256'hFFFFF0000000003FFF87FFFF0001FFF83FFFFFFFFF007FFFFFFFFE1FFFFC0000),
    .INIT_4C(256'h00000000000000000000000000000000001FFFFFFFFF007FFFFFFFFF07FFFFFF),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_3
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_3_DOADO_UNCONNECTED[31:1],out[3]}),
        .DOBDO({NLW_data_reg_0_3_DOBDO_UNCONNECTED[31:1],data_reg[3]}),
        .DOPADOP(NLW_data_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
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
    .INIT_01(256'hFFF81FFFF801FFF0000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0FFF8000FFFFFFFFFFC00FFFFFFFFFFC1FFFFFFFF0000FFFFFFFF003FFFF001F),
    .INIT_03(256'hFFFFFE007FFFF007FFFF07FFFF007FFF01FFFFFFFFF8000FFFFFFFF003FFFFC0),
    .INIT_04(256'hFFFFFFFF003FFFF003FFF0003FFFFFFFFFFC01FFFFFFFFFF81FFFFFFFE0003FF),
    .INIT_05(256'hF03FFFFFFFC0007FFFFFFFC00FFFFE007FFFE0FFFFE00FFFE01FFFFFFFFF8001),
    .INIT_06(256'hFC03FFFFFFFFF0003FFFFFFFE007FFFE007FFE0007FFFFFFFFFF003FFFFFFFFF),
    .INIT_07(256'hFFFFF007FFFFFFFFFE07FFFFFFF8000FFFFFFFF801FFFFC00FFFFC1FFFFC01FF),
    .INIT_08(256'h01FFFF83FFFF803FFF807FFFFFFFFE0007FFFFFFFC00FFFFC00FFFC000FFFFFF),
    .INIT_09(256'hF801FFF8000FFFFFFFFFFE00FFFFFFFFFFC0FFFFFFFF8001FFFFFFFF003FFFF8),
    .INIT_0A(256'hFFFFFFFFFF07FFFF003FFFF07FFFF007FFFF0FFFFFFFFF8000FFFFFFFF801FFF),
    .INIT_0B(256'h83FFFFFFFFFF03FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFF81FFFFFFFFF87),
    .INIT_0C(256'hFFFF03FFFFFFFFF0FFFFFFFFFFE0FFFFE007FFFE0FFFFE00FFFFE1FFFFFFFFFF),
    .INIT_0D(256'h1FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE007FFFF07FFFFFFFFFFF87FFFFFFF),
    .INIT_0E(256'hFFFFFFFF0FFFFFFFFFFFE07FFFFFFFFE1FFFFFFFFFFC1FFFFC00FFFFC1FFFFC0),
    .INIT_0F(256'hFF801FFFF83FFFF803FFFF87FFFFFFFFFE0FFFFFFFFFFE0FFFFC00FFFFE0FFFF),
    .INIT_10(256'hFFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFC0FFFFFFFFFC3FFFFFFFFFF83FF),
    .INIT_11(256'hF87FFFFFFFFFF07FFFF007FFFF07FFFF007FFFF0FFFFFFFFFFC1FFFFFFFFFFC1),
    .INIT_12(256'hFFF83FFFFFFFFFF83FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFF81FFFFFFFF),
    .INIT_13(256'hFFFFFFF03FFFFFFFFF0FFFFFF07FFE0FFFFE1FFFFFE0FFFFE00FFFFE1FFFFFFF),
    .INIT_14(256'hFC01FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE007FFFF07FFFFFFFFFFF87FFFF),
    .INIT_15(256'hFFFFFFFFFFF0FFFFFFFFFFFE07FFFFFFFFE1FFFFFE0FFFC1FFFFC3FFFFFC1FFF),
    .INIT_16(256'h3FFFF87FFFFF83FFFF803FFFF87FFFFFFFFFE0FFFFFFFFFFE0FFFFC00FFFFE0F),
    .INIT_17(256'hFC1FFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFC0FFFFFFFFFC3FFFFFC1FFF8),
    .INIT_18(256'hFFFF87FFFFF83FFF07FFFF0FFFFFF07FFFF007FFFF0FFFFFFFFFFC1FFFFFFFFF),
    .INIT_19(256'hFFFFFF83FFFFFFFFFF83FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFF81FFFFF),
    .INIT_1A(256'hFFFFFFFFFF000000FFFFF0FFFFE007FFE0FFFFE1FFFFFE0FFFFE00FFFFE1FFFF),
    .INIT_1B(256'hFFFFC01FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE007FFFF07FFFFFFFFFFF87F),
    .INIT_1C(256'hE0FFFFFFFFFFFF0FFFFFFFFFFFE000000FFFFE1FFFFC00FFFC1FFFFC3FFFFFC1),
    .INIT_1D(256'hFF83FFFF87FFFFF83FFFF803FFFF87FFFFFFFFFE0FFFFFFFFFFE0FFFFC00FFFF),
    .INIT_1E(256'hFFFFC1FFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFC000001FFFFC3FFFF801F),
    .INIT_1F(256'h003FFFF87FFFF003FFF07FFFF07FFFFF07FFFF007FFFF0FFFFFFFFFFC1FFFFFF),
    .INIT_20(256'hFFFFFFFFF83FFFFFFFFFF83FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFFFF8000),
    .INIT_21(256'h87FFFFFFFFFFF0000007FFFF0FFFFE007FFE0FFFFE1FFFFFE0FFFFE00FFFFE1F),
    .INIT_22(256'hFC1FFFFC01FFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFE007FFFF07FFFFFFFFFFF),
    .INIT_23(256'hFFFE0FFFFE0007FFF0FFFFF0007FFE002FFDFFFFE1FFFFC00FFFC1FFFFDBFF8F),
    .INIT_24(256'h01FFF83FFFFFFFE0FF83FFFF803FFFF80000000FFFE0000000FFFFE0FFFFC00F),
    .INIT_25(256'h001FFFFC1FFFF801FFFFC1FFFFC000FFFE1FFFFC0007FFC00FFFFFFFFC3FFFF8),
    .INIT_26(256'h01FFFFFFFF87FFFF003FFF07FFFFFFFC1FF07FFFF007FFFF00000000FFFC0000),
    .INIT_27(256'hE00000001FFF80000003FFFF83FFFF003FFFF83FFFF8001FFFC3FFFF8000FFF8),
    .INIT_28(256'hFFF87FFFF0001FFF003FFFFFFFF0FFFFE007FFE0FFFFFFFF83FE0FFFFE00FFFF),
    .INIT_29(256'hF07FC1FFFFC01FFFFC00000003FFF00000007FFFF07FFFE007FFFF07FFFF0003),
    .INIT_2A(256'h00FFFFE0FFFFE0007FFF0FFFFE0003FFE007FFFFFFFE1FFFFC00FFFC1FFFFFFF),
    .INIT_2B(256'hFF801FFF83FFFFFFFE0FF83FFFF803FFFF800000007FFE0000000FFFFE0FFFFC),
    .INIT_2C(256'hFFFFC1FFFFC1FFFF801FFFFC1FFFFFFFFFFFE1FFFFFFFFFFFC000001FFFFC3FF),
    .INIT_2D(256'hFF8000003FFFF87FFFF003FFF07FFFFFFFC1FF07FFFF007FFFF0FFFFFFFFFFC1),
    .INIT_2E(256'hFFFE1FFFFFFFFFF83FFFF83FFFF83FFFF003FFFF83FFFFFFFFFFFC3FFFFFFFFF),
    .INIT_2F(256'hFFFFFF87FFFFFFFFFFF0000007FFFF0FFFFE007FFE0FFFFFFFF83FE0FFFFE00F),
    .INIT_30(256'hFFFF07FC1FFFFC01FFFFC3FFFFFFFFFF07FFFF07FFFF07FFFE007FFFF07FFFFF),
    .INIT_31(256'hFFC00FFFFE0FFFFFFFFFFFF0FFFFFFFFFFFE000000FFFFE1FFFFC00FFFC1FFFF),
    .INIT_32(256'h3FFFFC01FFF83FFFFFFFE0FF83FFFF803FFFF87FFFFFFFFFE0FFFFE0FFFFE0FF),
    .INIT_33(256'hFC1FFFF81FFFFC1FFFF801FFFFC1FFFFFFFFFFFE0FFFFFFFFFFFC000001FFFFC),
    .INIT_34(256'hFFFFF81FFFFFFFFF87FFFFF83FFF07FFFFFF801FF07FFFF007FFFF0FFFFFFFFF),
    .INIT_35(256'h00FFFFE1FFF000000003FF0003FFFF83FFFF003FFFF8000FFFFFFFFFC00007FF),
    .INIT_36(256'hFFFFFFFFF80000FFFFFFFF03FFFFFFFFF0FFFFFF07FFE0FFFFFFF003FE0FFFFE),
    .INIT_37(256'hFFFFFE007FC1FFFFC01FFFFC3FFE000000007FE0007FFFF07FFFE007FFFF0001),
    .INIT_38(256'h0FFFFC00FFFFE0003FFFFFFFFF00001FFFFFFFE07FFFFFFFFE1FFFFFE0FFFC1F),
    .INIT_39(256'hFFC3FFFFFC1FFF83FFFFFFC00FF83FFFF803FFFF87FFC00000000FFC000FFFFE),
    .INIT_3A(256'h000001FF8001FFFFC1FFFF801FFFFC0007FFFFFFFFE00003FFFFFFFC0FFFFFFF),
    .INIT_3B(256'hFFFE1FFF81FFFFFFFFF87FFFFFBBFFF07FFFFF8001FF07FFFF7FBFFFF0FFF800),
    .INIT_3C(256'hFFFFFFFFFE1FFFFFFFFFF83FEFFFBFFFF83FFFFFFBFFFF8001000001FFFC3FFF),
    .INIT_3D(256'h000000003FFF87FFFFFF81FFF03FFFFFFFFF0FFFFFFFFFFE0FFFFFE0003FE0FF),
    .INIT_3E(256'hC1FFFFFC0007FC1FFFFFFFFFFFC3FFFFFFFFFF07FFFFFFFFFF07FFFFFFFFFFF0),
    .INIT_3F(256'hFFE0FFFFFFFFFFFE0000000007FFF0FFFFFFF03FFE07FFFFFFFFE1FFFFFFFFFF),
    .INIT_40(256'hFFFFFC3FFFFFFFFFF83FFFFF8000FF83FFFFFFFFFFF87FFFFFFFFFE0FFFFFFFF),
    .INIT_41(256'hFFFFFFFC1FFFFFFFFFFC1FFFFFFFFFFFC000000000FFFE1FFFFFFE07FFC0FFFF),
    .INIT_42(256'hFFFFFFC0FFF81FFFFFFFFF87FFFFFFFFFF07FFFFF0001FF07FFFFFFFFFFF0FFF),
    .INIT_43(256'h0FFFFFFFFFFFE1FFFFFFFFFF83FFFFFFFFFF83FFFFFFFFFFF8000000001FFFC3),
    .INIT_44(256'hFF0000000003FFF87FFFF8001FFF03FFFFFFFFF00FFFFFFFFFE0FFFFE00003FE),
    .INIT_45(256'hFFFC1FFFFC00007FC1FFFFFFFFFFFC03FFFFFFFFF003FFFFFFFFF07FFFFFFFFF),
    .INIT_46(256'hFFFFFE0FFFFFFFFFFFE0000000007FFF0FFFFE0003FFE07FFFFFFFFE00FFFFFF),
    .INIT_47(256'hFFFFFFFFC01FFFFFFFFF83FFFF80000FF83FFFFFFFFFFF807FFFFFFFFE007FFF),
    .INIT_48(256'h0FFFFFFFFFC00FFFFFFFFFC1FFFFFFFFFFFC000000000FFFE1FFFFC0007FFC0F),
    .INIT_49(256'hFC3FFFF8000FFF81FFFFFFFFF803FFFFFFFFF07FFFF00001FF07FFFFFFFFFFF0),
    .INIT_4A(256'h3FE0FFFFFFFFFFFE01FFFFFFFFF801FFFFFFFFF83FFFFFFFFFFF8000000001FF),
    .INIT_4B(256'hFFFFF0000000003FFF07FFFF0001FFF03FFFFFFFFF007FFFFFFFFE0FFFFE0000),
    .INIT_4C(256'h00000000000000000000000000000000003FFFFFFFFF003FFFFFFFFE07FFFFFF),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_4
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_4_DOADO_UNCONNECTED[31:1],out[4]}),
        .DOBDO({NLW_data_reg_0_4_DOBDO_UNCONNECTED[31:1],data_reg[4]}),
        .DOPADOP(NLW_data_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "5" *) 
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
    .INIT_01(256'hFFF83FFFF801FFF8000000000000000000000000000000000000000000000000),
    .INIT_02(256'h1FFF8000FFFFFFFFFFC00FFFFFFFFFFE0FFFFFFFF8001FFFFFFFF003FFFF803F),
    .INIT_03(256'hFFFFFE007FFFF007FFFF07FFFF003FFF00FFFFFFFFF8000FFFFFFFF801FFFF80),
    .INIT_04(256'hFFFFFFFF007FFFF803FFF0001FFFFFFFFFF801FFFFFFFFFFC3FFFFFFFF0003FF),
    .INIT_05(256'hF87FFFFFFFE0007FFFFFFFC00FFFFE00FFFFE0FFFFE007FFE03FFFFFFFFF0001),
    .INIT_06(256'hFC07FFFFFFFFE0003FFFFFFFE00FFFFF007FFE0003FFFFFFFFFF003FFFFFFFFF),
    .INIT_07(256'hFFFFE007FFFFFFFFFF0FFFFFFFFC000FFFFFFFF801FFFFC01FFFFC1FFFFC00FF),
    .INIT_08(256'h03FFFF83FFFF801FFF80FFFFFFFFFC0007FFFFFFFC01FFFFE00FFFC0007FFFFF),
    .INIT_09(256'hFC01FFF8001FFFFFFFFFFC00FFFFFFFFFFE1FFFFFFFF8001FFFFFFFF003FFFF8),
    .INIT_0A(256'hFFFFFFFFFF07FFFF007FFFF07FFFF003FFFF9FFFFFFFFFC000FFFFFFFF803FFF),
    .INIT_0B(256'h83FFFFFFFFFF87FFFF803FFFF83FFFFFFFFFFF83FFFFFFFFFFFC3FFFFFFFFF07),
    .INIT_0C(256'hFFFF87FFFFFFFFE0FFFFFFFFFFE0FFFFE00FFFFE0FFFFE007FFFF3FFFFFFFFFF),
    .INIT_0D(256'h0FFFFE7FFFFFFFFFF07FFFFFFFFFF0FFFFF007FFFF07FFFFFFFFFFF07FFFFFFF),
    .INIT_0E(256'hFFFFFFFE0FFFFFFFFFFFF0FFFFFFFFFC1FFFFFFFFFFC1FFFFC01FFFFC1FFFFC0),
    .INIT_0F(256'hFF803FFFF83FFFF801FFFFCFFFFFFFFFFE0FFFFFFFFFFE1FFFFE00FFFFE0FFFF),
    .INIT_10(256'hFFFFC01FFFFC1FFFFFFFFFFFC1FFFFFFFFFFFE1FFFFFFFFF83FFFFFFFFFF83FF),
    .INIT_11(256'hF07FFFFFFFFFF07FFFF007FFFF07FFFF003FFFF9FFFFFFFFFFC1FFFFFFFFFFC3),
    .INIT_12(256'hFFF83FFFFFFFFFF87FFFF803FFFF83FFFFFFFFFFF83FFFFFFFFFFFC3FFFFFFFF),
    .INIT_13(256'hFFFFFFF87FFFFFFFFE0FFFFFF07FFE0FFFFE0FFFFFE0FFFFE007FFFF3FFFFFFF),
    .INIT_14(256'hFC00FFFFE7FFFFFFFFFF07FFFFFFFFFF0FFFFF007FFFF07FFFFFFFFFFF07FFFF),
    .INIT_15(256'hFFFFFFFFFFE0FFFFFFFFFFFF0FFFFFFFFFC1FFFFFE0FFFC1FFFFC1FFFFFC1FFF),
    .INIT_16(256'h3FFFF83FFFFF83FFFF801FFFFCFFFFFFFFFFE0FFFFFFFFFFE1FFFFE00FFFFE0F),
    .INIT_17(256'hFC3FFFFC01FFFFC1FFFFFFFFFFFC1FFFFFFFFFFFE1FFFFFFFFF83FFFFFC1FFF8),
    .INIT_18(256'hFFFF07FFFFF83FFF07FFFF07FFFFF07FFFF003FFFF9FFFFFFFFFFC1FFFFFFFFF),
    .INIT_19(256'hFFFFFF83FFFFFFFFFF87FFFF803FFFF83FFFFFFFFFFF83FFFFFFFFFFFC3FFFFF),
    .INIT_1A(256'hFFFFFFFFFF83FFFFFFFFE0FFFFFF07FFE0FFFFE0FFFFFE0FFFFE007FFFF3FFFF),
    .INIT_1B(256'hFFFFC00FFFFE7FFFFFFFFFF07FFFFFFFFFF0FFFFF007FFFF07FFFFFFFFFFF07F),
    .INIT_1C(256'hE0FFFFFFFFFFFE0FFFFFFFFFFFF000001FFFFC1FFFFC00FFFC1FFFFC1FFFFFC1),
    .INIT_1D(256'hFF83FFFF83FFFFF83FFFF801FFFFCFFFFFFFFFFE0FFFFFFFFFFE1FFFFE00FFFF),
    .INIT_1E(256'hFFFFC3FFFFC01FFFFC1FFFFFFFFFFFC1FFFFFFFFFFFE000003FFFF83FFFF801F),
    .INIT_1F(256'h007FFFF07FFFF003FFF07FFFF0FFFFFF07FFFF003FFFF9FFFFFFFFFFC1FFFFFF),
    .INIT_20(256'hFFFFFFFFF83FFFFFFFFFF87FFFF803FFFF83FFFFFFFFFFF83FFFFFFFFFFFC000),
    .INIT_21(256'h07FFFFFFFFFFF800000FFFFE0FFFFE007FFE0FFFFE0FFFFFE0FFFFE007FFFF3F),
    .INIT_22(256'hFC1FFFFC00FFFFE7FFFFFFFFFF07FFFFFFFFFF0FFFFF007FFFF07FFFFFFFFFFF),
    .INIT_23(256'hFFFE0FFFFE0007FFE0FFFFE0007FFF007FFFFFFFC1FFFFC00FFFC1FFFFFFFF07),
    .INIT_24(256'h01FFF83FFFFFFFE0FF83FFFF801FFFFC00000007FFE0000001FFFFE1FFFFE00F),
    .INIT_25(256'h001FFFFC3FFFFC01FFFFC1FFFFC000FFFC1FFFFC000FFFE00FFFFFFFF83FFFF8),
    .INIT_26(256'h01FFFFFFFF07FFFF003FFF07FFFFFFFC1FF07FFFF003FFFF80000000FFFC0000),
    .INIT_27(256'hF00000001FFF80000003FFFF87FFFF803FFFF83FFFF8001FFF83FFFF8001FFFC),
    .INIT_28(256'hFFF07FFFF0003FFF803FFFFFFFE0FFFFE007FFE0FFFFFFFF83FE0FFFFE007FFF),
    .INIT_29(256'hF07FC1FFFFC00FFFFE00000003FFF00000007FFFF0FFFFF007FFFF07FFFF0003),
    .INIT_2A(256'h00FFFFE0FFFFE0007FFE0FFFFE0007FFF007FFFFFFFC1FFFFC00FFFC1FFFFFFF),
    .INIT_2B(256'hFF801FFF83FFFFFFFE0FF83FFFF801FFFFC00000007FFE0000000FFFFE1FFFFE),
    .INIT_2C(256'hFFFFC1FFFFC3FFFFC01FFFFC1FFFFFFFFFFFC1FFFFFFFFFFFE000003FFFF83FF),
    .INIT_2D(256'hFFC000007FFFF07FFFF003FFF07FFFFFFFC1FF07FFFF003FFFF9FFFFFFFFFFC1),
    .INIT_2E(256'hFFFF3FFFFFFFFFF83FFFF83FFFF87FFFF803FFFF83FFFFFFFFFFF83FFFFFFFFF),
    .INIT_2F(256'hFFFFFF07FFFFFFFFFFF800000FFFFE0FFFFE007FFE0FFFFFFFF83FE0FFFFE007),
    .INIT_30(256'hFFFF07FC1FFFFC00FFFFE7FFFFFFFFFF07FFFF07FFFF0FFFFF007FFFF07FFFFF),
    .INIT_31(256'hFFE00FFFFE0FFFFFFFFFFFE0FFFFFFFFFFFF000001FFFFC1FFFFC00FFFC1FFFF),
    .INIT_32(256'h3FFFF801FFF83FFFFFFFE0FF83FFFF801FFFFCFFFFFFFFFFE0FFFFE0FFFFE1FF),
    .INIT_33(256'hFC1FFFFC1FFFFC3FFFFC01FFFFC1FFFFFFFFFFFC1FFFFFFFFFFFE000003FFFF8),
    .INIT_34(256'hFFFFFC3FFFFFFFFF07FFFFF83FFF07FFFFFF801FF07FFFF003FFFF9FFFFFFFFF),
    .INIT_35(256'h007FFFF3FFF800000003FE0003FFFF87FFFF803FFFF8001FFFFFFFFF80000FFF),
    .INIT_36(256'hFFFFFFFFF00001FFFFFFFF87FFFFFFFFE0FFFFFF07FFE0FFFFFFF003FE0FFFFE),
    .INIT_37(256'hFFFFFE007FC1FFFFC00FFFFE7FFF000000007FC0007FFFF0FFFFF007FFFF0003),
    .INIT_38(256'h1FFFFE00FFFFE0007FFFFFFFFE00003FFFFFFFF0FFFFFFFFFC1FFFFFE0FFFC1F),
    .INIT_39(256'hFF83FFFFFC1FFF83FFFFFFC00FF83FFFF801FFFFCFFFE00000000FF8000FFFFE),
    .INIT_3A(256'h000001FF0001FFFFC3FFFFC01FFFFC000FFFFFFFFFC00007FFFFFFFE1FFFFFFF),
    .INIT_3B(256'hFFFFFFFFC3FFFFFFFFF07FFFFFC7FFF07FFFFFF801FF07FFFF807FFFF9FFFC00),
    .INIT_3C(256'hFFFFFFFFFF3FFF800000003FF0007FFFF87FFFF807FFFF8000FFFFFFFFF80000),
    .INIT_3D(256'h000000003FFF07FFFFFFC3FFF87FFFFFFFFE0FFFFFFFFFFE0FFFFFF0003FE0FF),
    .INIT_3E(256'hC1FFFFFE0007FC1FFFFFFFFFFFE7FFFFFFFFFF07FFFFFFFFFF0FFFFFFFFFFFF0),
    .INIT_3F(256'hFFE1FFFFFFFFFFFE0000000007FFE0FFFFFFF87FFF0FFFFFFFFFC1FFFFFFFFFF),
    .INIT_40(256'hFFFFF83FFFFFFFFFF83FFFFFC000FF83FFFFFFFFFFFCFFFFFFFFFFE0FFFFFFFF),
    .INIT_41(256'hFFFFFFFC1FFFFFFFFFFC3FFFFFFFFFFFC000000000FFFC1FFFFFFF0FFFE1FFFF),
    .INIT_42(256'hFFFFFFE1FFFC3FFFFFFFFF07FFFFFFFFFF07FFFFF8001FF07FFFFFFFFFFF9FFF),
    .INIT_43(256'h0FFFFFFFFFFFF3FFFFFFFFFF83FFFFFFFFFF87FFFFFFFFFFF8000000001FFF83),
    .INIT_44(256'hFF0000000003FFF07FFFF0003FFF87FFFFFFFFE007FFFFFFFFE0FFFFE00003FE),
    .INIT_45(256'hFFFC1FFFFC00007FC1FFFFFFFFFFFE03FFFFFFFFF007FFFFFFFFF0FFFFFFFFFF),
    .INIT_46(256'hFFFFFE1FFFFFFFFFFFE0000000007FFE0FFFFE0007FFF0FFFFFFFFFC00FFFFFF),
    .INIT_47(256'hFFFFFFFF801FFFFFFFFF83FFFF80000FF83FFFFFFFFFFFC07FFFFFFFFE007FFF),
    .INIT_48(256'h0FFFFFFFFFC00FFFFFFFFFC3FFFFFFFFFFFC000000000FFFC1FFFFC000FFFE1F),
    .INIT_49(256'hF83FFFF8001FFFC3FFFFFFFFF003FFFFFFFFF07FFFF00001FF07FFFFFFFFFFF8),
    .INIT_4A(256'h3FE0FFFFFFFFFFFF01FFFFFFFFF801FFFFFFFFF87FFFFFFFFFFF8000000001FF),
    .INIT_4B(256'hFFFFF0000000003FFF07FFFF0003FFF87FFFFFFFFE007FFFFFFFFE0FFFFE0000),
    .INIT_4C(256'h00000000000000000000000000000000003FFFFFFFFF003FFFFFFFFF0FFFFFFF),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_5
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_5_DOADO_UNCONNECTED[31:1],out[5]}),
        .DOBDO({NLW_data_reg_0_5_DOBDO_UNCONNECTED[31:1],data_reg[5]}),
        .DOPADOP(NLW_data_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "image_handler/ss/underpug/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "7" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_7
       (.ADDRARDADDR({1'b1,Q}),
        .ADDRBWRADDR({1'b1,data_reg_0_7_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_data_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_0_7_DOADO_UNCONNECTED[31:1],out[6]}),
        .DOBDO({NLW_data_reg_0_7_DOBDO_UNCONNECTED[31:1],data_reg[6]}),
        .DOPADOP(NLW_data_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized0
   (DOADO,
    clk_IBUF_BUFG,
    Q);
  output [7:0]DOADO;
  input clk_IBUF_BUFG;
  input [11:0]Q;

  wire [7:0]DOADO;
  wire [11:0]Q;
  wire clk_IBUF_BUFG;
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

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "image_handler/ss/start/data" *) 
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
    .INIT_00(256'h0D190500000005190D0D0D0D0D0D0D0D0D000000000D0D0D0D0D0D0D0D0D0D01),
    .INIT_01(256'h0D0D1905000000000001190D0D0D0D0D0D0D000000000D0D0D0D0D0D0D0D0D0D),
    .INIT_02(256'h0D0D0500000005190D0D0D0D0D190D0000000000000000000000000D190D0D0D),
    .INIT_03(256'h0D0D0D0D190500000001190D0D0D0D0D0D0D000000000D0D0D0D0D0D0D0D0D0D),
    .INIT_04(256'h3F3F3F3F3F3F3F3F3F0D010D0D0D0D0D0D0D0D0D0D0D0D000000000D190D0D0D),
    .INIT_05(256'h3D3F3F3F3F3F3F3F3F3F3F3F19000000193F3F3F3F3F3F3F3F3F39000000013D),
    .INIT_06(256'h0000000000323F3F3F3F3F3F3F190000000000193F3F3F3F3F3F3F3900000000),
    .INIT_07(256'h3D3F3F3F3F3F3F3F3F3F3F3F19000000193F3F3F3F3F3F3F3200000000000000),
    .INIT_08(256'h3F01000000323F3F3F3F3F3F3F3F3F240000000D3F3F3F3F3F3F3F3D00000000),
    .INIT_09(256'h393F3F3F3900000D0D3D3F323232323D3F3F3F0D0D3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_0A(256'h323232323F3D0D0500002E323232323232323D3F3F3F19000505243F3D323232),
    .INIT_0B(256'h393F390D050000000000000000050D393F393232323D3F240505000105243F3D),
    .INIT_0C(256'h323232323F3D0D0500002E3232323D3F3F3F393232320D000505243F3D323232),
    .INIT_0D(256'h3232323F3F3F3F323232320100050D393F393232323D3F3F3F24000105243F3D),
    .INIT_0E(256'h1900243F3F3F2E0000000D3F3F3F3900013F3F3F3F01000000393F3F3F0D0D32),
    .INIT_0F(256'h3F3F3F2400193F3F3F2E000000053F3F3F3D000000000000000000002E3F3F3F),
    .INIT_10(256'h0000243F3F3F2E0000000D3F3F3F390000000000000000393F3F3F0D0000002E),
    .INIT_11(256'h3F3F3F2400193F3F3F2E000000053F3F3F3D000000000000393F3F3F0D000000),
    .INIT_12(256'h000000393F3F3F0D00000000053F3F3F3D000000000000393F3F3F0D0000002E),
    .INIT_13(256'h000000000000323F3F3F1900243F3F3F2E0000000D3F3F3F3900013F3F3F3F01),
    .INIT_14(256'h00393F3F3F0D0000002E3F3F3F2400193F3F3F2E000000053F3F3F3D00000000),
    .INIT_15(256'h0000393F3F3F0D0000000000243F3F3F2E0000000D3F3F3F3900000000000000),
    .INIT_16(256'h00393F3F3F0D0000002E3F3F3F2400193F3F3F32000000053F3F3F3D00000000),
    .INIT_17(256'h3F3F3900013F3F3F3F01000000393F3F3F0D00000000053F3F3F3D0000000000),
    .INIT_18(256'h00053F3F3F3D000000000000000000002E3F3F3F1900243F3F3F2E0000000D3F),
    .INIT_19(256'h3F3F390000000000000000393F3F3F0D0000002E3F3F3F2400193F3F3F2E0000),
    .INIT_1A(256'h00053F3F3F3D000000000000393F3F3F0D0000000000243F3F3F2E0000000D3F),
    .INIT_1B(256'h053F3F3F3D000000000000393F3F3F0D0000002E3F3F3F2400193F3F3F2E0000),
    .INIT_1C(256'h243F3F3F2E0000000D3F3F3F3900013F3F3F3F01000000393F3F3F0D00000000),
    .INIT_1D(256'h3F2400193D393D2E000000053F3F3F3D00000000000000000000323F3F3F1900),
    .INIT_1E(256'h193D393D240000000D3F3F3F390000000000000000323D393D0D0000002E3F3F),
    .INIT_1F(256'h3F2400193F3F3F2E000000053F3F3F3D000000000000393F3F3F0D0000000000),
    .INIT_20(256'h00393F3F3F0D00000000053F3F3F3D000000000000393F3F3F0D0000002E3F3F),
    .INIT_21(256'h000000002E3F3F3F1900243F3F3F2E0000000D3F3F3F3900013F3F3F3F010000),
    .INIT_22(256'h000000000000002E3F3F3F24000000000000000000053F3F3F3D000000000000),
    .INIT_23(256'h393F3F3F0D000000000000000000000000000D3F3F3F39000000000000000000),
    .INIT_24(256'h3F3F3F0D0000002E3F3F3F2400193F3F3F2E000000053F3F3F3D000000000000),
    .INIT_25(256'h3900013D3D3F3F05000101393F3F3F0D00000000053F3F3F3D00000000000039),
    .INIT_26(256'h3F3F3D3900000000010101010100323F3F3F1900243F3D3F2E0001000D3F3F3F),
    .INIT_27(256'h32000000000000000000000101010101002E3F3D3F190000000001010101000D),
    .INIT_28(256'h3F3F3F3D000000000000393F3F3F0D000000000000000001010101000D3F3F3D),
    .INIT_29(256'h3F3F3D000000000000323D3F3F0D0001002E3F3F3F2400193F3F3F2E00000005),
    .INIT_2A(256'h243F3F3F3F3F3F3F3F3F39000000013D3F3F3F3F3F3F3F3F3F0D00000000053F),
    .INIT_2B(256'h0000000D3F3D3F3F3F3F3F3D000000000000393F3F3F3F3F3F3F3F3F19000000),
    .INIT_2C(256'h193F3D3F3F3F3F3F39000000000000000000000000323F3D3F3F3F3F3F240000),
    .INIT_2D(256'h00193F3F3F2E000000053F3F3F3D000000000000393F3F3F0D00000000000000),
    .INIT_2E(256'h3F3F3F0D00000000053F3F3F3D0000000000000000323F3F3F3F3F3F3F3F3F24),
    .INIT_2F(256'h3F3F3F3F3F3F19000000243F3F3F3F3F3F3F3F3F39000000013D3F3F3F3F3F3F),
    .INIT_30(256'h3F3F3F3F3F3D3F190000000000193F3F3F3F3F3F3F39000000000000393F3F3F),
    .INIT_31(256'h3F3F0D00000000000000243F3F3F3F3F3D3F3200000000000000000000000039),
    .INIT_32(256'h3F3F3F3F3F3F3F3F3F2400193F3F3F32000000053F3F3F3D000000000000393F),
    .INIT_33(256'h000000010101010101393F3F3F0D00000000053F3F3F3D000000000000000032),
    .INIT_34(256'h000000000000010101010100323F3F3F1900243F3D3F2E0001000D3F3F3F3900),
    .INIT_35(256'h00000000000000323D3F3F0D000101010100000000193F3D3F32000101010101),
    .INIT_36(256'h3F3D000000000000393F3F3F0D0000000000193F3D3F2E000101010101000000),
    .INIT_37(256'h3D000000000000323D3F3F0D0001002E3F3F3F2400193F3F3F3F3D3D3D3D3F3F),
    .INIT_38(256'h2E0000000D3F3F3F3900000000000000000000393F3F3F0D00000000053F3F3F),
    .INIT_39(256'h3F3F3F2E0000000000000000000000000000000000002E3F3F3F1900243F3F3F),
    .INIT_3A(256'h2E00000000000000000000000000000000393F3F3F0D00000000000000000019),
    .INIT_3B(256'h3F3F3F3F3F3F3F3F3F3F3F3D000000000000393F3F3F0D0000000000243F3F3F),
    .INIT_3C(256'h3F0D00000000053F3F3F3D000000000000393F3F3F0D0000002E3F3F3F240019),
    .INIT_3D(256'h323F3F3F1900243F3F3F2E0000000D3F3F3F3900000000000000000000393F3F),
    .INIT_3E(256'h000000243D393D1900193F3F3F2E000000053D393D3200000000000000000000),
    .INIT_3F(256'h0D0000000000243F3F3F2E0000000D3D393D320000000000000000393F3F3F0D),
    .INIT_40(256'h0000002E3F3F3F2400193F3F3F320105010D3F3F3F3D000000000000393F3F3F),
    .INIT_41(256'h00000000000000393F3F3F0D00000000053F3F3F3D000000000000393F3F3F0D),
    .INIT_42(256'h000000000000000000002E3F3F3F1900243F3F3F2E0000000D3F3F3F39000000),
    .INIT_43(256'h0000000000393F3F3F0D0000002E3F3F3F2400193F3F3F2E000000053F3F3F3D),
    .INIT_44(256'h000000000000393F3F3F0D0000000000243F3F3F2E0000000D3F3F3F39000000),
    .INIT_45(256'h0000000000393F3F3F0D0000002E3F3F3F2400193F3F3F2E000000053F3F3F3D),
    .INIT_46(256'h00000D3F3F3F3900000000000000000000393F3F3F0D00000000053F3F3F3D00),
    .INIT_47(256'h3F2E000000053F3F3F3D00000000000000000000323F3F3F1900243F3F3F2E00),
    .INIT_48(256'h00000D3F3F3F390000000000000000393F3F3F0D0000002E3F3F3F2400193F3F),
    .INIT_49(256'h3F32000000053F3F3F3D000000000000393F3F3F0D0000000000243F3F3F2E00),
    .INIT_4A(256'h00000000053F3F3F3D000000000000393F3F3F0D0000002E3F3F3F2400193F3F),
    .INIT_4B(256'h3F3F1900243F3F3F2E0000000D3F3F3F3900000000000000000000393F3F3F0D),
    .INIT_4C(256'h002E3F3F3F2400193F3F3F2E000000053F3F3F3D000000000000000000002E3F),
    .INIT_4D(256'h00000000243F3F3F2E0000000D3F3F3F390000000000000000393F3F3F0D0000),
    .INIT_4E(256'h002E3F3F3F2400193F3F3F2E000000053F3F3F3D000000000000393F3F3F0D00),
    .INIT_4F(256'h0000000000323F3F3F0D00000000053F3F3F3D000000000000393F3F3F0D0000),
    .INIT_50(256'h2E323232323232323D3F3F3F1900243F3F3F240000000D3F3F3F390000000000),
    .INIT_51(256'h000000050D393F393232323D3F240505000105243F3D323232323F3D0D050000),
    .INIT_52(256'h00000000393F3F3F0D00000000000505243F3D323232393F390D050000000000),
    .INIT_53(256'h000000393F3F3F0D000000243F3F3F2400193F3F3F2E000000053F3F3F3D0000),
    .INIT_54(256'h0D3F3F3F3900000000000000000000393F3F3F0D00000000053F3F3F3D000000),
    .INIT_55(256'h3F3F3F3F3F39000000003D3F3F3F3F3F3F3F3F3F3F3F1900243F3F3F2E000000),
    .INIT_56(256'h3F3F32000000000000000000000000323F3F3F3F3F3F3F190000000000193F3F),
    .INIT_57(256'h000000053F3F3F3D000000000000393F3F3F0D00000000000000193F3F3F3F3F),
    .INIT_58(256'h0000053F3F3F3D000000000000393F3F3F0D0000002E3F3F3F2400193F3F3F2E),
    .INIT_59(256'h050005190D190500000001190D0D0D000000000000000000000D0D0D0D010000),
    .INIT_5A(256'h1905000000000001190D0D0D0D0D0D0D000000000D0D0D0D0D0D0D0D0D0D0D19),
    .INIT_5B(256'h0000000005190D0D0D0D0D190D0000000000000000000000000D190D0D0D0D0D),
    .INIT_5C(256'h190D19050005190D190D000000000D0D0D0D0000000000000D0D0D1901000000),
    .INIT_5D(256'h000000000000000000000000010D0D0D0D0000000000000D0D0D190100000005),
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
        .DOADO({NLW_data_reg_DOADO_UNCONNECTED[31:8],DOADO}),
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

(* ORIG_REF_NAME = "spriteROM" *) 
module spriteROM__parameterized1
   (out,
    clk_IBUF_BUFG,
    Q);
  output [7:0]out;
  input clk_IBUF_BUFG;
  input [15:0]Q;

  wire [15:0]Q;
  wire clk_IBUF_BUFG;
  wire data_reg_0_0_ENARDEN_cooolgate_en_sig_1;
  wire data_reg_0_0_n_0;
  wire data_reg_0_1_ENARDEN_cooolgate_en_sig_2;
  wire data_reg_0_1_n_0;
  wire data_reg_0_2_ENARDEN_cooolgate_en_sig_3;
  wire data_reg_0_2_n_0;
  wire data_reg_0_3_ENARDEN_cooolgate_en_sig_4;
  wire data_reg_0_3_n_0;
  wire data_reg_0_4_ENARDEN_cooolgate_en_sig_5;
  wire data_reg_0_4_n_0;
  wire data_reg_0_5_ENARDEN_cooolgate_en_sig_6;
  wire data_reg_0_5_n_0;
  wire data_reg_0_6_ENARDEN_cooolgate_en_sig_7;
  wire data_reg_0_6_n_0;
  wire data_reg_0_7_ENARDEN_cooolgate_en_sig_8;
  wire data_reg_0_7_n_0;
  wire [7:0]out;
  wire NLW_data_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_0_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_1_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_2_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_3_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_4_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_5_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_6_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_data_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_0_7_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_0_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_1_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_2_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_3_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_4_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_5_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_6_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_data_reg_1_7_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_7_RDADDRECC_UNCONNECTED;

  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
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
    .INIT_00(256'h0000000000000000000000070000000000000000000000000000000000078000),
    .INIT_01(256'hF8000000000000000000000000007C0000000000000000000000000000000000),
    .INIT_02(256'h07E1F0FCFF9F87C1F0F8FC000000000600000000000000000000000000000001),
    .INIT_03(256'h000000000000000000000A80000000000000000000000000000000001A200007),
    .INIT_04(256'h000000000000000000000001B282000000000000000000000000000000000000),
    .INIT_05(256'h2A0B8780B0C82E09050400000000190000000000000000000000FA000000030C),
    .INIT_06(256'h3F1F87E1FCFF3F1FE7EFA0FC7F9FFFC000000000001F8FF3F3873FDB37E80908),
    .INIT_07(256'h00000000020480408102004B620362FCDFBFFFF3FD7CDFAF9F980000000764FF),
    .INIT_08(256'h1BCEE0F9CC6F398D0F400000003650040A00812010040A0081D810280207C400),
    .INIT_09(256'h605812030140602808010180207E8000000000002028040C58A018164037CC6F),
    .INIT_0A(256'h00000005FF7E7FFBFDF9BE64037CCFFDB9EF47ACC6FD9DD36A0000000CF30140),
    .INIT_0B(256'hBEEF7CCEEFD9DDFB20000001BFFFEBFEFBFFDFFFEBEFFD7FFC2FFBF7FFE80000),
    .INIT_0C(256'hDFF37DFE6FBECDF7EDBEFB7FDE800000000001B7ED6FD99FB59B7640366CEFDB),
    .INIT_0D(256'h00001B23D6FE59FB39B3640366CFFBF9EB27CCEEFBDDDDB2000000076FF66FBA),
    .INIT_0E(256'hB27FCFEBCDFDBF20000000367F6E786DC8B3DF667BECC8FAD9EFB723E8000000),
    .INIT_0F(256'h1B3DF673BECE2FADCEFB787E800000000001B8AF6F0F9FB59B364036760B99FD),
    .INIT_10(256'h001BF636FFD9FB39B3678360F5DD9FABA7FCFEBCDFD7F20000000367B673F1DE),
    .INIT_11(256'h7FCCEFBD9DFB2000000036436FFEFEFF83DF67FBECFDFADFEFB7FFEF00000000),
    .INIT_12(256'hBFF6FBBECD77A3FEFB7FDD640000000001B5EF6F599FB39B3674361FB5FB823E),
    .INIT_13(256'h1B3EB6FD9EEB39B367C367ECFFD9C3E7FCCEFD99DFB20000000765F67FBBDFFB),
    .INIT_14(256'hCDEFD9ADFB2000000036436E7BEDCF23DF647BECCF7A39EFB77DF64000000000),
    .INIT_15(256'hCE73FECE7FADCEFB79CC640000000001B9EB6F3ADCB3A71634360769BAD43E7D),
    .INIT_16(256'hF236FFADDB5DFFBE447307819E43E79CC6F398DE3200000004E436F3B8DE7A3F),
    .INIT_17(256'hCDFAF9BF40000001BE0367E6FEFF03FFE7E7ECFCFBDFBFB7FD7C80000000001B),
    .INIT_18(256'h414D302FA10594C0C82000000000004080981932CA6014107FCFFFF9BE3EFFD7),
    .INIT_19(256'h00000000000000040301C05462630C82E190541000000004600941105030278E),
    .INIT_1A(256'h00000000000000000000000000000364000000FC100000000000000000000000),
    .INIT_1B(256'h38CFEF59FCE3BF87C000000000003F8077F0EE31DFE3F0000000000000000000),
    .INIT_1C(256'h00000000000003FCFF7FC3C1C1F87C3F0FC3E000000003C0073F0F8FE01CF67F),
    .INIT_1D(256'h000000000000000000000000000364000000DFA0000000000000000000000000),
    .INIT_1E(256'h0006080000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000110000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h03F0000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h00000EFF8000000000000000000000000000000000000000000000000E000000),
    .INIT_23(256'h0000000000000000000001C0000000000000000000FC0000000000E000000000),
    .INIT_24(256'h00000000001000000000000000000000000000000707E7E0FCE01F8FE3F1FCFC),
    .INIT_25(256'h003100400C810110200204814090202000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000220000000000000000001828000000003140000000000),
    .INIT_27(256'hFC3F0F97D0000000007E47C3F8F83F1F07E7FC08082803031460482C09050000),
    .INIT_28(256'h3F7D837F7DFFBFFEC7FB7DFF6FBFF000000000000000000001BEFC3E0FC7E319),
    .INIT_29(256'h000000000000000063E82C1B018300002C0207D64000000003F583C03078060D),
    .INIT_2A(256'hBF2F7D6400000001BFB7EFF6FDFFFF37F7E837CD7FFDFEF37FCD6FD9ADFF4000),
    .INIT_2B(256'h7E8372CF9BBBEFA7ECEEFD9DD17200000000000000000003FF7A7E6FCFCEDBF9),
    .INIT_2C(256'h00000000000000DFEFDBF5FD7EFDBFD7F5FAF6400000001BFAFDBFDF97FFFAFF),
    .INIT_2D(256'h77CF64000000003F7F667FACCFB3D9F7E8366CE8DBBEFD7ECEEFD9DD1B200000),
    .INIT_2E(256'h8366D87DBFEE67E7E6FEDCD7B20000000000000000001B3DF667BECCF7DB9EFB),
    .INIT_2F(256'h000000000001B3FEFF7BECCFFDB9EFB71F7D0000000007E7EF67F9ECFB3D9F7E),
    .INIT_30(256'h6E28000000003F7FB67FF6CFBED9F7E836566DFBFFEB3EFFE7CDFDBF20000000),
    .INIT_31(256'h60B5B3BC3FB2E7FEB0DFD6720000000000000000001B3DFA5F7ECFCFDB9EFB7F),
    .INIT_32(256'h0000000001B3DFDBE7ECFEFDB9EFB7FBE90000000003F7FD67FFACFBF59F7E83),
    .INIT_33(256'h64000000007F7F667FACCFB5D9F7E8361DAFDB83E337FCEFA59DFB2000000000),
    .INIT_34(256'hECFDBBFFF3FFCEFD99DFB20000000000000000001B3DF667FECCF7DB9EFB77DD),
    .INIT_35(256'h00000001B3DF667FECCF7DB9EFB77DF64000000003E7F667FACCFB3D9F7E8367),
    .INIT_36(256'h000000018D7EE77FDCCFBB99F7E836016FDAF7E087CD6FD9ADFB200000000000),
    .INIT_37(256'hBB973F441CEEB39DD7720000000000000000001BBDCD777ECEEFB9CDFB79AEE0),
    .INIT_38(256'h0000003FFFE7E7ECFCFFDF9FB7F57C800000001BA7FEFFDFACFBF59F7E84F08F),
    .INIT_39(256'h0000007E1FFFFDFFE7FFFCF1E07FCFEDFBBFF77FD7CDFAF9BF40000000000000),
    .INIT_3A(256'hCFCF03FFFF7FBFEFF800000000000000000007FFFEFFB9FFF7FDBCF7BFDFF000),
    .INIT_3B(256'h000000000000000000D9740000000000000000000007D0000000000003FFFF7F),
    .INIT_3C(256'h0000000000FD0000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000BCF400000000000),
    .INIT_3E(256'h00000000000000003F800000000000000000000007D000000000000000000000),
    .INIT_3F(256'h000000003C000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h000000000000000000000000000000000000000000000001FE00000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000001800000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000780000000000000000),
    .INIT_44(256'h00000000000000000001FF000000000000000001E0000000FF80000000000000),
    .INIT_45(256'h0000000000000000000707E3F1C0FC1F8FE3F1FCFC0000000000000000000000),
    .INIT_46(256'h8140902020000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h000000000000000006000000000000000000010000000300400C814002002204),
    .INIT_48(256'hE3F1EC7E1FC7F7FC08082C0A030260482C090500000000000000000000000000),
    .INIT_49(256'hFF6FBFF00000000000000000000000007C618FE3E1FC670FFFE4000000001FC7),
    .INIT_4A(256'h3003018160118205FF00000000060180C186C8360302FD837F7DDF5F3FF7FB7D),
    .INIT_4B(256'hE5ECFCFF9787E837CD6FDBF4FE7FCD6FD9ADFF40000000000000000000000018),
    .INIT_4C(256'h9DD1720000000000000000000000037B656FCBC3FB572F47C0000000003FB7E7),
    .INIT_4D(256'h7FFD7EDFEEF5FAFD000000000DFEFEBF7AD7E9FEFD7E8372CFF9BF2377ECEEFD),
    .INIT_4E(256'hACCFB3D9F7E8366CEF9BFA1B7ECEEFD9DD1B2000000000000000000000002FD6),
    .INIT_4F(256'hD7B2000000000000000000000003F667DAECF33DFF77CFC000000001B3FF667F),
    .INIT_50(256'hAEC7B3DD371E7C000000001B3FF667EDCCFB5D8F7E8366D9F9BBFFB7E7E6FEDC),
    .INIT_51(256'hFCB3DF87E836567FFBBEBF3EFFE7CDFDBF2000000000000000000000003EF67D),
    .INIT_52(256'h72000000000000000000000003FB67DAEFDB3DB37F47C000000001B3E3667D7C),
    .INIT_53(256'hFEB3DB37FA7C000000001B3E3667D7CFEB3DFD7E8360B5F7B9E772E7FEB0DFD6),
    .INIT_54(256'hB3D9F7E8361DAFFBCEFB37FCEFA59DFB2000000000000000000000003FD67DAE),
    .INIT_55(256'h000000000000000000000003F667DAECF33DB377CFC000000001B3EF667EDCCF),
    .INIT_56(256'h33DB377CFC000000001B3E3667DACCFB3D9F7E8367ECF7BFEEB3FFCEFD99DFB2),
    .INIT_57(256'hDCD7E836016FDBC1FB27CD6FD9ADFB2000000000000000000000003F667DAECF),
    .INIT_58(256'h0000000000000000000003EE775AEE6BBDA379A7C000000001B3E36F77ACEEB5),
    .INIT_59(256'hD9B7F47C000000001B3E367E5ACFCB39F87E84F08FBBB837741CEEB39DD77200),
    .INIT_5A(256'hE1E07FCFEDFB9FBE7FD7CDFAF9BF4000000000000000000000003FF7E59CFC3F),
    .INIT_5B(256'h00000000000000000001FF6F3DFFF7FFDFBFC3800000000079C0F7FBDFFF7BFF),
    .INIT_5C(256'h000000000000000000000000000000000003FFFF7FFC0FFBFFFF7FBFEFF80000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000365D000003E0),
    .INIT_5E(256'h0000000000000000000373500000BE8000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000007E4000003A000),
    .INIT_61(256'h0000000000000000007F0000003C000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h00000000000000001E0000001C00000000000000000000000000000000000000),
    .INIT_65(256'h0000000000003800000000000EFF800000000000000000000000000000000000),
    .INIT_66(256'hE3F0FCFF9F8FE3F1FCFC000000000000000000000000003800000000E07801CF),
    .INIT_67(256'h0000000374000000000000000000000000000000000000000000000000000707),
    .INIT_68(256'h00000000004000000000003100400C8140102002048140902020000000000000),
    .INIT_69(256'h0B030020482C090500000000000000000000003F4000440000000311C2062800),
    .INIT_6A(256'h8F8E33F47C3FDF87E319FF7B2FFD640007F1F87C7B0F8738CF1F07E7FC08082C),
    .INIT_6B(256'h80601031B3078833060D3F7D837F7DDF7FFFF3FB7DFF6FBFF000000FE1FC7C1F),
    .INIT_6C(256'hFEEFFFCD6FD9ADFF40000001E018340306000F102C7D07830003F5B207F64001),
    .INIT_6D(256'hDCBB7B7A7FEF4FCEDB9FBF2F6E64000FEDF97B7B2F4EFADFFF37F7E837CD6FDB),
    .INIT_6E(256'hBFAFDEB5FB77BEFFFAFF7E8372CFF9BBEF47ECEEFD9DD17200001FD3FB7ADFEF),
    .INIT_6F(256'h6B7ECEEFD9DD1B200001FEDFEFDBF9FBDF3FAFDBFDFB7EFDB9E7F5FB6640037F),
    .INIT_70(256'hF3F3F667BECCF7DBBEFB77D664006CFFDBF66B7ECFF9FFB3D9F7E8366CEF9B96),
    .INIT_71(256'hBF6B77DEC9997B3D9F7E8366D9F9BF1B27E7E6FEDCD7B200001FB33DF667BEDD),
    .INIT_72(256'h7EFFE7CDFDBF200001FB33DF6E7BDFDF3F7EF67BECCFFDAFEFB77CBE4006CFF5),
    .INIT_73(256'hF3FB67C6CFCFD97EFB77D7E4006CF8DBF65F7F6D999FBED9F7E836567FFAF7B2),
    .INIT_74(256'h65F7FAC999FBF59F7E8360B5F7973DA6E7FEB0DFD67200001FB33DF6E7BF6DF3),
    .INIT_75(256'hFCEFA59DFB200001FB33DF6E7BFBDF3F3FD67EECFEFD9FEFB77D664006CF8DBF),
    .INIT_76(256'hF667BECCF7D9FEFB77D664006CFBDBF6B77ECC999FB5D9F7E8361DAFF9BE3E37),
    .INIT_77(256'hB7ECC999FB3D9F7E8367ECF79FE3E3FFCEFD99DFB200001FB33DF6E7BEDDF3F7),
    .INIT_78(256'h6FD9ADFB200001FB33DF667BEDCF3F3F667BECCF7DBFEFB77CD64006CF8DBF66),
    .INIT_79(256'h67D98EEFB99E7779BF64006CFADACC6B7DCD598FBB99F7E836016FD93F7E07CD),
    .INIT_7A(256'hFECD99FBF59F7E84F08FBBA0E7E41CEEB39DD77200001E633CEEF7BDDE6AF3CD),
    .INIT_7B(256'hFAF9BF400001FFB3F7EFFBFEFDBFFFF67EFEFCFFD9FBF3F7F64006CF8D97F6B7),
    .INIT_7C(256'hBFDFF7FBCFFFBFDEF0001E703DFEF7BFDEFFF7FFFCF1E07FCFEDFDFF7E7FD7CD),
    .INIT_7D(256'h00000000000003FFFF7FDFF1C3FFFF7FBFEFF800001FE79FFE7FDFDDE7FFFEF3),
    .INIT_7E(256'h0000000001FB200000FD06CBA000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_0
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_0_n_0),
        .CASCADEOUTB(NLW_data_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_0_ENARDEN_cooolgate_en_sig_1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_0_ENARDEN_cooolgate_en_gate_1
       (.I0(Q[15]),
        .O(data_reg_0_0_ENARDEN_cooolgate_en_sig_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "1" *) 
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
    .INIT_03(256'h0000000000000000000005000000000000000000000000000000000001000000),
    .INIT_04(256'h0000000000000000000000007800000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000200000000000),
    .INIT_06(256'h00000000000000000002000000000F000000000000000000000000078F800000),
    .INIT_07(256'h000000000000000000000000F000707E3E0787F8F0783E0FC7C000000000C000),
    .INIT_08(256'hB48450109AD297DE14000000000C00000000000000000000000000000000A000),
    .INIT_09(256'h0F87C1FCFE3E0FC7C7C0F83F1F080000000000001F07E1F1871F83EC00073EF2),
    .INIT_0A(256'h00000000F0FF1E1023FC7CC000618223DC44035BE72378E0B0000000036C7E3E),
    .INIT_0B(256'hC44039BF7237EE07800000007F87F1E1F03C3F87C3F0F83C3E0787F8F0800000),
    .INIT_0C(256'hEC278984F111AE2201C447B088000000000000789872372261C78C00071A323D),
    .INIT_0D(256'h000007888721B2261C78C0007180201C47839BF7203EE07800000000C08D7111),
    .INIT_0E(256'h783CBE7123EE43800000000C08D7111EE37888CF111AE2201C447B8C80000000),
    .INIT_0F(256'hC4088CEF11ADC201B447B708000000000000771072E12261C78C00070D0101CA),
    .INIT_10(256'h0007F8073E32261C78C0007028281C4103BBCF1239E23800000000C04D6D0EAD),
    .INIT_11(256'h31B9F2037E47800000000C00D7F1F0FC0088CFF11AFE201FC47BF08000000000),
    .INIT_12(256'h088C0111AE22000447B088700000000000788072372261C78C18070100C1C008),
    .INIT_13(256'h0788072349561C78C300701E021C00831B9F2377E47800000000C00F01100C20),
    .INIT_14(256'hB872371E47800000000C00D01100E20098C2111AE22000447B88870000000000),
    .INIT_15(256'h846511ACA2018447B09AD0000000000072807290EE61C38F780700D011600832),
    .INIT_16(256'hF8073E0EE619FC3F00E00E03C5008109ED297DE56000000000400D6515AC2008),
    .INIT_17(256'h83E0FC7C000000007800F1F1F0FC0087C1F11AFE2007C47BF0F8000000000007),
    .INIT_18(256'h0000000200000000000000000000000000000000000000001FBFE3FC78080F07),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000004),
    .INIT_1A(256'h000000000000000000000000000000C000000021800000000000000000000000),
    .INIT_1B(256'h0000023C00000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000C00),
    .INIT_1D(256'h0000000000000000000000000000C00000003E00000000000000000000000000),
    .INIT_1E(256'h0001E00000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000040000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h000E7F8000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h00000000000000000001C00000000000000000007C0000000000E00000000000),
    .INIT_27(256'h0000000FA00000000004000000000000004FF00607C7C0F8E00F87C1F0F8F800),
    .INIT_28(256'h04080060FE3C078400F0FE1E1FC7800000000000000000000008000000000000),
    .INIT_29(256'h000000000000000000800000000000000000008F000000000040000000000000),
    .INIT_2A(256'h00108870000000004E40000800000008C08007BE2021847830B872370E040000),
    .INIT_2B(256'h08006D86015C47431BD7237AE020000000000000000000001884011000212004),
    .INIT_2C(256'h000000000000003194A7229AE423DCA23A95070000000004E4467308CE61114C),
    .INIT_2D(256'hB880F0000000000408FF110EE2619C40800718103DC46A311F7223EE07800000),
    .INIT_2E(256'h0071E003D844C300F7203EE07800000000000000000006898CF111AE223DC447),
    .INIT_2F(256'h000000000000788800111AE023DC447B80FA00000000004080F1100E2601C408),
    .INIT_30(256'h95C000000000040C4F1188E2711C4080070F03FDF847880FF1E3FE7F80000000),
    .INIT_31(256'h70585DDB843940CF4C39EBB80000000000000000000789C42291AC023DC447B0),
    .INIT_32(256'h0000000000789F87111AEC23DC447BB080000000000040EEF11DCE27B9C40800),
    .INIT_33(256'hF0000000000408F7110EE2619C40800703423DC0578209F2037E478000000000),
    .INIT_34(256'h1E23DC07F8109F2377E47800000000000000000007888CF011AE2235C447B888),
    .INIT_35(256'h000000006888CF111AE223DC447B88870000000000408FF110EE2619C4080070),
    .INIT_36(256'h00000000360D42B1AAE2755C40800700723C40500098F2371E47800000000000),
    .INIT_37(256'h550AC403EA545D0AAAA00000000000000000000159B62A91AD5351B247B6D540),
    .INIT_38(256'h0000000F8F81F11AFE3E1FC469F8F80000000007C0F81F3F0E27E0C408036C76),
    .INIT_39(256'h000000000000100000000000001FBFF3E078403F8783E0F07C00000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000001C00000000000),
    .INIT_3B(256'h0000000000000000001C80000000000000000000000100000000000000000000),
    .INIT_3C(256'h0000000000100000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00000000000000000000000000000000000000000000000000B4000000000000),
    .INIT_3E(256'h000000000000000007C000000000000000000000010000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h000000000000000001FE000000000000000000C00000007F8000000000000000),
    .INIT_48(256'h00000E0000000FF00607C1F180FC0F87C1F0F8F8000000000000000000000000),
    .INIT_49(256'h1E1FC78000000000000000000000000000000000000000000FF0000000000000),
    .INIT_4A(256'h000000000000000010000000000000000000E0000000080060FE3E180780F0FE),
    .INIT_4B(256'h120E020048408007BE323DC00430B872370E0400000000000000000000000000),
    .INIT_4C(256'h7AE020000000000000000000000000841280242004A810810000000000004010),
    .INIT_4D(256'h108EA531957A9410000000000398477210EE43194A08006D8631DE002B1BD723),
    .INIT_4E(256'h0EE2619C40800718135DD003B11F7223EE0780000000000000000000000014E7),
    .INIT_4F(256'hE0780000000000000000000000008D7130CE2619FFB88100000000007888FF11),
    .INIT_50(256'h0CE06199FB80100000000007888F711EEE0619C0080071E037DD807B00F7203E),
    .INIT_51(256'hC061984080070F03FDC47F880FF1E3FE7F800000000000000000000000080713),
    .INIT_52(256'hB8000000000000000000000000C47130CC2619CBB0810000000000789CF710CE),
    .INIT_53(256'hEC619DBBB010000000000788077103EEC619D8080070583BDC4AB940CF4C39EB),
    .INIT_54(256'h619C40800703423D84438209F2037E478000000000000000000000000EA7130C),
    .INIT_55(256'h0000000000000000000000008D7130CE2619CBB881000000000078807711EEE2),
    .INIT_56(256'h619DBB8810000000000788077134EE2619C40800701E23DFC478109F2377E478),
    .INIT_57(256'h9B20800700723D80438098F2371E4780000000000000000000000008D7130CE2),
    .INIT_58(256'h0000000000000000000000D46AB0CD9159D3B6C10000000000788072A90ED561),
    .INIT_59(256'h8C29F810000000000688071F30EFE60DFC08036C76551C0AA3EA545D0AAAA000),
    .INIT_5A(256'h00001FBFF3E0C07C3F8783E0F07C0000000000000000000000000F87F306FE0F),
    .INIT_5B(256'h0000000000000000000000700000001800000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000072000000180),
    .INIT_5E(256'h000000000000000000002D800000180000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000001F0000000C000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000080000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h00000000003000000000000E7F80000000000000000000000000000000000000),
    .INIT_69(256'hF0F8FF0F87C1F0F8F8000000000000000000000400003800000000E03001C600),
    .INIT_6A(256'h0000004000010000000004078008700000000000038000000000004FF00607C1),
    .INIT_6B(256'h0000000038000000000004080060FE3E0787F8F0FE1E1FC78000000000000000),
    .INIT_6C(256'h844030B872370E04000000000000000000000000001000000000407800870000),
    .INIT_6D(256'h0240848403108021204443908570000010048483908100200008C08007BE323D),
    .INIT_6E(256'h11D4A43A94EB4DE1114C08006D8631DC44031BD7237AE0200000002004842010),
    .INIT_6F(256'hB0311F7223EE0780000065398465308CE20654A73294E423DC423A94F70000E6),
    .INIT_70(256'h20418CF111AE223DC447B88F70001E221D8DC391AFF7FE619C40800718135DC8),
    .INIT_71(256'hD8C7B901F7762601C4080071E037D8078300F7203EE0780000046B888D7111EE),
    .INIT_72(256'h080FF1E3FE7F80000046B888D71100E204080F111AE023C4447B881F0001E221),
    .INIT_73(256'h41C4F131AC023CA447B88270001E271D8C33989E3722711C4080070F03FC4078),
    .INIT_74(256'hC0F9D5E37227B9C4080070583BCA034140CF4C39EBB80000046B888D71188E20),
    .INIT_75(256'h09F2037E4780000046B888D711DCE2041F8F101AEC23C3C47B88F70001E201D8),
    .INIT_76(256'h8CF111AE223C4447B88F70001E201D8C7B91AE3722619C40800703423C500802),
    .INIT_77(256'h391AE3722619C40800701E23C18080109F2377E4780000046B888D7111EE2041),
    .INIT_78(256'hF2371E4780000046B888D7111EE20418CF111AE223C8447B89A70001E201D8DF),
    .INIT_79(256'hF12ECD5351C4AB96C870001E201D36C3929EB712755C40800700723C04080098),
    .INIT_7A(256'hF1A37027E0C408036C76551F4083EA545D0AAAA0000005B38954291A8DB16DB6),
    .INIT_7B(256'hE0F07C0000007C388F81F1F0FE7F8F8D11F0FE3E1C47F8F8870001A201CF8C39),
    .INIT_7C(256'h00000000000000000000000000000000000000000000001FBFF3E1FC083F8783),
    .INIT_7D(256'h0000000000000000000000000000000000000000000400000001000E00000000),
    .INIT_7E(256'h0000000000440000001000E40000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_1
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_1_n_0),
        .CASCADEOUTB(NLW_data_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_1_ENARDEN_cooolgate_en_sig_2),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_1_ENARDEN_cooolgate_en_gate_3
       (.I0(Q[15]),
        .O(data_reg_0_1_ENARDEN_cooolgate_en_sig_2));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
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
    .INIT_03(256'h0000000000000000000001800000000000000000000000000000000004800000),
    .INIT_04(256'h000000000000000000000000787E000000000000000000000000000000000000),
    .INIT_05(256'hE1F8787F0F0FE1F9FCF800000000070000000000000000000000F800000000F0),
    .INIT_06(256'h0000000000000000000F000000002F40000000000000000000000007A7C00E0F),
    .INIT_07(256'h0000000000000000000000786E00E07EBF3FB7FAF4FE9F9FDF80000000027400),
    .INIT_08(256'hDFFD7F7EEF7FDFBEFC000000000700000000000000000000002800000002F800),
    .INIT_09(256'h10C422068261104C2720844090EC0000000000003080121A85804727000FFDEB),
    .INIT_0A(256'h00000007F7FE1F1CF7F87FF400F3E6F3D97603EEDEE9DAC06000000000E68021),
    .INIT_0B(256'hB7783EEE6E9DCC77800000007FD7F7E6FF7EFFAFF7ECFEFDFC3F9BF9FAC80000),
    .INIT_0C(256'hEDBFDBB7FBF8FD7F63B767B6EC00000000000075CEEE5DF33B87E7000E0E6F3D),
    .INIT_0D(256'h0000079EEEE99D33987A7000E4EFF3D97783EEE6EB9CC078000000077FC7EFFF),
    .INIT_0E(256'h783FEFE7E9FD7F80000000073EF65FDEC7FBBA7F7F4FE7F839767B1CC0000000),
    .INIT_0F(256'hE69BA7EBF4FDCF83FF67BFAC0000000000007708EFF9D33B87A7000E0705C3FF),
    .INIT_10(256'h0007F60EFF1D33987A7780E07C3A3FC763FEFE7E9FDFF80000000076AFFF8EEF),
    .INIT_11(256'h37EEEEB9FDF7800000000700F7F8F9FC83BA7FFF4FFDF83FF67BFACF00000000),
    .INIT_12(256'h39A707F4FCEF818F67B0EEF0000000000073A0EF9DF33997A7340E0DC0D9803A),
    .INIT_13(256'h07BC0EE9EC7B987A7340E4CE373983A33EEEE9DFDE7800000002700F23DCCC32),
    .INIT_14(256'hEE6E9DCDF7800000000700F95D92CB83BA797F4FEFF805767B2ECE0000000000),
    .INIT_15(256'hF7EF34FDE783BD67BFAF70000000000077A0EFDDCC39BB7EF40E007856D03A37),
    .INIT_16(256'hF00EFF9CC3BBFE7F03ECFEFDC783A3EEFFFDFBF7B800000007700F6F5EEFE039),
    .INIT_17(256'hE9F9FD3E000000007A00F7E1F9FD03B7F3F74FFCF81F9E7BF4FE000000000007),
    .INIT_18(256'h7E34FFCF80F8777F0FE000000000007F00E7E9DC3BBFF7F07FFFEFFD7A3A2F4F),
    .INIT_19(256'h0000000000000003FDFE3FC38180F0FE1E9FC3F00000000780073E0FDFC01877),
    .INIT_1A(256'h00000000000000000000000000000070000000FA400000000000000000000000),
    .INIT_1B(256'h00000F9C00000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000002700),
    .INIT_1D(256'h0000000000000000000000000000700000001F00000000000000000000000000),
    .INIT_1E(256'h0001F80000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h00000000000000000000000000000000000000000000000000000000000F0000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h000A808000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000360000000000000000000040000000000B00000000000),
    .INIT_27(256'h00000017F00000000037000000000000017FF40908042084B010C04219008400),
    .INIT_28(256'h167F80E3FDFCAFD784FFFF9FFFBF90000000000000000000003A000000000000),
    .INIT_29(256'h000000000000000003A0000000000000000006EF000000000160000000000000),
    .INIT_2A(256'h7F8F6EF0000000007FAF85F5F0BE1E87E6C00FFEEFB3B77A36EEEF1DDCFE0000),
    .INIT_2B(256'h6C00FCE685D977A34EF6E9DEC0B800000000000000000000FA7A5F5FABEAB5FC),
    .INIT_2C(256'h000000000000001F9FE3EFFF7F73DFEBFBFC8F0000000007FB7C3FAFAFF1F7FE),
    .INIT_2D(256'hB2EFF000000000166CEF71DDEF39B966C00E0E283D977F35AE6EB5CC07800000),
    .INIT_2E(256'h00E4F83FDB777322EEF61DC7B800000000000000000003BBA7F7F4FEFFBD9767),
    .INIT_2F(256'h000000000000799A997F4FE4F3D9767B12FF000000000176C9F79D3EF3A3966C),
    .INIT_30(256'hDC4000000000166E0F79C1EF383966C00E1E03FDFD7F9CEFE5C9FD3F80000000),
    .INIT_31(256'hE0B431DC567956DE3219D678000000000000000000039BC647B4FE2F3D9767B8),
    .INIT_32(256'h000000000039BFFFF74FFDF3D9767BFECE000000000166FEF79F9EF3F3966C00),
    .INIT_33(256'hE000000000366CEF79DDEF3BB966C00E01EF3D817BAE6EEE99FDF78000000000),
    .INIT_34(256'hDEF3DBD7FBF4EEE9DFDE78000000000000000000079BA7F774FEFF3D9767B6EE),
    .INIT_35(256'h000000003BBA7F734FEFFBD9767B2ECE000000000176CEF79DDEF39B966C00E4),
    .INIT_36(256'h000000004C2C5B398BEF31F966C00E01EF3DC17F04EEEE9DDDF7800000000000),
    .INIT_37(256'hF34E76041FC7B378F668000000000000000000059BCCB3B4FE7737CC67B99C50),
    .INIT_38(256'h0000001F9FA7F74FFEFF3F967FF4FE000000000782FC7F9FDEB3FBD66C007306),
    .INIT_39(256'h0000003C1FE7FDFCE77F9CE1C07FFFEBF17B643FEFE9E9FD3E00000000000000),
    .INIT_3A(256'h87CE03FCFE3F1FC7F000000000000000000003FDFC7F39CFE7FBBCE3BF8FE000),
    .INIT_3B(256'h00000000000000000038400000000000000000000007C0000000000003FCFF3F),
    .INIT_3C(256'h00000000007C0000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00000000000000000000000000000000000000000000000000EC000000000000),
    .INIT_3E(256'h00000000000000001F800000000000000000000007C000000000000000000000),
    .INIT_3F(256'h0000000008000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000400000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000010100000000000000000020000000808000000000000000),
    .INIT_48(256'h00001C00000007F409080218408610C042190084000000000000000000000000),
    .INIT_49(256'h9FFFBF9000000000000000000000000000000000000000002FF0000000000000),
    .INIT_4A(256'h0000000000000001B3000000000000000001C0000000FF80E3FD9FF917D4FFFF),
    .INIT_4B(256'hF11CBE1FC7C2C00FFEEF3DE4F736EEEF1DDCFE00000000000000000000000000),
    .INIT_4C(256'hDEC0B8000000000000000000000000FAF15FE3E0FA478F8740000000002FAFF5),
    .INIT_4D(256'h78FDFF9F9EFBFE740000000001FB7EBFDDDFFDFBFF6C00FCE6FFDF80BF4EF6E9),
    .INIT_4E(256'hDDEF39B966C00E0E3FFDF40775AE6EB5CC078000000000000000000000003FEF),
    .INIT_4F(256'hC7B8000000000000000000000003A7F79DDCBB9BFFB2E740000000007BACEF79),
    .INIT_50(256'hDDC439BB7B12740000000007BACEF7AEDE43BB892C00E4F8FFDBA7FF22EEF61D),
    .INIT_51(256'hE239BC42C00E1E0FFDA77F9CEFE5C9FD3F8000000000000000000000003A9F79),
    .INIT_52(256'h78000000000000000000000003C2F79DDE239BBFB88740000000007BB6EF7C7D),
    .INIT_53(256'hFFB9BBFBFE740000000007BA0EF7DFDFF39BFF2C00E0B4F7D97E3956DE3219D6),
    .INIT_54(256'h39B966C00E01EF3DFF67AE6EEE99FDF78000000000000000000000003FFF79DD),
    .INIT_55(256'h000000000000000000000003A7F79DDCBF9BBFB6E740000000007BA8EF7DCDEF),
    .INIT_56(256'hB9BBFB2E740000000007BA0EF79FDEF39B966C00E4DEFBDFF77BF4EEE9DFDE78),
    .INIT_57(256'hBCC2C00E01EF5DBF6784EEEE9DDDF78000000000000000000000003A7F79DDCB),
    .INIT_58(256'h0000000000000000000003CDF3DDDE679BAFB98740000000007BA0E33DDDE7BB),
    .INIT_59(256'hB87FF4740000000007BA0F7F1DDFE39BF82C007306F1580E2C1FC7B378F66800),
    .INIT_5A(256'hC1C07FFFEBF1807F3FEFE9E9FD3E0000000000000000000000003FAFF1CDFC1F),
    .INIT_5B(256'h00000000000000000001FEE738EFE3DBC3BF83800000000079C077F38EFE71DF),
    .INIT_5C(256'h000000000000000000000000000000000003FCFF3F9C07F3FCFE3F1FC7F00000),
    .INIT_5D(256'h00000000000000000000000000000000000000000000000000000F10000001A0),
    .INIT_5E(256'h00000000000000000000FB4000001A0000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000007E0000001A000),
    .INIT_61(256'h0000000000000000000100000024000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000040000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h00000000004800000000000A8080000000000000000000000000000000000000),
    .INIT_69(256'h18848090C042190084000000000000000000001600002C00000000B008016100),
    .INIT_6A(256'h000001600007C00000001607802EE00000000000070000000000017FF4090802),
    .INIT_6B(256'h00000000700000000000167F80E3FD9FEFD7F9FFFF9FFFBF9000000000000000),
    .INIT_6C(256'hB77FB6EEEF1DDCFE000000000000000000000E00007400000001607A06CF0000),
    .INIT_6D(256'h06205A7A5FDF4BEAB5D67F8F57F0000BEBFC7A471F4AB5FE1E87E6C00FFEEF3D),
    .INIT_6E(256'h5FDFE773FC77CEF1F7FE6C00FCE6FFD976034EF6E9DEC0B8000017D2FAFA1F1F),
    .INIT_6F(256'h6035AE6EB5CC07800001FF1FDFEFFEF8CBB79FE3FBFC7F73D97BFBFEEF00007E),
    .INIT_70(256'hBB61A7F7F4FEFFBDB767B2EEF0001EEB3BA77774FFFDFF39B966C00E0E3FFD85),
    .INIT_71(256'hBA773753DDDDF3A3966C00E4F8FFDB078322EEF61DC7B800001D3FBFEFF5F9EC),
    .INIT_72(256'h5CEFE5C9FD3F800001D3FBFEF65D92CBB61A9F7F4FE4F3DC767B6EFF0001EEBB),
    .INIT_73(256'h61C6F7BCFE2F3DFF67B2EB70001EEDBBA71F78DEFDF3383966C00E1E0FFDE478),
    .INIT_74(256'h77F7FFDFDD33F3966C00E0B4F7CE81E156DE3219D67800001D3FBFEF65DC1CBB),
    .INIT_75(256'h6EEE99FDF7800001D3FBFEF65DFCCBB61FFF794FFDF3D3F67B2EEF0001EE83BA),
    .INIT_76(256'hA7F7F4FEFF3DE767B6EEF0001EEA3BA77374FDFDF33BB966C00E01EF3D703A0E),
    .INIT_77(256'hF74FDFDD339B966C00E4DEFBDDA3A1F4EEE9DFDE7800001D3FBFCF67D9EDBB65),
    .INIT_78(256'hEE9DDDF7800001D3FBFEFE5D9ECBB61A7F7F4FEFFBD9767B2EFF0001EE83BA77),
    .INIT_79(256'hF799BE773797E7D98CF0001EE83CCD7779BF1DFF31F966C00E01EF5C263A04EE),
    .INIT_7A(256'hF5E9DDB3FBD66C007306F160F3A41FC7B378F66800001E6FBECD33D9AE64E5CC),
    .INIT_7B(256'hE9FD3E000001FD7B87C7FDF9FD7F9FAF74F5FEFF3D67FAF6CF0001EE83C7A77F),
    .INIT_7C(256'h9F8FE7F9CE7F9F9C70000E701CFCE3BF8E3F877F9CE1C07FFFEBF3FE3A3FEFE9),
    .INIT_7D(256'h00000000000003FCFF3F9FE1C3FCFE3F1FC7F000001DE39CFE3F9FCDE3FDFC73),
    .INIT_7E(256'h0000000001D78000005801C30000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_2
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_2_n_0),
        .CASCADEOUTB(NLW_data_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_2_ENARDEN_cooolgate_en_sig_3),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_2_ENARDEN_cooolgate_en_gate_5
       (.I0(Q[15]),
        .O(data_reg_0_2_ENARDEN_cooolgate_en_sig_3));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "3" *) 
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
    .INIT_03(256'h0000000000000000000003800000000000000000000000000000000002000000),
    .INIT_04(256'h0000000000000000000000007880000000000000000000000000000000000000),
    .INIT_05(256'h2208848090882201040400000000090000000000000000000000780000000108),
    .INIT_06(256'h00000000000000000007800000001FC000000000000000000000000787E00100),
    .INIT_07(256'h000000000000000000000048620060FE3F8FCFF9FC7C1F8FCF80000000006000),
    .INIT_08(256'h9FCEF0F9CE77BF9E1F000000000600000000000000000000005000000001E000),
    .INIT_09(256'h00C402048360006407008000101E00000000000010080018C5A003360007FCE7),
    .INIT_0A(256'h00000005FDFE7FB97BF87EE0007DCF7BF8EF07EEC679DDC06800000004F60120),
    .INIT_0B(256'h8EE87CEEE79DDC07800000007FFFF3FAF8FF7FFFE3EFFC7FFC2FFBFBFDE00000),
    .INIT_0C(256'hFFF7BDEEFFBCEDF7E1BEF7FFDE00000000000077EC679DBFB187A600060EE7BF),
    .INIT_0D(256'h00000789C67BD9FB3878600060C77BB8E787CEEE799DC0780000000265E76FB9),
    .INIT_0E(256'h787FEFE3E1FC7F80000000061EFE395FC3FBDC6F3BCEE2F818EF7F0FE0000000),
    .INIT_0F(256'hC73DC6FBBCEFE781FEF7FF1E0000000000007F8E67E39FB187860006170381FF),
    .INIT_10(256'h0007F4067F99FB3878638060FC3C1FC387FEFE3E1FC7F80000000061AF7FDFFF),
    .INIT_11(256'h7FECE799FCF7800000000600FFFCFCFF03DC6FFBCEFD781FEF7FFDE700000000),
    .INIT_12(256'h3FE67BBCED7781FEF7FFDC70000000000075E0675DBFB3878670060381F3803E),
    .INIT_13(256'h079E0679DEFB38786780602E1F9803C7FECE79DFCF7800000000600F7FBB9FF8),
    .INIT_14(256'hEDE79DACF7800000000600FE3BCDC703DC643BCEE77838EF7F1DE60000000000),
    .INIT_15(256'hCE77FCEEFF81CEF7F9CE7000000000007BE067B8DC33A71E700601703AD03C7F),
    .INIT_16(256'hF0067F8DC31DFF3F00F30F81CF43C79CEF7BF9EF3000000004E00FF7BCFE783F),
    .INIT_17(256'hC1F8FC3F000000007E00F3E1FCFE03EFE7F7CEFC780F8F7FF8FC000000000007),
    .INIT_18(256'h01093027800484808820000000000040809011224A6014103FFFF7FC7C3E1FC7),
    .INIT_19(256'h000000000000000003014044404108822110440000000004400901105020048E),
    .INIT_1A(256'h0000000000000000000000000000006000000078000000000000000000000000),
    .INIT_1B(256'h0000075C00000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000600),
    .INIT_1D(256'h0000000000000000000000000000600000001F80000000000000000000000000),
    .INIT_1E(256'h0003E80000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000050000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h000B008000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000140000000000000000000860000000000B00000000000),
    .INIT_27(256'h00000017F0000000000E00000000000000EFF80808240080B000886011048000),
    .INIT_28(256'h0F7C807FFD7F1FEE83F9FF7F3FAFE0000000000000000000003E000000000000),
    .INIT_29(256'h000000000000000003C0000000000000000001CF0000000000F0000000000000),
    .INIT_2A(256'h3F0F1C70000000007FA7E3F4FC7FBF07F1E007FE77F9FEF87DEC679D8CFF0000),
    .INIT_2B(256'h1E007ECF03F8EF878EFE79DFC07000000000000000000003FE787F1FC7E6BBFC),
    .INIT_2C(256'h000000000000005FFFFBF7FF7EFBFFF7FBFEE70000000007FAFDBFDF9FFFFBFF),
    .INIT_2D(256'hF1C7F0000000000F1EEF3F8CE7B3D8F1E0060CE03F8EFF79CEE7B9DC07800000),
    .INIT_2E(256'h0060E03FFFEE67C1E67C1CC7B800000000000000000003BDC6F3BCEE77BF8EF7),
    .INIT_2F(256'h0000000000007BFCFE3BCEE77BF8EF7F1CFF0000000000E1E7F3F8EE7B1D8F1E),
    .INIT_30(256'h9E60000000000F1FAF3FF4E7BE98F1E0061E03FFFEEFBE1FE7C1FC3F80000000),
    .INIT_31(256'h60B433FC0F39E1FE301FC67800000000000000000003BDFC5FFCEFC7BF8EF7FF),
    .INIT_32(256'h00000000003BDFDFF7CEFEFBF8EF7FFBE90000000000F1FFF3FFAE7BF58F1E00),
    .INIT_33(256'hE0000000000F1EE73F8CE7B1D8F1E00601E7BF80F3879CE7A5FCF78000000000),
    .INIT_34(256'h1E7BF80FF87DCE79DFCF7800000000000000000007BDC6F07CEE77BF8EF7F1DC),
    .INIT_35(256'h000000003BDC6F3FCEE77BF8EF7F1DE60000000000E1EEF3F8CE7B3D8F1E0060),
    .INIT_36(256'h000000000D1EE77FDEE7BBD8F1E0060167BCF0F083CCE79D9CF7800000000000),
    .INIT_37(256'hFB8F4F041EEE339DE77000000000000000000003BDCD77FCEEFFB9CDF7F9BEE0),
    .INIT_38(256'h0000003FFFE7F7CEFE7F9F8F7FF0FC000000000781FE7FDF8E7BF1CF1E00F08F),
    .INIT_39(256'h000000080C437D88C2311840803FFFE3F87CF07FC7C1F8F83F00000000000000),
    .INIT_3A(256'h0204001C44130882200000000000000000000119CC2210CC4311904339044000),
    .INIT_3B(256'h00000000000000000018700000000000000000000003C0000000000000700611),
    .INIT_3C(256'h00000000003C0000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00000000000000000000000000000000000000000000000003EF000000000000),
    .INIT_3E(256'h00000000000000000F800000000000000000000003C000000000000000000000),
    .INIT_3F(256'h0000000038000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h000000000000000000000000000000000000000000000000FC00000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000010000000000000000000100000000008000000000000000),
    .INIT_48(256'h00000C00000007F80808201A0084008860110480000000000000000000000000),
    .INIT_49(256'h7F3FAFE000000000000000000000000000000000000000001FF0000000000000),
    .INIT_4A(256'h0000000000000001FE000000000000000000C00000007C807FFD5F1E0FE3F9FF),
    .INIT_4B(256'hF1CC7E3FC7C1E007FE67BFF0EE7DEC679D8CFF00000000000000000000000000),
    .INIT_4C(256'hDFC070000000000000000000000000FA714FE3E3F8570F87C0000000003FA7F7),
    .INIT_4D(256'h3FFDFFDFFEFBFE7C0000000005FEFEBF38DFE9FFFF1E007ECF79FF007F8EFE79),
    .INIT_4E(256'h8CE7B3D8F1E0060CF7DFF80379CEE7B9DC078000000000000000000000001FF7),
    .INIT_4F(256'hC7B8000000000000000000000003E773D8EC733DFFF1C7C0000000007BFEEF3F),
    .INIT_50(256'h8EC733DD7F1C7C0000000007BFEE73EFCE731D8E1E0060E07FFBE3FFC1E67C1C),
    .INIT_51(256'hFC33DFC1E0061E07FF9E7FBE1FE7C1FC3F8000000000000000000000001EF73D),
    .INIT_52(256'h78000000000000000000000001FA73D8EFE33DBBFF87C0000000007BF6E73D7C),
    .INIT_53(256'hFE33DBBFFA7C0000000007BE0673D7CFE33DFD1E0060B477F8EF79E1FE301FC6),
    .INIT_54(256'hB3D8F1E00601E7FFCEF3879CE7A5FCF78000000000000000000000001FF73D8E),
    .INIT_55(256'h000000000000000000000001E773D8EC773DBBF1C7C0000000007BE0673DDCE7),
    .INIT_56(256'h33DBBF1C7C0000000007BE0673DECE7B3D8F1E00601E77FFEE787DCE79DFCF78),
    .INIT_57(256'hDCD1E0060167DFC1F383CCE79D9CF78000000000000000000000001E773D8EC7),
    .INIT_58(256'h0000000000000000000001EE77D8EE6BBD83F9A7C0000000007BE06F7F8CEFB1),
    .INIT_59(256'hD83FF07C0000000007BE077F18CFE339F81E00F08FFBB80F701EEE339DE77000),
    .INIT_5A(256'h80803FFFE3FB807E7FC7C1F8F83F0000000000000000000000001FE7F19CFC3F),
    .INIT_5B(256'h00000000000000000000C46418CE413C8339030000000000318063218CE4319C),
    .INIT_5C(256'h0000000000000000000000000000000000007006111802201C44130882200000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000071C000003C0),
    .INIT_5E(256'h000000000000000000007B4000003C0000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000003E00000038000),
    .INIT_61(256'h0000000000000000003F0000001C000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000070000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h00000000004000000000000B0080000000000000000000000000000000000000),
    .INIT_69(256'h188080008860110480000000000000000000000F00002800000000B040016800),
    .INIT_6A(256'h000000F00003C00000000F07801C60000000000003000000000000EFF8080820),
    .INIT_6B(256'h000000003000000000000F7C807FFD5F1FEFFBF9FF7F3FAFE000000000000000),
    .INIT_6C(256'hFEEF7DEC679D8CFF000000000000000000000600003C00000000F07801E70000),
    .INIT_6D(256'hDE3878787FDF47E6BBCF7F8F0F70000FE9FC78731F4EF8FFBF07F1E007FE67BF),
    .INIT_6E(256'hBFDFFE33FF77FEFFFBFF1E007ECF79F8EF078EFE79DFC07000001FD1FAFA1FDF),
    .INIT_6F(256'h6879CEE7B9DC07800001FFDFEFFFF9FBC70FBFFBFFFF7EFBF8E7FBFEE700017F),
    .INIT_70(256'h70F3C6F3BCEE77BFAEF7F1CE70001EFF9BC7633CEFFDFFB3D8F1E0060CF7DF86),
    .INIT_71(256'hBC6773DDDDDD7B1D8F1E0060E07FFE0787C1E67C1CC7B800001F3B9DEF73BDFC),
    .INIT_72(256'h3E1FE7C1FC3F800001F3B9DEFE3BDFC70F3CEF7BCEE77BCFEF7F1CBF0001EFF1),
    .INIT_73(256'hF3FCF3F0EFC7BCFEF7F1C7F0001EFD9BC65F3FDFBDBFBE98F1E0061E07FCF078),
    .INIT_74(256'h65F3FFCBD9FBF58F1E0060B477CF05C1E1FE301FC67800001F3B9DEFE3BF4C70),
    .INIT_75(256'h9CE7A5FCF7800001F3B9DEFE3BFFC70F3FDF3E8EFEFBCFEF7F1CE70001EF81BC),
    .INIT_76(256'hC6F3BCEE77BCFEF7F1CE70001EF81BE6773CECBDBFB1D8F1E00601E7FC7C3E07),
    .INIT_77(256'hB3CECBD9FB3D8F1E00601E77C3C3C07DCE79DFCF7800001F3B9DEFE3BDFC70F3),
    .INIT_78(256'hE79D9CF7800001F3B9DEF63BDFC70F3C6F3BCEE77BFEEF7F1CF70001EF81BC77),
    .INIT_79(256'hF3D98EFFB98EF7B9BE70001EF81CCC633DDF5D9FBBD8F1E0060167DC1F3C03CC),
    .INIT_7A(256'hFDE1D87BF1CF1E00F08FFBA0E3C41EEE339DE77000001E639CEEF7BDDE6AF7CD),
    .INIT_7B(256'hF8F83F000001FF39E7E3FBFCFC7FFFEF3CFCFE7F9CF7F9F1E70001E781C7E63B),
    .INIT_7C(256'h098C43118423090C60000C20184C63188C1982311840803FFFE3F9FF3C7FC7C1),
    .INIT_7D(256'h0000000000000070061100E1801C441308822000001F03084433D89D80E1CC61),
    .INIT_7E(256'h0000000001F70000003C00C38000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_3
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_3_n_0),
        .CASCADEOUTB(NLW_data_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_3_ENARDEN_cooolgate_en_sig_4),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_3_ENARDEN_cooolgate_en_gate_7
       (.I0(Q[15]),
        .O(data_reg_0_3_ENARDEN_cooolgate_en_sig_4));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
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
    .INIT_03(256'h0000000000000000000006000000000000000000000000000000000003000000),
    .INIT_04(256'h0000000000000000000000003080000000000000000000000000000000000000),
    .INIT_05(256'h0200848090800200000400000000080000000000000000000000700000000108),
    .INIT_06(256'h00000000000000000007800000001F800000000000000000000000030FE00100),
    .INIT_07(256'h000000000000000000000000F00070FC1F8FCFF1F87C3F0F8FC000000000E000),
    .INIT_08(256'h39CEE0B9DCE739CC0F000000000E00000000000000000000005000000001C000),
    .INIT_09(256'h0F03C1F87D1E0FA3C0C0783F0F1E0000000000000F0FE1E1423F80DE0007CE77),
    .INIT_0A(256'h00000001F87F7FB979FC3E60007CCF79BCEF079DE773BDE0F800000007F87F1E),
    .INIT_0B(256'hCEE07DDFF73BFE03000000003FEFE3F9F8FF1FDFE3F3FC7E7E0FE7F3FDE00000),
    .INIT_0C(256'hDE733DCE67BDCEF781CEF379DE0000000000003BFC77BB9FF1C30E00071CF79B),
    .INIT_0D(256'h00000301C7727BFF3C30E00071C0783CE307DDFF703FE03000000000E1EE73B8),
    .INIT_0E(256'h307FDFF3C3FE3F000000000E1C6F380DE031DCE63B9CC0701CEF3783E0000000),
    .INIT_0F(256'h033DCE77B9CE2701CEF3781E000000000000389E7703BFF1C30E00071E0381FC),
    .INIT_10(256'h0003F8077FBBFF3C30E00070F01C1F8387FDFF3C3FE7F000000000E1C673D1DE),
    .INIT_11(256'h7BDDF7039EE3000000000E006FFDFCFF01DCE7FB9CFE701FEF37FDE000000000),
    .INIT_12(256'h1FCE7BB9CF77007EF37FDC6000000000003DC0777B9FF3C30E78070381E3C01C),
    .INIT_13(256'h031E07739FE73C30E780703C0F9C01C7FDDF73B9EF3000000000E0065FBB1FF8),
    .INIT_14(256'hDDF73BBEE3000000000E00663BCDE701DCE63B9CC77038EF379DE70000000000),
    .INIT_15(256'hCE73F9CE7F01CEF379DCE0000000000039C07738FE73C787380701E039E01C79),
    .INIT_16(256'hF8077F0FE71DFF3E007307038E41C79DC6739CCE7000000000E006F3B9DE781F),
    .INIT_17(256'hC3F0F87F000000003C0063F0FCFE01CFE7E39CFE700FCF37F87C000000000003),
    .INIT_18(256'h0109002700048080800000000000000080101022404000003FCFF7F83C1C1F87),
    .INIT_19(256'h000000000000000002014004404108002100040000000000400801100020048E),
    .INIT_1A(256'h000000000000000000000000000000E000000071800000000000000000000000),
    .INIT_1B(256'h0000077800000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000E00),
    .INIT_1D(256'h0000000000000000000000000000E00000003F80000000000000000000000000),
    .INIT_1E(256'h0002000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h00057F0000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000080000000000000000000FA0000000000400000000000),
    .INIT_27(256'h0000000FC0000000000E00000000000000E7F80607E3C078400F0FA1E0FC7800),
    .INIT_28(256'h0F1C007C7E7F1FEE03F87C7F0FCFE0000000000000000000001C000000000000),
    .INIT_29(256'h000000000000000001C0000000000000000001C60000000000F0000000000000),
    .INIT_2A(256'h3F1F9C60000000003FC7E3F8FC7FBF0FF1E007CC7079CEF079DC77BB8E0F0000),
    .INIT_2B(256'h1E0073CF03BCEFC79DEF73BDE07000000000000000000003FCFC3E0FC7C71BF8),
    .INIT_2C(256'h000000000000007FEFDFF1FCFEF9BFD7F1FBE60000000003FCFFFFDFD7FFF8FF),
    .INIT_2D(256'h79C060000000000F1E763F8EC7F3DCF1E0071CF01BCEFC78DFF71BFE03000000),
    .INIT_2E(256'h0071C001BCEEE7C1F7783EE070000000000000000000071DCE63B9CC771BCEF3),
    .INIT_2F(256'h00000000000033FC663B9CC379BCEF378C7C0000000000E1E663F8CC7F1DCF1E),
    .INIT_30(256'h0FA0000000000F1FE63FFCC7FF9CF1E0070701FBFEE33E1FF3E3FE7F00000000),
    .INIT_31(256'h70787FBF8F30E1FF7C3FEFF0000000000000000000073DF83F79CFC79BCEF37F),
    .INIT_32(256'h000000000073DFC3E39CFE79BCEF37F9E10000000000F1FD63FFEC7FFDCF1E00),
    .INIT_33(256'h70000000000F1E763F8EC7F1DCF1E00703879BC0E7079DF7279EE30000000000),
    .INIT_34(256'h0C79BC0FF039DF73B9EF30000000000000000000033DCE6039CC779BCEF379DC),
    .INIT_35(256'h0000000071DCE63F9CC771BCEF379DE70000000000E1E763F8EC7F3DCF1E0070),
    .INIT_36(256'h000000003F1FE7FFFCC7FF9CF1E007007798F0E083DC773B8EE3000000000000),
    .INIT_37(256'h3F878F03FCFE7F9FCFF000000000000000000003FDFF7F79CFEFF9FFF37FEFE0),
    .INIT_38(256'h0000003FFFC3E39CFC7F9FCF33F87C0000000003C1FE3FFF8C7FF18F1E03FCFF),
    .INIT_39(256'h000000000000380000000000003FCFF1F83CF07FC7C3F0F87F00000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000001C00000000000),
    .INIT_3B(256'h0000000000000000001CF0000000000000000000000380000000000000000000),
    .INIT_3C(256'h0000000000380000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00000000000000000000000000000000000000000000000003DF000000000000),
    .INIT_3E(256'h00000000000000000FC000000000000000000000038000000000000000000000),
    .INIT_3F(256'h0000000030000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h000000000000000000000000000000000000000000000000F800000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h000000000000000000FE000000000000000001C00000007F0000000000000000),
    .INIT_48(256'h00000E0000000FF80607E1E380780F0FA1E0FC78000000000000000000000000),
    .INIT_49(256'h7F0FCFE000000000000000000000000000000000000000001FE0000000000000),
    .INIT_4A(256'h00000000000000007C000000000000000000E00000001C007C7E7F1E0FE3F87C),
    .INIT_4B(256'hE3CE7C3F8F81E007CC779BF00E79DC77BB8E0F00000000000000000000000000),
    .INIT_4C(256'hBDE0700000000000000000000000007C638FC7C3FCFF1F0380000000001FC7E3),
    .INIT_4D(256'h3FFE7E7FEFF1F8380000000007FCFF7F38E7E3FCFC1E0073CF79BF00739DEF73),
    .INIT_4E(256'h8EC7F3DCF1E0071CE79BF803B8DFF71BFE030000000000000000000000000FD6),
    .INIT_4F(256'hE070000000000000000000000001CE63F8EE773DFF79C3800000000031DE763F),
    .INIT_50(256'h8EE373DDB78C3800000000031DE763DDEC371DC61E0071C079BDC033C1F7783E),
    .INIT_51(256'hFC73DF81E0070707FBDE3F3E1FF3E3FE7F0000000000000000000000001C663F),
    .INIT_52(256'hF0000000000000000000000001FC63F8EFC73DD37F03800000000031C87639FE),
    .INIT_53(256'hFE73DD37F83800000000031C076387EFE73DFC1E0070787FBCE7F0E1FF7C3FEF),
    .INIT_54(256'hF3DCF1E0070387FBCEF3079DF7279EE30000000000000000000000001FC63F8E),
    .INIT_55(256'h000000000000000000000001CE63F8EE733DD379C3800000000031C07638FEC7),
    .INIT_56(256'h73DD379C3800000000031C0763F8EC7F3DCF1E00700C77BFEE3039DF73B9EF30),
    .INIT_57(256'hDFF1E0070077BBC0F303DC773B8EE30000000000000000000000001CE63F8EE7),
    .INIT_58(256'h0000000000000000000001FE7F38EFFBFDD37FE3800000000031C07FF38EFE71),
    .INIT_59(256'hDC33F83800000000031C063E38EFC73DFC1E03FCFF3FBC07F3FCFE7F9FCFF000),
    .INIT_5A(256'h00003FCFF1FBC03E7FC7C3F0F87F0000000000000000000000001FC7E39EFE3F),
    .INIT_5B(256'h0000000000000000000000700000003C00000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000063C000003C0),
    .INIT_5E(256'h00000000000000000000778000003C0000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000003F0000003C000),
    .INIT_61(256'h0000000000000000003E00000018000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h00000000F0000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000300000000000057F00000000000000000000000000000000000000),
    .INIT_69(256'hE0787F0F0FA1E0FC78000000000000000000000F000010000000004070008E00),
    .INIT_6A(256'h000000F00003800000000F03001C70000000000003800000000000E7F80607E1),
    .INIT_6B(256'h000000003800000000000F1C007C7E7F1FEFF3F87C7F0FCFE000000000000000),
    .INIT_6C(256'hCEE079DC77BB8E0F000000000000000000000000003800000000F03001E60000),
    .INIT_6D(256'hDC78FCFC3F8F87C71B8F3F1F8E600007F1F8FCF38F8778CFBF0FF1E007CC779B),
    .INIT_6E(256'hBF8FDE39FBFFBFFFF8FF1E0073CF79BCEF079DEF73BDE07000000FE1FC7C3FCF),
    .INIT_6F(256'hF878DFF71BFE03000000FEFFEFD3F9FFE70FEFDFFDFBFEF9BCE7F1F8760001FF),
    .INIT_70(256'h70F3CE63B9CC771BCEF379C760000C779DCEE3B9CFFBFFF3DCF1E0071CE79BCE),
    .INIT_71(256'hDCE3FB8CEBBB7F1DCF1E0071C079BC0307C1F7783EE07000000E731DC663BCDE),
    .INIT_72(256'h3E1FF3E3FE7F000000E731DC6F3BCDE70F3C663B9CC3798FEF379C3E0000C771),
    .INIT_73(256'hF3F863C1CFC7987EF379C7E0000C721DCE7FBF0D9B9FFF9CF1E0070707F8F030),
    .INIT_74(256'hE1FBF8E9BBFFFDCF1E0070787F870780E1FF7C3FEFF000000E731DC6F3BFCE70),
    .INIT_75(256'h9DF7279EE3000000E731DC6F3BFBE70F3FC63E9CFE798FEF379C760000C701DC),
    .INIT_76(256'hCE63B9CC7798FEF379C760000C701DCE3FB9CE9B9FF1DCF1E0070387F83C1C07),
    .INIT_77(256'h3B9CE9BBFF3DCF1E00700C7783C1C039DF73B9EF3000000E731DE6F3BCDE70F3),
    .INIT_78(256'h773B8EE3000000E731DC673BCDE70F3CE63B9CC771BEEF379DC60000C701DCEE),
    .INIT_79(256'h63FFCFEFF9CE7F3FFE60000C7019FEE3BFCCFB87FF9CF1E0070077B81F1C03DC),
    .INIT_7A(256'hF8C3B87FF18F1E03FCFF3F9FE1C3FCFE7F9FCFF000000FF31DFEFFBFDFFBFBFF),
    .INIT_7B(256'hF0F87F000000FE31EFE3FBFCFE3FFFC639F8FC7F98F3F1F9E60000C7018FCE33),
    .INIT_7C(256'h00000000000000000000000000000000000000000000003FCFF1F9FF1C7FC7C3),
    .INIT_7D(256'h0000000000000000000000000000000000000000000E00000003C01E00000000),
    .INIT_7E(256'h0000000000E30000003C00E78000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_4
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_4_n_0),
        .CASCADEOUTB(NLW_data_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_4_ENARDEN_cooolgate_en_sig_5),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_4_ENARDEN_cooolgate_en_gate_9
       (.I0(Q[15]),
        .O(data_reg_0_4_ENARDEN_cooolgate_en_sig_5));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "5" *) 
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
    .INIT_03(256'h0000000000000000000007000000000000000000000000000000000007800000),
    .INIT_04(256'h000000000000000000000000787C000000000000000000000000000000000000),
    .INIT_05(256'hC1F0787F0F07C1F0F8F8000000000600000000000000000000007000000000F0),
    .INIT_06(256'h00000000000000000007000000001F800000000000000000000000078FC00607),
    .INIT_07(256'h000000000000000000000030FC00F07E3F0FCFF9F8FE3F1FCFC000000000F000),
    .INIT_08(256'hFDFFFF3FFFF7FFFEFE000000000F00000000000000000000002000000001F800),
    .INIT_09(256'h1F87E1FCFE3F1FC7E7E0FC7F9F9C0000000000001F87F3F3871FC7EF000FFFF7),
    .INIT_0A(256'h00000003F8FF3F3C73FC7FF000FFE773DCFE03DFFF73FEE0F000000003FCFE3F),
    .INIT_0B(256'hCFF03FFF773FEE07800000007FCFF7F1FC7E3FCFF7F1FEFE7E1FC7F9F9C00000),
    .INIT_0C(256'hEE7F9FCFF3F9FE7F03CFE7B9FC00000000000079DEF73FF77BC78F000F1E773D),
    .INIT_0D(256'h0000079DEF71BF779C78F000F1E0701CF783FFF7703EE07800000000F1CFF3FD),
    .INIT_0E(256'h783FFFF7E3FE7F800000000F1CF73F9EE779FCFF3F9FE7703CFE7B9DC0000000),
    .INIT_0F(256'hE79FCFFFF9FFC703FFE7BF9C0000000000007F1CF7F3F77BC78F000F0F07C3FE),
    .INIT_10(256'h0007F80F7F3F779C78F000F0783E3FC7C3FFFF7E3FEFF800000000F1CFFF8FEF),
    .INIT_11(256'h3BFFF703FEE7800000000F00F7F9F9FE01FCFFFF9FFE703FFE7BF9C000000000),
    .INIT_12(256'h1DCF07F9FEFF000FE7B9FEF000000000007BC0F7BFF779C78F380F03C0E1C01C),
    .INIT_13(256'h079C0F73FFF79C78F380F01E073C01C3BFFF73FFEE7800000000F00F03FC0E70),
    .INIT_14(256'hFEF73FDEE7800000000F00F73F9EE781FCFF3F9FE7F01CFE7B9FCF0000000000),
    .INIT_15(256'hFFFFB9FFF703FFE7BFFFF000000000007FC0F7FDEE79DFEFF80F00F07DE01C3B),
    .INIT_16(256'hF80F7F1EE7BFFE7F03FCFF7FCF81C3FFFF7FFFEFF800000003F00F7FFFEFF01D),
    .INIT_17(256'hE3F1FC7E000000007C00F3F1F9FE01CFF3F39FFE700FCE7BF8FE000000000007),
    .INIT_18(256'h3E30CFC700F8633F07C000000000003F0067E0CC319FE3E03FFFF7FC7C1C1F8F),
    .INIT_19(256'h0000000000000003FCFE3F838180F07C1E0F83E00000000380063E0F8FC0187F),
    .INIT_1A(256'h000000000000000000000000000000F000000073C00000000000000000000000),
    .INIT_1B(256'h000007BC00000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000F00),
    .INIT_1D(256'h0000000000000000000000000000F00000003F00000000000000000000000000),
    .INIT_1E(256'h0001F00000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h00000000000000000000000000000000000000000000000000000000000E0000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h000EFF8000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h00000000000000000001C00000000000000000007C0000000000E00000000000),
    .INIT_27(256'h0000000FE0000000000F00000000000000FFF80707C7E0FCE01F87C3F0F8FC00),
    .INIT_28(256'h0E1E00F0FE7E0FCF01FCFE3F9FCFC0000000000000000000001C000000000000),
    .INIT_29(256'h000000000000000001C0000000000000000001EF0000000000E0000000000000),
    .INIT_2A(256'h7F9F9EF0000000007FCFC3F9F87F1F8FE1C00FFEF073CFF839FEF73FDE0E0000),
    .INIT_2B(256'h1C00FDE707DCFFC39FF773FEE0F800000000000000000001FCFC3F1FE7E73DFC),
    .INIT_2C(256'h000000000000003FDFE7FBFEFF73DFEFFBFDCF0000000007FDFE7FBFEFF3FDFE),
    .INIT_2D(256'hB9E0F0000000000E1CFF3BDFE779FCE1C00F1E703DCFFE39FF773FEE07800000),
    .INIT_2E(256'h00F1E003DCFFF381FF703FE078000000000000000000079FCFF3F9FE7F3DCFE7),
    .INIT_2F(256'h00000000000079DC003F9FE073DCFE7B80FE0000000000F1C0F3BC1E7783CE1C),
    .INIT_30(256'h9FC0000000000E1FCF3BF9E77F3CE1C00F0F03FDFCF79C1FF3E3FE7F80000000),
    .INIT_31(256'hF0787FDFCE79F1FF7E3FEFF8000000000000000000079FFC3FB9FFE73DCFE7BF),
    .INIT_32(256'h000000000079FFE7F39FFF73DCFE7BFDC60000000000E1FEF3BFDE77FBCE1C00),
    .INIT_33(256'hF0000000000E1CFF3BDFE77BFCE1C00F03C73DC0FF8F1FF71BFEE78000000000),
    .INIT_34(256'h1E73DC0FF839FF73FFEE78000000000000000000079FCFF039FE7F3DCFE7B9FE),
    .INIT_35(256'h0000000079FCFF3B9FE7F3DCFE7B9FCF0000000000F1CFF3BDFE779FCE1C00F0),
    .INIT_36(256'h000000007E1FFFFBFFE77FFCE1C00F00F73DE0FF01FEF73FDEE7800000000000),
    .INIT_37(256'h7FCFCE03FFFF7FFFEFF800000000000000000007FFFEFFB9FFF7FFFEE7BFDFF0),
    .INIT_38(256'h0000001FDFC3F39FFE7F3FCE7BF8FE0000000007C1FC3FBFDE77FBCE1C03FFFF),
    .INIT_39(256'h000000000000380000000000003FFFF3F07CE03FEFE3F1FC7E00000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000003C00000000000),
    .INIT_3B(256'h0000000000000000003CE0000000000000000000000380000000000000000000),
    .INIT_3C(256'h0000000000380000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00000000000000000000000000000000000000000000000001FE000000000000),
    .INIT_3E(256'h00000000000000000FC000000000000000000000038000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h000000000000000001FF000000000000000000E0000000FF8000000000000000),
    .INIT_48(256'h00001E0000000FF80707C3F1C0FC1F87C3F0F8FC000000000000000000000000),
    .INIT_49(256'h3F9FCFC000000000000000000000000000000000000000001FF0000000000000),
    .INIT_4A(256'h000000000000000038000000000000000001E00000001E00F0FE3FBC0FC1FCFE),
    .INIT_4B(256'hF39E7E1FCFC1C00FFEF73DE00F39FEF73FDE0E00000000000000000000000000),
    .INIT_4C(256'hFEE0F8000000000000000000000000FCF39FE7E1FCEF9F8380000000001FCFF3),
    .INIT_4D(256'h39FEFF3FDFFBFC380000000003FDFF7FBDEFF7FDFE1C00FDE77FDF80FB9FF773),
    .INIT_4E(256'hDFE779FCE1C00F1E77FDFC07B9FF773FEE078000000000000000000000001FEF),
    .INIT_4F(256'hE078000000000000000000000001CFF3BDFE7F9FFFB9E3800000000079DCFF3B),
    .INIT_50(256'hDFE079FFFB803800000000079DCFF39EFE07BFC01C00F1E07FDDC07B81FF703F),
    .INIT_51(256'hFE79FFC1C00F0F07FDCF7F9C1FF3E3FE7F8000000000000000000000001C0F3B),
    .INIT_52(256'hF8000000000000000000000001FCF3BDFFE79FDFBF83800000000079DCFF38FF),
    .INIT_53(256'hFF79FDFBFC3800000000079C0FF38FFFF79FFE1C00F0787FDCFFF9F1FF7E3FEF),
    .INIT_54(256'h79FCE1C00F03C77DFFE78F1FF71BFEE78000000000000000000000001FEF3BDF),
    .INIT_55(256'h000000000000000000000001CFF3BDFE7F9FDFB9E3800000000079C0FF39EFE7),
    .INIT_56(256'hF9FDFB9E3800000000079C0FF3BDFE779FCE1C00F01E7FDFFF7839FF73FFEE78),
    .INIT_57(256'hFFE1C00F00F73DFEE781FEF73FDEE78000000000000000000000001CFF3BDFE7),
    .INIT_58(256'h0000000000000000000001FFFFBDFFF7FFDFBFC3800000000079C0F7FBDFFF7B),
    .INIT_59(256'hFC7BF83800000000079C0F3F3DFFE79FFC1C03FFFF7FDC0FFBFFFF7FFFEFF800),
    .INIT_5A(256'h00003FFFF3F1C07F3FEFE3F1FC7E0000000000000000000000001FCFF3CFFE1F),
    .INIT_5B(256'h0000000000000000000000F00000001C00000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h00000000000000000000000000000000000000000000000000000F38000001C0),
    .INIT_5E(256'h00000000000000000000FF8000001C0000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000003F0000001C000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h00000000E0000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h00000000003800000000000EFF80000000000000000000000000000000000000),
    .INIT_69(256'hF0FCFF9F87C3F0F8FC000000000000000000000E00003800000000E03801C700),
    .INIT_6A(256'h000000E00003800000000E07801EF0000000000007800000000000FFF80707C3),
    .INIT_6B(256'h000000007800000000000E1E00F0FE3F8FCFF9FCFE3F9FCFC000000000000000),
    .INIT_6C(256'hCFF039FEF73FDE0E000000000000000000000000003800000000E07801CF0000),
    .INIT_6D(256'h8E70FCFC3F9F87E73DCE7F9F9FF00007F3FCFCE79F877DEF1F8FE1C00FFEF73D),
    .INIT_6E(256'h7FDFEF7BFCFFDFF3FDFE1C00FDE77FDCFE039FF773FEE0F800000FE1FCFC3F9F),
    .INIT_6F(256'hF039FF773FEE07800000FF3FDFE7FFFCE78FDFE7FBFCFF73DCFFFBFCFF0000FF),
    .INIT_70(256'h78E1CFF3F9FE7F3DCFE7B9EFF0001E773DCFF7B9FFFFFF79FCE1C00F1E77FDCF),
    .INIT_71(256'hDCF7BB81FFFFF783CE1C00F1E07FDC078381FF703FE07800000E7F9FCFF3F9EE),
    .INIT_72(256'h1C1FF3E3FE7F800000E7F9FCF73F80E78E1C0F3F9FE073DEFE7B9E7F0001E77B),
    .INIT_73(256'hE1FCF3B9FFE73CFFE7B9EFF0001E773DCF3FBF9EFFF77F3CE1C00F0F07FDE078),
    .INIT_74(256'hF3FBFDFFFF77FBCE1C00F0787FCF83C1F1FF7E3FEFF800000E7F9FCF73FF9E78),
    .INIT_75(256'h1FF71BFEE7800000E7F9FCF73FFCE78E1FEF391FFF73C7FE7B9EFF0001E703DC),
    .INIT_76(256'hCFF3F9FE7F3CEFE7B9EFF0001E703DCF7BB9FFFFF77BFCE1C00F03C77C781C0F),
    .INIT_77(256'h7B9FFFFF779FCE1C00F01E7FC1C1C039FF73FFEE7800000E7F9FCF73F9EE78E1),
    .INIT_78(256'hF73FDEE7800000E7F9FCFF3F9EE78E1CFF3F9FE7F3DCFE7B9FEF0001E703DCFF),
    .INIT_79(256'hF3BFFFF7FFCFFFBFDCF0001E703DFFF7BFFEBFF77FFCE1C00F00F73C0E1C01FE),
    .INIT_7A(256'hF9E3FC77FBCE1C03FFFF7FDFF1C3FFFF7FFFEFF800000FFF9FFF7FFFEFF7FDFE),
    .INIT_7B(256'hF1FC7E000000FE79CFC3FFF9FE7FDFCF39F9FE7F3CE7F9F9CF0001E703CFCF7B),
    .INIT_7C(256'h00000000000000000000000000000000000000000000003FFFF3F3FE1C3FEFE3),
    .INIT_7D(256'h0000000000000000000000000000000000000000000E00000003800E00000000),
    .INIT_7E(256'h0000000000E78000003801E70000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_5
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_5_n_0),
        .CASCADEOUTB(NLW_data_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_5_ENARDEN_cooolgate_en_sig_6),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_5_ENARDEN_cooolgate_en_gate_11
       (.I0(Q[15]),
        .O(data_reg_0_5_ENARDEN_cooolgate_en_sig_6));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_6
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_6_n_0),
        .CASCADEOUTB(NLW_data_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_6_ENARDEN_cooolgate_en_sig_7),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_6_ENARDEN_cooolgate_en_gate_13
       (.I0(Q[15]),
        .O(data_reg_0_6_ENARDEN_cooolgate_en_sig_7));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "7" *) 
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_0_7
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(data_reg_0_7_n_0),
        .CASCADEOUTB(NLW_data_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_data_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_data_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(data_reg_0_7_ENARDEN_cooolgate_en_sig_8),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_0_7_ENARDEN_cooolgate_en_gate_15
       (.I0(Q[15]),
        .O(data_reg_0_7_ENARDEN_cooolgate_en_sig_8));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
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
    .INIT_00(256'h00000000000000000000000000000000000000001E7200001FD01E7A00000000),
    .INIT_01(256'h00000001BF400000FD01FD000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000007F0000003C00FF00000000000),
    .INIT_04(256'h00000000000000000000000000C0000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h00003F00000000000000000000000000000003E00000018003E0000000000000),
    .INIT_07(256'h000000000000000000000801E00000000000000CC60000000000000001800003),
    .INIT_08(256'h00000000000000000000000000000000000C000607C1F1FE3E0F8181F0F87800),
    .INIT_09(256'h007F401E8360C00C1A060740F060600000000000000000000000007C80000000),
    .INIT_0A(256'h0000000000000000003A87C8000000000000ECF6400000000000000550001B20),
    .INIT_0B(256'h0007DD64000000000000007D0001B2003BFC0E0FCDFBFFBF6F474DE9F9F80000),
    .INIT_0C(256'h67C3737EBF7FE7EDFAF8BF6FFFD00000000000000000000003E06E8000000000),
    .INIT_0D(256'h00000000000000003FE1FFFFFF7F9FEFF3FDD64000000FFBFDFEF7DFCFFB7BCF),
    .INIT_0E(256'h7FD664000001FF3FF7D67EF9FCBF59E67C37CCFFD93EFB7ECFEFD99D3F000000),
    .INIT_0F(256'hC37ECFFD9FEFB7CCFBFD9DD7B20000000000000000000003FEEFEFCFCDFBF9BF),
    .INIT_10(256'h000000000000003CF7E59CE6B3BCD6779D664000001E739EEE67DDDE6BB99E67),
    .INIT_11(256'hD764000001DF33FF67FFACCFB3D9E63C366C8FD93EF47CCFCFC1DD1B20000000),
    .INIT_12(256'h66D9F190E647DCFDF2DEDC720000000000000000000003F67CFECCF7DB9EFB77),
    .INIT_13(256'h0000000000003F67CFECCF7B1FEFB77CFE4000001FF33FF67FF9CFFB5D9FBFC3),
    .INIT_14(256'h64000001DF4BFF67FFF9FFB3D9E63C362EFDF3FEBFFFCFDFCDFDBF2000000000),
    .INIT_15(256'hBDF1BC7E67BCFCF2D9DE320000000000000000000003F67CCECCF7FBFDFB77D7),
    .INIT_16(256'h00000000003F67C86CCF7F2F1FB77D664000001DF23FF65FFFDF8B3D9E67C360),
    .INIT_17(256'h000001DF3BFF6B7FACCFB5D9E67C360DEFDB91F47FCFDFC19DFB200000000000),
    .INIT_18(256'hFDBBEFB7FCFCFD99DFB20000000000000000000003F67CBECCF7DB8FFB77D664),
    .INIT_19(256'h000000003F67C86CCF7DB9EFB77DD64000001DF23FF667FACCFB3D9E67C364ED),
    .INIT_1A(256'h0001DF23EFD67FFB7EBF1FDBFC3600EFDBBEFB7ECFCFD9ADFB20000000000000),
    .INIT_1B(256'h6FD7EDFAFEBF6FF7E80000000000000000000003FD7FC6CFEFF6FD7EF7DD6400),
    .INIT_1C(256'h0000003FB7F46CFCBEB79BF76CF64000001DBA3B7F655FDBCBF3F87F47FCFFBF),
    .INIT_1D(256'h000000183000078300C024007FCFEDFB7ABF6F6FE5E9F9BD4000000000000000),
    .INIT_1E(256'h2C1A040040F06C1800000000000000000000000200006CF80D02C18000000000),
    .INIT_1F(256'h00001FC7F80ECFBF0FC3E39DC70000000E701C7C73BF87E7F1FC3F80000060D0),
    .INIT_20(256'h00000000000000000000003FCFF1F0FC3E1F9FF3F0FC3E000000000000000000),
    .INIT_21(256'h00000000000000000000000000000000000000000017E8000000000000000000),
    .INIT_22(256'h0000000000FC8000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000183000000000000000000000),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_0
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_0_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_0_DOADO_UNCONNECTED[31:1],out[0]}),
        .DOBDO(NLW_data_reg_1_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "1" *) 
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
    .INIT_00(256'h000000000000000000000000000000000000000005A00000010005A000000000),
    .INIT_01(256'h000000007C00000010003E000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000800000000000000000000000000000000000000000000000000800000000),
    .INIT_0A(256'h0000000000000000000400800000000000001101000000000000000280000400),
    .INIT_0B(256'h0000887000000000000000100000600006300100000000001080821000040000),
    .INIT_0C(256'hC1006CC41180C232941652988080000000000000000000000180100000000000),
    .INIT_0D(256'h0000000000000000180000000000000000088700000000000000010000060000),
    .INIT_0E(256'h0F8F700000003E0F8F8F10F03E7E1C4C3007B8223C0443B181F2370E04000000),
    .INIT_0F(256'h0061A623C0447B9810237EE0780000000000000000000001F81F1FAFE3E07C7C),
    .INIT_10(256'h000000000000001B40DA6AD95D0B6BA168F700000005A17955F12AA59755C4C1),
    .INIT_11(256'h82F0000000E27888F21102A2619C4F700718623C04433981021BEE0780000000),
    .INIT_12(256'h71E02B404D03A810283DE03800000000000000000000018C0811AE22254447B8),
    .INIT_13(256'h00000000000018C0811AE22000447B881F0000000C27888F1110002619C43F00),
    .INIT_14(256'hF0000000E20088F0F1F03C619C4F70070703E07C783F8101E3FE7F8000000000),
    .INIT_15(256'h102B4805035810203FE47800000000000000000000018C0801AE23E07847B88E),
    .INIT_16(256'h000000000018C0801AE23198847B88F70000000E20088F2B18844619C4C30070),
    .INIT_17(256'h000000E20088F3910EE0619C4C300702823DC6433181021B7E47800000000000),
    .INIT_18(256'h23DC447B18102377E47800000000000000000000018C0801AE223DC047B88F70),
    .INIT_19(256'h0000000018C0801AE223DC447B88870000000E20088F7110EE2619C4C100701E),
    .INIT_1A(256'h0000E20084EF118CA4799C87300700323DC443B18102370E4780000000000000),
    .INIT_1B(256'h9482329539129C82500000000000000000000001CA1C01AE4329482738887000),
    .INIT_1C(256'h00000000400810C24108400091010000000240040002A0042400040080738613),
    .INIT_1D(256'h0000000000000000000000000030100084001090121000420000000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000000E000000000000000000),
    .INIT_1F(256'h000000000001E200000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000C50000000000000000000),
    .INIT_22(256'h0000000000020000000000000000000000000000000000000000000000000000),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_1
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_1_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_1_DOADO_UNCONNECTED[31:1],out[1]}),
        .DOBDO(NLW_data_reg_1_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
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
    .INIT_00(256'h000000000000000000000000000000000000000016E800000580076000000000),
    .INIT_01(256'h000000003D0000005800BC000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000004300000024004200000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000002000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h001F400000000000000000000000000000000000000000000000000E00000000),
    .INIT_0A(256'h0000000000000000002E02E00000000000000A8F000000000000000540000680),
    .INIT_0B(256'h0002EEE0000000000000007C0000380003F40703EBE1FC7C0F4543E8F57C0000),
    .INIT_0C(256'h7340FC7DDF1FFBE7FE7FFF8F97F00000000000000000000001A0180000000000),
    .INIT_0D(256'h00000000000000001BC1F9FFFE3F9FC7F1EEEF00000007FBFCFEF7DFCFF3BBCE),
    .INIT_0E(256'h6FF7F0000000BF9FAFEF7DFCFC3FB97F340FFE6F3C176774E7EE9DCC1E000000),
    .INIT_0F(256'h40E2E6F3DF7677EE7DE9DCC7380000000000000000000001FA0FCFFFE9F1F87E),
    .INIT_10(256'h000000000000001CC6C99FE6334CCE2D9EEF000000067F9BC5F7B8EE631F97F3),
    .INIT_11(256'hEEF0000000C3FBACEE79DDEF39B97EF40E0EDF3C1760FEE7CEA5CC0780000000),
    .INIT_12(256'hE5C0BDCFF783CE7CFC1DC3B80000000000000000000001A76E74FEFFBDD767B2),
    .INIT_13(256'h0000000000001A76EF4FEFF30F767B6EBF0000000DBFBACF739D87F3BB967F40),
    .INIT_14(256'hF0000000DBFBACF4F9FCBC39B97EF40E06E1FBFF7BBFE7C1C9FD3F8000000000),
    .INIT_15(256'hF1BDDB8783FE7CFC19D7B80000000000000000000001A76E34FEFFE17FE7B2EE),
    .INIT_16(256'h00000000001A76E00FEFF36C5E7B2EEF0000000DB83ACF7B99A6239B97F340E0),
    .INIT_17(256'h000000DBA3ACF779DDE43BB97F340E038F3D8A60F7E7CEA5FDF7800000000000),
    .INIT_18(256'hF3DB76777E7CE9DFDE780000000000000000000001A76E00FEFFBD89E7B2F7F0),
    .INIT_19(256'h000000001A74E00FEFFBD9767B2EEF0000000D383ACEF71DDEF39B97F340E05D),
    .INIT_1A(256'h0000DB83B7CF79F9FF3F7FF3F40E006F3D976774E7CE9DDDF780000000000000),
    .INIT_1B(256'hBFFBE7FEFF7F8F9BF00000000000000000000001FFFF40FFFFFBFFBE32EEE000),
    .INIT_1C(256'h00000023AE341BFA2E8747C09B8900000002602AF8D17703A6E8341CC5FFFEDF),
    .INIT_1D(256'h00000000000000000000000059BF9BE0747C0F4C73E8757D0000000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000001E700000000000000000),
    .INIT_1F(256'h000000000005EF20000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h00000000000000000000000000000000000000000006F8000000000000000000),
    .INIT_22(256'h0000000000BE0000000000000000000000000000000000000000000000000000),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_2
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_2_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_2_DOADO_UNCONNECTED[31:1],out[2]}),
        .DOBDO(NLW_data_reg_1_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "3" *) 
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
    .INIT_00(256'h00000000000000000000000000000000000000001EF0000003C01F7800000000),
    .INIT_01(256'h000000003F0000003C007C000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000007E00000038007E00000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h000000000000000000000001C000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h007F000000000000000000000000000000000000000000000000001C00000000),
    .INIT_0A(256'h0000000000000000003C01C00000000000000CE7000000000000000140000700),
    .INIT_0B(256'h0001DC60000000000000003C000030000BF80F0FC1FBFF3F0F0343E9F8FC0000),
    .INIT_0C(256'h67807F7E3F7FE7EBFE3E7FEFEFD00000000000000000000003C01E0000000000),
    .INIT_0D(256'h00000000000000003FC0F9FCFE3F0FC7E1DDC700000007F1FC7C63DF87E331CE),
    .INIT_0E(256'h1FC7700000007F3FEFCF3CF87C3F18EE7807FCF7BC0EF37CC3E79D9C0F000000),
    .INIT_0F(256'h807CEF7BC0EF77CC3BF9DDC0B80000000000000000000003FC0FCFEFE1F8F87F),
    .INIT_10(256'h000000000000003CF1ED9EE6B3BCDE779CE70000001E739FEFF3FDFE6BBD8EE7),
    .INIT_11(256'hC7F0000001C77BFEE7BF8CE7B3D8EE78060CC7BC0EF47CC3CF81DC0780000000),
    .INIT_12(256'h61D079C0E747DC3CFA1FC4780000000000000000000003C61C7CEE77BFCEF7F1),
    .INIT_13(256'h0000000000003E61C7CEE77800EF7F1C7F0000001E77BFEF7FF8007B1D8F3F80),
    .INIT_14(256'hF0000001C74BFEF7FFF87F33D8EE78060E01F0FE7E7FC3C3C1FC3F8000000000),
    .INIT_15(256'hBC79FC6F47FC3CF219CE380000000000000000000003C61C08EE77F8FDF7F1CF),
    .INIT_16(256'h00000000003C61C00EE77F2F0F7F1CE70000001C703FEF7FFFDF833D8EE78060),
    .INIT_17(256'h000001C703FEF37F8CE731D8EE780603E7BF83F47FC3CF81FCF7800000000000),
    .INIT_18(256'h7BF8EF77FC3CF9DFCF780000000000000000000003C61C00EE77BF8EF7F1D770),
    .INIT_19(256'h000000003C61C00EE77BF8EF7F1DC70000001C703FEE73F8CE7B3D8EE780601D),
    .INIT_1A(256'h0001C703EFDF3FFBFE3F1FDBF80600E7BF8EF378C3CF9D8CF780000000000000),
    .INIT_1B(256'hFFD7EBFEFF3FEFE7F80000000000000000000003FF7FC0EFEFFFFD7EF1DC6000),
    .INIT_1C(256'h0000003F87F41CFE3E87C3F79DE70000001E781A7E617FC3E7F3FC7F83FFFFBF),
    .INIT_1D(256'h0000000000000000000000003FFFF1F87C3F0F0FF3E9F87D0000000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000000E300000000000000000),
    .INIT_1F(256'h000000000001E780000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h00000000000000000000000000000000000000000017F8000000000000000000),
    .INIT_22(256'h00000000007E0000000000000000000000000000000000000000000000000000),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_3
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_3_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_3_DOADO_UNCONNECTED[31:1],out[3]}),
        .DOBDO(NLW_data_reg_1_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
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
    .INIT_00(256'h00000000000000000000000000000000000000000F70000003C01EF800000000),
    .INIT_01(256'h000000007E0000003C007E000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000003C00000018003C00000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h000000000000000000000001C000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h007F800000000000000000000000000000000000000000000000001C00000000),
    .INIT_0A(256'h0000000000000000001801C00000000000001DE6000000000000000380000300),
    .INIT_0B(256'h0001DC700000000000000038000070000FF80E0FC1FBFF3F1F8381F1F8F80000),
    .INIT_0C(256'hE78073FE3FFFE7F9F8383F7FEFC00000000000000000000003C00E0000000000),
    .INIT_0D(256'h00000000000000003C00000000000000001DC600000000000000038000070000),
    .INIT_0E(256'h1FCE600000007F3FC7C638F87E7F1CE67807CCF7980EF3B9C3F73B9E0F000000),
    .INIT_0F(256'h807DCF7980EF3BDC3A73BFE0F00000000000000000000003FC1F9FCFC3F8FC3F),
    .INIT_10(256'h000000000000003FF1F7FCFFFFBFF7F3FC760000001FF3FCFE63DFDFFFF9CE67),
    .INIT_11(256'hC760000001E731DE77BF8EC7F3DCE738071C27980EF73DC3871BFE0300000000),
    .INIT_12(256'h70F07380EE47FC38723EE4700000000000000000000003CE1C39CC771B8EF379),
    .INIT_13(256'h0000000000003CE1C39CC77800EF379C7E0000001E731DE63FF8007F1DCF3F80),
    .INIT_14(256'h60000001E701DE63FFF87F73DCE738070F03F0FE3C7FC383E3FE7F0000000000),
    .INIT_15(256'h3C73BC6E47BC38723FEE700000000000000000000003CE1C09CC77F8FCF379C7),
    .INIT_16(256'h00000000003CE1C01CC77F9F8F379C760000001E701DE61FFFDFC73DCE678070),
    .INIT_17(256'h000001E701DE63BF8EC371DCE6780701E79BC5F73BC3871B9EE3000000000000),
    .INIT_18(256'h79BCEF3BBC3873B9EF300000000000000000000003CE1C01CC771BC6F379CE60),
    .INIT_19(256'h000000003CE1C01CC771BCEF379DC60000001E701DE763F8EC7F3DCE6780700E),
    .INIT_1A(256'h0001E701CFF63FFE7E7F9FCFF80700F79BCEF3B9C3873B8EE300000000000000),
    .INIT_1B(256'h4FC7F9F9FE3F7FE7E80000000000000000000003FC7F81CFE7F4FC7FF9DC7000),
    .INIT_1C(256'h0000001FC7F80CFC7F0F83F70CE60000001C381C7E639FC7C3F3F87F03FCFF3F),
    .INIT_1D(256'h0000000000000000000000003FCFE1F8F83F1F9FE1F1F83E0000000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000000C000000000000000000),
    .INIT_1F(256'h000000000000C780000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000001FE0000000000000000000),
    .INIT_22(256'h00000000007C0000000000000000000000000000000000000000000000000000),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_4
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_4_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_4_DOADO_UNCONNECTED[31:1],out[4]}),
        .DOBDO(NLW_data_reg_1_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "5" *) 
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
    .INIT_00(256'h00000000000000000000000000000000000000000FF8000003800FF000000000),
    .INIT_01(256'h000000007E00000038007E000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h003F800000000000000000000000000000000000000000000000001E00000000),
    .INIT_0A(256'h0000000000000000001C01E00000000000001FCF000000000000000380000780),
    .INIT_0B(256'h0001FEF000000000000000380000780007F80707E3F1FE7E1F8383F0FCFC0000),
    .INIT_0C(256'hF380FCFF7F9FFFF3FC3F7F9FCFE00000000000000000000001C01C0000000000),
    .INIT_0D(256'h00000000000000001C00000000000000001FEF00000000000000038000078000),
    .INIT_0E(256'h1FEFF00000007F9FCFEF39FC7E7FBCFF380FFE773C0FE7B9E3F73FCE0E000000),
    .INIT_0F(256'h80F1E773C0FE7BFE3C73FEE0780000000000000000000001FC1F9FFFE3F0FC7E),
    .INIT_10(256'h000000000000001FE1FBFFFF7FDFEFFBFEFF0000000FFFFDFFF3BFEFF7FFCFF3),
    .INIT_11(256'hEFF0000000E7F9DCFF3BDFE779FCFFF80F1E773C0FE3BFE3873FEE0780000000),
    .INIT_12(256'hF1E07FCFFF83FE387C3FE3F80000000000000000000001CF1E39FE7F3DCFE7B9),
    .INIT_13(256'h0000000000001CF1E39FE7F000FE7B9E3F0000000E7F9DCF3BBC0077BFCE7F80),
    .INIT_14(256'hF0000000E7B1DCF1FBFC7E79FCFFF80F0703F8FF7C3FE383E3FE7F8000000000),
    .INIT_15(256'h787FDF8F83FE387C3FEFF80000000000000000000001CF1E31FE7FF0FEE7B9EF),
    .INIT_16(256'h00000000001CF1E01FE7FFDFCE7B9EFF0000000E781DCF3FBFEFE79FCFF380F0),
    .INIT_17(256'h000000E781DCF7BBDFE07BFCFF380F03C73DCEE3BBE3873FFEE7800000000000),
    .INIT_18(256'h73DCFE7BBE3873FFEE780000000000000000000001CF1E01FE7F3DC0E7B9EFF0),
    .INIT_19(256'h000000001CF1E01FE7F3DCFE7B9FEF0000000E781DCFF3BDFE779FCFF380F01E),
    .INIT_1A(256'h0000E781DFEF3BFCFF7FFFE7F80F00773DCFE7B9E3873FDEE780000000000000),
    .INIT_1B(256'h9FEFF3FDFF7F9FCFF00000000000000000000001FEFF81FFF7F9FEFF39FEF000),
    .INIT_1C(256'h0000001FCFF81FFE7F0FC7E39FCF0000000E701CFCF3BF87E7F9FC3F83FFFF7F),
    .INIT_1D(256'h0000000000000000000000003FFFF3F0FC7E1F9FF3F0FC7E0000000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000001E000000000000000000),
    .INIT_1F(256'h000000000001E700000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000FF0000000000000000000),
    .INIT_22(256'h00000000007E0000000000000000000000000000000000000000000000000000),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_5
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_5_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_5_DOADO_UNCONNECTED[31:1],out[5]}),
        .DOBDO(NLW_data_reg_1_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_6
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_6_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_6_DOADO_UNCONNECTED[31:1],out[6]}),
        .DOBDO(NLW_data_reg_1_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "image_handler/ts/name/data" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "7" *) 
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    data_reg_1_7
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(data_reg_0_7_n_0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_data_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_data_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_data_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_data_reg_1_7_DOADO_UNCONNECTED[31:1],out[7]}),
        .DOBDO(NLW_data_reg_1_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_data_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_data_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module startScreen
   (DOADO,
    out,
    data_reg,
    A,
    p_tick,
    clk_IBUF_BUFG,
    B,
    addr_title1_0,
    E,
    addr_title0__0,
    Q);
  output [7:0]DOADO;
  output [6:0]out;
  output [6:0]data_reg;
  input [10:0]A;
  input p_tick;
  input clk_IBUF_BUFG;
  input [9:0]B;
  input [10:0]addr_title1_0;
  input [0:0]E;
  input addr_title0__0;
  input [14:0]Q;

  wire [10:0]A;
  wire [9:0]B;
  wire [7:0]DOADO;
  wire [0:0]E;
  wire [14:0]Q;
  wire [11:0]addr_start;
  wire addr_start0_n_100;
  wire addr_start0_n_101;
  wire addr_start0_n_102;
  wire addr_start0_n_103;
  wire addr_start0_n_104;
  wire addr_start0_n_105;
  wire addr_start0_n_94;
  wire addr_start0_n_95;
  wire addr_start0_n_96;
  wire addr_start0_n_97;
  wire addr_start0_n_98;
  wire addr_start0_n_99;
  wire addr_start1_n_106;
  wire addr_start1_n_107;
  wire addr_start1_n_108;
  wire addr_start1_n_109;
  wire addr_start1_n_110;
  wire addr_start1_n_111;
  wire addr_start1_n_112;
  wire addr_start1_n_113;
  wire addr_start1_n_114;
  wire addr_start1_n_115;
  wire addr_start1_n_116;
  wire addr_start1_n_117;
  wire addr_start1_n_118;
  wire addr_start1_n_119;
  wire addr_start1_n_120;
  wire addr_start1_n_121;
  wire addr_start1_n_122;
  wire addr_start1_n_123;
  wire addr_start1_n_124;
  wire addr_start1_n_125;
  wire addr_start1_n_126;
  wire addr_start1_n_127;
  wire addr_start1_n_128;
  wire addr_start1_n_129;
  wire addr_start1_n_130;
  wire addr_start1_n_131;
  wire addr_start1_n_132;
  wire addr_start1_n_133;
  wire addr_start1_n_134;
  wire addr_start1_n_135;
  wire addr_start1_n_136;
  wire addr_start1_n_137;
  wire addr_start1_n_138;
  wire addr_start1_n_139;
  wire addr_start1_n_140;
  wire addr_start1_n_141;
  wire addr_start1_n_142;
  wire addr_start1_n_143;
  wire addr_start1_n_144;
  wire addr_start1_n_145;
  wire addr_start1_n_146;
  wire addr_start1_n_147;
  wire addr_start1_n_148;
  wire addr_start1_n_149;
  wire addr_start1_n_150;
  wire addr_start1_n_151;
  wire addr_start1_n_152;
  wire addr_start1_n_153;
  wire [14:0]addr_title;
  wire addr_title0__0;
  wire addr_title0_n_100;
  wire addr_title0_n_101;
  wire addr_title0_n_102;
  wire addr_title0_n_103;
  wire addr_title0_n_104;
  wire addr_title0_n_105;
  wire addr_title0_n_91;
  wire addr_title0_n_92;
  wire addr_title0_n_93;
  wire addr_title0_n_94;
  wire addr_title0_n_95;
  wire addr_title0_n_96;
  wire addr_title0_n_97;
  wire addr_title0_n_98;
  wire addr_title0_n_99;
  wire [10:0]addr_title1_0;
  wire addr_title1_n_106;
  wire addr_title1_n_107;
  wire addr_title1_n_108;
  wire addr_title1_n_109;
  wire addr_title1_n_110;
  wire addr_title1_n_111;
  wire addr_title1_n_112;
  wire addr_title1_n_113;
  wire addr_title1_n_114;
  wire addr_title1_n_115;
  wire addr_title1_n_116;
  wire addr_title1_n_117;
  wire addr_title1_n_118;
  wire addr_title1_n_119;
  wire addr_title1_n_120;
  wire addr_title1_n_121;
  wire addr_title1_n_122;
  wire addr_title1_n_123;
  wire addr_title1_n_124;
  wire addr_title1_n_125;
  wire addr_title1_n_126;
  wire addr_title1_n_127;
  wire addr_title1_n_128;
  wire addr_title1_n_129;
  wire addr_title1_n_130;
  wire addr_title1_n_131;
  wire addr_title1_n_132;
  wire addr_title1_n_133;
  wire addr_title1_n_134;
  wire addr_title1_n_135;
  wire addr_title1_n_136;
  wire addr_title1_n_137;
  wire addr_title1_n_138;
  wire addr_title1_n_139;
  wire addr_title1_n_140;
  wire addr_title1_n_141;
  wire addr_title1_n_142;
  wire addr_title1_n_143;
  wire addr_title1_n_144;
  wire addr_title1_n_145;
  wire addr_title1_n_146;
  wire addr_title1_n_147;
  wire addr_title1_n_148;
  wire addr_title1_n_149;
  wire addr_title1_n_150;
  wire addr_title1_n_151;
  wire addr_title1_n_152;
  wire addr_title1_n_153;
  wire clk_IBUF_BUFG;
  wire [6:0]data_reg;
  wire [6:0]out;
  wire p_tick;
  wire NLW_addr_start0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_start0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_start0_OVERFLOW_UNCONNECTED;
  wire NLW_addr_start0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_start0_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_start0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_start0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_start0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_start0_CARRYOUT_UNCONNECTED;
  wire [47:12]NLW_addr_start0_P_UNCONNECTED;
  wire [47:0]NLW_addr_start0_PCOUT_UNCONNECTED;
  wire NLW_addr_start1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_start1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_start1_OVERFLOW_UNCONNECTED;
  wire NLW_addr_start1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_start1_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_start1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_start1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_start1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_start1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_addr_start1_P_UNCONNECTED;
  wire NLW_addr_title0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_title0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_title0_OVERFLOW_UNCONNECTED;
  wire NLW_addr_title0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_title0_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_title0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_title0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_title0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_title0_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_addr_title0_P_UNCONNECTED;
  wire [47:0]NLW_addr_title0_PCOUT_UNCONNECTED;
  wire NLW_addr_title1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_title1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_title1_OVERFLOW_UNCONNECTED;
  wire NLW_addr_title1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_title1_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_title1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_title1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_title1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_title1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_addr_title1_P_UNCONNECTED;

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
    addr_start0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_start0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_start0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_start0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_start0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_tick),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(p_tick),
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
        .MULTSIGNOUT(NLW_addr_start0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_addr_start0_OVERFLOW_UNCONNECTED),
        .P({NLW_addr_start0_P_UNCONNECTED[47:12],addr_start0_n_94,addr_start0_n_95,addr_start0_n_96,addr_start0_n_97,addr_start0_n_98,addr_start0_n_99,addr_start0_n_100,addr_start0_n_101,addr_start0_n_102,addr_start0_n_103,addr_start0_n_104,addr_start0_n_105}),
        .PATTERNBDETECT(NLW_addr_start0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_start0_PATTERNDETECT_UNCONNECTED),
        .PCIN({addr_start1_n_106,addr_start1_n_107,addr_start1_n_108,addr_start1_n_109,addr_start1_n_110,addr_start1_n_111,addr_start1_n_112,addr_start1_n_113,addr_start1_n_114,addr_start1_n_115,addr_start1_n_116,addr_start1_n_117,addr_start1_n_118,addr_start1_n_119,addr_start1_n_120,addr_start1_n_121,addr_start1_n_122,addr_start1_n_123,addr_start1_n_124,addr_start1_n_125,addr_start1_n_126,addr_start1_n_127,addr_start1_n_128,addr_start1_n_129,addr_start1_n_130,addr_start1_n_131,addr_start1_n_132,addr_start1_n_133,addr_start1_n_134,addr_start1_n_135,addr_start1_n_136,addr_start1_n_137,addr_start1_n_138,addr_start1_n_139,addr_start1_n_140,addr_start1_n_141,addr_start1_n_142,addr_start1_n_143,addr_start1_n_144,addr_start1_n_145,addr_start1_n_146,addr_start1_n_147,addr_start1_n_148,addr_start1_n_149,addr_start1_n_150,addr_start1_n_151,addr_start1_n_152,addr_start1_n_153}),
        .PCOUT(NLW_addr_start0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_addr_start0_UNDERFLOW_UNCONNECTED));
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
    addr_start1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[10],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_start1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_start1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_start1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_start1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_addr_start1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_addr_start1_OVERFLOW_UNCONNECTED),
        .P(NLW_addr_start1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_addr_start1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_start1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({addr_start1_n_106,addr_start1_n_107,addr_start1_n_108,addr_start1_n_109,addr_start1_n_110,addr_start1_n_111,addr_start1_n_112,addr_start1_n_113,addr_start1_n_114,addr_start1_n_115,addr_start1_n_116,addr_start1_n_117,addr_start1_n_118,addr_start1_n_119,addr_start1_n_120,addr_start1_n_121,addr_start1_n_122,addr_start1_n_123,addr_start1_n_124,addr_start1_n_125,addr_start1_n_126,addr_start1_n_127,addr_start1_n_128,addr_start1_n_129,addr_start1_n_130,addr_start1_n_131,addr_start1_n_132,addr_start1_n_133,addr_start1_n_134,addr_start1_n_135,addr_start1_n_136,addr_start1_n_137,addr_start1_n_138,addr_start1_n_139,addr_start1_n_140,addr_start1_n_141,addr_start1_n_142,addr_start1_n_143,addr_start1_n_144,addr_start1_n_145,addr_start1_n_146,addr_start1_n_147,addr_start1_n_148,addr_start1_n_149,addr_start1_n_150,addr_start1_n_151,addr_start1_n_152,addr_start1_n_153}),
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
        .UNDERFLOW(NLW_addr_start1_UNDERFLOW_UNCONNECTED));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[0] 
       (.CLR(1'b0),
        .D(addr_start0_n_105),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[10] 
       (.CLR(1'b0),
        .D(addr_start0_n_95),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[11] 
       (.CLR(1'b0),
        .D(addr_start0_n_94),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[1] 
       (.CLR(1'b0),
        .D(addr_start0_n_104),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[2] 
       (.CLR(1'b0),
        .D(addr_start0_n_103),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[3] 
       (.CLR(1'b0),
        .D(addr_start0_n_102),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[4] 
       (.CLR(1'b0),
        .D(addr_start0_n_101),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[5] 
       (.CLR(1'b0),
        .D(addr_start0_n_100),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[6] 
       (.CLR(1'b0),
        .D(addr_start0_n_99),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[7] 
       (.CLR(1'b0),
        .D(addr_start0_n_98),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[8] 
       (.CLR(1'b0),
        .D(addr_start0_n_97),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_start_reg[9] 
       (.CLR(1'b0),
        .D(addr_start0_n_96),
        .G(E),
        .GE(1'b1),
        .Q(addr_start[9]));
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
    addr_title0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_title0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_title0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_title0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_title0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_tick),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(p_tick),
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
        .MULTSIGNOUT(NLW_addr_title0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_addr_title0_OVERFLOW_UNCONNECTED),
        .P({NLW_addr_title0_P_UNCONNECTED[47:15],addr_title0_n_91,addr_title0_n_92,addr_title0_n_93,addr_title0_n_94,addr_title0_n_95,addr_title0_n_96,addr_title0_n_97,addr_title0_n_98,addr_title0_n_99,addr_title0_n_100,addr_title0_n_101,addr_title0_n_102,addr_title0_n_103,addr_title0_n_104,addr_title0_n_105}),
        .PATTERNBDETECT(NLW_addr_title0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_title0_PATTERNDETECT_UNCONNECTED),
        .PCIN({addr_title1_n_106,addr_title1_n_107,addr_title1_n_108,addr_title1_n_109,addr_title1_n_110,addr_title1_n_111,addr_title1_n_112,addr_title1_n_113,addr_title1_n_114,addr_title1_n_115,addr_title1_n_116,addr_title1_n_117,addr_title1_n_118,addr_title1_n_119,addr_title1_n_120,addr_title1_n_121,addr_title1_n_122,addr_title1_n_123,addr_title1_n_124,addr_title1_n_125,addr_title1_n_126,addr_title1_n_127,addr_title1_n_128,addr_title1_n_129,addr_title1_n_130,addr_title1_n_131,addr_title1_n_132,addr_title1_n_133,addr_title1_n_134,addr_title1_n_135,addr_title1_n_136,addr_title1_n_137,addr_title1_n_138,addr_title1_n_139,addr_title1_n_140,addr_title1_n_141,addr_title1_n_142,addr_title1_n_143,addr_title1_n_144,addr_title1_n_145,addr_title1_n_146,addr_title1_n_147,addr_title1_n_148,addr_title1_n_149,addr_title1_n_150,addr_title1_n_151,addr_title1_n_152,addr_title1_n_153}),
        .PCOUT(NLW_addr_title0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_addr_title0_UNDERFLOW_UNCONNECTED));
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
    addr_title1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr_title1_0[10],addr_title1_0[10],addr_title1_0[10],addr_title1_0[10],addr_title1_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_title1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_title1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_title1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_title1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_addr_title1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_addr_title1_OVERFLOW_UNCONNECTED),
        .P(NLW_addr_title1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_addr_title1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_title1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({addr_title1_n_106,addr_title1_n_107,addr_title1_n_108,addr_title1_n_109,addr_title1_n_110,addr_title1_n_111,addr_title1_n_112,addr_title1_n_113,addr_title1_n_114,addr_title1_n_115,addr_title1_n_116,addr_title1_n_117,addr_title1_n_118,addr_title1_n_119,addr_title1_n_120,addr_title1_n_121,addr_title1_n_122,addr_title1_n_123,addr_title1_n_124,addr_title1_n_125,addr_title1_n_126,addr_title1_n_127,addr_title1_n_128,addr_title1_n_129,addr_title1_n_130,addr_title1_n_131,addr_title1_n_132,addr_title1_n_133,addr_title1_n_134,addr_title1_n_135,addr_title1_n_136,addr_title1_n_137,addr_title1_n_138,addr_title1_n_139,addr_title1_n_140,addr_title1_n_141,addr_title1_n_142,addr_title1_n_143,addr_title1_n_144,addr_title1_n_145,addr_title1_n_146,addr_title1_n_147,addr_title1_n_148,addr_title1_n_149,addr_title1_n_150,addr_title1_n_151,addr_title1_n_152,addr_title1_n_153}),
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
        .UNDERFLOW(NLW_addr_title1_UNDERFLOW_UNCONNECTED));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[0] 
       (.CLR(1'b0),
        .D(addr_title0_n_105),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[10] 
       (.CLR(1'b0),
        .D(addr_title0_n_95),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[11] 
       (.CLR(1'b0),
        .D(addr_title0_n_94),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[12] 
       (.CLR(1'b0),
        .D(addr_title0_n_93),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[13] 
       (.CLR(1'b0),
        .D(addr_title0_n_92),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[14] 
       (.CLR(1'b0),
        .D(addr_title0_n_91),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[1] 
       (.CLR(1'b0),
        .D(addr_title0_n_104),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[2] 
       (.CLR(1'b0),
        .D(addr_title0_n_103),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[3] 
       (.CLR(1'b0),
        .D(addr_title0_n_102),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[4] 
       (.CLR(1'b0),
        .D(addr_title0_n_101),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[5] 
       (.CLR(1'b0),
        .D(addr_title0_n_100),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[6] 
       (.CLR(1'b0),
        .D(addr_title0_n_99),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[7] 
       (.CLR(1'b0),
        .D(addr_title0_n_98),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[8] 
       (.CLR(1'b0),
        .D(addr_title0_n_97),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_title_reg[9] 
       (.CLR(1'b0),
        .D(addr_title0_n_96),
        .G(addr_title0__0),
        .GE(1'b1),
        .Q(addr_title[9]));
  spriteROM__parameterized0 start
       (.DOADO(DOADO),
        .Q(addr_start),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  spriteROM underpug
       (.Q(addr_title),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_reg(data_reg),
        .data_reg_0_7_0(Q),
        .out(out));
endmodule

module titleScreen
   (Q,
    out,
    A,
    p_tick,
    clk_IBUF_BUFG,
    B,
    addr_title1_0,
    E,
    data_reg_0_7);
  output [14:0]Q;
  output [7:0]out;
  input [10:0]A;
  input p_tick;
  input clk_IBUF_BUFG;
  input [9:0]B;
  input [10:0]addr_title1_0;
  input [0:0]E;
  input [0:0]data_reg_0_7;

  wire [10:0]A;
  wire [9:0]B;
  wire [0:0]E;
  wire [14:0]Q;
  wire [15:0]addr_name;
  wire addr_name0_n_100;
  wire addr_name0_n_101;
  wire addr_name0_n_102;
  wire addr_name0_n_103;
  wire addr_name0_n_104;
  wire addr_name0_n_105;
  wire addr_name0_n_90;
  wire addr_name0_n_91;
  wire addr_name0_n_92;
  wire addr_name0_n_93;
  wire addr_name0_n_94;
  wire addr_name0_n_95;
  wire addr_name0_n_96;
  wire addr_name0_n_97;
  wire addr_name0_n_98;
  wire addr_name0_n_99;
  wire addr_name1_n_106;
  wire addr_name1_n_107;
  wire addr_name1_n_108;
  wire addr_name1_n_109;
  wire addr_name1_n_110;
  wire addr_name1_n_111;
  wire addr_name1_n_112;
  wire addr_name1_n_113;
  wire addr_name1_n_114;
  wire addr_name1_n_115;
  wire addr_name1_n_116;
  wire addr_name1_n_117;
  wire addr_name1_n_118;
  wire addr_name1_n_119;
  wire addr_name1_n_120;
  wire addr_name1_n_121;
  wire addr_name1_n_122;
  wire addr_name1_n_123;
  wire addr_name1_n_124;
  wire addr_name1_n_125;
  wire addr_name1_n_126;
  wire addr_name1_n_127;
  wire addr_name1_n_128;
  wire addr_name1_n_129;
  wire addr_name1_n_130;
  wire addr_name1_n_131;
  wire addr_name1_n_132;
  wire addr_name1_n_133;
  wire addr_name1_n_134;
  wire addr_name1_n_135;
  wire addr_name1_n_136;
  wire addr_name1_n_137;
  wire addr_name1_n_138;
  wire addr_name1_n_139;
  wire addr_name1_n_140;
  wire addr_name1_n_141;
  wire addr_name1_n_142;
  wire addr_name1_n_143;
  wire addr_name1_n_144;
  wire addr_name1_n_145;
  wire addr_name1_n_146;
  wire addr_name1_n_147;
  wire addr_name1_n_148;
  wire addr_name1_n_149;
  wire addr_name1_n_150;
  wire addr_name1_n_151;
  wire addr_name1_n_152;
  wire addr_name1_n_153;
  wire addr_title0_n_100;
  wire addr_title0_n_101;
  wire addr_title0_n_102;
  wire addr_title0_n_103;
  wire addr_title0_n_104;
  wire addr_title0_n_105;
  wire addr_title0_n_91;
  wire addr_title0_n_92;
  wire addr_title0_n_93;
  wire addr_title0_n_94;
  wire addr_title0_n_95;
  wire addr_title0_n_96;
  wire addr_title0_n_97;
  wire addr_title0_n_98;
  wire addr_title0_n_99;
  wire [10:0]addr_title1_0;
  wire addr_title1_n_106;
  wire addr_title1_n_107;
  wire addr_title1_n_108;
  wire addr_title1_n_109;
  wire addr_title1_n_110;
  wire addr_title1_n_111;
  wire addr_title1_n_112;
  wire addr_title1_n_113;
  wire addr_title1_n_114;
  wire addr_title1_n_115;
  wire addr_title1_n_116;
  wire addr_title1_n_117;
  wire addr_title1_n_118;
  wire addr_title1_n_119;
  wire addr_title1_n_120;
  wire addr_title1_n_121;
  wire addr_title1_n_122;
  wire addr_title1_n_123;
  wire addr_title1_n_124;
  wire addr_title1_n_125;
  wire addr_title1_n_126;
  wire addr_title1_n_127;
  wire addr_title1_n_128;
  wire addr_title1_n_129;
  wire addr_title1_n_130;
  wire addr_title1_n_131;
  wire addr_title1_n_132;
  wire addr_title1_n_133;
  wire addr_title1_n_134;
  wire addr_title1_n_135;
  wire addr_title1_n_136;
  wire addr_title1_n_137;
  wire addr_title1_n_138;
  wire addr_title1_n_139;
  wire addr_title1_n_140;
  wire addr_title1_n_141;
  wire addr_title1_n_142;
  wire addr_title1_n_143;
  wire addr_title1_n_144;
  wire addr_title1_n_145;
  wire addr_title1_n_146;
  wire addr_title1_n_147;
  wire addr_title1_n_148;
  wire addr_title1_n_149;
  wire addr_title1_n_150;
  wire addr_title1_n_151;
  wire addr_title1_n_152;
  wire addr_title1_n_153;
  wire clk_IBUF_BUFG;
  wire [0:0]data_reg_0_7;
  wire [7:0]out;
  wire p_tick;
  wire NLW_addr_name0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_name0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_name0_OVERFLOW_UNCONNECTED;
  wire NLW_addr_name0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_name0_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_name0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_name0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_name0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_name0_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_addr_name0_P_UNCONNECTED;
  wire [47:0]NLW_addr_name0_PCOUT_UNCONNECTED;
  wire NLW_addr_name1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_name1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_name1_OVERFLOW_UNCONNECTED;
  wire NLW_addr_name1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_name1_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_name1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_name1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_name1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_name1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_addr_name1_P_UNCONNECTED;
  wire NLW_addr_title0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_title0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_title0_OVERFLOW_UNCONNECTED;
  wire NLW_addr_title0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_title0_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_title0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_title0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_title0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_title0_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_addr_title0_P_UNCONNECTED;
  wire [47:0]NLW_addr_title0_PCOUT_UNCONNECTED;
  wire NLW_addr_title1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_addr_title1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_addr_title1_OVERFLOW_UNCONNECTED;
  wire NLW_addr_title1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_addr_title1_PATTERNDETECT_UNCONNECTED;
  wire NLW_addr_title1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_addr_title1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_addr_title1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_addr_title1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_addr_title1_P_UNCONNECTED;

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
    addr_name0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_name0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_name0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_name0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_name0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_tick),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(p_tick),
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
        .MULTSIGNOUT(NLW_addr_name0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_addr_name0_OVERFLOW_UNCONNECTED),
        .P({NLW_addr_name0_P_UNCONNECTED[47:16],addr_name0_n_90,addr_name0_n_91,addr_name0_n_92,addr_name0_n_93,addr_name0_n_94,addr_name0_n_95,addr_name0_n_96,addr_name0_n_97,addr_name0_n_98,addr_name0_n_99,addr_name0_n_100,addr_name0_n_101,addr_name0_n_102,addr_name0_n_103,addr_name0_n_104,addr_name0_n_105}),
        .PATTERNBDETECT(NLW_addr_name0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_name0_PATTERNDETECT_UNCONNECTED),
        .PCIN({addr_name1_n_106,addr_name1_n_107,addr_name1_n_108,addr_name1_n_109,addr_name1_n_110,addr_name1_n_111,addr_name1_n_112,addr_name1_n_113,addr_name1_n_114,addr_name1_n_115,addr_name1_n_116,addr_name1_n_117,addr_name1_n_118,addr_name1_n_119,addr_name1_n_120,addr_name1_n_121,addr_name1_n_122,addr_name1_n_123,addr_name1_n_124,addr_name1_n_125,addr_name1_n_126,addr_name1_n_127,addr_name1_n_128,addr_name1_n_129,addr_name1_n_130,addr_name1_n_131,addr_name1_n_132,addr_name1_n_133,addr_name1_n_134,addr_name1_n_135,addr_name1_n_136,addr_name1_n_137,addr_name1_n_138,addr_name1_n_139,addr_name1_n_140,addr_name1_n_141,addr_name1_n_142,addr_name1_n_143,addr_name1_n_144,addr_name1_n_145,addr_name1_n_146,addr_name1_n_147,addr_name1_n_148,addr_name1_n_149,addr_name1_n_150,addr_name1_n_151,addr_name1_n_152,addr_name1_n_153}),
        .PCOUT(NLW_addr_name0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_addr_name0_UNDERFLOW_UNCONNECTED));
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
    addr_name1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[10],A[10],A[10],A[10],A[10],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_name1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_name1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_name1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_name1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_addr_name1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_addr_name1_OVERFLOW_UNCONNECTED),
        .P(NLW_addr_name1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_addr_name1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_name1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({addr_name1_n_106,addr_name1_n_107,addr_name1_n_108,addr_name1_n_109,addr_name1_n_110,addr_name1_n_111,addr_name1_n_112,addr_name1_n_113,addr_name1_n_114,addr_name1_n_115,addr_name1_n_116,addr_name1_n_117,addr_name1_n_118,addr_name1_n_119,addr_name1_n_120,addr_name1_n_121,addr_name1_n_122,addr_name1_n_123,addr_name1_n_124,addr_name1_n_125,addr_name1_n_126,addr_name1_n_127,addr_name1_n_128,addr_name1_n_129,addr_name1_n_130,addr_name1_n_131,addr_name1_n_132,addr_name1_n_133,addr_name1_n_134,addr_name1_n_135,addr_name1_n_136,addr_name1_n_137,addr_name1_n_138,addr_name1_n_139,addr_name1_n_140,addr_name1_n_141,addr_name1_n_142,addr_name1_n_143,addr_name1_n_144,addr_name1_n_145,addr_name1_n_146,addr_name1_n_147,addr_name1_n_148,addr_name1_n_149,addr_name1_n_150,addr_name1_n_151,addr_name1_n_152,addr_name1_n_153}),
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
        .UNDERFLOW(NLW_addr_name1_UNDERFLOW_UNCONNECTED));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[0] 
       (.CLR(1'b0),
        .D(addr_name0_n_105),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[10] 
       (.CLR(1'b0),
        .D(addr_name0_n_95),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[11] 
       (.CLR(1'b0),
        .D(addr_name0_n_94),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[12] 
       (.CLR(1'b0),
        .D(addr_name0_n_93),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[13] 
       (.CLR(1'b0),
        .D(addr_name0_n_92),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[14] 
       (.CLR(1'b0),
        .D(addr_name0_n_91),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[15] 
       (.CLR(1'b0),
        .D(addr_name0_n_90),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[1] 
       (.CLR(1'b0),
        .D(addr_name0_n_104),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[2] 
       (.CLR(1'b0),
        .D(addr_name0_n_103),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[3] 
       (.CLR(1'b0),
        .D(addr_name0_n_102),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[4] 
       (.CLR(1'b0),
        .D(addr_name0_n_101),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[5] 
       (.CLR(1'b0),
        .D(addr_name0_n_100),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[6] 
       (.CLR(1'b0),
        .D(addr_name0_n_99),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[7] 
       (.CLR(1'b0),
        .D(addr_name0_n_98),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[8] 
       (.CLR(1'b0),
        .D(addr_name0_n_97),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_name_reg[9] 
       (.CLR(1'b0),
        .D(addr_name0_n_96),
        .G(E),
        .GE(1'b1),
        .Q(addr_name[9]));
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
    addr_title0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_title0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_title0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_title0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_title0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_tick),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(p_tick),
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
        .MULTSIGNOUT(NLW_addr_title0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_addr_title0_OVERFLOW_UNCONNECTED),
        .P({NLW_addr_title0_P_UNCONNECTED[47:15],addr_title0_n_91,addr_title0_n_92,addr_title0_n_93,addr_title0_n_94,addr_title0_n_95,addr_title0_n_96,addr_title0_n_97,addr_title0_n_98,addr_title0_n_99,addr_title0_n_100,addr_title0_n_101,addr_title0_n_102,addr_title0_n_103,addr_title0_n_104,addr_title0_n_105}),
        .PATTERNBDETECT(NLW_addr_title0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_title0_PATTERNDETECT_UNCONNECTED),
        .PCIN({addr_title1_n_106,addr_title1_n_107,addr_title1_n_108,addr_title1_n_109,addr_title1_n_110,addr_title1_n_111,addr_title1_n_112,addr_title1_n_113,addr_title1_n_114,addr_title1_n_115,addr_title1_n_116,addr_title1_n_117,addr_title1_n_118,addr_title1_n_119,addr_title1_n_120,addr_title1_n_121,addr_title1_n_122,addr_title1_n_123,addr_title1_n_124,addr_title1_n_125,addr_title1_n_126,addr_title1_n_127,addr_title1_n_128,addr_title1_n_129,addr_title1_n_130,addr_title1_n_131,addr_title1_n_132,addr_title1_n_133,addr_title1_n_134,addr_title1_n_135,addr_title1_n_136,addr_title1_n_137,addr_title1_n_138,addr_title1_n_139,addr_title1_n_140,addr_title1_n_141,addr_title1_n_142,addr_title1_n_143,addr_title1_n_144,addr_title1_n_145,addr_title1_n_146,addr_title1_n_147,addr_title1_n_148,addr_title1_n_149,addr_title1_n_150,addr_title1_n_151,addr_title1_n_152,addr_title1_n_153}),
        .PCOUT(NLW_addr_title0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_addr_title0_UNDERFLOW_UNCONNECTED));
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
    addr_title1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr_title1_0[10],addr_title1_0[10],addr_title1_0[10],addr_title1_0[10],addr_title1_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_addr_title1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_addr_title1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_addr_title1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_addr_title1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_addr_title1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_addr_title1_OVERFLOW_UNCONNECTED),
        .P(NLW_addr_title1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_addr_title1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_addr_title1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({addr_title1_n_106,addr_title1_n_107,addr_title1_n_108,addr_title1_n_109,addr_title1_n_110,addr_title1_n_111,addr_title1_n_112,addr_title1_n_113,addr_title1_n_114,addr_title1_n_115,addr_title1_n_116,addr_title1_n_117,addr_title1_n_118,addr_title1_n_119,addr_title1_n_120,addr_title1_n_121,addr_title1_n_122,addr_title1_n_123,addr_title1_n_124,addr_title1_n_125,addr_title1_n_126,addr_title1_n_127,addr_title1_n_128,addr_title1_n_129,addr_title1_n_130,addr_title1_n_131,addr_title1_n_132,addr_title1_n_133,addr_title1_n_134,addr_title1_n_135,addr_title1_n_136,addr_title1_n_137,addr_title1_n_138,addr_title1_n_139,addr_title1_n_140,addr_title1_n_141,addr_title1_n_142,addr_title1_n_143,addr_title1_n_144,addr_title1_n_145,addr_title1_n_146,addr_title1_n_147,addr_title1_n_148,addr_title1_n_149,addr_title1_n_150,addr_title1_n_151,addr_title1_n_152,addr_title1_n_153}),
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
        .UNDERFLOW(NLW_addr_title1_UNDERFLOW_UNCONNECTED));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[0] 
       (.CLR(1'b0),
        .D(addr_title0_n_105),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[10] 
       (.CLR(1'b0),
        .D(addr_title0_n_95),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[11] 
       (.CLR(1'b0),
        .D(addr_title0_n_94),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[12] 
       (.CLR(1'b0),
        .D(addr_title0_n_93),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[13] 
       (.CLR(1'b0),
        .D(addr_title0_n_92),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[14] 
       (.CLR(1'b0),
        .D(addr_title0_n_91),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[1] 
       (.CLR(1'b0),
        .D(addr_title0_n_104),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[2] 
       (.CLR(1'b0),
        .D(addr_title0_n_103),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[3] 
       (.CLR(1'b0),
        .D(addr_title0_n_102),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[4] 
       (.CLR(1'b0),
        .D(addr_title0_n_101),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[5] 
       (.CLR(1'b0),
        .D(addr_title0_n_100),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[6] 
       (.CLR(1'b0),
        .D(addr_title0_n_99),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[7] 
       (.CLR(1'b0),
        .D(addr_title0_n_98),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[8] 
       (.CLR(1'b0),
        .D(addr_title0_n_97),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \addr_title_reg[9] 
       (.CLR(1'b0),
        .D(addr_title0_n_96),
        .G(data_reg_0_7),
        .GE(1'b1),
        .Q(Q[9]));
  spriteROM__parameterized1 name
       (.Q(addr_name),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(out));
endmodule

module vga
   (Hsync_OBUF,
    Vsync_OBUF,
    vgaBlue_OBUF,
    vgaGreen_OBUF,
    vgaRed_OBUF,
    clk_IBUF_BUFG,
    Q,
    \data_reg[7]_0 );
  output Hsync_OBUF;
  output Vsync_OBUF;
  output [3:0]vgaBlue_OBUF;
  output [3:0]vgaGreen_OBUF;
  output [2:0]vgaRed_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input \data_reg[7]_0 ;

  wire [7:1]A;
  wire Hsync_OBUF;
  wire [0:0]Q;
  wire Vsync_OBUF;
  wire [14:0]addr_title;
  wire addr_title0__0;
  wire addr_title0__0_1;
  wire clk_IBUF_BUFG;
  wire [7:0]data;
  wire \data_reg[7]_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[3] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire [7:0]\name/data_reg ;
  wire p_tick;
  wire [7:0]\start/data_reg__0 ;
  wire [7:0]\underpug/data_reg ;
  wire [7:0]\underpug/data_reg_0 ;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen_OBUF;
  wire [2:0]vgaRed_OBUF;
  wire vga_sync_unit_n_10;
  wire vga_sync_unit_n_11;
  wire vga_sync_unit_n_14;
  wire vga_sync_unit_n_15;
  wire vga_sync_unit_n_16;
  wire vga_sync_unit_n_17;
  wire vga_sync_unit_n_18;
  wire vga_sync_unit_n_19;
  wire vga_sync_unit_n_2;
  wire vga_sync_unit_n_20;
  wire vga_sync_unit_n_3;
  wire vga_sync_unit_n_33;
  wire vga_sync_unit_n_34;
  wire vga_sync_unit_n_35;
  wire vga_sync_unit_n_36;
  wire vga_sync_unit_n_37;
  wire vga_sync_unit_n_38;
  wire vga_sync_unit_n_39;
  wire vga_sync_unit_n_4;
  wire vga_sync_unit_n_40;
  wire vga_sync_unit_n_41;
  wire vga_sync_unit_n_42;
  wire vga_sync_unit_n_43;
  wire vga_sync_unit_n_45;
  wire vga_sync_unit_n_46;
  wire vga_sync_unit_n_47;
  wire vga_sync_unit_n_48;
  wire vga_sync_unit_n_49;
  wire vga_sync_unit_n_5;
  wire vga_sync_unit_n_50;
  wire vga_sync_unit_n_51;
  wire vga_sync_unit_n_52;
  wire vga_sync_unit_n_53;
  wire vga_sync_unit_n_54;
  wire vga_sync_unit_n_55;
  wire vga_sync_unit_n_56;
  wire vga_sync_unit_n_57;
  wire vga_sync_unit_n_58;
  wire vga_sync_unit_n_59;
  wire vga_sync_unit_n_60;
  wire vga_sync_unit_n_61;
  wire vga_sync_unit_n_62;
  wire vga_sync_unit_n_63;
  wire vga_sync_unit_n_64;
  wire vga_sync_unit_n_65;
  wire vga_sync_unit_n_7;
  wire [3:0]y;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[1]),
        .Q(\data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[2]),
        .Q(\data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[3]),
        .Q(\data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[4]),
        .Q(\data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[5]),
        .Q(\data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[6]),
        .Q(\data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data[7]),
        .Q(\data_reg_n_0_[7] ),
        .R(1'b0));
  paletteROM pal
       (.Q({\data_reg_n_0_[7] ,\data_reg_n_0_[6] ,\data_reg_n_0_[5] ,\data_reg_n_0_[4] ,\data_reg_n_0_[3] ,\data_reg_n_0_[2] ,\data_reg_n_0_[1] ,\data_reg_n_0_[0] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\vgaBlue[0] (vga_sync_unit_n_45),
        .vgaBlue_OBUF(vgaBlue_OBUF),
        .vgaGreen_OBUF(vgaGreen_OBUF),
        .vgaRed_OBUF(vgaRed_OBUF));
  startScreen ss
       (.A({vga_sync_unit_n_3,vga_sync_unit_n_4,vga_sync_unit_n_5,A[7],vga_sync_unit_n_7,A[5:4],vga_sync_unit_n_10,vga_sync_unit_n_11,A[1],y[0]}),
        .B({vga_sync_unit_n_34,vga_sync_unit_n_35,vga_sync_unit_n_36,vga_sync_unit_n_37,vga_sync_unit_n_38,vga_sync_unit_n_39,vga_sync_unit_n_40,vga_sync_unit_n_41,vga_sync_unit_n_42,vga_sync_unit_n_43}),
        .DOADO(\start/data_reg__0 ),
        .E(vga_sync_unit_n_2),
        .Q(addr_title),
        .addr_title0__0(addr_title0__0_1),
        .addr_title1_0({vga_sync_unit_n_46,vga_sync_unit_n_47,vga_sync_unit_n_48,vga_sync_unit_n_49,vga_sync_unit_n_50,vga_sync_unit_n_51,vga_sync_unit_n_52,vga_sync_unit_n_53,vga_sync_unit_n_54,vga_sync_unit_n_55,vga_sync_unit_n_56}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_reg({\underpug/data_reg [7],\underpug/data_reg [5:0]}),
        .out({\underpug/data_reg_0 [7],\underpug/data_reg_0 [5:0]}),
        .p_tick(p_tick));
  titleScreen ts
       (.A({vga_sync_unit_n_14,vga_sync_unit_n_15,vga_sync_unit_n_16,vga_sync_unit_n_17,vga_sync_unit_n_18,vga_sync_unit_n_19,vga_sync_unit_n_20,y}),
        .B({vga_sync_unit_n_34,vga_sync_unit_n_35,vga_sync_unit_n_36,vga_sync_unit_n_37,vga_sync_unit_n_38,vga_sync_unit_n_39,vga_sync_unit_n_40,vga_sync_unit_n_41,vga_sync_unit_n_42,vga_sync_unit_n_43}),
        .E(vga_sync_unit_n_33),
        .Q(addr_title),
        .addr_title1_0({vga_sync_unit_n_57,vga_sync_unit_n_58,vga_sync_unit_n_59,vga_sync_unit_n_60,vga_sync_unit_n_61,vga_sync_unit_n_62,vga_sync_unit_n_63,vga_sync_unit_n_64,vga_sync_unit_n_65,vga_sync_unit_n_55,vga_sync_unit_n_56}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_reg_0_7(addr_title0__0),
        .out(\name/data_reg ),
        .p_tick(p_tick));
  vga_sync vga_sync_unit
       (.A({vga_sync_unit_n_3,vga_sync_unit_n_4,vga_sync_unit_n_5,A[7],vga_sync_unit_n_7,A[5:4],vga_sync_unit_n_10,vga_sync_unit_n_11,A[1],y[0]}),
        .B({vga_sync_unit_n_34,vga_sync_unit_n_35,vga_sync_unit_n_36,vga_sync_unit_n_37,vga_sync_unit_n_38,vga_sync_unit_n_39,vga_sync_unit_n_40,vga_sync_unit_n_41,vga_sync_unit_n_42,vga_sync_unit_n_43}),
        .D(data),
        .DOADO(\start/data_reg__0 ),
        .E(vga_sync_unit_n_2),
        .Hsync_OBUF(Hsync_OBUF),
        .Q(Q),
        .Vsync_OBUF(Vsync_OBUF),
        .addr_title0__0(addr_title0__0_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_reg({\underpug/data_reg [7],\underpug/data_reg [5:0]}),
        .\data_reg[7] (\data_reg[7]_0 ),
        .\data_reg[7]_0 ({\underpug/data_reg_0 [7],\underpug/data_reg_0 [5:0]}),
        .\h_count_reg_reg[9]_0 (addr_title0__0),
        .out(\name/data_reg ),
        .p_tick(p_tick),
        .\v_count_reg_reg[5]_0 ({vga_sync_unit_n_14,vga_sync_unit_n_15,vga_sync_unit_n_16,vga_sync_unit_n_17,vga_sync_unit_n_18,vga_sync_unit_n_19,vga_sync_unit_n_20,y[3:1]}),
        .\v_count_reg_reg[6]_0 (vga_sync_unit_n_45),
        .\v_count_reg_reg[7]_0 (vga_sync_unit_n_33),
        .\v_count_reg_reg[7]_1 ({vga_sync_unit_n_46,vga_sync_unit_n_47,vga_sync_unit_n_48,vga_sync_unit_n_49,vga_sync_unit_n_50,vga_sync_unit_n_51,vga_sync_unit_n_52,vga_sync_unit_n_53,vga_sync_unit_n_54,vga_sync_unit_n_55,vga_sync_unit_n_56}),
        .\v_count_reg_reg[8]_0 ({vga_sync_unit_n_57,vga_sync_unit_n_58,vga_sync_unit_n_59,vga_sync_unit_n_60,vga_sync_unit_n_61,vga_sync_unit_n_62,vga_sync_unit_n_63,vga_sync_unit_n_64,vga_sync_unit_n_65}));
endmodule

module vga_sync
   (Hsync_OBUF,
    Vsync_OBUF,
    E,
    A,
    \v_count_reg_reg[5]_0 ,
    D,
    addr_title0__0,
    \v_count_reg_reg[7]_0 ,
    B,
    \h_count_reg_reg[9]_0 ,
    \v_count_reg_reg[6]_0 ,
    \v_count_reg_reg[7]_1 ,
    \v_count_reg_reg[8]_0 ,
    p_tick,
    clk_IBUF_BUFG,
    data_reg,
    Q,
    out,
    \data_reg[7] ,
    DOADO,
    \data_reg[7]_0 );
  output Hsync_OBUF;
  output Vsync_OBUF;
  output [0:0]E;
  output [10:0]A;
  output [9:0]\v_count_reg_reg[5]_0 ;
  output [7:0]D;
  output addr_title0__0;
  output [0:0]\v_count_reg_reg[7]_0 ;
  output [9:0]B;
  output [0:0]\h_count_reg_reg[9]_0 ;
  output \v_count_reg_reg[6]_0 ;
  output [10:0]\v_count_reg_reg[7]_1 ;
  output [8:0]\v_count_reg_reg[8]_0 ;
  output p_tick;
  input clk_IBUF_BUFG;
  input [6:0]data_reg;
  input [0:0]Q;
  input [7:0]out;
  input \data_reg[7] ;
  input [7:0]DOADO;
  input [6:0]\data_reg[7]_0 ;

  wire [10:0]A;
  wire [9:0]B;
  wire [7:0]D;
  wire [7:0]DOADO;
  wire [0:0]E;
  wire Hsync_OBUF;
  wire [0:0]Q;
  wire Vsync_OBUF;
  wire \addr_name_reg[15]_i_2_n_0 ;
  wire \addr_name_reg[15]_i_3_n_0 ;
  wire \addr_name_reg[15]_i_4_n_0 ;
  wire \addr_name_reg[15]_i_5_n_0 ;
  wire \addr_name_reg[15]_i_6_n_0 ;
  wire \addr_name_reg[15]_i_7_n_0 ;
  wire \addr_start_reg[11]_i_2_n_0 ;
  wire \addr_start_reg[11]_i_3_n_0 ;
  wire \addr_start_reg[11]_i_4_n_0 ;
  wire \addr_start_reg[11]_i_5_n_0 ;
  wire \addr_start_reg[11]_i_6_n_0 ;
  wire \addr_start_reg[11]_i_7_n_0 ;
  wire \addr_start_reg[11]_i_8_n_0 ;
  wire \addr_start_reg[11]_i_9_n_0 ;
  wire addr_title0__0;
  wire addr_title1_i_11_n_0;
  wire addr_title1_i_12_n_0;
  wire \addr_title_reg[14]_i_2__0_n_0 ;
  wire \addr_title_reg[14]_i_2_n_0 ;
  wire \addr_title_reg[14]_i_3__0_n_0 ;
  wire \addr_title_reg[14]_i_3_n_0 ;
  wire \addr_title_reg[14]_i_4__0_n_0 ;
  wire \addr_title_reg[14]_i_4_n_0 ;
  wire \addr_title_reg[14]_i_5__0_n_0 ;
  wire \addr_title_reg[14]_i_5_n_0 ;
  wire \addr_title_reg[14]_i_6_n_0 ;
  wire \addr_title_reg[14]_i_7_n_0 ;
  wire clk_IBUF_BUFG;
  wire \data[0]_i_2_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_3_n_0 ;
  wire [6:0]data_reg;
  wire \data_reg[7] ;
  wire [6:0]\data_reg[7]_0 ;
  wire \h_count_reg[5]_i_2_n_0 ;
  wire \h_count_reg[5]_i_3_n_0 ;
  wire \h_count_reg[7]_i_2_n_0 ;
  wire \h_count_reg[9]_i_3_n_0 ;
  wire \h_count_reg[9]_i_4_n_0 ;
  wire hsync_next;
  wire [7:0]out;
  wire p_tick;
  wire [1:0]pixel_next;
  wire [1:0]pixel_reg;
  wire v_count_reg0;
  wire \v_count_reg[0]_i_1_n_0 ;
  wire \v_count_reg[2]_i_1_n_0 ;
  wire \v_count_reg[3]_i_1_n_0 ;
  wire \v_count_reg[3]_i_2_n_0 ;
  wire \v_count_reg[6]_i_2_n_0 ;
  wire \v_count_reg[7]_i_1_n_0 ;
  wire \v_count_reg[8]_i_1_n_0 ;
  wire \v_count_reg[9]_i_2_n_0 ;
  wire \v_count_reg[9]_i_3_n_0 ;
  wire \v_count_reg[9]_i_4_n_0 ;
  wire \v_count_reg[9]_i_5_n_0 ;
  wire [9:0]\v_count_reg_reg[5]_0 ;
  wire \v_count_reg_reg[6]_0 ;
  wire [10:0]\v_count_reg_reg[7]_1 ;
  wire [8:0]\v_count_reg_reg[8]_0 ;
  wire \vgaRed_OBUF[2]_inst_i_3_n_0 ;
  wire vsync_next;
  wire [9:0]x;
  wire [9:4]y;

  assign \h_count_reg_reg[9]_0 [0] = \addr_title_reg[14]_i_2_n_0 ;
  assign \v_count_reg_reg[7]_0 [0] = \addr_name_reg[15]_i_2_n_0 ;
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    addr_name1_i_1
       (.I0(y[5]),
        .I1(y[4]),
        .I2(y[7]),
        .I3(y[6]),
        .I4(y[8]),
        .I5(y[9]),
        .O(\v_count_reg_reg[5]_0 [9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA95555555)) 
    addr_name1_i_2
       (.I0(y[9]),
        .I1(y[5]),
        .I2(y[4]),
        .I3(y[7]),
        .I4(y[6]),
        .I5(y[8]),
        .O(\v_count_reg_reg[5]_0 [8]));
  LUT5 #(
    .INIT(32'h95555555)) 
    addr_name1_i_3
       (.I0(y[8]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(y[4]),
        .I4(y[5]),
        .O(\v_count_reg_reg[5]_0 [7]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    addr_name1_i_4
       (.I0(y[7]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(y[6]),
        .O(\v_count_reg_reg[5]_0 [6]));
  LUT3 #(
    .INIT(8'h6A)) 
    addr_name1_i_5
       (.I0(y[6]),
        .I1(y[5]),
        .I2(y[4]),
        .O(\v_count_reg_reg[5]_0 [5]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_name1_i_6
       (.I0(y[4]),
        .I1(y[5]),
        .O(\v_count_reg_reg[5]_0 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    addr_name1_i_7
       (.I0(y[4]),
        .O(\v_count_reg_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \addr_name_reg[15]_i_2 
       (.I0(y[7]),
        .I1(\addr_name_reg[15]_i_3_n_0 ),
        .I2(y[8]),
        .I3(\addr_name_reg[15]_i_4_n_0 ),
        .I4(\addr_name_reg[15]_i_5_n_0 ),
        .I5(\addr_name_reg[15]_i_6_n_0 ),
        .O(\addr_name_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \addr_name_reg[15]_i_3 
       (.I0(y[6]),
        .I1(y[4]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .I5(y[5]),
        .O(\addr_name_reg[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \addr_name_reg[15]_i_4 
       (.I0(y[8]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(y[4]),
        .I4(y[5]),
        .O(\addr_name_reg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \addr_name_reg[15]_i_5 
       (.I0(\addr_name_reg[15]_i_7_n_0 ),
        .I1(x[2]),
        .I2(x[3]),
        .I3(x[1]),
        .I4(x[4]),
        .I5(x[9]),
        .O(\addr_name_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4044444444444444)) 
    \addr_name_reg[15]_i_6 
       (.I0(x[9]),
        .I1(\addr_start_reg[11]_i_5_n_0 ),
        .I2(\addr_start_reg[11]_i_9_n_0 ),
        .I3(x[1]),
        .I4(x[2]),
        .I5(x[3]),
        .O(\addr_name_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \addr_name_reg[15]_i_7 
       (.I0(x[7]),
        .I1(x[8]),
        .I2(x[6]),
        .I3(x[5]),
        .I4(x[9]),
        .I5(y[9]),
        .O(\addr_name_reg[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0455)) 
    addr_start1_i_1
       (.I0(y[9]),
        .I1(\addr_start_reg[11]_i_6_n_0 ),
        .I2(y[7]),
        .I3(y[8]),
        .O(A[10]));
  LUT1 #(
    .INIT(2'h1)) 
    addr_start1_i_10
       (.I0(\v_count_reg_reg[5]_0 [0]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'hA655)) 
    addr_start1_i_2
       (.I0(y[9]),
        .I1(\addr_start_reg[11]_i_6_n_0 ),
        .I2(y[7]),
        .I3(y[8]),
        .O(A[9]));
  LUT3 #(
    .INIT(8'h65)) 
    addr_start1_i_3
       (.I0(y[8]),
        .I1(y[7]),
        .I2(\addr_start_reg[11]_i_6_n_0 ),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA95555)) 
    addr_start1_i_4
       (.I0(y[7]),
        .I1(\v_count_reg_reg[5]_0 [0]),
        .I2(\v_count_reg_reg[5]_0 [1]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg[6]_i_2_n_0 ),
        .I5(y[6]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'h9595959595959555)) 
    addr_start1_i_5
       (.I0(y[6]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .I5(\v_count_reg_reg[5]_0 [0]),
        .O(A[6]));
  LUT5 #(
    .INIT(32'h6666666A)) 
    addr_start1_i_6
       (.I0(y[5]),
        .I1(y[4]),
        .I2(\v_count_reg_reg[5]_0 [2]),
        .I3(\v_count_reg_reg[5]_0 [1]),
        .I4(\v_count_reg_reg[5]_0 [0]),
        .O(A[5]));
  LUT4 #(
    .INIT(16'h5556)) 
    addr_start1_i_7
       (.I0(y[4]),
        .I1(\v_count_reg_reg[5]_0 [0]),
        .I2(\v_count_reg_reg[5]_0 [1]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hA9)) 
    addr_start1_i_8
       (.I0(\v_count_reg_reg[5]_0 [2]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .O(A[3]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_start1_i_9
       (.I0(\v_count_reg_reg[5]_0 [0]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \addr_start_reg[11]_i_1 
       (.I0(\addr_start_reg[11]_i_2_n_0 ),
        .I1(\addr_start_reg[11]_i_3_n_0 ),
        .I2(\addr_start_reg[11]_i_4_n_0 ),
        .I3(\addr_start_reg[11]_i_5_n_0 ),
        .I4(\addr_start_reg[11]_i_6_n_0 ),
        .I5(\addr_start_reg[11]_i_7_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFEEE000000000000)) 
    \addr_start_reg[11]_i_2 
       (.I0(x[4]),
        .I1(\addr_start_reg[11]_i_8_n_0 ),
        .I2(x[3]),
        .I3(x[2]),
        .I4(x[8]),
        .I5(x[7]),
        .O(\addr_start_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \addr_start_reg[11]_i_3 
       (.I0(y[6]),
        .I1(\v_count_reg_reg[5]_0 [2]),
        .I2(y[5]),
        .I3(y[4]),
        .I4(addr_title1_i_12_n_0),
        .I5(\v_count_reg_reg[5]_0 [1]),
        .O(\addr_start_reg[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \addr_start_reg[11]_i_4 
       (.I0(y[9]),
        .I1(x[9]),
        .I2(y[8]),
        .I3(y[7]),
        .O(\addr_start_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \addr_start_reg[11]_i_5 
       (.I0(x[7]),
        .I1(x[8]),
        .O(\addr_start_reg[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1515151515151555)) 
    \addr_start_reg[11]_i_6 
       (.I0(y[6]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .I5(\v_count_reg_reg[5]_0 [0]),
        .O(\addr_start_reg[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF01FF55)) 
    \addr_start_reg[11]_i_7 
       (.I0(x[3]),
        .I1(x[1]),
        .I2(x[0]),
        .I3(\addr_start_reg[11]_i_9_n_0 ),
        .I4(x[2]),
        .I5(x[8]),
        .O(\addr_start_reg[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_start_reg[11]_i_8 
       (.I0(x[5]),
        .I1(x[6]),
        .O(\addr_start_reg[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \addr_start_reg[11]_i_9 
       (.I0(x[6]),
        .I1(x[5]),
        .I2(x[4]),
        .O(\addr_start_reg[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000057)) 
    addr_title1_i_1
       (.I0(y[7]),
        .I1(addr_title1_i_11_n_0),
        .I2(y[6]),
        .I3(y[8]),
        .I4(y[9]),
        .O(\v_count_reg_reg[7]_1 [10]));
  LUT1 #(
    .INIT(2'h1)) 
    addr_title1_i_10
       (.I0(A[0]),
        .O(\v_count_reg_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hFEEEAAAAAAAAAAAA)) 
    addr_title1_i_11
       (.I0(y[5]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(A[0]),
        .I4(\v_count_reg_reg[5]_0 [2]),
        .I5(y[4]),
        .O(addr_title1_i_11_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    addr_title1_i_12
       (.I0(\v_count_reg_reg[5]_0 [0]),
        .I1(A[0]),
        .O(addr_title1_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000011110111)) 
    addr_title1_i_1__0
       (.I0(y[8]),
        .I1(y[7]),
        .I2(\v_count_reg[6]_i_2_n_0 ),
        .I3(y[6]),
        .I4(\v_count_reg[9]_i_4_n_0 ),
        .I5(y[9]),
        .O(\v_count_reg_reg[8]_0 [8]));
  LUT5 #(
    .INIT(32'hAAAA9995)) 
    addr_title1_i_2
       (.I0(y[9]),
        .I1(y[7]),
        .I2(addr_title1_i_11_n_0),
        .I3(y[6]),
        .I4(y[8]),
        .O(\v_count_reg_reg[7]_1 [9]));
  LUT6 #(
    .INIT(64'hA9A9A9A9AAA9A9A9)) 
    addr_title1_i_2__0
       (.I0(y[9]),
        .I1(y[8]),
        .I2(y[7]),
        .I3(\v_count_reg[6]_i_2_n_0 ),
        .I4(y[6]),
        .I5(\v_count_reg[9]_i_4_n_0 ),
        .O(\v_count_reg_reg[8]_0 [7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55559555)) 
    addr_title1_i_3
       (.I0(y[8]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(y[6]),
        .I4(\v_count_reg[9]_i_4_n_0 ),
        .I5(y[7]),
        .O(\v_count_reg_reg[8]_0 [6]));
  LUT4 #(
    .INIT(16'hA955)) 
    addr_title1_i_3__0
       (.I0(y[8]),
        .I1(y[6]),
        .I2(addr_title1_i_11_n_0),
        .I3(y[7]),
        .O(\v_count_reg_reg[7]_1 [8]));
  LUT5 #(
    .INIT(32'h0080FF7F)) 
    addr_title1_i_4
       (.I0(y[4]),
        .I1(y[5]),
        .I2(y[6]),
        .I3(\v_count_reg[9]_i_4_n_0 ),
        .I4(y[7]),
        .O(\v_count_reg_reg[8]_0 [5]));
  LUT3 #(
    .INIT(8'h56)) 
    addr_title1_i_4__0
       (.I0(y[7]),
        .I1(addr_title1_i_11_n_0),
        .I2(y[6]),
        .O(\v_count_reg_reg[7]_1 [7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA95955595)) 
    addr_title1_i_5
       (.I0(y[6]),
        .I1(y[4]),
        .I2(\v_count_reg_reg[5]_0 [2]),
        .I3(addr_title1_i_12_n_0),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .I5(y[5]),
        .O(\v_count_reg_reg[7]_1 [6]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    addr_title1_i_5__0
       (.I0(\v_count_reg_reg[5]_0 [2]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(A[0]),
        .O(\v_count_reg_reg[8]_0 [1]));
  LUT3 #(
    .INIT(8'h6A)) 
    addr_title1_i_6
       (.I0(\v_count_reg_reg[5]_0 [1]),
        .I1(A[0]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .O(\v_count_reg_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'hA999555555555555)) 
    addr_title1_i_6__0
       (.I0(y[5]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(A[0]),
        .I4(\v_count_reg_reg[5]_0 [2]),
        .I5(y[4]),
        .O(\v_count_reg_reg[7]_1 [5]));
  LUT5 #(
    .INIT(32'h66666AAA)) 
    addr_title1_i_7
       (.I0(y[4]),
        .I1(\v_count_reg_reg[5]_0 [2]),
        .I2(A[0]),
        .I3(\v_count_reg_reg[5]_0 [0]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .O(\v_count_reg_reg[7]_1 [4]));
  LUT4 #(
    .INIT(16'h5666)) 
    addr_title1_i_8
       (.I0(\v_count_reg_reg[5]_0 [2]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(A[0]),
        .O(\v_count_reg_reg[7]_1 [3]));
  LUT3 #(
    .INIT(8'h87)) 
    addr_title1_i_9
       (.I0(\v_count_reg_reg[5]_0 [0]),
        .I1(A[0]),
        .I2(\v_count_reg_reg[5]_0 [1]),
        .O(\v_count_reg_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'h0000000022220222)) 
    \addr_title_reg[14]_i_1 
       (.I0(\addr_title_reg[14]_i_2__0_n_0 ),
        .I1(\addr_title_reg[14]_i_3_n_0 ),
        .I2(\addr_title_reg[14]_i_4_n_0 ),
        .I3(\addr_start_reg[11]_i_5_n_0 ),
        .I4(x[9]),
        .I5(\addr_title_reg[14]_i_5_n_0 ),
        .O(addr_title0__0));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFBAFFFF)) 
    \addr_title_reg[14]_i_2 
       (.I0(\addr_title_reg[14]_i_5_n_0 ),
        .I1(\addr_title_reg[14]_i_3__0_n_0 ),
        .I2(x[9]),
        .I3(\addr_title_reg[14]_i_4__0_n_0 ),
        .I4(y[7]),
        .I5(\addr_title_reg[14]_i_5__0_n_0 ),
        .O(\addr_title_reg[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \addr_title_reg[14]_i_2__0 
       (.I0(y[7]),
        .I1(addr_title1_i_11_n_0),
        .I2(y[6]),
        .O(\addr_title_reg[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FE0000)) 
    \addr_title_reg[14]_i_3 
       (.I0(\v_count_reg_reg[5]_0 [1]),
        .I1(A[0]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(\addr_title_reg[14]_i_6_n_0 ),
        .I4(\v_count_reg_reg[5]_0 [2]),
        .I5(\addr_title_reg[14]_i_7_n_0 ),
        .O(\addr_title_reg[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addr_title_reg[14]_i_3__0 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[0]),
        .I3(x[1]),
        .I4(x[4]),
        .O(\addr_title_reg[14]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \addr_title_reg[14]_i_4 
       (.I0(x[2]),
        .I1(x[3]),
        .I2(x[1]),
        .I3(x[4]),
        .O(\addr_title_reg[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A888A888A888)) 
    \addr_title_reg[14]_i_4__0 
       (.I0(y[7]),
        .I1(y[6]),
        .I2(y[5]),
        .I3(y[4]),
        .I4(\v_count_reg_reg[5]_0 [2]),
        .I5(\v_count_reg_reg[5]_0 [1]),
        .O(\addr_title_reg[14]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFEFFEFEFEFE)) 
    \addr_title_reg[14]_i_5 
       (.I0(y[8]),
        .I1(y[9]),
        .I2(x[9]),
        .I3(x[5]),
        .I4(x[6]),
        .I5(\addr_start_reg[11]_i_5_n_0 ),
        .O(\addr_title_reg[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_title_reg[14]_i_5__0 
       (.I0(\v_count_reg[6]_i_2_n_0 ),
        .I1(y[6]),
        .I2(\v_count_reg_reg[5]_0 [1]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [0]),
        .I5(A[0]),
        .O(\addr_title_reg[14]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \addr_title_reg[14]_i_6 
       (.I0(y[6]),
        .I1(y[7]),
        .O(\addr_title_reg[14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_title_reg[14]_i_7 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\addr_title_reg[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[0]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[0]),
        .I2(Q),
        .I3(out[0]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[0]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[0]),
        .I4(\data_reg[7]_0 [0]),
        .I5(addr_title0__0),
        .O(\data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[1]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[1]),
        .I2(Q),
        .I3(out[1]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[1]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[1]),
        .I4(\data_reg[7]_0 [1]),
        .I5(addr_title0__0),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[2]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[2]),
        .I2(Q),
        .I3(out[2]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[2]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[2]),
        .I4(\data_reg[7]_0 [2]),
        .I5(addr_title0__0),
        .O(\data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[3]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[3]),
        .I2(Q),
        .I3(out[3]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[3]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[3]),
        .I4(\data_reg[7]_0 [3]),
        .I5(addr_title0__0),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[4]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[4]),
        .I2(Q),
        .I3(out[4]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[4]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[4]),
        .I4(\data_reg[7]_0 [4]),
        .I5(addr_title0__0),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[5]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[5]),
        .I2(Q),
        .I3(out[5]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[5]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[5]),
        .I4(\data_reg[7]_0 [5]),
        .I5(addr_title0__0),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[6]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[6]),
        .I2(Q),
        .I3(out[6]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAABABBBABBBABB)) 
    \data[6]_i_2 
       (.I0(\data_reg[7] ),
        .I1(Q),
        .I2(\data[7]_i_3_n_0 ),
        .I3(DOADO[6]),
        .I4(\data_reg[7]_0 [6]),
        .I5(addr_title0__0),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \data[7]_i_1 
       (.I0(\addr_title_reg[14]_i_2_n_0 ),
        .I1(data_reg[6]),
        .I2(Q),
        .I3(out[7]),
        .I4(\addr_name_reg[15]_i_2_n_0 ),
        .I5(\data[7]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00454545)) 
    \data[7]_i_2 
       (.I0(Q),
        .I1(\data[7]_i_3_n_0 ),
        .I2(DOADO[7]),
        .I3(\data_reg[7]_0 [6]),
        .I4(addr_title0__0),
        .I5(\data_reg[7] ),
        .O(\data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data[7]_i_3 
       (.I0(\addr_start_reg[11]_i_4_n_0 ),
        .I1(\addr_start_reg[11]_i_6_n_0 ),
        .I2(\addr_start_reg[11]_i_2_n_0 ),
        .I3(\addr_start_reg[11]_i_3_n_0 ),
        .I4(\addr_start_reg[11]_i_7_n_0 ),
        .I5(\addr_start_reg[11]_i_5_n_0 ),
        .O(\data[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_count_reg[0]_i_1 
       (.I0(x[0]),
        .O(B[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \h_count_reg[1]_i_1 
       (.I0(x[0]),
        .I1(x[1]),
        .O(B[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \h_count_reg[2]_i_1 
       (.I0(x[0]),
        .I1(x[1]),
        .I2(x[2]),
        .O(B[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count_reg[3]_i_1 
       (.I0(x[3]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(x[2]),
        .O(B[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count_reg[4]_i_1 
       (.I0(x[4]),
        .I1(x[3]),
        .I2(x[2]),
        .I3(x[0]),
        .I4(x[1]),
        .O(B[4]));
  LUT4 #(
    .INIT(16'h8A20)) 
    \h_count_reg[5]_i_1 
       (.I0(\h_count_reg[5]_i_2_n_0 ),
        .I1(\h_count_reg[7]_i_2_n_0 ),
        .I2(x[4]),
        .I3(x[5]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \h_count_reg[5]_i_2 
       (.I0(x[4]),
        .I1(x[9]),
        .I2(\h_count_reg[5]_i_3_n_0 ),
        .I3(x[7]),
        .I4(x[8]),
        .I5(\addr_start_reg[11]_i_8_n_0 ),
        .O(\h_count_reg[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \h_count_reg[5]_i_3 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(x[0]),
        .O(\h_count_reg[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9CCC)) 
    \h_count_reg[6]_i_1 
       (.I0(\h_count_reg[7]_i_2_n_0 ),
        .I1(x[6]),
        .I2(x[5]),
        .I3(x[4]),
        .O(B[6]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \h_count_reg[7]_i_1 
       (.I0(x[7]),
        .I1(\h_count_reg[7]_i_2_n_0 ),
        .I2(x[6]),
        .I3(x[5]),
        .I4(x[4]),
        .O(B[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_count_reg[7]_i_2 
       (.I0(x[1]),
        .I1(x[0]),
        .I2(x[2]),
        .I3(x[3]),
        .O(\h_count_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00787878)) 
    \h_count_reg[8]_i_1 
       (.I0(x[7]),
        .I1(\h_count_reg[9]_i_3_n_0 ),
        .I2(x[8]),
        .I3(x[9]),
        .I4(\h_count_reg[9]_i_4_n_0 ),
        .O(B[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \h_count_reg[9]_i_1 
       (.I0(pixel_reg[1]),
        .I1(pixel_reg[0]),
        .O(p_tick));
  LUT5 #(
    .INIT(32'h00807F80)) 
    \h_count_reg[9]_i_2 
       (.I0(\h_count_reg[9]_i_3_n_0 ),
        .I1(x[8]),
        .I2(x[7]),
        .I3(x[9]),
        .I4(\h_count_reg[9]_i_4_n_0 ),
        .O(B[9]));
  LUT4 #(
    .INIT(16'h0080)) 
    \h_count_reg[9]_i_3 
       (.I0(x[4]),
        .I1(x[5]),
        .I2(x[6]),
        .I3(\h_count_reg[7]_i_2_n_0 ),
        .O(\h_count_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \h_count_reg[9]_i_4 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[4]),
        .I3(x[7]),
        .I4(x[8]),
        .I5(\h_count_reg[7]_i_2_n_0 ),
        .O(\h_count_reg[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[0]),
        .Q(x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[1]),
        .Q(x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[2]),
        .Q(x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[3]),
        .Q(x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[4]),
        .Q(x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[5]),
        .Q(x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[6]),
        .Q(x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[7]),
        .Q(x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[8]),
        .Q(x[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(p_tick),
        .D(B[9]),
        .Q(x[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040404040404000)) 
    hsync_reg_i_1
       (.I0(x[8]),
        .I1(x[9]),
        .I2(x[7]),
        .I3(x[6]),
        .I4(x[5]),
        .I5(x[4]),
        .O(hsync_next));
  FDRE #(
    .INIT(1'b0)) 
    hsync_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(hsync_next),
        .Q(Hsync_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_reg[0]_i_1 
       (.I0(pixel_reg[0]),
        .O(pixel_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_reg[1]_i_1 
       (.I0(pixel_reg[1]),
        .I1(pixel_reg[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h45555555)) 
    \v_count_reg[0]_i_1 
       (.I0(A[0]),
        .I1(\v_count_reg_reg[5]_0 [0]),
        .I2(\v_count_reg[3]_i_2_n_0 ),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .O(\v_count_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \v_count_reg[1]_i_1 
       (.I0(\v_count_reg_reg[5]_0 [0]),
        .I1(A[0]),
        .O(\v_count_reg_reg[7]_1 [1]));
  LUT5 #(
    .INIT(32'h686A6A6A)) 
    \v_count_reg[2]_i_1 
       (.I0(\v_count_reg_reg[5]_0 [1]),
        .I1(A[0]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg[3]_i_2_n_0 ),
        .O(\v_count_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6788FF00)) 
    \v_count_reg[3]_i_1 
       (.I0(\v_count_reg_reg[5]_0 [0]),
        .I1(A[0]),
        .I2(\v_count_reg[3]_i_2_n_0 ),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .O(\v_count_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \v_count_reg[3]_i_2 
       (.I0(y[8]),
        .I1(y[7]),
        .I2(y[4]),
        .I3(y[5]),
        .I4(y[9]),
        .I5(y[6]),
        .O(\v_count_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count_reg[4]_i_1 
       (.I0(y[4]),
        .I1(\v_count_reg_reg[5]_0 [1]),
        .I2(\v_count_reg_reg[5]_0 [2]),
        .I3(\v_count_reg_reg[5]_0 [0]),
        .I4(A[0]),
        .O(\v_count_reg_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count_reg[5]_i_1 
       (.I0(y[5]),
        .I1(A[0]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .I5(y[4]),
        .O(\v_count_reg_reg[8]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count_reg[6]_i_1 
       (.I0(y[6]),
        .I1(A[0]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(\v_count_reg_reg[5]_0 [2]),
        .I4(\v_count_reg_reg[5]_0 [1]),
        .I5(\v_count_reg[6]_i_2_n_0 ),
        .O(\v_count_reg_reg[8]_0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \v_count_reg[6]_i_2 
       (.I0(y[4]),
        .I1(y[5]),
        .O(\v_count_reg[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \v_count_reg[7]_i_1 
       (.I0(y[7]),
        .I1(\v_count_reg[9]_i_4_n_0 ),
        .I2(y[6]),
        .I3(y[5]),
        .I4(y[4]),
        .O(\v_count_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \v_count_reg[8]_i_1 
       (.I0(y[8]),
        .I1(\v_count_reg[9]_i_4_n_0 ),
        .I2(y[5]),
        .I3(y[4]),
        .I4(y[7]),
        .I5(y[6]),
        .O(\v_count_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \v_count_reg[9]_i_1 
       (.I0(pixel_reg[0]),
        .I1(pixel_reg[1]),
        .I2(x[3]),
        .I3(\h_count_reg[5]_i_2_n_0 ),
        .O(v_count_reg0));
  LUT6 #(
    .INIT(64'h0000F708F708F708)) 
    \v_count_reg[9]_i_2 
       (.I0(y[8]),
        .I1(\v_count_reg[9]_i_3_n_0 ),
        .I2(\v_count_reg[9]_i_4_n_0 ),
        .I3(y[9]),
        .I4(\v_count_reg[9]_i_5_n_0 ),
        .I5(\v_count_reg_reg[5]_0 [1]),
        .O(\v_count_reg[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \v_count_reg[9]_i_3 
       (.I0(y[5]),
        .I1(y[4]),
        .I2(y[7]),
        .I3(y[6]),
        .O(\v_count_reg[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \v_count_reg[9]_i_4 
       (.I0(A[0]),
        .I1(\v_count_reg_reg[5]_0 [0]),
        .I2(\v_count_reg_reg[5]_0 [2]),
        .I3(\v_count_reg_reg[5]_0 [1]),
        .O(\v_count_reg[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \v_count_reg[9]_i_5 
       (.I0(\v_count_reg[3]_i_2_n_0 ),
        .I1(\v_count_reg_reg[5]_0 [2]),
        .I2(\v_count_reg_reg[5]_0 [0]),
        .I3(A[0]),
        .O(\v_count_reg[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[0]_i_1_n_0 ),
        .Q(A[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg_reg[7]_1 [1]),
        .Q(\v_count_reg_reg[5]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[2]_i_1_n_0 ),
        .Q(\v_count_reg_reg[5]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[3]_i_1_n_0 ),
        .Q(\v_count_reg_reg[5]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg_reg[8]_0 [2]),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg_reg[8]_0 [3]),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg_reg[8]_0 [4]),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[7]_i_1_n_0 ),
        .Q(y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[8]_i_1_n_0 ),
        .Q(y[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .D(\v_count_reg[9]_i_2_n_0 ),
        .Q(y[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \vgaRed_OBUF[2]_inst_i_2 
       (.I0(y[6]),
        .I1(y[7]),
        .I2(y[8]),
        .I3(y[5]),
        .I4(\vgaRed_OBUF[2]_inst_i_3_n_0 ),
        .I5(y[9]),
        .O(\v_count_reg_reg[6]_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \vgaRed_OBUF[2]_inst_i_3 
       (.I0(x[9]),
        .I1(x[8]),
        .I2(x[7]),
        .O(\vgaRed_OBUF[2]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000028)) 
    vsync_reg_i_1
       (.I0(\v_count_reg[3]_i_2_n_0 ),
        .I1(\v_count_reg_reg[5]_0 [0]),
        .I2(A[0]),
        .I3(\v_count_reg_reg[5]_0 [1]),
        .I4(\v_count_reg_reg[5]_0 [2]),
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
