////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: FPGA_translate.v
// /___/   /\     Timestamp: Tue Oct 14 19:41:11 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim FPGA.ngd FPGA_translate.v 
// Device	: 3s50pq208-5
// Input file	: FPGA.ngd
// Output file	: C:\Users\Frostjaw\bsuir-14-15-labs\APVMIS\Lab4\netgen\translate\FPGA_translate.v
// # of Modules	: 1
// Design Name	: FPGA
// Xilinx        : C:\Xilinx\14.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module FPGA (
  clk, key0, key1, key2, key3, key4, key5, key6, key7, led0, led1, led2, led3, led4, led5
);
  input clk;
  input key0;
  input key1;
  input key2;
  input key3;
  input key4;
  input key5;
  input key6;
  input key7;
  output led0;
  output led1;
  output led2;
  output led3;
  output led4;
  output led5;
  wire N0;
  wire N1;
  wire N2;
  wire N4;
  wire N6;
  wire clk_IBUF_6;
  wire clock;
  wire \counter/RCO12_8 ;
  wire \counter/RCO25_9 ;
  wire \counter/r0/res_mux0001_10 ;
  wire \counter/r0/res_not0002 ;
  wire \counter/r1/res_mux0001_12 ;
  wire \counter/r2/res_mux0001_13 ;
  wire \counter/r3/res_mux0001_14 ;
  wire \counter/r4/res_mux0001_15 ;
  wire \counter/t0/res_mux0001_16 ;
  wire \counter/t0/res_mux0002 ;
  wire \counter/t0/res_not0002 ;
  wire \counter/t1/res_mux0001_19 ;
  wire \counter/t1/res_mux0002 ;
  wire \counter/t1/res_not0002 ;
  wire \counter/t2/res_mux0001_22 ;
  wire \counter/t2/res_mux0002 ;
  wire \counter/t2/res_not0002 ;
  wire \counter/t3/res_mux0001_25 ;
  wire \counter/t3/res_mux0002 ;
  wire \counter/t3/res_not0002 ;
  wire \counter/t4/res_mux0001_28 ;
  wire \counter/t4/res_mux0002 ;
  wire \counter/t4/res_not0002 ;
  wire \counter/t4/res_not00021_31 ;
  wire \counter/t5/res_mux0001_32 ;
  wire \counter/t5/res_mux0002 ;
  wire \counter/t5/res_not0002_34 ;
  wire \counter/t6/res_mux0001_35 ;
  wire \counter/t6/res_mux0002 ;
  wire \counter/t6/res_not0002_37 ;
  wire \counter/t7/res_mux0001_38 ;
  wire \counter/t7/res_mux0002 ;
  wire \counter/t7/res_not0002 ;
  wire \counter/t7/res_not000212_41 ;
  wire \counter/t7/res_not000225_42 ;
  wire \divide_freq/counter<2>107_115 ;
  wire \divide_freq/counter<2>12_116 ;
  wire \divide_freq/counter<2>25_117 ;
  wire \divide_freq/counter<2>30_118 ;
  wire \divide_freq/counter<2>31_119 ;
  wire \divide_freq/counter<2>59_120 ;
  wire \divide_freq/counter<2>7_121 ;
  wire \divide_freq/counter<2>71_122 ;
  wire \divide_freq/counter<2>76_123 ;
  wire \divide_freq/counter<2>85_124 ;
  wire \divide_freq/counter<2>97_125 ;
  wire \divide_freq/counter_mux0000<10>1_167 ;
  wire \divide_freq/counter_mux0000<11>1_168 ;
  wire \divide_freq/counter_mux0000<12>1_169 ;
  wire \divide_freq/counter_mux0000<13>1_170 ;
  wire \divide_freq/counter_mux0000<14>1_171 ;
  wire \divide_freq/counter_mux0000<15>1_172 ;
  wire \divide_freq/counter_mux0000<16>1_173 ;
  wire \divide_freq/counter_mux0000<17>1_174 ;
  wire \divide_freq/counter_mux0000<18>1_175 ;
  wire \divide_freq/counter_mux0000<19>1_176 ;
  wire \divide_freq/counter_mux0000<1>1_177 ;
  wire \divide_freq/counter_mux0000<20>1_178 ;
  wire \divide_freq/counter_mux0000<21>1_179 ;
  wire \divide_freq/counter_mux0000<22>1_180 ;
  wire \divide_freq/counter_mux0000<23>1_181 ;
  wire \divide_freq/counter_mux0000<24>1_182 ;
  wire \divide_freq/counter_mux0000<25>1_183 ;
  wire \divide_freq/counter_mux0000<26>1_184 ;
  wire \divide_freq/counter_mux0000<27>1_185 ;
  wire \divide_freq/counter_mux0000<28>1_186 ;
  wire \divide_freq/counter_mux0000<29>1_187 ;
  wire \divide_freq/counter_mux0000<30>1_189 ;
  wire \divide_freq/counter_mux0000<31>1_190 ;
  wire \divide_freq/counter_mux0000<3>1_191 ;
  wire \divide_freq/counter_mux0000<4>1_192 ;
  wire \divide_freq/counter_mux0000<5>1_193 ;
  wire \divide_freq/counter_mux0000<6>1_194 ;
  wire \divide_freq/counter_mux0000<7>1_195 ;
  wire \divide_freq/counter_mux0000<8>1_196 ;
  wire \divide_freq/counter_mux0000<9>1_197 ;
  wire key0_IBUF_199;
  wire key1_IBUF_201;
  wire key2_IBUF_203;
  wire led5_OBUF_210;
  wire key3_IBUF_216;
  wire key4_IBUF_217;
  wire key5_IBUF_218;
  wire key6_IBUF_219;
  wire key7_IBUF_220;
  wire VCC;
  wire GND;
  wire [7 : 0] \divide_freq/COUT_wg_cy ;
  wire [8 : 0] \divide_freq/COUT_wg_lut ;
  wire [30 : 0] \divide_freq/Madd_counter_addsub0000_cy ;
  wire [0 : 0] \divide_freq/Madd_counter_addsub0000_lut ;
  wire [31 : 0] \divide_freq/counter ;
  wire [31 : 0] \divide_freq/counter_addsub0000 ;
  wire [2 : 2] \divide_freq/counter_mux0000 ;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/r4/res_mux0001  (
    .I(\counter/t4/res_mux0001_28 ),
    .CLK(\counter/r0/res_not0002 ),
    .O(\counter/r4/res_mux0001_15 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/r3/res_mux0001  (
    .I(\counter/t3/res_mux0001_25 ),
    .CLK(\counter/r0/res_not0002 ),
    .O(\counter/r3/res_mux0001_14 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/r2/res_mux0001  (
    .I(\counter/t2/res_mux0001_22 ),
    .CLK(\counter/r0/res_not0002 ),
    .O(\counter/r2/res_mux0001_13 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/r1/res_mux0001  (
    .I(\counter/t1/res_mux0001_19 ),
    .CLK(\counter/r0/res_not0002 ),
    .O(\counter/r1/res_mux0001_12 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/r0/res_mux0001  (
    .I(\counter/t0/res_mux0001_16 ),
    .CLK(\counter/r0/res_not0002 ),
    .O(\counter/r0/res_mux0001_10 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t7/res_mux0001  (
    .I(\counter/t7/res_mux0002 ),
    .CLK(\counter/t7/res_not0002 ),
    .O(\counter/t7/res_mux0001_38 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t6/res_mux0001  (
    .I(\counter/t6/res_mux0002 ),
    .CLK(\counter/t6/res_not0002_37 ),
    .O(\counter/t6/res_mux0001_35 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t5/res_mux0001  (
    .I(\counter/t5/res_mux0002 ),
    .CLK(\counter/t5/res_not0002_34 ),
    .O(\counter/t5/res_mux0001_32 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t4/res_mux0001  (
    .I(\counter/t4/res_mux0002 ),
    .CLK(\counter/t4/res_not0002 ),
    .O(\counter/t4/res_mux0001_28 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t3/res_mux0001  (
    .I(\counter/t3/res_mux0002 ),
    .CLK(\counter/t3/res_not0002 ),
    .O(\counter/t3/res_mux0001_25 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t2/res_mux0001  (
    .I(\counter/t2/res_mux0002 ),
    .CLK(\counter/t2/res_not0002 ),
    .O(\counter/t2/res_mux0001_22 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t1/res_mux0001  (
    .I(\counter/t1/res_mux0002 ),
    .CLK(\counter/t1/res_not0002 ),
    .O(\counter/t1/res_mux0001_19 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \counter/t0/res_mux0001  (
    .I(\counter/t0/res_mux0002 ),
    .CLK(\counter/t0/res_not0002 ),
    .O(\counter/t0/res_mux0001_16 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<31>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [30]),
    .I1(\divide_freq/counter_mux0000<31>1_190 ),
    .O(\divide_freq/counter_addsub0000 [31])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<30>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [29]),
    .I1(\divide_freq/counter_mux0000<30>1_189 ),
    .O(\divide_freq/counter_addsub0000 [30])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<30>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [29]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<30>1_189 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [30])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<29>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [28]),
    .I1(\divide_freq/counter_mux0000<29>1_187 ),
    .O(\divide_freq/counter_addsub0000 [29])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<29>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [28]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<29>1_187 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [29])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<28>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [27]),
    .I1(\divide_freq/counter_mux0000<28>1_186 ),
    .O(\divide_freq/counter_addsub0000 [28])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<28>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [27]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<28>1_186 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [28])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<27>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [26]),
    .I1(\divide_freq/counter_mux0000<27>1_185 ),
    .O(\divide_freq/counter_addsub0000 [27])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<27>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [26]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<27>1_185 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [27])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<26>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [25]),
    .I1(\divide_freq/counter_mux0000<26>1_184 ),
    .O(\divide_freq/counter_addsub0000 [26])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<26>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [25]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<26>1_184 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [26])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<25>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [24]),
    .I1(\divide_freq/counter_mux0000<25>1_183 ),
    .O(\divide_freq/counter_addsub0000 [25])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<25>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [24]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<25>1_183 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [25])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<24>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [23]),
    .I1(\divide_freq/counter_mux0000<24>1_182 ),
    .O(\divide_freq/counter_addsub0000 [24])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<24>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [23]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<24>1_182 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [24])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<23>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [22]),
    .I1(\divide_freq/counter_mux0000<23>1_181 ),
    .O(\divide_freq/counter_addsub0000 [23])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<23>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [22]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<23>1_181 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [23])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<22>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [21]),
    .I1(\divide_freq/counter_mux0000<22>1_180 ),
    .O(\divide_freq/counter_addsub0000 [22])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<22>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [21]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<22>1_180 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [22])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<21>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [20]),
    .I1(\divide_freq/counter_mux0000<21>1_179 ),
    .O(\divide_freq/counter_addsub0000 [21])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<21>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [20]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<21>1_179 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [21])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<20>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [19]),
    .I1(\divide_freq/counter_mux0000<20>1_178 ),
    .O(\divide_freq/counter_addsub0000 [20])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<20>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [19]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<20>1_178 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [20])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<19>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [18]),
    .I1(\divide_freq/counter_mux0000<19>1_176 ),
    .O(\divide_freq/counter_addsub0000 [19])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<19>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [18]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<19>1_176 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [19])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<18>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [17]),
    .I1(\divide_freq/counter_mux0000<18>1_175 ),
    .O(\divide_freq/counter_addsub0000 [18])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<18>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [17]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<18>1_175 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [18])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<17>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [16]),
    .I1(\divide_freq/counter_mux0000<17>1_174 ),
    .O(\divide_freq/counter_addsub0000 [17])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<17>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [16]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<17>1_174 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [17])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<16>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [15]),
    .I1(\divide_freq/counter_mux0000<16>1_173 ),
    .O(\divide_freq/counter_addsub0000 [16])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<16>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [15]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<16>1_173 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [16])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<15>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [14]),
    .I1(\divide_freq/counter_mux0000<15>1_172 ),
    .O(\divide_freq/counter_addsub0000 [15])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<15>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [14]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<15>1_172 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [15])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<14>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [13]),
    .I1(\divide_freq/counter_mux0000<14>1_171 ),
    .O(\divide_freq/counter_addsub0000 [14])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<14>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [13]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<14>1_171 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [14])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<13>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [12]),
    .I1(\divide_freq/counter_mux0000<13>1_170 ),
    .O(\divide_freq/counter_addsub0000 [13])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<13>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [12]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<13>1_170 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [13])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<12>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [11]),
    .I1(\divide_freq/counter_mux0000<12>1_169 ),
    .O(\divide_freq/counter_addsub0000 [12])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<12>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [11]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<12>1_169 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [12])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<11>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [10]),
    .I1(\divide_freq/counter_mux0000<11>1_168 ),
    .O(\divide_freq/counter_addsub0000 [11])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<11>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [10]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<11>1_168 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [11])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<10>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [9]),
    .I1(\divide_freq/counter_mux0000<10>1_167 ),
    .O(\divide_freq/counter_addsub0000 [10])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<10>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [9]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<10>1_167 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [10])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<9>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [8]),
    .I1(\divide_freq/counter_mux0000<9>1_197 ),
    .O(\divide_freq/counter_addsub0000 [9])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<9>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [8]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<9>1_197 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [9])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<8>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [7]),
    .I1(\divide_freq/counter_mux0000<8>1_196 ),
    .O(\divide_freq/counter_addsub0000 [8])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<8>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [7]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<8>1_196 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [8])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<7>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [6]),
    .I1(\divide_freq/counter_mux0000<7>1_195 ),
    .O(\divide_freq/counter_addsub0000 [7])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<7>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [6]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<7>1_195 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [7])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<6>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [5]),
    .I1(\divide_freq/counter_mux0000<6>1_194 ),
    .O(\divide_freq/counter_addsub0000 [6])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<6>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [5]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<6>1_194 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [6])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<5>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [4]),
    .I1(\divide_freq/counter_mux0000<5>1_193 ),
    .O(\divide_freq/counter_addsub0000 [5])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<5>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [4]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<5>1_193 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [5])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<4>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [3]),
    .I1(\divide_freq/counter_mux0000<4>1_192 ),
    .O(\divide_freq/counter_addsub0000 [4])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<4>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [3]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<4>1_192 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [4])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<3>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [2]),
    .I1(\divide_freq/counter_mux0000<3>1_191 ),
    .O(\divide_freq/counter_addsub0000 [3])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<3>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [2]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<3>1_191 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [3])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<2>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [1]),
    .I1(\divide_freq/counter<2>107_115 ),
    .O(\divide_freq/counter_addsub0000 [2])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<2>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [1]),
    .IA(N0),
    .SEL(\divide_freq/counter<2>107_115 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [2])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<1>  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy [0]),
    .I1(\divide_freq/counter_mux0000<1>1_177 ),
    .O(\divide_freq/counter_addsub0000 [1])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<1>  (
    .IB(\divide_freq/Madd_counter_addsub0000_cy [0]),
    .IA(N0),
    .SEL(\divide_freq/counter_mux0000<1>1_177 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy [1])
  );
  X_XOR2   \divide_freq/Madd_counter_addsub0000_xor<0>  (
    .I0(N0),
    .I1(\divide_freq/Madd_counter_addsub0000_lut [0]),
    .O(\divide_freq/counter_addsub0000 [0])
  );
  X_MUX2   \divide_freq/Madd_counter_addsub0000_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\divide_freq/Madd_counter_addsub0000_lut [0]),
    .O(\divide_freq/Madd_counter_addsub0000_cy [0])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<0>  (
    .IB(N1),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [0]),
    .O(\divide_freq/COUT_wg_cy [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<1>  (
    .ADR0(\divide_freq/counter_addsub0000 [8]),
    .ADR1(\divide_freq/counter_addsub0000 [9]),
    .ADR2(\divide_freq/counter_addsub0000 [6]),
    .ADR3(\divide_freq/counter_addsub0000 [10]),
    .O(\divide_freq/COUT_wg_lut [1])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<1>  (
    .IB(\divide_freq/COUT_wg_cy [0]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [1]),
    .O(\divide_freq/COUT_wg_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<2>  (
    .ADR0(\divide_freq/counter_addsub0000 [11]),
    .ADR1(\divide_freq/counter_addsub0000 [12]),
    .ADR2(\divide_freq/counter_addsub0000 [5]),
    .ADR3(\divide_freq/counter_addsub0000 [13]),
    .O(\divide_freq/COUT_wg_lut [2])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<2>  (
    .IB(\divide_freq/COUT_wg_cy [1]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [2]),
    .O(\divide_freq/COUT_wg_cy [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<3>  (
    .ADR0(\divide_freq/counter_addsub0000 [14]),
    .ADR1(\divide_freq/counter_addsub0000 [15]),
    .ADR2(\divide_freq/counter_addsub0000 [4]),
    .ADR3(\divide_freq/counter_addsub0000 [16]),
    .O(\divide_freq/COUT_wg_lut [3])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<3>  (
    .IB(\divide_freq/COUT_wg_cy [2]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [3]),
    .O(\divide_freq/COUT_wg_cy [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<4>  (
    .ADR0(\divide_freq/counter_addsub0000 [17]),
    .ADR1(\divide_freq/counter_addsub0000 [18]),
    .ADR2(\divide_freq/counter_addsub0000 [3]),
    .ADR3(\divide_freq/counter_addsub0000 [19]),
    .O(\divide_freq/COUT_wg_lut [4])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<4>  (
    .IB(\divide_freq/COUT_wg_cy [3]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [4]),
    .O(\divide_freq/COUT_wg_cy [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<5>  (
    .ADR0(\divide_freq/counter_addsub0000 [20]),
    .ADR1(\divide_freq/counter_addsub0000 [21]),
    .ADR2(\divide_freq/counter_addsub0000 [1]),
    .ADR3(\divide_freq/counter_addsub0000 [22]),
    .O(\divide_freq/COUT_wg_lut [5])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<5>  (
    .IB(\divide_freq/COUT_wg_cy [4]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [5]),
    .O(\divide_freq/COUT_wg_cy [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<6>  (
    .ADR0(\divide_freq/counter_addsub0000 [23]),
    .ADR1(\divide_freq/counter_addsub0000 [24]),
    .ADR2(\divide_freq/counter [2]),
    .ADR3(\divide_freq/counter_addsub0000 [25]),
    .O(\divide_freq/COUT_wg_lut [6])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<6>  (
    .IB(\divide_freq/COUT_wg_cy [5]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [6]),
    .O(\divide_freq/COUT_wg_cy [6])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \divide_freq/COUT_wg_lut<7>  (
    .ADR0(\divide_freq/counter_addsub0000 [26]),
    .ADR1(\divide_freq/counter_addsub0000 [27]),
    .ADR2(clk_IBUF_6),
    .ADR3(\divide_freq/counter_addsub0000 [28]),
    .O(\divide_freq/COUT_wg_lut [7])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<7>  (
    .IB(\divide_freq/COUT_wg_cy [6]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [7]),
    .O(\divide_freq/COUT_wg_cy [7])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divide_freq/COUT_wg_lut<8>  (
    .ADR0(\divide_freq/counter_addsub0000 [29]),
    .ADR1(\divide_freq/counter_addsub0000 [30]),
    .ADR2(\divide_freq/counter_addsub0000 [0]),
    .ADR3(\divide_freq/counter_addsub0000 [31]),
    .O(\divide_freq/COUT_wg_lut [8])
  );
  X_MUX2   \divide_freq/COUT_wg_cy<8>  (
    .IB(\divide_freq/COUT_wg_cy [7]),
    .IA(N0),
    .SEL(\divide_freq/COUT_wg_lut [8]),
    .O(clock)
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \counter/t1/res_not00021  (
    .ADR0(\counter/t0/res_mux0001_16 ),
    .ADR1(key2_IBUF_203),
    .O(\counter/t1/res_not0002 )
  );
  X_LUT3 #(
    .INIT ( 8'h7F ))
  \counter/t2/res_not00021  (
    .ADR0(\counter/t1/res_mux0001_19 ),
    .ADR1(\counter/t0/res_mux0001_16 ),
    .ADR2(key2_IBUF_203),
    .O(\counter/t2/res_not0002 )
  );
  X_LUT3 #(
    .INIT ( 8'h5D ))
  \counter/t0/res_not00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(clock),
    .ADR2(key1_IBUF_201),
    .O(\counter/t0/res_not0002 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<9>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [9]),
    .ADR2(\divide_freq/counter_addsub0000 [9]),
    .O(\divide_freq/counter [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<8>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [8]),
    .ADR2(\divide_freq/counter_addsub0000 [8]),
    .O(\divide_freq/counter [8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<7>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [7]),
    .ADR2(\divide_freq/counter_addsub0000 [7]),
    .O(\divide_freq/counter [7])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<6>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [6]),
    .ADR2(\divide_freq/counter_addsub0000 [6]),
    .O(\divide_freq/counter [6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<5>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [5]),
    .ADR2(\divide_freq/counter_addsub0000 [5]),
    .O(\divide_freq/counter [5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<4>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [4]),
    .ADR2(\divide_freq/counter_addsub0000 [4]),
    .O(\divide_freq/counter [4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<3>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [3]),
    .ADR2(\divide_freq/counter_addsub0000 [3]),
    .O(\divide_freq/counter [3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<31>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [31]),
    .ADR2(\divide_freq/counter_addsub0000 [31]),
    .O(\divide_freq/counter [31])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<30>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [30]),
    .ADR2(\divide_freq/counter_addsub0000 [30]),
    .O(\divide_freq/counter [30])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<2>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [2]),
    .ADR2(\divide_freq/counter_addsub0000 [2]),
    .O(\divide_freq/counter_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<29>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [29]),
    .ADR2(\divide_freq/counter_addsub0000 [29]),
    .O(\divide_freq/counter [29])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<28>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [28]),
    .ADR2(\divide_freq/counter_addsub0000 [28]),
    .O(\divide_freq/counter [28])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<27>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [27]),
    .ADR2(\divide_freq/counter_addsub0000 [27]),
    .O(\divide_freq/counter [27])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<26>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [26]),
    .ADR2(\divide_freq/counter_addsub0000 [26]),
    .O(\divide_freq/counter [26])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<25>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [25]),
    .ADR2(\divide_freq/counter_addsub0000 [25]),
    .O(\divide_freq/counter [25])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<24>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [24]),
    .ADR2(\divide_freq/counter_addsub0000 [24]),
    .O(\divide_freq/counter [24])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<23>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [23]),
    .ADR2(\divide_freq/counter_addsub0000 [23]),
    .O(\divide_freq/counter [23])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<22>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [22]),
    .ADR2(\divide_freq/counter_addsub0000 [22]),
    .O(\divide_freq/counter [22])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<21>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [21]),
    .ADR2(\divide_freq/counter_addsub0000 [21]),
    .O(\divide_freq/counter [21])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<20>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [20]),
    .ADR2(\divide_freq/counter_addsub0000 [20]),
    .O(\divide_freq/counter [20])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<1>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [1]),
    .ADR2(\divide_freq/counter_addsub0000 [1]),
    .O(\divide_freq/counter [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<19>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [19]),
    .ADR2(\divide_freq/counter_addsub0000 [19]),
    .O(\divide_freq/counter [19])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<18>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [18]),
    .ADR2(\divide_freq/counter_addsub0000 [18]),
    .O(\divide_freq/counter [18])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<17>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [17]),
    .ADR2(\divide_freq/counter_addsub0000 [17]),
    .O(\divide_freq/counter [17])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<16>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [16]),
    .ADR2(\divide_freq/counter_addsub0000 [16]),
    .O(\divide_freq/counter [16])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<15>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [15]),
    .ADR2(\divide_freq/counter_addsub0000 [15]),
    .O(\divide_freq/counter [15])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<14>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [14]),
    .ADR2(\divide_freq/counter_addsub0000 [14]),
    .O(\divide_freq/counter [14])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<13>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [13]),
    .ADR2(\divide_freq/counter_addsub0000 [13]),
    .O(\divide_freq/counter [13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<12>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [12]),
    .ADR2(\divide_freq/counter_addsub0000 [12]),
    .O(\divide_freq/counter [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<11>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [11]),
    .ADR2(\divide_freq/counter_addsub0000 [11]),
    .O(\divide_freq/counter [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<10>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [10]),
    .ADR2(\divide_freq/counter_addsub0000 [10]),
    .O(\divide_freq/counter [10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<0>1  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [0]),
    .ADR2(\divide_freq/counter_addsub0000 [0]),
    .O(\divide_freq/counter [0])
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/t3/res_not00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t2/res_mux0001_22 ),
    .ADR2(\counter/t0/res_mux0001_16 ),
    .ADR3(\counter/t1/res_mux0001_19 ),
    .O(\counter/t3/res_not0002 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \counter/t5/res_not0002_SW0  (
    .ADR0(\counter/t1/res_mux0001_19 ),
    .ADR1(\counter/t0/res_mux0001_16 ),
    .ADR2(key2_IBUF_203),
    .O(N2)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/t5/res_not0002  (
    .ADR0(\counter/t4/res_mux0001_28 ),
    .ADR1(\counter/t3/res_mux0001_25 ),
    .ADR2(\counter/t2/res_mux0001_22 ),
    .ADR3(N2),
    .O(\counter/t5/res_not0002_34 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \counter/t6/res_not0002_SW0  (
    .ADR0(\counter/t2/res_mux0001_22 ),
    .ADR1(\counter/t1/res_mux0001_19 ),
    .ADR2(\counter/t0/res_mux0001_16 ),
    .ADR3(key2_IBUF_203),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/t6/res_not0002  (
    .ADR0(\counter/t5/res_mux0001_32 ),
    .ADR1(\counter/t4/res_mux0001_28 ),
    .ADR2(\counter/t3/res_mux0001_25 ),
    .ADR3(N4),
    .O(\counter/t6/res_not0002_37 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/t7/res_not000212  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t2/res_mux0001_22 ),
    .ADR2(\counter/t3/res_mux0001_25 ),
    .ADR3(\counter/t4/res_mux0001_28 ),
    .O(\counter/t7/res_not000212_41 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/t7/res_not000225  (
    .ADR0(\counter/t5/res_mux0001_32 ),
    .ADR1(\counter/t6/res_mux0001_35 ),
    .ADR2(\counter/t0/res_mux0001_16 ),
    .ADR3(\counter/t1/res_mux0001_19 ),
    .O(\counter/t7/res_not000225_42 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \counter/t7/res_not000226  (
    .ADR0(\counter/t7/res_not000212_41 ),
    .ADR1(\counter/t7/res_not000225_42 ),
    .O(\counter/t7/res_not0002 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFB ))
  \divide_freq/counter<2>7  (
    .ADR0(\divide_freq/counter [1]),
    .ADR1(\divide_freq/counter_mux0000 [2]),
    .ADR2(\divide_freq/counter [0]),
    .ADR3(\divide_freq/counter [3]),
    .O(\divide_freq/counter<2>7_121 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>12  (
    .ADR0(\divide_freq/counter [4]),
    .ADR1(\divide_freq/counter [5]),
    .ADR2(\divide_freq/counter [6]),
    .ADR3(\divide_freq/counter [7]),
    .O(\divide_freq/counter<2>12_116 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>25  (
    .ADR0(\divide_freq/counter [8]),
    .ADR1(\divide_freq/counter [9]),
    .ADR2(\divide_freq/counter [10]),
    .ADR3(\divide_freq/counter [11]),
    .O(\divide_freq/counter<2>25_117 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>30  (
    .ADR0(\divide_freq/counter [12]),
    .ADR1(\divide_freq/counter [13]),
    .ADR2(\divide_freq/counter [14]),
    .ADR3(\divide_freq/counter [15]),
    .O(\divide_freq/counter<2>30_118 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \divide_freq/counter<2>31  (
    .ADR0(\divide_freq/counter<2>25_117 ),
    .ADR1(\divide_freq/counter<2>30_118 ),
    .O(\divide_freq/counter<2>31_119 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>59  (
    .ADR0(\divide_freq/counter [20]),
    .ADR1(\divide_freq/counter [21]),
    .ADR2(\divide_freq/counter [22]),
    .ADR3(\divide_freq/counter [23]),
    .O(\divide_freq/counter<2>59_120 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>71  (
    .ADR0(\divide_freq/counter [24]),
    .ADR1(\divide_freq/counter [25]),
    .ADR2(\divide_freq/counter [26]),
    .ADR3(\divide_freq/counter [27]),
    .O(\divide_freq/counter<2>71_122 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>76  (
    .ADR0(\divide_freq/counter [28]),
    .ADR1(\divide_freq/counter [29]),
    .ADR2(\divide_freq/counter [30]),
    .ADR3(\divide_freq/counter [31]),
    .O(\divide_freq/counter<2>76_123 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>97  (
    .ADR0(\divide_freq/counter<2>7_121 ),
    .ADR1(\divide_freq/counter<2>12_116 ),
    .ADR2(\divide_freq/counter<2>31_119 ),
    .ADR3(\divide_freq/counter<2>85_124 ),
    .O(\divide_freq/counter<2>97_125 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \divide_freq/counter<2>107  (
    .ADR0(\divide_freq/counter<2>97_125 ),
    .ADR1(\divide_freq/counter_mux0000 [2]),
    .O(\divide_freq/counter [2])
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t7/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t7/res_mux0001_38 ),
    .O(\counter/t7/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t6/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t6/res_mux0001_35 ),
    .O(\counter/t6/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t5/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t5/res_mux0001_32 ),
    .O(\counter/t5/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t4/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t4/res_mux0001_28 ),
    .O(\counter/t4/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t3/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t3/res_mux0001_25 ),
    .O(\counter/t3/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t2/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t2/res_mux0001_22 ),
    .O(\counter/t2/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t1/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t1/res_mux0001_19 ),
    .O(\counter/t1/res_mux0002 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \counter/t0/res_mux00021  (
    .ADR0(key2_IBUF_203),
    .ADR1(\counter/t0/res_mux0001_16 ),
    .O(\counter/t0/res_mux0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/RCO12  (
    .ADR0(\counter/t2/res_mux0001_22 ),
    .ADR1(\counter/t3/res_mux0001_25 ),
    .ADR2(\counter/t4/res_mux0001_28 ),
    .ADR3(\counter/t5/res_mux0001_32 ),
    .O(\counter/RCO12_8 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/RCO25  (
    .ADR0(\counter/t6/res_mux0001_35 ),
    .ADR1(\counter/t7/res_mux0001_38 ),
    .ADR2(\counter/t0/res_mux0001_16 ),
    .ADR3(\counter/t1/res_mux0001_19 ),
    .O(\counter/RCO25_9 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \counter/RCO26  (
    .ADR0(\counter/RCO12_8 ),
    .ADR1(\counter/RCO25_9 ),
    .O(led5_OBUF_210)
  );
  X_BUF   clk_IBUF (
    .I(clk),
    .O(clk_IBUF_6)
  );
  X_BUF   key0_IBUF (
    .I(key0),
    .O(key0_IBUF_199)
  );
  X_BUF   key1_IBUF (
    .I(key1),
    .O(key1_IBUF_201)
  );
  X_BUF   key2_IBUF (
    .I(key2),
    .O(key2_IBUF_203)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<30>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [30]),
    .ADR2(\divide_freq/counter_addsub0000 [30]),
    .O(\divide_freq/counter_mux0000<30>1_189 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<29>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [29]),
    .ADR2(\divide_freq/counter_addsub0000 [29]),
    .O(\divide_freq/counter_mux0000<29>1_187 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<28>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [28]),
    .ADR2(\divide_freq/counter_addsub0000 [28]),
    .O(\divide_freq/counter_mux0000<28>1_186 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<27>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [27]),
    .ADR2(\divide_freq/counter_addsub0000 [27]),
    .O(\divide_freq/counter_mux0000<27>1_185 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<26>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [26]),
    .ADR2(\divide_freq/counter_addsub0000 [26]),
    .O(\divide_freq/counter_mux0000<26>1_184 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<25>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [25]),
    .ADR2(\divide_freq/counter_addsub0000 [25]),
    .O(\divide_freq/counter_mux0000<25>1_183 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<24>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [24]),
    .ADR2(\divide_freq/counter_addsub0000 [24]),
    .O(\divide_freq/counter_mux0000<24>1_182 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<23>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [23]),
    .ADR2(\divide_freq/counter_addsub0000 [23]),
    .O(\divide_freq/counter_mux0000<23>1_181 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<22>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [22]),
    .ADR2(\divide_freq/counter_addsub0000 [22]),
    .O(\divide_freq/counter_mux0000<22>1_180 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<21>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [21]),
    .ADR2(\divide_freq/counter_addsub0000 [21]),
    .O(\divide_freq/counter_mux0000<21>1_179 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<20>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [20]),
    .ADR2(\divide_freq/counter_addsub0000 [20]),
    .O(\divide_freq/counter_mux0000<20>1_178 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<19>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [19]),
    .ADR2(\divide_freq/counter_addsub0000 [19]),
    .O(\divide_freq/counter_mux0000<19>1_176 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<18>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [18]),
    .ADR2(\divide_freq/counter_addsub0000 [18]),
    .O(\divide_freq/counter_mux0000<18>1_175 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<17>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [17]),
    .ADR2(\divide_freq/counter_addsub0000 [17]),
    .O(\divide_freq/counter_mux0000<17>1_174 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<16>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [16]),
    .ADR2(\divide_freq/counter_addsub0000 [16]),
    .O(\divide_freq/counter_mux0000<16>1_173 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<15>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [15]),
    .ADR2(\divide_freq/counter_addsub0000 [15]),
    .O(\divide_freq/counter_mux0000<15>1_172 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<14>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [14]),
    .ADR2(\divide_freq/counter_addsub0000 [14]),
    .O(\divide_freq/counter_mux0000<14>1_171 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<13>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [13]),
    .ADR2(\divide_freq/counter_addsub0000 [13]),
    .O(\divide_freq/counter_mux0000<13>1_170 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<12>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [12]),
    .ADR2(\divide_freq/counter_addsub0000 [12]),
    .O(\divide_freq/counter_mux0000<12>1_169 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<11>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [11]),
    .ADR2(\divide_freq/counter_addsub0000 [11]),
    .O(\divide_freq/counter_mux0000<11>1_168 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<10>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [10]),
    .ADR2(\divide_freq/counter_addsub0000 [10]),
    .O(\divide_freq/counter_mux0000<10>1_167 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<9>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [9]),
    .ADR2(\divide_freq/counter_addsub0000 [9]),
    .O(\divide_freq/counter_mux0000<9>1_197 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<8>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [8]),
    .ADR2(\divide_freq/counter_addsub0000 [8]),
    .O(\divide_freq/counter_mux0000<8>1_196 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<7>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [7]),
    .ADR2(\divide_freq/counter_addsub0000 [7]),
    .O(\divide_freq/counter_mux0000<7>1_195 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<6>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [6]),
    .ADR2(\divide_freq/counter_addsub0000 [6]),
    .O(\divide_freq/counter_mux0000<6>1_194 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<5>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [5]),
    .ADR2(\divide_freq/counter_addsub0000 [5]),
    .O(\divide_freq/counter_mux0000<5>1_193 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<4>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [4]),
    .ADR2(\divide_freq/counter_addsub0000 [4]),
    .O(\divide_freq/counter_mux0000<4>1_192 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<3>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [3]),
    .ADR2(\divide_freq/counter_addsub0000 [3]),
    .O(\divide_freq/counter_mux0000<3>1_191 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \divide_freq/counter<2>1071  (
    .ADR0(\divide_freq/counter<2>97_125 ),
    .ADR1(\divide_freq/counter_mux0000 [2]),
    .O(\divide_freq/counter<2>107_115 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<1>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [1]),
    .ADR2(\divide_freq/counter_addsub0000 [1]),
    .O(\divide_freq/counter_mux0000<1>1_177 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \divide_freq/counter_mux0000<31>11  (
    .ADR0(clk_IBUF_6),
    .ADR1(\divide_freq/counter [31]),
    .ADR2(\divide_freq/counter_addsub0000 [31]),
    .O(\divide_freq/counter_mux0000<31>1_190 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>85_SW0  (
    .ADR0(\divide_freq/counter [19]),
    .ADR1(\divide_freq/counter<2>59_120 ),
    .ADR2(\divide_freq/counter<2>71_122 ),
    .ADR3(\divide_freq/counter<2>76_123 ),
    .O(N6)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \divide_freq/counter<2>85  (
    .ADR0(\divide_freq/counter [16]),
    .ADR1(\divide_freq/counter [17]),
    .ADR2(\divide_freq/counter [18]),
    .ADR3(N6),
    .O(\divide_freq/counter<2>85_124 )
  );
  X_INV   \divide_freq/Madd_counter_addsub0000_lut<0>_INV_0  (
    .I(\divide_freq/counter [0]),
    .O(\divide_freq/Madd_counter_addsub0000_lut [0])
  );
  X_INV   \divide_freq/COUT_wg_lut<0>_INV_0  (
    .I(\divide_freq/counter_addsub0000 [7]),
    .O(\divide_freq/COUT_wg_lut [0])
  );
  X_INV   \counter/r0/res_not00021_INV_0  (
    .I(clock),
    .O(\counter/r0/res_not0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \counter/t4/res_not00021  (
    .ADR0(\counter/t3/res_mux0001_25 ),
    .ADR1(\counter/t2/res_mux0001_22 ),
    .ADR2(\counter/t1/res_mux0001_19 ),
    .ADR3(\counter/t0/res_mux0001_16 ),
    .O(\counter/t4/res_not00021_31 )
  );
  X_MUX2   \counter/t4/res_not0002_f5  (
    .IA(N1),
    .IB(\counter/t4/res_not00021_31 ),
    .SEL(key2_IBUF_203),
    .O(\counter/t4/res_not0002 )
  );
  X_IPAD #(
    .LOC ( "R8" ))
  clk_208 (
    .PAD(clk)
  );
  X_IPAD #(
    .LOC ( "T10" ))
  key0_209 (
    .PAD(key0)
  );
  X_IPAD #(
    .LOC ( "T9" ))
  key1_210 (
    .PAD(key1)
  );
  X_IPAD #(
    .LOC ( "T8" ))
  key2_211 (
    .PAD(key2)
  );
  X_OPAD #(
    .LOC ( "N6" ))
  led0_212 (
    .PAD(led0)
  );
  X_OPAD #(
    .LOC ( "P5" ))
  led1_213 (
    .PAD(led1)
  );
  X_OPAD #(
    .LOC ( "J15" ))
  led2_214 (
    .PAD(led2)
  );
  X_OPAD #(
    .LOC ( "H16" ))
  led3_215 (
    .PAD(led3)
  );
  X_OPAD #(
    .LOC ( "C15" ))
  led4_216 (
    .PAD(led4)
  );
  X_OPAD #(
    .LOC ( "E15" ))
  led5_217 (
    .PAD(led5)
  );
  X_IPAD #(
    .LOC ( "T7" ))
  key3_218 (
    .PAD(key3)
  );
  X_BUF   key3_IBUF (
    .I(key3),
    .O(key3_IBUF_216)
  );
  X_IPAD #(
    .LOC ( "T6" ))
  key4_220 (
    .PAD(key4)
  );
  X_BUF   key4_IBUF (
    .I(key4),
    .O(key4_IBUF_217)
  );
  X_IPAD #(
    .LOC ( "T5" ))
  key5_222 (
    .PAD(key5)
  );
  X_BUF   key5_IBUF (
    .I(key5),
    .O(key5_IBUF_218)
  );
  X_IPAD #(
    .LOC ( "C13" ))
  key6_224 (
    .PAD(key6)
  );
  X_BUF   key6_IBUF (
    .I(key6),
    .O(key6_IBUF_219)
  );
  X_IPAD #(
    .LOC ( "B13" ))
  key7_226 (
    .PAD(key7)
  );
  X_BUF   key7_IBUF (
    .I(key7),
    .O(key7_IBUF_220)
  );
  X_OBUFT   led0_OBUFT (
    .I(\counter/r0/res_mux0001_10 ),
    .CTL(key0_IBUF_199),
    .O(led0)
  );
  X_OBUFT   led1_OBUFT (
    .I(\counter/r1/res_mux0001_12 ),
    .CTL(key0_IBUF_199),
    .O(led1)
  );
  X_OBUFT   led2_OBUFT (
    .I(\counter/r2/res_mux0001_13 ),
    .CTL(key0_IBUF_199),
    .O(led2)
  );
  X_OBUFT   led3_OBUFT (
    .I(\counter/r3/res_mux0001_14 ),
    .CTL(key0_IBUF_199),
    .O(led3)
  );
  X_OBUFT   led4_OBUFT (
    .I(\counter/r4/res_mux0001_15 ),
    .CTL(key0_IBUF_199),
    .O(led4)
  );
  X_OBUF   led5_OBUF (
    .I(led5_OBUF_210),
    .O(led5)
  );
  X_ONE   NlwBlock_FPGA_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_FPGA_GND (
    .O(GND)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

