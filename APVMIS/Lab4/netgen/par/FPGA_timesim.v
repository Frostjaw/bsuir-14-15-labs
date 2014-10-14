////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: FPGA_timesim.v
// /___/   /\     Timestamp: Tue Oct 14 19:13:32 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf FPGA.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim FPGA.ncd FPGA_timesim.v 
// Device	: 3s50pq208-5 (PRODUCTION 1.39 2012-12-04)
// Input file	: FPGA.ncd
// Output file	: C:\Users\Frostjaw\bsuir-14-15-labs\APVMIS\Lab4\netgen\par\FPGA_timesim.v
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
  wire clk_IBUF_641;
  wire \divide_freq/Madd_counter_addsub0000_cy[1] ;
  wire \divide_freq/counter<2>97_646 ;
  wire \divide_freq/counter<2>_0 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[3] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[5] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[7] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[9] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[11] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[13] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[15] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[17] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[19] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[21] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[23] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[25] ;
  wire \divide_freq/Madd_counter_addsub0000_cy[27] ;
  wire \divide_freq/COUT_725 ;
  wire \counter/t0/res_mux0001_726 ;
  wire key0_IBUF_727;
  wire \counter/t1/res_mux0001_728 ;
  wire \counter/t2/res_mux0001_729 ;
  wire \counter/t3/res_mux0001_730 ;
  wire \counter/t4/res_mux0001_731 ;
  wire key1_IBUF_733;
  wire key2_IBUF_734;
  wire \counter/t7/res_not000212_0 ;
  wire \counter/t6/res_mux0001_738 ;
  wire \counter/t5/res_mux0001_744 ;
  wire \counter/RCO12_0 ;
  wire \counter/t7/res_mux0001_747 ;
  wire \divide_freq/counter_mux0000<2>_0 ;
  wire \divide_freq/counter<2>25_0 ;
  wire \divide_freq/counter<2>30_751 ;
  wire \divide_freq/counter<2>31_0 ;
  wire \divide_freq/counter<2>59_0 ;
  wire \divide_freq/counter<2>76_0 ;
  wire \divide_freq/counter<2>7_0 ;
  wire \divide_freq/counter<2>12_0 ;
  wire \divide_freq/counter<2>85_0 ;
  wire \divide_freq/counter<2>71_0 ;
  wire N4;
  wire N2;
  wire \counter/RCO25_761 ;
  wire \counter/t7/res_not000225_762 ;
  wire N6;
  wire \divide_freq/counter_addsub0000<0>/XORF_798 ;
  wire \divide_freq/counter_addsub0000<0>/LOGIC_ONE_797 ;
  wire \divide_freq/counter_addsub0000<0>/CYINIT_796 ;
  wire \divide_freq/counter_addsub0000<0>/CYSELF_787 ;
  wire \divide_freq/counter_addsub0000<0>/F ;
  wire \divide_freq/counter_addsub0000<0>/BXINV_785 ;
  wire \divide_freq/counter_addsub0000<0>/XORG_783 ;
  wire \divide_freq/counter_addsub0000<0>/CYMUXG_782 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[0] ;
  wire \divide_freq/counter_addsub0000<0>/LOGIC_ZERO_780 ;
  wire \divide_freq/counter_addsub0000<0>/CYSELG_773 ;
  wire \divide_freq/counter_mux0000<1>1_772 ;
  wire \divide_freq/counter_addsub0000<2>/XORF_836 ;
  wire \divide_freq/counter_addsub0000<2>/CYINIT_835 ;
  wire \divide_freq/counter<2>107_829 ;
  wire \divide_freq/counter_addsub0000<2>/XORG_827 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[2] ;
  wire \divide_freq/counter_addsub0000<2>/CYSELF_825 ;
  wire \divide_freq/counter_addsub0000<2>/CYMUXFAST_824 ;
  wire \divide_freq/counter_addsub0000<2>/CYAND_823 ;
  wire \divide_freq/counter_addsub0000<2>/FASTCARRY_822 ;
  wire \divide_freq/counter_addsub0000<2>/CYMUXG2_821 ;
  wire \divide_freq/counter_addsub0000<2>/CYMUXF2_820 ;
  wire \divide_freq/counter_addsub0000<2>/LOGIC_ZERO_819 ;
  wire \divide_freq/counter_addsub0000<2>/CYSELG_812 ;
  wire \divide_freq/counter_mux0000<3>1_811 ;
  wire \divide_freq/counter_addsub0000<4>/XORF_874 ;
  wire \divide_freq/counter_addsub0000<4>/CYINIT_873 ;
  wire \divide_freq/counter_mux0000<4>1_866 ;
  wire \divide_freq/counter_addsub0000<4>/XORG_864 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[4] ;
  wire \divide_freq/counter_addsub0000<4>/CYSELF_862 ;
  wire \divide_freq/counter_addsub0000<4>/CYMUXFAST_861 ;
  wire \divide_freq/counter_addsub0000<4>/CYAND_860 ;
  wire \divide_freq/counter_addsub0000<4>/FASTCARRY_859 ;
  wire \divide_freq/counter_addsub0000<4>/CYMUXG2_858 ;
  wire \divide_freq/counter_addsub0000<4>/CYMUXF2_857 ;
  wire \divide_freq/counter_addsub0000<4>/LOGIC_ZERO_856 ;
  wire \divide_freq/counter_addsub0000<4>/CYSELG_849 ;
  wire \divide_freq/counter_mux0000<5>1_848 ;
  wire \divide_freq/counter_addsub0000<6>/XORF_912 ;
  wire \divide_freq/counter_addsub0000<6>/CYINIT_911 ;
  wire \divide_freq/counter_mux0000<6>1_904 ;
  wire \divide_freq/counter_addsub0000<6>/XORG_902 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[6] ;
  wire \divide_freq/counter_addsub0000<6>/CYSELF_900 ;
  wire \divide_freq/counter_addsub0000<6>/CYMUXFAST_899 ;
  wire \divide_freq/counter_addsub0000<6>/CYAND_898 ;
  wire \divide_freq/counter_addsub0000<6>/FASTCARRY_897 ;
  wire \divide_freq/counter_addsub0000<6>/CYMUXG2_896 ;
  wire \divide_freq/counter_addsub0000<6>/CYMUXF2_895 ;
  wire \divide_freq/counter_addsub0000<6>/LOGIC_ZERO_894 ;
  wire \divide_freq/counter_addsub0000<6>/CYSELG_887 ;
  wire \divide_freq/counter_mux0000<7>1_886 ;
  wire \divide_freq/counter_addsub0000<8>/XORF_950 ;
  wire \divide_freq/counter_addsub0000<8>/CYINIT_949 ;
  wire \divide_freq/counter_mux0000<8>1_942 ;
  wire \divide_freq/counter_addsub0000<8>/XORG_940 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[8] ;
  wire \divide_freq/counter_addsub0000<8>/CYSELF_938 ;
  wire \divide_freq/counter_addsub0000<8>/CYMUXFAST_937 ;
  wire \divide_freq/counter_addsub0000<8>/CYAND_936 ;
  wire \divide_freq/counter_addsub0000<8>/FASTCARRY_935 ;
  wire \divide_freq/counter_addsub0000<8>/CYMUXG2_934 ;
  wire \divide_freq/counter_addsub0000<8>/CYMUXF2_933 ;
  wire \divide_freq/counter_addsub0000<8>/LOGIC_ZERO_932 ;
  wire \divide_freq/counter_addsub0000<8>/CYSELG_925 ;
  wire \divide_freq/counter_mux0000<9>1_924 ;
  wire \divide_freq/counter_addsub0000<10>/XORF_988 ;
  wire \divide_freq/counter_addsub0000<10>/CYINIT_987 ;
  wire \divide_freq/counter_mux0000<10>1_980 ;
  wire \divide_freq/counter_addsub0000<10>/XORG_978 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[10] ;
  wire \divide_freq/counter_addsub0000<10>/CYSELF_976 ;
  wire \divide_freq/counter_addsub0000<10>/CYMUXFAST_975 ;
  wire \divide_freq/counter_addsub0000<10>/CYAND_974 ;
  wire \divide_freq/counter_addsub0000<10>/FASTCARRY_973 ;
  wire \divide_freq/counter_addsub0000<10>/CYMUXG2_972 ;
  wire \divide_freq/counter_addsub0000<10>/CYMUXF2_971 ;
  wire \divide_freq/counter_addsub0000<10>/LOGIC_ZERO_970 ;
  wire \divide_freq/counter_addsub0000<10>/CYSELG_963 ;
  wire \divide_freq/counter_mux0000<11>1_962 ;
  wire \divide_freq/counter_addsub0000<12>/XORF_1026 ;
  wire \divide_freq/counter_addsub0000<12>/CYINIT_1025 ;
  wire \divide_freq/counter_mux0000<12>1_1018 ;
  wire \divide_freq/counter_addsub0000<12>/XORG_1016 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[12] ;
  wire \divide_freq/counter_addsub0000<12>/CYSELF_1014 ;
  wire \divide_freq/counter_addsub0000<12>/CYMUXFAST_1013 ;
  wire \divide_freq/counter_addsub0000<12>/CYAND_1012 ;
  wire \divide_freq/counter_addsub0000<12>/FASTCARRY_1011 ;
  wire \divide_freq/counter_addsub0000<12>/CYMUXG2_1010 ;
  wire \divide_freq/counter_addsub0000<12>/CYMUXF2_1009 ;
  wire \divide_freq/counter_addsub0000<12>/LOGIC_ZERO_1008 ;
  wire \divide_freq/counter_addsub0000<12>/CYSELG_1001 ;
  wire \divide_freq/counter_mux0000<13>1_1000 ;
  wire \divide_freq/counter_addsub0000<14>/XORF_1064 ;
  wire \divide_freq/counter_addsub0000<14>/CYINIT_1063 ;
  wire \divide_freq/counter_mux0000<14>1_1056 ;
  wire \divide_freq/counter_addsub0000<14>/XORG_1054 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[14] ;
  wire \divide_freq/counter_addsub0000<14>/CYSELF_1052 ;
  wire \divide_freq/counter_addsub0000<14>/CYMUXFAST_1051 ;
  wire \divide_freq/counter_addsub0000<14>/CYAND_1050 ;
  wire \divide_freq/counter_addsub0000<14>/FASTCARRY_1049 ;
  wire \divide_freq/counter_addsub0000<14>/CYMUXG2_1048 ;
  wire \divide_freq/counter_addsub0000<14>/CYMUXF2_1047 ;
  wire \divide_freq/counter_addsub0000<14>/LOGIC_ZERO_1046 ;
  wire \divide_freq/counter_addsub0000<14>/CYSELG_1039 ;
  wire \divide_freq/counter_mux0000<15>1_1038 ;
  wire \divide_freq/counter_addsub0000<16>/XORF_1102 ;
  wire \divide_freq/counter_addsub0000<16>/CYINIT_1101 ;
  wire \divide_freq/counter_mux0000<16>1_1094 ;
  wire \divide_freq/counter_addsub0000<16>/XORG_1092 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[16] ;
  wire \divide_freq/counter_addsub0000<16>/CYSELF_1090 ;
  wire \divide_freq/counter_addsub0000<16>/CYMUXFAST_1089 ;
  wire \divide_freq/counter_addsub0000<16>/CYAND_1088 ;
  wire \divide_freq/counter_addsub0000<16>/FASTCARRY_1087 ;
  wire \divide_freq/counter_addsub0000<16>/CYMUXG2_1086 ;
  wire \divide_freq/counter_addsub0000<16>/CYMUXF2_1085 ;
  wire \divide_freq/counter_addsub0000<16>/LOGIC_ZERO_1084 ;
  wire \divide_freq/counter_addsub0000<16>/CYSELG_1077 ;
  wire \divide_freq/counter_mux0000<17>1_1076 ;
  wire \divide_freq/counter_addsub0000<18>/XORF_1140 ;
  wire \divide_freq/counter_addsub0000<18>/CYINIT_1139 ;
  wire \divide_freq/counter_mux0000<18>1_1132 ;
  wire \divide_freq/counter_addsub0000<18>/XORG_1130 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[18] ;
  wire \divide_freq/counter_addsub0000<18>/CYSELF_1128 ;
  wire \divide_freq/counter_addsub0000<18>/CYMUXFAST_1127 ;
  wire \divide_freq/counter_addsub0000<18>/CYAND_1126 ;
  wire \divide_freq/counter_addsub0000<18>/FASTCARRY_1125 ;
  wire \divide_freq/counter_addsub0000<18>/CYMUXG2_1124 ;
  wire \divide_freq/counter_addsub0000<18>/CYMUXF2_1123 ;
  wire \divide_freq/counter_addsub0000<18>/LOGIC_ZERO_1122 ;
  wire \divide_freq/counter_addsub0000<18>/CYSELG_1115 ;
  wire \divide_freq/counter_mux0000<19>1_1114 ;
  wire \divide_freq/counter_addsub0000<20>/XORF_1178 ;
  wire \divide_freq/counter_addsub0000<20>/CYINIT_1177 ;
  wire \divide_freq/counter_mux0000<20>1_1170 ;
  wire \divide_freq/counter_addsub0000<20>/XORG_1168 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[20] ;
  wire \divide_freq/counter_addsub0000<20>/CYSELF_1166 ;
  wire \divide_freq/counter_addsub0000<20>/CYMUXFAST_1165 ;
  wire \divide_freq/counter_addsub0000<20>/CYAND_1164 ;
  wire \divide_freq/counter_addsub0000<20>/FASTCARRY_1163 ;
  wire \divide_freq/counter_addsub0000<20>/CYMUXG2_1162 ;
  wire \divide_freq/counter_addsub0000<20>/CYMUXF2_1161 ;
  wire \divide_freq/counter_addsub0000<20>/LOGIC_ZERO_1160 ;
  wire \divide_freq/counter_addsub0000<20>/CYSELG_1153 ;
  wire \divide_freq/counter_mux0000<21>1_1152 ;
  wire \divide_freq/counter_addsub0000<22>/XORF_1216 ;
  wire \divide_freq/counter_addsub0000<22>/CYINIT_1215 ;
  wire \divide_freq/counter_mux0000<22>1_1208 ;
  wire \divide_freq/counter_addsub0000<22>/XORG_1206 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[22] ;
  wire \divide_freq/counter_addsub0000<22>/CYSELF_1204 ;
  wire \divide_freq/counter_addsub0000<22>/CYMUXFAST_1203 ;
  wire \divide_freq/counter_addsub0000<22>/CYAND_1202 ;
  wire \divide_freq/counter_addsub0000<22>/FASTCARRY_1201 ;
  wire \divide_freq/counter_addsub0000<22>/CYMUXG2_1200 ;
  wire \divide_freq/counter_addsub0000<22>/CYMUXF2_1199 ;
  wire \divide_freq/counter_addsub0000<22>/LOGIC_ZERO_1198 ;
  wire \divide_freq/counter_addsub0000<22>/CYSELG_1191 ;
  wire \divide_freq/counter_mux0000<23>1_1190 ;
  wire \divide_freq/counter_addsub0000<24>/XORF_1254 ;
  wire \divide_freq/counter_addsub0000<24>/CYINIT_1253 ;
  wire \divide_freq/counter_mux0000<24>1_1246 ;
  wire \divide_freq/counter_addsub0000<24>/XORG_1244 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[24] ;
  wire \divide_freq/counter_addsub0000<24>/CYSELF_1242 ;
  wire \divide_freq/counter_addsub0000<24>/CYMUXFAST_1241 ;
  wire \divide_freq/counter_addsub0000<24>/CYAND_1240 ;
  wire \divide_freq/counter_addsub0000<24>/FASTCARRY_1239 ;
  wire \divide_freq/counter_addsub0000<24>/CYMUXG2_1238 ;
  wire \divide_freq/counter_addsub0000<24>/CYMUXF2_1237 ;
  wire \divide_freq/counter_addsub0000<24>/LOGIC_ZERO_1236 ;
  wire \divide_freq/counter_addsub0000<24>/CYSELG_1229 ;
  wire \divide_freq/counter_mux0000<25>1_1228 ;
  wire \divide_freq/counter_addsub0000<26>/XORF_1292 ;
  wire \divide_freq/counter_addsub0000<26>/CYINIT_1291 ;
  wire \divide_freq/counter_mux0000<26>1_1284 ;
  wire \divide_freq/counter_addsub0000<26>/XORG_1282 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[26] ;
  wire \divide_freq/counter_addsub0000<26>/CYSELF_1280 ;
  wire \divide_freq/counter_addsub0000<26>/CYMUXFAST_1279 ;
  wire \divide_freq/counter_addsub0000<26>/CYAND_1278 ;
  wire \divide_freq/counter_addsub0000<26>/FASTCARRY_1277 ;
  wire \divide_freq/counter_addsub0000<26>/CYMUXG2_1276 ;
  wire \divide_freq/counter_addsub0000<26>/CYMUXF2_1275 ;
  wire \divide_freq/counter_addsub0000<26>/LOGIC_ZERO_1274 ;
  wire \divide_freq/counter_addsub0000<26>/CYSELG_1267 ;
  wire \divide_freq/counter_mux0000<27>1_1266 ;
  wire \divide_freq/counter_addsub0000<28>/XORF_1330 ;
  wire \divide_freq/counter_addsub0000<28>/CYINIT_1329 ;
  wire \divide_freq/counter_mux0000<28>1_1322 ;
  wire \divide_freq/counter_addsub0000<28>/XORG_1320 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[28] ;
  wire \divide_freq/counter_addsub0000<28>/CYSELF_1318 ;
  wire \divide_freq/counter_addsub0000<28>/CYMUXFAST_1317 ;
  wire \divide_freq/counter_addsub0000<28>/CYAND_1316 ;
  wire \divide_freq/counter_addsub0000<28>/FASTCARRY_1315 ;
  wire \divide_freq/counter_addsub0000<28>/CYMUXG2_1314 ;
  wire \divide_freq/counter_addsub0000<28>/CYMUXF2_1313 ;
  wire \divide_freq/counter_addsub0000<28>/LOGIC_ZERO_1312 ;
  wire \divide_freq/counter_addsub0000<28>/CYSELG_1305 ;
  wire \divide_freq/counter_mux0000<29>1_1304 ;
  wire \divide_freq/counter_addsub0000<30>/XORF_1361 ;
  wire \divide_freq/counter_addsub0000<30>/LOGIC_ZERO_1360 ;
  wire \divide_freq/counter_addsub0000<30>/CYINIT_1359 ;
  wire \divide_freq/counter_addsub0000<30>/CYSELF_1352 ;
  wire \divide_freq/counter_mux0000<30>1_1351 ;
  wire \divide_freq/counter_addsub0000<30>/XORG_1349 ;
  wire \divide_freq/Madd_counter_addsub0000_cy[30] ;
  wire \divide_freq/counter_mux0000<31>1_1346 ;
  wire \divide_freq/COUT_not0001_wg_cy<1>/CYINIT_1391 ;
  wire \divide_freq/COUT_not0001_wg_cy<1>/CYSELF_1385 ;
  wire \divide_freq/COUT_not0001_wg_cy<1>/BXINV_1383 ;
  wire \divide_freq/COUT_not0001_wg_cy<1>/CYMUXG_1382 ;
  wire \divide_freq/COUT_not0001_wg_cy<1>/LOGIC_ONE_1380 ;
  wire \divide_freq/COUT_not0001_wg_cy<1>/CYSELG_1374 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/CYSELF_1415 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/CYMUXFAST_1414 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/CYAND_1413 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/FASTCARRY_1412 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/CYMUXG2_1411 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/CYMUXF2_1410 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/LOGIC_ONE_1409 ;
  wire \divide_freq/COUT_not0001_wg_cy<3>/CYSELG_1403 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/CYSELF_1445 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/CYMUXFAST_1444 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/CYAND_1443 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/FASTCARRY_1442 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/CYMUXG2_1441 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/CYMUXF2_1440 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/LOGIC_ONE_1439 ;
  wire \divide_freq/COUT_not0001_wg_cy<5>/CYSELG_1433 ;
  wire \divide_freq/COUT_not0001/CYSELF_1475 ;
  wire \divide_freq/COUT_not0001/CYMUXFAST_1474 ;
  wire \divide_freq/COUT_not0001/CYAND_1473 ;
  wire \divide_freq/COUT_not0001/FASTCARRY_1472 ;
  wire \divide_freq/COUT_not0001/CYMUXG2_1471 ;
  wire \divide_freq/COUT_not0001/CYMUXF2_1470 ;
  wire \divide_freq/COUT_not0001/LOGIC_ONE_1469 ;
  wire \divide_freq/COUT_not0001/CYSELG_1463 ;
  wire \led0/O ;
  wire \led0/T ;
  wire \led1/O ;
  wire \led1/T ;
  wire \led2/O ;
  wire \led2/T ;
  wire \led3/O ;
  wire \led3/T ;
  wire \led4/O ;
  wire \led4/T ;
  wire \led5/O ;
  wire \clk/INBUF ;
  wire \key0/INBUF ;
  wire \key1/INBUF ;
  wire \key2/INBUF ;
  wire \counter/t4/res_not0002/F5MUX_1657 ;
  wire \counter/t4/res_not00021_1655 ;
  wire \counter/t4/res_not0002/BXINV_1650 ;
  wire \counter/t4/res_not0002/G ;
  wire \counter/t7/res_not000212_1686 ;
  wire \counter/t4/res_mux0001/DYMUX_1678 ;
  wire \counter/t4/res_mux0002 ;
  wire \counter/t4/res_mux0001/CLKINVNOT ;
  wire \counter/t1/res_not0002 ;
  wire \counter/t6/res_mux0001/DYMUX_1706 ;
  wire \counter/t6/res_mux0002 ;
  wire \counter/t6/res_mux0001/CLKINVNOT ;
  wire \counter/t2/res_not0002 ;
  wire \counter/t1/res_mux0001/DYMUX_1737 ;
  wire \counter/t1/res_mux0002 ;
  wire \counter/t1/res_mux0001/CLKINVNOT ;
  wire \counter/t0/res_not0002 ;
  wire \counter/t3/res_mux0001/DYMUX_1767 ;
  wire \counter/t3/res_mux0002 ;
  wire \counter/t3/res_mux0001/CLKINVNOT ;
  wire \counter/RCO12_1806 ;
  wire \counter/t5/res_mux0001/DYMUX_1798 ;
  wire \counter/t5/res_mux0002 ;
  wire \counter/t5/res_mux0001/CLKINVNOT ;
  wire \counter/t3/res_not0002 ;
  wire \counter/t7/res_mux0001/DYMUX_1828 ;
  wire \counter/t7/res_mux0002 ;
  wire \counter/t7/res_mux0001/CLKINVNOT ;
  wire \counter/t0/res_mux0001/DYMUX_1853 ;
  wire \counter/t0/res_mux0002 ;
  wire \counter/t0/res_mux0001/CLKINVNOT ;
  wire \counter/t2/res_mux0001/DYMUX_1871 ;
  wire \counter/t2/res_mux0002 ;
  wire \counter/t2/res_mux0001/CLKINVNOT ;
  wire \divide_freq/counter<13>_pack_2 ;
  wire \divide_freq/Madd_counter_addsub0000_lut<0>_pack_2 ;
  wire \divide_freq/counter<21>_pack_3 ;
  wire \divide_freq/counter<10>_pack_2 ;
  wire \divide_freq/counter<9>_pack_3 ;
  wire \divide_freq/COUT/FFY/RST ;
  wire \divide_freq/COUT/DYMUX_1954 ;
  wire \divide_freq/COUT/BYINV_1953 ;
  wire \divide_freq/COUT/CLKINV_1951 ;
  wire \divide_freq/counter<2>31_1982 ;
  wire \divide_freq/counter<2>30_pack_1 ;
  wire \divide_freq/counter<12>_pack_2 ;
  wire \divide_freq/counter<14>_pack_3 ;
  wire \divide_freq/counter<15>_pack_2 ;
  wire \divide_freq/counter<22>_pack_3 ;
  wire \divide_freq/counter<16>_pack_2 ;
  wire \divide_freq/counter<30>_pack_3 ;
  wire \divide_freq/counter<2>59_2078 ;
  wire \divide_freq/counter<23>_pack_2 ;
  wire \divide_freq/counter<2>76_2102 ;
  wire \divide_freq/counter<31>_pack_2 ;
  wire \divide_freq/counter<17>_pack_2 ;
  wire \divide_freq/counter<24>_pack_3 ;
  wire \divide_freq/counter<18>_pack_2 ;
  wire \divide_freq/counter<25>_pack_3 ;
  wire \divide_freq/counter<19>_pack_2 ;
  wire \divide_freq/counter<26>_pack_3 ;
  wire \divide_freq/counter<2>97_pack_1 ;
  wire \divide_freq/counter<2>71_2222 ;
  wire \divide_freq/counter<27>_pack_2 ;
  wire \divide_freq/counter<1>_pack_2 ;
  wire \divide_freq/counter<28>_pack_3 ;
  wire \divide_freq/counter<2>7_2270 ;
  wire \divide_freq/counter<3>_pack_2 ;
  wire \divide_freq/counter<20>_pack_2 ;
  wire \divide_freq/counter<29>_pack_3 ;
  wire \counter/t6/res_not0002_2318 ;
  wire N4_pack_1;
  wire \counter/t5/res_not0002_2342 ;
  wire N2_pack_1;
  wire led5_OBUF_2366;
  wire \counter/RCO25_pack_1 ;
  wire \counter/t7/res_not0002 ;
  wire \counter/t7/res_not000225_pack_1 ;
  wire \divide_freq/counter<5>_pack_2 ;
  wire \divide_freq/counter<4>_pack_3 ;
  wire \divide_freq/counter<2>85_2438 ;
  wire N6_pack_1;
  wire \divide_freq/counter<8>_pack_2 ;
  wire \divide_freq/counter<6>_pack_3 ;
  wire \divide_freq/counter<2>25_2486 ;
  wire \divide_freq/counter<11>_pack_2 ;
  wire \divide_freq/counter<2>12_2510 ;
  wire \divide_freq/counter<7>_pack_2 ;
  wire \led0/OUTPUT/OFF/O1INV_1500 ;
  wire \counter/r0/res_mux0001_1503 ;
  wire \led0/OUTPUT/OTCLK1INV_1497 ;
  wire \led1/OUTPUT/OFF/O1INV_1524 ;
  wire \counter/r1/res_mux0001_1527 ;
  wire \led1/OUTPUT/OTCLK1INV_1521 ;
  wire \led2/OUTPUT/OFF/O1INV_1548 ;
  wire \counter/r2/res_mux0001_1551 ;
  wire \led2/OUTPUT/OTCLK1INV_1545 ;
  wire \led3/OUTPUT/OFF/O1INV_1572 ;
  wire \counter/r3/res_mux0001_1575 ;
  wire \led3/OUTPUT/OTCLK1INV_1569 ;
  wire \led4/OUTPUT/OFF/O1INV_1596 ;
  wire \counter/r4/res_mux0001_1599 ;
  wire \led4/OUTPUT/OTCLK1INV_1593 ;
  wire VCC;
  wire \NlwInverterSignal_counter/t4/res_mux0001/CLK ;
  wire GND;
  wire \NlwInverterSignal_counter/t6/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/t1/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/t5/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/t0/res_mux0001/CLK ;
  wire \NlwInverterSignal_divide_freq/COUT/CLK ;
  wire \NlwInverterSignal_counter/t2/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/t7/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/t3/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/r0/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/r1/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/r2/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/r3/res_mux0001/CLK ;
  wire \NlwInverterSignal_counter/r4/res_mux0001/CLK ;
  wire [0 : 0] \divide_freq/Madd_counter_addsub0000_lut ;
  wire [31 : 1] \divide_freq/counter ;
  wire [31 : 0] \divide_freq/counter_addsub0000 ;
  wire [7 : 0] \divide_freq/COUT_not0001_wg_lut ;
  wire [0 : 0] \divide_freq/COUT_not0001_wg_cy ;
  wire [2 : 2] \divide_freq/counter_mux0000 ;
  initial $sdf_annotate("netgen/par/fpga_timesim.sdf");
  X_ZERO #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<0>/LOGIC_ZERO_780 )
  );
  X_ONE #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/LOGIC_ONE  (
    .O(\divide_freq/counter_addsub0000<0>/LOGIC_ONE_797 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/XUSED  (
    .I(\divide_freq/counter_addsub0000<0>/XORF_798 ),
    .O(\divide_freq/counter_addsub0000 [0])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/XORF  (
    .I0(\divide_freq/counter_addsub0000<0>/CYINIT_796 ),
    .I1(\divide_freq/counter_addsub0000<0>/F ),
    .O(\divide_freq/counter_addsub0000<0>/XORF_798 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<0>/LOGIC_ONE_797 ),
    .IB(\divide_freq/counter_addsub0000<0>/CYINIT_796 ),
    .SEL(\divide_freq/counter_addsub0000<0>/CYSELF_787 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/CYINIT  (
    .I(\divide_freq/counter_addsub0000<0>/BXINV_785 ),
    .O(\divide_freq/counter_addsub0000<0>/CYINIT_796 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/CYSELF  (
    .I(\divide_freq/counter_addsub0000<0>/F ),
    .O(\divide_freq/counter_addsub0000<0>/CYSELF_787 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/BXINV  (
    .I(1'b0),
    .O(\divide_freq/counter_addsub0000<0>/BXINV_785 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/YUSED  (
    .I(\divide_freq/counter_addsub0000<0>/XORG_783 ),
    .O(\divide_freq/counter_addsub0000 [1])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[0] ),
    .I1(\divide_freq/counter_mux0000<1>1_772 ),
    .O(\divide_freq/counter_addsub0000<0>/XORG_783 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<0>/CYMUXG_782 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/CYMUXG  (
    .IA(\divide_freq/counter_addsub0000<0>/LOGIC_ZERO_780 ),
    .IB(\divide_freq/Madd_counter_addsub0000_cy[0] ),
    .SEL(\divide_freq/counter_addsub0000<0>/CYSELG_773 ),
    .O(\divide_freq/counter_addsub0000<0>/CYMUXG_782 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/CYSELG  (
    .I(\divide_freq/counter_mux0000<1>1_772 ),
    .O(\divide_freq/counter_addsub0000<0>/CYSELG_773 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<2>/LOGIC_ZERO_819 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/XUSED  (
    .I(\divide_freq/counter_addsub0000<2>/XORF_836 ),
    .O(\divide_freq/counter_addsub0000 [2])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/XORF  (
    .I0(\divide_freq/counter_addsub0000<2>/CYINIT_835 ),
    .I1(\divide_freq/counter<2>107_829 ),
    .O(\divide_freq/counter_addsub0000<2>/XORF_836 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<2>/LOGIC_ZERO_819 ),
    .IB(\divide_freq/counter_addsub0000<2>/CYINIT_835 ),
    .SEL(\divide_freq/counter_addsub0000<2>/CYSELF_825 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<2>/LOGIC_ZERO_819 ),
    .IB(\divide_freq/counter_addsub0000<2>/LOGIC_ZERO_819 ),
    .SEL(\divide_freq/counter_addsub0000<2>/CYSELF_825 ),
    .O(\divide_freq/counter_addsub0000<2>/CYMUXF2_820 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[1] ),
    .O(\divide_freq/counter_addsub0000<2>/CYINIT_835 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYSELF  (
    .I(\divide_freq/counter<2>107_829 ),
    .O(\divide_freq/counter_addsub0000<2>/CYSELF_825 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/YUSED  (
    .I(\divide_freq/counter_addsub0000<2>/XORG_827 ),
    .O(\divide_freq/counter_addsub0000 [3])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[2] ),
    .I1(\divide_freq/counter_mux0000<3>1_811 ),
    .O(\divide_freq/counter_addsub0000<2>/XORG_827 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<2>/CYMUXFAST_824 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[1] ),
    .O(\divide_freq/counter_addsub0000<2>/FASTCARRY_822 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<2>/CYSELG_812 ),
    .I1(\divide_freq/counter_addsub0000<2>/CYSELF_825 ),
    .O(\divide_freq/counter_addsub0000<2>/CYAND_823 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<2>/CYMUXG2_821 ),
    .IB(\divide_freq/counter_addsub0000<2>/FASTCARRY_822 ),
    .SEL(\divide_freq/counter_addsub0000<2>/CYAND_823 ),
    .O(\divide_freq/counter_addsub0000<2>/CYMUXFAST_824 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<2>/LOGIC_ZERO_819 ),
    .IB(\divide_freq/counter_addsub0000<2>/CYMUXF2_820 ),
    .SEL(\divide_freq/counter_addsub0000<2>/CYSELG_812 ),
    .O(\divide_freq/counter_addsub0000<2>/CYMUXG2_821 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_addsub0000<2>/CYSELG  (
    .I(\divide_freq/counter_mux0000<3>1_811 ),
    .O(\divide_freq/counter_addsub0000<2>/CYSELG_812 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<4>/LOGIC_ZERO_856 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/XUSED  (
    .I(\divide_freq/counter_addsub0000<4>/XORF_874 ),
    .O(\divide_freq/counter_addsub0000 [4])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/XORF  (
    .I0(\divide_freq/counter_addsub0000<4>/CYINIT_873 ),
    .I1(\divide_freq/counter_mux0000<4>1_866 ),
    .O(\divide_freq/counter_addsub0000<4>/XORF_874 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<4>/LOGIC_ZERO_856 ),
    .IB(\divide_freq/counter_addsub0000<4>/CYINIT_873 ),
    .SEL(\divide_freq/counter_addsub0000<4>/CYSELF_862 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<4>/LOGIC_ZERO_856 ),
    .IB(\divide_freq/counter_addsub0000<4>/LOGIC_ZERO_856 ),
    .SEL(\divide_freq/counter_addsub0000<4>/CYSELF_862 ),
    .O(\divide_freq/counter_addsub0000<4>/CYMUXF2_857 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[3] ),
    .O(\divide_freq/counter_addsub0000<4>/CYINIT_873 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYSELF  (
    .I(\divide_freq/counter_mux0000<4>1_866 ),
    .O(\divide_freq/counter_addsub0000<4>/CYSELF_862 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/YUSED  (
    .I(\divide_freq/counter_addsub0000<4>/XORG_864 ),
    .O(\divide_freq/counter_addsub0000 [5])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[4] ),
    .I1(\divide_freq/counter_mux0000<5>1_848 ),
    .O(\divide_freq/counter_addsub0000<4>/XORG_864 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<4>/CYMUXFAST_861 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[3] ),
    .O(\divide_freq/counter_addsub0000<4>/FASTCARRY_859 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<4>/CYSELG_849 ),
    .I1(\divide_freq/counter_addsub0000<4>/CYSELF_862 ),
    .O(\divide_freq/counter_addsub0000<4>/CYAND_860 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<4>/CYMUXG2_858 ),
    .IB(\divide_freq/counter_addsub0000<4>/FASTCARRY_859 ),
    .SEL(\divide_freq/counter_addsub0000<4>/CYAND_860 ),
    .O(\divide_freq/counter_addsub0000<4>/CYMUXFAST_861 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<4>/LOGIC_ZERO_856 ),
    .IB(\divide_freq/counter_addsub0000<4>/CYMUXF2_857 ),
    .SEL(\divide_freq/counter_addsub0000<4>/CYSELG_849 ),
    .O(\divide_freq/counter_addsub0000<4>/CYMUXG2_858 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_addsub0000<4>/CYSELG  (
    .I(\divide_freq/counter_mux0000<5>1_848 ),
    .O(\divide_freq/counter_addsub0000<4>/CYSELG_849 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<6>/LOGIC_ZERO_894 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/XUSED  (
    .I(\divide_freq/counter_addsub0000<6>/XORF_912 ),
    .O(\divide_freq/counter_addsub0000 [6])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/XORF  (
    .I0(\divide_freq/counter_addsub0000<6>/CYINIT_911 ),
    .I1(\divide_freq/counter_mux0000<6>1_904 ),
    .O(\divide_freq/counter_addsub0000<6>/XORF_912 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<6>/LOGIC_ZERO_894 ),
    .IB(\divide_freq/counter_addsub0000<6>/CYINIT_911 ),
    .SEL(\divide_freq/counter_addsub0000<6>/CYSELF_900 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[6] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<6>/LOGIC_ZERO_894 ),
    .IB(\divide_freq/counter_addsub0000<6>/LOGIC_ZERO_894 ),
    .SEL(\divide_freq/counter_addsub0000<6>/CYSELF_900 ),
    .O(\divide_freq/counter_addsub0000<6>/CYMUXF2_895 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[5] ),
    .O(\divide_freq/counter_addsub0000<6>/CYINIT_911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYSELF  (
    .I(\divide_freq/counter_mux0000<6>1_904 ),
    .O(\divide_freq/counter_addsub0000<6>/CYSELF_900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/YUSED  (
    .I(\divide_freq/counter_addsub0000<6>/XORG_902 ),
    .O(\divide_freq/counter_addsub0000 [7])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[6] ),
    .I1(\divide_freq/counter_mux0000<7>1_886 ),
    .O(\divide_freq/counter_addsub0000<6>/XORG_902 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<6>/CYMUXFAST_899 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[5] ),
    .O(\divide_freq/counter_addsub0000<6>/FASTCARRY_897 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<6>/CYSELG_887 ),
    .I1(\divide_freq/counter_addsub0000<6>/CYSELF_900 ),
    .O(\divide_freq/counter_addsub0000<6>/CYAND_898 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<6>/CYMUXG2_896 ),
    .IB(\divide_freq/counter_addsub0000<6>/FASTCARRY_897 ),
    .SEL(\divide_freq/counter_addsub0000<6>/CYAND_898 ),
    .O(\divide_freq/counter_addsub0000<6>/CYMUXFAST_899 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<6>/LOGIC_ZERO_894 ),
    .IB(\divide_freq/counter_addsub0000<6>/CYMUXF2_895 ),
    .SEL(\divide_freq/counter_addsub0000<6>/CYSELG_887 ),
    .O(\divide_freq/counter_addsub0000<6>/CYMUXG2_896 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_addsub0000<6>/CYSELG  (
    .I(\divide_freq/counter_mux0000<7>1_886 ),
    .O(\divide_freq/counter_addsub0000<6>/CYSELG_887 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<8>/LOGIC_ZERO_932 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/XUSED  (
    .I(\divide_freq/counter_addsub0000<8>/XORF_950 ),
    .O(\divide_freq/counter_addsub0000 [8])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/XORF  (
    .I0(\divide_freq/counter_addsub0000<8>/CYINIT_949 ),
    .I1(\divide_freq/counter_mux0000<8>1_942 ),
    .O(\divide_freq/counter_addsub0000<8>/XORF_950 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<8>/LOGIC_ZERO_932 ),
    .IB(\divide_freq/counter_addsub0000<8>/CYINIT_949 ),
    .SEL(\divide_freq/counter_addsub0000<8>/CYSELF_938 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<8>/LOGIC_ZERO_932 ),
    .IB(\divide_freq/counter_addsub0000<8>/LOGIC_ZERO_932 ),
    .SEL(\divide_freq/counter_addsub0000<8>/CYSELF_938 ),
    .O(\divide_freq/counter_addsub0000<8>/CYMUXF2_933 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[7] ),
    .O(\divide_freq/counter_addsub0000<8>/CYINIT_949 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYSELF  (
    .I(\divide_freq/counter_mux0000<8>1_942 ),
    .O(\divide_freq/counter_addsub0000<8>/CYSELF_938 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/YUSED  (
    .I(\divide_freq/counter_addsub0000<8>/XORG_940 ),
    .O(\divide_freq/counter_addsub0000 [9])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[8] ),
    .I1(\divide_freq/counter_mux0000<9>1_924 ),
    .O(\divide_freq/counter_addsub0000<8>/XORG_940 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<8>/CYMUXFAST_937 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[9] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[7] ),
    .O(\divide_freq/counter_addsub0000<8>/FASTCARRY_935 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<8>/CYSELG_925 ),
    .I1(\divide_freq/counter_addsub0000<8>/CYSELF_938 ),
    .O(\divide_freq/counter_addsub0000<8>/CYAND_936 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<8>/CYMUXG2_934 ),
    .IB(\divide_freq/counter_addsub0000<8>/FASTCARRY_935 ),
    .SEL(\divide_freq/counter_addsub0000<8>/CYAND_936 ),
    .O(\divide_freq/counter_addsub0000<8>/CYMUXFAST_937 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<8>/LOGIC_ZERO_932 ),
    .IB(\divide_freq/counter_addsub0000<8>/CYMUXF2_933 ),
    .SEL(\divide_freq/counter_addsub0000<8>/CYSELG_925 ),
    .O(\divide_freq/counter_addsub0000<8>/CYMUXG2_934 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_addsub0000<8>/CYSELG  (
    .I(\divide_freq/counter_mux0000<9>1_924 ),
    .O(\divide_freq/counter_addsub0000<8>/CYSELG_925 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<10>/LOGIC_ZERO_970 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/XUSED  (
    .I(\divide_freq/counter_addsub0000<10>/XORF_988 ),
    .O(\divide_freq/counter_addsub0000 [10])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/XORF  (
    .I0(\divide_freq/counter_addsub0000<10>/CYINIT_987 ),
    .I1(\divide_freq/counter_mux0000<10>1_980 ),
    .O(\divide_freq/counter_addsub0000<10>/XORF_988 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<10>/LOGIC_ZERO_970 ),
    .IB(\divide_freq/counter_addsub0000<10>/CYINIT_987 ),
    .SEL(\divide_freq/counter_addsub0000<10>/CYSELF_976 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[10] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<10>/LOGIC_ZERO_970 ),
    .IB(\divide_freq/counter_addsub0000<10>/LOGIC_ZERO_970 ),
    .SEL(\divide_freq/counter_addsub0000<10>/CYSELF_976 ),
    .O(\divide_freq/counter_addsub0000<10>/CYMUXF2_971 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[9] ),
    .O(\divide_freq/counter_addsub0000<10>/CYINIT_987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYSELF  (
    .I(\divide_freq/counter_mux0000<10>1_980 ),
    .O(\divide_freq/counter_addsub0000<10>/CYSELF_976 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/YUSED  (
    .I(\divide_freq/counter_addsub0000<10>/XORG_978 ),
    .O(\divide_freq/counter_addsub0000 [11])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[10] ),
    .I1(\divide_freq/counter_mux0000<11>1_962 ),
    .O(\divide_freq/counter_addsub0000<10>/XORG_978 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<10>/CYMUXFAST_975 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[11] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[9] ),
    .O(\divide_freq/counter_addsub0000<10>/FASTCARRY_973 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<10>/CYSELG_963 ),
    .I1(\divide_freq/counter_addsub0000<10>/CYSELF_976 ),
    .O(\divide_freq/counter_addsub0000<10>/CYAND_974 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<10>/CYMUXG2_972 ),
    .IB(\divide_freq/counter_addsub0000<10>/FASTCARRY_973 ),
    .SEL(\divide_freq/counter_addsub0000<10>/CYAND_974 ),
    .O(\divide_freq/counter_addsub0000<10>/CYMUXFAST_975 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<10>/LOGIC_ZERO_970 ),
    .IB(\divide_freq/counter_addsub0000<10>/CYMUXF2_971 ),
    .SEL(\divide_freq/counter_addsub0000<10>/CYSELG_963 ),
    .O(\divide_freq/counter_addsub0000<10>/CYMUXG2_972 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_addsub0000<10>/CYSELG  (
    .I(\divide_freq/counter_mux0000<11>1_962 ),
    .O(\divide_freq/counter_addsub0000<10>/CYSELG_963 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<12>/LOGIC_ZERO_1008 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/XUSED  (
    .I(\divide_freq/counter_addsub0000<12>/XORF_1026 ),
    .O(\divide_freq/counter_addsub0000 [12])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/XORF  (
    .I0(\divide_freq/counter_addsub0000<12>/CYINIT_1025 ),
    .I1(\divide_freq/counter_mux0000<12>1_1018 ),
    .O(\divide_freq/counter_addsub0000<12>/XORF_1026 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<12>/LOGIC_ZERO_1008 ),
    .IB(\divide_freq/counter_addsub0000<12>/CYINIT_1025 ),
    .SEL(\divide_freq/counter_addsub0000<12>/CYSELF_1014 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[12] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<12>/LOGIC_ZERO_1008 ),
    .IB(\divide_freq/counter_addsub0000<12>/LOGIC_ZERO_1008 ),
    .SEL(\divide_freq/counter_addsub0000<12>/CYSELF_1014 ),
    .O(\divide_freq/counter_addsub0000<12>/CYMUXF2_1009 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[11] ),
    .O(\divide_freq/counter_addsub0000<12>/CYINIT_1025 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYSELF  (
    .I(\divide_freq/counter_mux0000<12>1_1018 ),
    .O(\divide_freq/counter_addsub0000<12>/CYSELF_1014 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/YUSED  (
    .I(\divide_freq/counter_addsub0000<12>/XORG_1016 ),
    .O(\divide_freq/counter_addsub0000 [13])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[12] ),
    .I1(\divide_freq/counter_mux0000<13>1_1000 ),
    .O(\divide_freq/counter_addsub0000<12>/XORG_1016 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<12>/CYMUXFAST_1013 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[13] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[11] ),
    .O(\divide_freq/counter_addsub0000<12>/FASTCARRY_1011 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<12>/CYSELG_1001 ),
    .I1(\divide_freq/counter_addsub0000<12>/CYSELF_1014 ),
    .O(\divide_freq/counter_addsub0000<12>/CYAND_1012 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<12>/CYMUXG2_1010 ),
    .IB(\divide_freq/counter_addsub0000<12>/FASTCARRY_1011 ),
    .SEL(\divide_freq/counter_addsub0000<12>/CYAND_1012 ),
    .O(\divide_freq/counter_addsub0000<12>/CYMUXFAST_1013 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<12>/LOGIC_ZERO_1008 ),
    .IB(\divide_freq/counter_addsub0000<12>/CYMUXF2_1009 ),
    .SEL(\divide_freq/counter_addsub0000<12>/CYSELG_1001 ),
    .O(\divide_freq/counter_addsub0000<12>/CYMUXG2_1010 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_addsub0000<12>/CYSELG  (
    .I(\divide_freq/counter_mux0000<13>1_1000 ),
    .O(\divide_freq/counter_addsub0000<12>/CYSELG_1001 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<14>/LOGIC_ZERO_1046 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/XUSED  (
    .I(\divide_freq/counter_addsub0000<14>/XORF_1064 ),
    .O(\divide_freq/counter_addsub0000 [14])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/XORF  (
    .I0(\divide_freq/counter_addsub0000<14>/CYINIT_1063 ),
    .I1(\divide_freq/counter_mux0000<14>1_1056 ),
    .O(\divide_freq/counter_addsub0000<14>/XORF_1064 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<14>/LOGIC_ZERO_1046 ),
    .IB(\divide_freq/counter_addsub0000<14>/CYINIT_1063 ),
    .SEL(\divide_freq/counter_addsub0000<14>/CYSELF_1052 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[14] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<14>/LOGIC_ZERO_1046 ),
    .IB(\divide_freq/counter_addsub0000<14>/LOGIC_ZERO_1046 ),
    .SEL(\divide_freq/counter_addsub0000<14>/CYSELF_1052 ),
    .O(\divide_freq/counter_addsub0000<14>/CYMUXF2_1047 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[13] ),
    .O(\divide_freq/counter_addsub0000<14>/CYINIT_1063 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYSELF  (
    .I(\divide_freq/counter_mux0000<14>1_1056 ),
    .O(\divide_freq/counter_addsub0000<14>/CYSELF_1052 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/YUSED  (
    .I(\divide_freq/counter_addsub0000<14>/XORG_1054 ),
    .O(\divide_freq/counter_addsub0000 [15])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[14] ),
    .I1(\divide_freq/counter_mux0000<15>1_1038 ),
    .O(\divide_freq/counter_addsub0000<14>/XORG_1054 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<14>/CYMUXFAST_1051 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[15] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[13] ),
    .O(\divide_freq/counter_addsub0000<14>/FASTCARRY_1049 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<14>/CYSELG_1039 ),
    .I1(\divide_freq/counter_addsub0000<14>/CYSELF_1052 ),
    .O(\divide_freq/counter_addsub0000<14>/CYAND_1050 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<14>/CYMUXG2_1048 ),
    .IB(\divide_freq/counter_addsub0000<14>/FASTCARRY_1049 ),
    .SEL(\divide_freq/counter_addsub0000<14>/CYAND_1050 ),
    .O(\divide_freq/counter_addsub0000<14>/CYMUXFAST_1051 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<14>/LOGIC_ZERO_1046 ),
    .IB(\divide_freq/counter_addsub0000<14>/CYMUXF2_1047 ),
    .SEL(\divide_freq/counter_addsub0000<14>/CYSELG_1039 ),
    .O(\divide_freq/counter_addsub0000<14>/CYMUXG2_1048 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_addsub0000<14>/CYSELG  (
    .I(\divide_freq/counter_mux0000<15>1_1038 ),
    .O(\divide_freq/counter_addsub0000<14>/CYSELG_1039 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<16>/LOGIC_ZERO_1084 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/XUSED  (
    .I(\divide_freq/counter_addsub0000<16>/XORF_1102 ),
    .O(\divide_freq/counter_addsub0000 [16])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/XORF  (
    .I0(\divide_freq/counter_addsub0000<16>/CYINIT_1101 ),
    .I1(\divide_freq/counter_mux0000<16>1_1094 ),
    .O(\divide_freq/counter_addsub0000<16>/XORF_1102 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<16>/LOGIC_ZERO_1084 ),
    .IB(\divide_freq/counter_addsub0000<16>/CYINIT_1101 ),
    .SEL(\divide_freq/counter_addsub0000<16>/CYSELF_1090 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[16] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<16>/LOGIC_ZERO_1084 ),
    .IB(\divide_freq/counter_addsub0000<16>/LOGIC_ZERO_1084 ),
    .SEL(\divide_freq/counter_addsub0000<16>/CYSELF_1090 ),
    .O(\divide_freq/counter_addsub0000<16>/CYMUXF2_1085 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[15] ),
    .O(\divide_freq/counter_addsub0000<16>/CYINIT_1101 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYSELF  (
    .I(\divide_freq/counter_mux0000<16>1_1094 ),
    .O(\divide_freq/counter_addsub0000<16>/CYSELF_1090 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/YUSED  (
    .I(\divide_freq/counter_addsub0000<16>/XORG_1092 ),
    .O(\divide_freq/counter_addsub0000 [17])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[16] ),
    .I1(\divide_freq/counter_mux0000<17>1_1076 ),
    .O(\divide_freq/counter_addsub0000<16>/XORG_1092 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<16>/CYMUXFAST_1089 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[17] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[15] ),
    .O(\divide_freq/counter_addsub0000<16>/FASTCARRY_1087 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<16>/CYSELG_1077 ),
    .I1(\divide_freq/counter_addsub0000<16>/CYSELF_1090 ),
    .O(\divide_freq/counter_addsub0000<16>/CYAND_1088 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<16>/CYMUXG2_1086 ),
    .IB(\divide_freq/counter_addsub0000<16>/FASTCARRY_1087 ),
    .SEL(\divide_freq/counter_addsub0000<16>/CYAND_1088 ),
    .O(\divide_freq/counter_addsub0000<16>/CYMUXFAST_1089 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<16>/LOGIC_ZERO_1084 ),
    .IB(\divide_freq/counter_addsub0000<16>/CYMUXF2_1085 ),
    .SEL(\divide_freq/counter_addsub0000<16>/CYSELG_1077 ),
    .O(\divide_freq/counter_addsub0000<16>/CYMUXG2_1086 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_addsub0000<16>/CYSELG  (
    .I(\divide_freq/counter_mux0000<17>1_1076 ),
    .O(\divide_freq/counter_addsub0000<16>/CYSELG_1077 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<18>/LOGIC_ZERO_1122 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/XUSED  (
    .I(\divide_freq/counter_addsub0000<18>/XORF_1140 ),
    .O(\divide_freq/counter_addsub0000 [18])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/XORF  (
    .I0(\divide_freq/counter_addsub0000<18>/CYINIT_1139 ),
    .I1(\divide_freq/counter_mux0000<18>1_1132 ),
    .O(\divide_freq/counter_addsub0000<18>/XORF_1140 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<18>/LOGIC_ZERO_1122 ),
    .IB(\divide_freq/counter_addsub0000<18>/CYINIT_1139 ),
    .SEL(\divide_freq/counter_addsub0000<18>/CYSELF_1128 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[18] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<18>/LOGIC_ZERO_1122 ),
    .IB(\divide_freq/counter_addsub0000<18>/LOGIC_ZERO_1122 ),
    .SEL(\divide_freq/counter_addsub0000<18>/CYSELF_1128 ),
    .O(\divide_freq/counter_addsub0000<18>/CYMUXF2_1123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[17] ),
    .O(\divide_freq/counter_addsub0000<18>/CYINIT_1139 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYSELF  (
    .I(\divide_freq/counter_mux0000<18>1_1132 ),
    .O(\divide_freq/counter_addsub0000<18>/CYSELF_1128 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/YUSED  (
    .I(\divide_freq/counter_addsub0000<18>/XORG_1130 ),
    .O(\divide_freq/counter_addsub0000 [19])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[18] ),
    .I1(\divide_freq/counter_mux0000<19>1_1114 ),
    .O(\divide_freq/counter_addsub0000<18>/XORG_1130 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<18>/CYMUXFAST_1127 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[19] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[17] ),
    .O(\divide_freq/counter_addsub0000<18>/FASTCARRY_1125 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<18>/CYSELG_1115 ),
    .I1(\divide_freq/counter_addsub0000<18>/CYSELF_1128 ),
    .O(\divide_freq/counter_addsub0000<18>/CYAND_1126 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<18>/CYMUXG2_1124 ),
    .IB(\divide_freq/counter_addsub0000<18>/FASTCARRY_1125 ),
    .SEL(\divide_freq/counter_addsub0000<18>/CYAND_1126 ),
    .O(\divide_freq/counter_addsub0000<18>/CYMUXFAST_1127 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<18>/LOGIC_ZERO_1122 ),
    .IB(\divide_freq/counter_addsub0000<18>/CYMUXF2_1123 ),
    .SEL(\divide_freq/counter_addsub0000<18>/CYSELG_1115 ),
    .O(\divide_freq/counter_addsub0000<18>/CYMUXG2_1124 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_addsub0000<18>/CYSELG  (
    .I(\divide_freq/counter_mux0000<19>1_1114 ),
    .O(\divide_freq/counter_addsub0000<18>/CYSELG_1115 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<20>/LOGIC_ZERO_1160 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/XUSED  (
    .I(\divide_freq/counter_addsub0000<20>/XORF_1178 ),
    .O(\divide_freq/counter_addsub0000 [20])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/XORF  (
    .I0(\divide_freq/counter_addsub0000<20>/CYINIT_1177 ),
    .I1(\divide_freq/counter_mux0000<20>1_1170 ),
    .O(\divide_freq/counter_addsub0000<20>/XORF_1178 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<20>/LOGIC_ZERO_1160 ),
    .IB(\divide_freq/counter_addsub0000<20>/CYINIT_1177 ),
    .SEL(\divide_freq/counter_addsub0000<20>/CYSELF_1166 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[20] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<20>/LOGIC_ZERO_1160 ),
    .IB(\divide_freq/counter_addsub0000<20>/LOGIC_ZERO_1160 ),
    .SEL(\divide_freq/counter_addsub0000<20>/CYSELF_1166 ),
    .O(\divide_freq/counter_addsub0000<20>/CYMUXF2_1161 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[19] ),
    .O(\divide_freq/counter_addsub0000<20>/CYINIT_1177 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYSELF  (
    .I(\divide_freq/counter_mux0000<20>1_1170 ),
    .O(\divide_freq/counter_addsub0000<20>/CYSELF_1166 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/YUSED  (
    .I(\divide_freq/counter_addsub0000<20>/XORG_1168 ),
    .O(\divide_freq/counter_addsub0000 [21])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[20] ),
    .I1(\divide_freq/counter_mux0000<21>1_1152 ),
    .O(\divide_freq/counter_addsub0000<20>/XORG_1168 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<20>/CYMUXFAST_1165 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[21] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[19] ),
    .O(\divide_freq/counter_addsub0000<20>/FASTCARRY_1163 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<20>/CYSELG_1153 ),
    .I1(\divide_freq/counter_addsub0000<20>/CYSELF_1166 ),
    .O(\divide_freq/counter_addsub0000<20>/CYAND_1164 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<20>/CYMUXG2_1162 ),
    .IB(\divide_freq/counter_addsub0000<20>/FASTCARRY_1163 ),
    .SEL(\divide_freq/counter_addsub0000<20>/CYAND_1164 ),
    .O(\divide_freq/counter_addsub0000<20>/CYMUXFAST_1165 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<20>/LOGIC_ZERO_1160 ),
    .IB(\divide_freq/counter_addsub0000<20>/CYMUXF2_1161 ),
    .SEL(\divide_freq/counter_addsub0000<20>/CYSELG_1153 ),
    .O(\divide_freq/counter_addsub0000<20>/CYMUXG2_1162 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_addsub0000<20>/CYSELG  (
    .I(\divide_freq/counter_mux0000<21>1_1152 ),
    .O(\divide_freq/counter_addsub0000<20>/CYSELG_1153 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<22>/LOGIC_ZERO_1198 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/XUSED  (
    .I(\divide_freq/counter_addsub0000<22>/XORF_1216 ),
    .O(\divide_freq/counter_addsub0000 [22])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/XORF  (
    .I0(\divide_freq/counter_addsub0000<22>/CYINIT_1215 ),
    .I1(\divide_freq/counter_mux0000<22>1_1208 ),
    .O(\divide_freq/counter_addsub0000<22>/XORF_1216 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<22>/LOGIC_ZERO_1198 ),
    .IB(\divide_freq/counter_addsub0000<22>/CYINIT_1215 ),
    .SEL(\divide_freq/counter_addsub0000<22>/CYSELF_1204 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[22] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<22>/LOGIC_ZERO_1198 ),
    .IB(\divide_freq/counter_addsub0000<22>/LOGIC_ZERO_1198 ),
    .SEL(\divide_freq/counter_addsub0000<22>/CYSELF_1204 ),
    .O(\divide_freq/counter_addsub0000<22>/CYMUXF2_1199 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[21] ),
    .O(\divide_freq/counter_addsub0000<22>/CYINIT_1215 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYSELF  (
    .I(\divide_freq/counter_mux0000<22>1_1208 ),
    .O(\divide_freq/counter_addsub0000<22>/CYSELF_1204 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/YUSED  (
    .I(\divide_freq/counter_addsub0000<22>/XORG_1206 ),
    .O(\divide_freq/counter_addsub0000 [23])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[22] ),
    .I1(\divide_freq/counter_mux0000<23>1_1190 ),
    .O(\divide_freq/counter_addsub0000<22>/XORG_1206 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<22>/CYMUXFAST_1203 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[23] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[21] ),
    .O(\divide_freq/counter_addsub0000<22>/FASTCARRY_1201 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<22>/CYSELG_1191 ),
    .I1(\divide_freq/counter_addsub0000<22>/CYSELF_1204 ),
    .O(\divide_freq/counter_addsub0000<22>/CYAND_1202 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<22>/CYMUXG2_1200 ),
    .IB(\divide_freq/counter_addsub0000<22>/FASTCARRY_1201 ),
    .SEL(\divide_freq/counter_addsub0000<22>/CYAND_1202 ),
    .O(\divide_freq/counter_addsub0000<22>/CYMUXFAST_1203 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<22>/LOGIC_ZERO_1198 ),
    .IB(\divide_freq/counter_addsub0000<22>/CYMUXF2_1199 ),
    .SEL(\divide_freq/counter_addsub0000<22>/CYSELG_1191 ),
    .O(\divide_freq/counter_addsub0000<22>/CYMUXG2_1200 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_addsub0000<22>/CYSELG  (
    .I(\divide_freq/counter_mux0000<23>1_1190 ),
    .O(\divide_freq/counter_addsub0000<22>/CYSELG_1191 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<24>/LOGIC_ZERO_1236 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/XUSED  (
    .I(\divide_freq/counter_addsub0000<24>/XORF_1254 ),
    .O(\divide_freq/counter_addsub0000 [24])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/XORF  (
    .I0(\divide_freq/counter_addsub0000<24>/CYINIT_1253 ),
    .I1(\divide_freq/counter_mux0000<24>1_1246 ),
    .O(\divide_freq/counter_addsub0000<24>/XORF_1254 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<24>/LOGIC_ZERO_1236 ),
    .IB(\divide_freq/counter_addsub0000<24>/CYINIT_1253 ),
    .SEL(\divide_freq/counter_addsub0000<24>/CYSELF_1242 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[24] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<24>/LOGIC_ZERO_1236 ),
    .IB(\divide_freq/counter_addsub0000<24>/LOGIC_ZERO_1236 ),
    .SEL(\divide_freq/counter_addsub0000<24>/CYSELF_1242 ),
    .O(\divide_freq/counter_addsub0000<24>/CYMUXF2_1237 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[23] ),
    .O(\divide_freq/counter_addsub0000<24>/CYINIT_1253 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYSELF  (
    .I(\divide_freq/counter_mux0000<24>1_1246 ),
    .O(\divide_freq/counter_addsub0000<24>/CYSELF_1242 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/YUSED  (
    .I(\divide_freq/counter_addsub0000<24>/XORG_1244 ),
    .O(\divide_freq/counter_addsub0000 [25])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[24] ),
    .I1(\divide_freq/counter_mux0000<25>1_1228 ),
    .O(\divide_freq/counter_addsub0000<24>/XORG_1244 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<24>/CYMUXFAST_1241 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[25] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[23] ),
    .O(\divide_freq/counter_addsub0000<24>/FASTCARRY_1239 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<24>/CYSELG_1229 ),
    .I1(\divide_freq/counter_addsub0000<24>/CYSELF_1242 ),
    .O(\divide_freq/counter_addsub0000<24>/CYAND_1240 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<24>/CYMUXG2_1238 ),
    .IB(\divide_freq/counter_addsub0000<24>/FASTCARRY_1239 ),
    .SEL(\divide_freq/counter_addsub0000<24>/CYAND_1240 ),
    .O(\divide_freq/counter_addsub0000<24>/CYMUXFAST_1241 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<24>/LOGIC_ZERO_1236 ),
    .IB(\divide_freq/counter_addsub0000<24>/CYMUXF2_1237 ),
    .SEL(\divide_freq/counter_addsub0000<24>/CYSELG_1229 ),
    .O(\divide_freq/counter_addsub0000<24>/CYMUXG2_1238 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_addsub0000<24>/CYSELG  (
    .I(\divide_freq/counter_mux0000<25>1_1228 ),
    .O(\divide_freq/counter_addsub0000<24>/CYSELG_1229 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<26>/LOGIC_ZERO_1274 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/XUSED  (
    .I(\divide_freq/counter_addsub0000<26>/XORF_1292 ),
    .O(\divide_freq/counter_addsub0000 [26])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/XORF  (
    .I0(\divide_freq/counter_addsub0000<26>/CYINIT_1291 ),
    .I1(\divide_freq/counter_mux0000<26>1_1284 ),
    .O(\divide_freq/counter_addsub0000<26>/XORF_1292 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<26>/LOGIC_ZERO_1274 ),
    .IB(\divide_freq/counter_addsub0000<26>/CYINIT_1291 ),
    .SEL(\divide_freq/counter_addsub0000<26>/CYSELF_1280 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[26] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<26>/LOGIC_ZERO_1274 ),
    .IB(\divide_freq/counter_addsub0000<26>/LOGIC_ZERO_1274 ),
    .SEL(\divide_freq/counter_addsub0000<26>/CYSELF_1280 ),
    .O(\divide_freq/counter_addsub0000<26>/CYMUXF2_1275 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[25] ),
    .O(\divide_freq/counter_addsub0000<26>/CYINIT_1291 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYSELF  (
    .I(\divide_freq/counter_mux0000<26>1_1284 ),
    .O(\divide_freq/counter_addsub0000<26>/CYSELF_1280 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/YUSED  (
    .I(\divide_freq/counter_addsub0000<26>/XORG_1282 ),
    .O(\divide_freq/counter_addsub0000 [27])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[26] ),
    .I1(\divide_freq/counter_mux0000<27>1_1266 ),
    .O(\divide_freq/counter_addsub0000<26>/XORG_1282 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/COUTUSED  (
    .I(\divide_freq/counter_addsub0000<26>/CYMUXFAST_1279 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[27] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[25] ),
    .O(\divide_freq/counter_addsub0000<26>/FASTCARRY_1277 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<26>/CYSELG_1267 ),
    .I1(\divide_freq/counter_addsub0000<26>/CYSELF_1280 ),
    .O(\divide_freq/counter_addsub0000<26>/CYAND_1278 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<26>/CYMUXG2_1276 ),
    .IB(\divide_freq/counter_addsub0000<26>/FASTCARRY_1277 ),
    .SEL(\divide_freq/counter_addsub0000<26>/CYAND_1278 ),
    .O(\divide_freq/counter_addsub0000<26>/CYMUXFAST_1279 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<26>/LOGIC_ZERO_1274 ),
    .IB(\divide_freq/counter_addsub0000<26>/CYMUXF2_1275 ),
    .SEL(\divide_freq/counter_addsub0000<26>/CYSELG_1267 ),
    .O(\divide_freq/counter_addsub0000<26>/CYMUXG2_1276 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_addsub0000<26>/CYSELG  (
    .I(\divide_freq/counter_mux0000<27>1_1266 ),
    .O(\divide_freq/counter_addsub0000<26>/CYSELG_1267 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<28>/LOGIC_ZERO_1312 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/XUSED  (
    .I(\divide_freq/counter_addsub0000<28>/XORF_1330 ),
    .O(\divide_freq/counter_addsub0000 [28])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/XORF  (
    .I0(\divide_freq/counter_addsub0000<28>/CYINIT_1329 ),
    .I1(\divide_freq/counter_mux0000<28>1_1322 ),
    .O(\divide_freq/counter_addsub0000<28>/XORF_1330 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<28>/LOGIC_ZERO_1312 ),
    .IB(\divide_freq/counter_addsub0000<28>/CYINIT_1329 ),
    .SEL(\divide_freq/counter_addsub0000<28>/CYSELF_1318 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[28] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYMUXF2  (
    .IA(\divide_freq/counter_addsub0000<28>/LOGIC_ZERO_1312 ),
    .IB(\divide_freq/counter_addsub0000<28>/LOGIC_ZERO_1312 ),
    .SEL(\divide_freq/counter_addsub0000<28>/CYSELF_1318 ),
    .O(\divide_freq/counter_addsub0000<28>/CYMUXF2_1313 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYINIT  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[27] ),
    .O(\divide_freq/counter_addsub0000<28>/CYINIT_1329 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYSELF  (
    .I(\divide_freq/counter_mux0000<28>1_1322 ),
    .O(\divide_freq/counter_addsub0000<28>/CYSELF_1318 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/YUSED  (
    .I(\divide_freq/counter_addsub0000<28>/XORG_1320 ),
    .O(\divide_freq/counter_addsub0000 [29])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[28] ),
    .I1(\divide_freq/counter_mux0000<29>1_1304 ),
    .O(\divide_freq/counter_addsub0000<28>/XORG_1320 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/FASTCARRY  (
    .I(\divide_freq/Madd_counter_addsub0000_cy[27] ),
    .O(\divide_freq/counter_addsub0000<28>/FASTCARRY_1315 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYAND  (
    .I0(\divide_freq/counter_addsub0000<28>/CYSELG_1305 ),
    .I1(\divide_freq/counter_addsub0000<28>/CYSELF_1318 ),
    .O(\divide_freq/counter_addsub0000<28>/CYAND_1316 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYMUXFAST  (
    .IA(\divide_freq/counter_addsub0000<28>/CYMUXG2_1314 ),
    .IB(\divide_freq/counter_addsub0000<28>/FASTCARRY_1315 ),
    .SEL(\divide_freq/counter_addsub0000<28>/CYAND_1316 ),
    .O(\divide_freq/counter_addsub0000<28>/CYMUXFAST_1317 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYMUXG2  (
    .IA(\divide_freq/counter_addsub0000<28>/LOGIC_ZERO_1312 ),
    .IB(\divide_freq/counter_addsub0000<28>/CYMUXF2_1313 ),
    .SEL(\divide_freq/counter_addsub0000<28>/CYSELG_1305 ),
    .O(\divide_freq/counter_addsub0000<28>/CYMUXG2_1314 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_addsub0000<28>/CYSELG  (
    .I(\divide_freq/counter_mux0000<29>1_1304 ),
    .O(\divide_freq/counter_addsub0000<28>/CYSELG_1305 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/LOGIC_ZERO  (
    .O(\divide_freq/counter_addsub0000<30>/LOGIC_ZERO_1360 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/XUSED  (
    .I(\divide_freq/counter_addsub0000<30>/XORF_1361 ),
    .O(\divide_freq/counter_addsub0000 [30])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/XORF  (
    .I0(\divide_freq/counter_addsub0000<30>/CYINIT_1359 ),
    .I1(\divide_freq/counter_mux0000<30>1_1351 ),
    .O(\divide_freq/counter_addsub0000<30>/XORF_1361 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/CYMUXF  (
    .IA(\divide_freq/counter_addsub0000<30>/LOGIC_ZERO_1360 ),
    .IB(\divide_freq/counter_addsub0000<30>/CYINIT_1359 ),
    .SEL(\divide_freq/counter_addsub0000<30>/CYSELF_1352 ),
    .O(\divide_freq/Madd_counter_addsub0000_cy[30] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/CYINIT  (
    .I(\divide_freq/counter_addsub0000<28>/CYMUXFAST_1317 ),
    .O(\divide_freq/counter_addsub0000<30>/CYINIT_1359 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/CYSELF  (
    .I(\divide_freq/counter_mux0000<30>1_1351 ),
    .O(\divide_freq/counter_addsub0000<30>/CYSELF_1352 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/YUSED  (
    .I(\divide_freq/counter_addsub0000<30>/XORG_1349 ),
    .O(\divide_freq/counter_addsub0000 [31])
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_addsub0000<30>/XORG  (
    .I0(\divide_freq/Madd_counter_addsub0000_cy[30] ),
    .I1(\divide_freq/counter_mux0000<31>1_1346 ),
    .O(\divide_freq/counter_addsub0000<30>/XORG_1349 )
  );
  X_ONE #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/LOGIC_ONE  (
    .O(\divide_freq/COUT_not0001_wg_cy<1>/LOGIC_ONE_1380 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/CYMUXF  (
    .IA(\divide_freq/COUT_not0001_wg_cy<1>/LOGIC_ONE_1380 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<1>/CYINIT_1391 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<1>/CYSELF_1385 ),
    .O(\divide_freq/COUT_not0001_wg_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/CYINIT  (
    .I(\divide_freq/COUT_not0001_wg_cy<1>/BXINV_1383 ),
    .O(\divide_freq/COUT_not0001_wg_cy<1>/CYINIT_1391 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/CYSELF  (
    .I(\divide_freq/COUT_not0001_wg_lut [0]),
    .O(\divide_freq/COUT_not0001_wg_cy<1>/CYSELF_1385 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/BXINV  (
    .I(1'b0),
    .O(\divide_freq/COUT_not0001_wg_cy<1>/BXINV_1383 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/CYMUXG  (
    .IA(\divide_freq/COUT_not0001_wg_cy<1>/LOGIC_ONE_1380 ),
    .IB(\divide_freq/COUT_not0001_wg_cy [0]),
    .SEL(\divide_freq/COUT_not0001_wg_cy<1>/CYSELG_1374 ),
    .O(\divide_freq/COUT_not0001_wg_cy<1>/CYMUXG_1382 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_cy<1>/CYSELG  (
    .I(\divide_freq/COUT_not0001_wg_lut [1]),
    .O(\divide_freq/COUT_not0001_wg_cy<1>/CYSELG_1374 )
  );
  X_ONE #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/LOGIC_ONE  (
    .O(\divide_freq/COUT_not0001_wg_cy<3>/LOGIC_ONE_1409 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/CYMUXF2  (
    .IA(\divide_freq/COUT_not0001_wg_cy<3>/LOGIC_ONE_1409 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<3>/LOGIC_ONE_1409 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<3>/CYSELF_1415 ),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/CYMUXF2_1410 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/CYSELF  (
    .I(\divide_freq/COUT_not0001_wg_lut [2]),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/CYSELF_1415 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/FASTCARRY  (
    .I(\divide_freq/COUT_not0001_wg_cy<1>/CYMUXG_1382 ),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/FASTCARRY_1412 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/CYAND  (
    .I0(\divide_freq/COUT_not0001_wg_cy<3>/CYSELG_1403 ),
    .I1(\divide_freq/COUT_not0001_wg_cy<3>/CYSELF_1415 ),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/CYAND_1413 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/CYMUXFAST  (
    .IA(\divide_freq/COUT_not0001_wg_cy<3>/CYMUXG2_1411 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<3>/FASTCARRY_1412 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<3>/CYAND_1413 ),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/CYMUXFAST_1414 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/CYMUXG2  (
    .IA(\divide_freq/COUT_not0001_wg_cy<3>/LOGIC_ONE_1409 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<3>/CYMUXF2_1410 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<3>/CYSELG_1403 ),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/CYMUXG2_1411 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_cy<3>/CYSELG  (
    .I(\divide_freq/COUT_not0001_wg_lut [3]),
    .O(\divide_freq/COUT_not0001_wg_cy<3>/CYSELG_1403 )
  );
  X_ONE #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/LOGIC_ONE  (
    .O(\divide_freq/COUT_not0001_wg_cy<5>/LOGIC_ONE_1439 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/CYMUXF2  (
    .IA(\divide_freq/COUT_not0001_wg_cy<5>/LOGIC_ONE_1439 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<5>/LOGIC_ONE_1439 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<5>/CYSELF_1445 ),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/CYMUXF2_1440 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/CYSELF  (
    .I(\divide_freq/COUT_not0001_wg_lut [4]),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/CYSELF_1445 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/FASTCARRY  (
    .I(\divide_freq/COUT_not0001_wg_cy<3>/CYMUXFAST_1414 ),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/FASTCARRY_1442 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/CYAND  (
    .I0(\divide_freq/COUT_not0001_wg_cy<5>/CYSELG_1433 ),
    .I1(\divide_freq/COUT_not0001_wg_cy<5>/CYSELF_1445 ),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/CYAND_1443 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/CYMUXFAST  (
    .IA(\divide_freq/COUT_not0001_wg_cy<5>/CYMUXG2_1441 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<5>/FASTCARRY_1442 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<5>/CYAND_1443 ),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/CYMUXFAST_1444 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/CYMUXG2  (
    .IA(\divide_freq/COUT_not0001_wg_cy<5>/LOGIC_ONE_1439 ),
    .IB(\divide_freq/COUT_not0001_wg_cy<5>/CYMUXF2_1440 ),
    .SEL(\divide_freq/COUT_not0001_wg_cy<5>/CYSELG_1433 ),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/CYMUXG2_1441 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_cy<5>/CYSELG  (
    .I(\divide_freq/COUT_not0001_wg_lut [5]),
    .O(\divide_freq/COUT_not0001_wg_cy<5>/CYSELG_1433 )
  );
  X_ONE #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/LOGIC_ONE  (
    .O(\divide_freq/COUT_not0001/LOGIC_ONE_1469 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/CYMUXF2  (
    .IA(\divide_freq/COUT_not0001/LOGIC_ONE_1469 ),
    .IB(\divide_freq/COUT_not0001/LOGIC_ONE_1469 ),
    .SEL(\divide_freq/COUT_not0001/CYSELF_1475 ),
    .O(\divide_freq/COUT_not0001/CYMUXF2_1470 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/CYSELF  (
    .I(\divide_freq/COUT_not0001_wg_lut [6]),
    .O(\divide_freq/COUT_not0001/CYSELF_1475 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/FASTCARRY  (
    .I(\divide_freq/COUT_not0001_wg_cy<5>/CYMUXFAST_1444 ),
    .O(\divide_freq/COUT_not0001/FASTCARRY_1472 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/CYAND  (
    .I0(\divide_freq/COUT_not0001/CYSELG_1463 ),
    .I1(\divide_freq/COUT_not0001/CYSELF_1475 ),
    .O(\divide_freq/COUT_not0001/CYAND_1473 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/CYMUXFAST  (
    .IA(\divide_freq/COUT_not0001/CYMUXG2_1471 ),
    .IB(\divide_freq/COUT_not0001/FASTCARRY_1472 ),
    .SEL(\divide_freq/COUT_not0001/CYAND_1473 ),
    .O(\divide_freq/COUT_not0001/CYMUXFAST_1474 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/CYMUXG2  (
    .IA(\divide_freq/COUT_not0001/LOGIC_ONE_1469 ),
    .IB(\divide_freq/COUT_not0001/CYMUXF2_1470 ),
    .SEL(\divide_freq/COUT_not0001/CYSELG_1463 ),
    .O(\divide_freq/COUT_not0001/CYMUXG2_1471 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001/CYSELG  (
    .I(\divide_freq/COUT_not0001_wg_lut [7]),
    .O(\divide_freq/COUT_not0001/CYSELG_1463 )
  );
  X_OPAD #(
    .LOC ( "PAD86" ))
  \led0/PAD  (
    .PAD(led0)
  );
  X_OBUFT #(
    .LOC ( "PAD86" ))
  led0_OBUFT (
    .I(\led0/O ),
    .CTL(\led0/T ),
    .O(led0)
  );
  X_OPAD #(
    .LOC ( "PAD90" ))
  \led1/PAD  (
    .PAD(led1)
  );
  X_OBUFT #(
    .LOC ( "PAD90" ))
  led1_OBUFT (
    .I(\led1/O ),
    .CTL(\led1/T ),
    .O(led1)
  );
  X_OPAD #(
    .LOC ( "PAD91" ))
  \led2/PAD  (
    .PAD(led2)
  );
  X_OBUFT #(
    .LOC ( "PAD91" ))
  led2_OBUFT (
    .I(\led2/O ),
    .CTL(\led2/T ),
    .O(led2)
  );
  X_OPAD #(
    .LOC ( "PAD92" ))
  \led3/PAD  (
    .PAD(led3)
  );
  X_OBUFT #(
    .LOC ( "PAD92" ))
  led3_OBUFT (
    .I(\led3/O ),
    .CTL(\led3/T ),
    .O(led3)
  );
  X_OPAD #(
    .LOC ( "PAD89" ))
  \led4/PAD  (
    .PAD(led4)
  );
  X_OBUFT #(
    .LOC ( "PAD89" ))
  led4_OBUFT (
    .I(\led4/O ),
    .CTL(\led4/T ),
    .O(led4)
  );
  X_OPAD #(
    .LOC ( "PAD88" ))
  \led5/PAD  (
    .PAD(led5)
  );
  X_OBUF #(
    .LOC ( "PAD88" ))
  led5_OBUF (
    .I(\led5/O ),
    .O(led5)
  );
  X_IPAD #(
    .LOC ( "PAD85" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD85" ))
  clk_IBUF (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD83" ))
  \key0/PAD  (
    .PAD(key0)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  key0_IBUF (
    .I(key0),
    .O(\key0/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD94" ))
  \key1/PAD  (
    .PAD(key1)
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  key1_IBUF (
    .I(key1),
    .O(\key1/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD98" ))
  \key2/PAD  (
    .PAD(key2)
  );
  X_BUF #(
    .LOC ( "PAD98" ))
  key2_IBUF (
    .I(key2),
    .O(\key2/INBUF )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y0" ))
  \counter/t4/res_not0002/F5MUX  (
    .IA(\counter/t4/res_not0002/G ),
    .IB(\counter/t4/res_not00021_1655 ),
    .SEL(\counter/t4/res_not0002/BXINV_1650 ),
    .O(\counter/t4/res_not0002/F5MUX_1657 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y0" ))
  \counter/t4/res_not0002/BXINV  (
    .I(key2_IBUF_734),
    .O(\counter/t4/res_not0002/BXINV_1650 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X0Y1" ),
    .INIT ( 1'b0 ))
  \counter/t4/res_mux0001  (
    .I(\counter/t4/res_mux0001/DYMUX_1678 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t4/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t4/res_mux0001_731 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y1" ))
  \counter/t4/res_mux0001/XUSED  (
    .I(\counter/t7/res_not000212_1686 ),
    .O(\counter/t7/res_not000212_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y1" ))
  \counter/t4/res_mux0001/DYMUX  (
    .I(\counter/t4/res_mux0002 ),
    .O(\counter/t4/res_mux0001/DYMUX_1678 )
  );
  X_INV #(
    .LOC ( "SLICE_X0Y1" ))
  \counter/t4/res_mux0001/CLKINV  (
    .I(\counter/t4/res_not0002/F5MUX_1657 ),
    .O(\counter/t4/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X0Y1" ))
  \counter/t4/res_mux00021  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\counter/t4/res_mux0001_731 ),
    .ADR3(key2_IBUF_734),
    .O(\counter/t4/res_mux0002 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X1Y5" ),
    .INIT ( 1'b0 ))
  \counter/t6/res_mux0001  (
    .I(\counter/t6/res_mux0001/DYMUX_1706 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t6/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t6/res_mux0001_738 )
  );
  X_LUT4 #(
    .INIT ( 16'h33FF ),
    .LOC ( "SLICE_X1Y5" ))
  \counter/t1/res_not00021  (
    .ADR0(VCC),
    .ADR1(key2_IBUF_734),
    .ADR2(VCC),
    .ADR3(\counter/t0/res_mux0001_726 ),
    .O(\counter/t1/res_not0002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y5" ))
  \counter/t6/res_mux0001/DYMUX  (
    .I(\counter/t6/res_mux0002 ),
    .O(\counter/t6/res_mux0001/DYMUX_1706 )
  );
  X_INV #(
    .LOC ( "SLICE_X1Y5" ))
  \counter/t6/res_mux0001/CLKINV  (
    .I(\counter/t6/res_not0002_2318 ),
    .O(\counter/t6/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X1Y5" ))
  \counter/t6/res_mux00021  (
    .ADR0(VCC),
    .ADR1(key2_IBUF_734),
    .ADR2(VCC),
    .ADR3(\counter/t6/res_mux0001_738 ),
    .O(\counter/t6/res_mux0002 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X0Y4" ),
    .INIT ( 1'b0 ))
  \counter/t1/res_mux0001  (
    .I(\counter/t1/res_mux0001/DYMUX_1737 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t1/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t1/res_mux0001_728 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y4" ))
  \counter/t1/res_mux0001/DYMUX  (
    .I(\counter/t1/res_mux0002 ),
    .O(\counter/t1/res_mux0001/DYMUX_1737 )
  );
  X_INV #(
    .LOC ( "SLICE_X0Y4" ))
  \counter/t1/res_mux0001/CLKINV  (
    .I(\counter/t1/res_not0002 ),
    .O(\counter/t1/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X0Y4" ))
  \counter/t1/res_mux00021  (
    .ADR0(VCC),
    .ADR1(key2_IBUF_734),
    .ADR2(\counter/t1/res_mux0001_728 ),
    .ADR3(VCC),
    .O(\counter/t1/res_mux0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h7755 ),
    .LOC ( "SLICE_X1Y1" ))
  \counter/t0/res_not00021  (
    .ADR0(key2_IBUF_734),
    .ADR1(key1_IBUF_733),
    .ADR2(VCC),
    .ADR3(\divide_freq/COUT_725 ),
    .O(\counter/t0/res_not0002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y1" ))
  \counter/t3/res_mux0001/DYMUX  (
    .I(\counter/t3/res_mux0002 ),
    .O(\counter/t3/res_mux0001/DYMUX_1767 )
  );
  X_INV #(
    .LOC ( "SLICE_X1Y1" ))
  \counter/t3/res_mux0001/CLKINV  (
    .I(\counter/t3/res_not0002 ),
    .O(\counter/t3/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X1Y1" ))
  \counter/t3/res_mux00021  (
    .ADR0(key2_IBUF_734),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\counter/t3/res_mux0001_730 ),
    .O(\counter/t3/res_mux0002 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X0Y3" ),
    .INIT ( 1'b0 ))
  \counter/t5/res_mux0001  (
    .I(\counter/t5/res_mux0001/DYMUX_1798 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t5/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t5/res_mux0001_744 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y3" ))
  \counter/t5/res_mux0001/XUSED  (
    .I(\counter/RCO12_1806 ),
    .O(\counter/RCO12_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y3" ))
  \counter/t5/res_mux0001/DYMUX  (
    .I(\counter/t5/res_mux0002 ),
    .O(\counter/t5/res_mux0001/DYMUX_1798 )
  );
  X_INV #(
    .LOC ( "SLICE_X0Y3" ))
  \counter/t5/res_mux0001/CLKINV  (
    .I(\counter/t5/res_not0002_2342 ),
    .O(\counter/t5/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X0Y3" ))
  \counter/t5/res_mux00021  (
    .ADR0(key2_IBUF_734),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\counter/t5/res_mux0001_744 ),
    .O(\counter/t5/res_mux0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X0Y2" ))
  \counter/t3/res_not00021  (
    .ADR0(key2_IBUF_734),
    .ADR1(\counter/t1/res_mux0001_728 ),
    .ADR2(\counter/t0/res_mux0001_726 ),
    .ADR3(\counter/t2/res_mux0001_729 ),
    .O(\counter/t3/res_not0002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y2" ))
  \counter/t7/res_mux0001/DYMUX  (
    .I(\counter/t7/res_mux0002 ),
    .O(\counter/t7/res_mux0001/DYMUX_1828 )
  );
  X_INV #(
    .LOC ( "SLICE_X0Y2" ))
  \counter/t7/res_mux0001/CLKINV  (
    .I(\counter/t7/res_not0002 ),
    .O(\counter/t7/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X0Y2" ))
  \counter/t7/res_mux00021  (
    .ADR0(key2_IBUF_734),
    .ADR1(VCC),
    .ADR2(\counter/t7/res_mux0001_747 ),
    .ADR3(VCC),
    .O(\counter/t7/res_mux0002 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X0Y0" ),
    .INIT ( 1'b0 ))
  \counter/t0/res_mux0001  (
    .I(\counter/t0/res_mux0001/DYMUX_1853 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t0/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t0/res_mux0001_726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y0" ))
  \counter/t0/res_mux0001/DYMUX  (
    .I(\counter/t0/res_mux0002 ),
    .O(\counter/t0/res_mux0001/DYMUX_1853 )
  );
  X_INV #(
    .LOC ( "SLICE_X0Y0" ))
  \counter/t0/res_mux0001/CLKINV  (
    .I(\counter/t0/res_not0002 ),
    .O(\counter/t0/res_mux0001/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y5" ))
  \counter/t2/res_mux0001/DYMUX  (
    .I(\counter/t2/res_mux0002 ),
    .O(\counter/t2/res_mux0001/DYMUX_1871 )
  );
  X_INV #(
    .LOC ( "SLICE_X0Y5" ))
  \counter/t2/res_mux0001/CLKINV  (
    .I(\counter/t2/res_not0002 ),
    .O(\counter/t2/res_mux0001/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X18Y5" ))
  \divide_freq/counter_mux0000<2>1  (
    .ADR0(\divide_freq/counter<2>_0 ),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [2]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000 [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y5" ))
  \divide_freq/counter_mux0000<2>/XUSED  (
    .I(\divide_freq/counter_mux0000 [2]),
    .O(\divide_freq/counter_mux0000<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y5" ))
  \divide_freq/counter_mux0000<2>/YUSED  (
    .I(\divide_freq/counter<13>_pack_2 ),
    .O(\divide_freq/counter [13])
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X18Y5" ))
  \divide_freq/counter_mux0000<13>1  (
    .ADR0(VCC),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [13]),
    .ADR3(\divide_freq/counter [13]),
    .O(\divide_freq/counter<13>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0CFC ),
    .LOC ( "SLICE_X19Y7" ))
  \divide_freq/counter_mux0000<0>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/Madd_counter_addsub0000_lut [0]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [0]),
    .O(\divide_freq/Madd_counter_addsub0000_lut<0>_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y7" ))
  \divide_freq/Madd_counter_addsub0000_lut<0>/XUSED  (
    .I(\divide_freq/Madd_counter_addsub0000_lut<0>_pack_2 ),
    .O(\divide_freq/Madd_counter_addsub0000_lut [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y7" ))
  \divide_freq/Madd_counter_addsub0000_lut<0>/YUSED  (
    .I(\divide_freq/counter<21>_pack_3 ),
    .O(\divide_freq/counter [21])
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X19Y7" ))
  \divide_freq/counter_mux0000<21>1  (
    .ADR0(\divide_freq/counter_addsub0000 [21]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [21]),
    .O(\divide_freq/counter<21>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X14Y4" ))
  \divide_freq/counter_mux0000<10>1  (
    .ADR0(\divide_freq/counter [10]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter_addsub0000 [10]),
    .O(\divide_freq/counter<10>_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y4" ))
  \divide_freq/counter<10>/XUSED  (
    .I(\divide_freq/counter<10>_pack_2 ),
    .O(\divide_freq/counter [10])
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y4" ))
  \divide_freq/counter<10>/YUSED  (
    .I(\divide_freq/counter<9>_pack_3 ),
    .O(\divide_freq/counter [9])
  );
  X_LUT4 #(
    .INIT ( 16'hFC30 ),
    .LOC ( "SLICE_X14Y4" ))
  \divide_freq/counter_mux0000<9>1  (
    .ADR0(VCC),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter [9]),
    .ADR3(\divide_freq/counter_addsub0000 [9]),
    .O(\divide_freq/counter<9>_pack_3 )
  );
  X_INV #(
    .LOC ( "SLICE_X6Y3" ))
  \divide_freq/COUT/FFY/RSTOR  (
    .I(clk_IBUF_641),
    .O(\divide_freq/COUT/FFY/RST )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X6Y3" ),
    .INIT ( 1'b0 ))
  \divide_freq/COUT  (
    .I(\divide_freq/COUT/DYMUX_1954 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_divide_freq/COUT/CLK ),
    .SET(GND),
    .RST(\divide_freq/COUT/FFY/RST ),
    .O(\divide_freq/COUT_725 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y3" ))
  \divide_freq/COUT/DYMUX  (
    .I(\divide_freq/COUT/BYINV_1953 ),
    .O(\divide_freq/COUT/DYMUX_1954 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y3" ))
  \divide_freq/COUT/BYINV  (
    .I(1'b1),
    .O(\divide_freq/COUT/BYINV_1953 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y3" ))
  \divide_freq/COUT/CLKINV  (
    .I(\divide_freq/COUT_not0001/CYMUXFAST_1474 ),
    .O(\divide_freq/COUT/CLKINV_1951 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFC ),
    .LOC ( "SLICE_X18Y7" ))
  \divide_freq/counter<2>31  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter<2>25_0 ),
    .ADR2(\divide_freq/counter<2>30_751 ),
    .ADR3(VCC),
    .O(\divide_freq/counter<2>31_1982 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y7" ))
  \divide_freq/counter<2>31/XUSED  (
    .I(\divide_freq/counter<2>31_1982 ),
    .O(\divide_freq/counter<2>31_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y7" ))
  \divide_freq/counter<2>31/YUSED  (
    .I(\divide_freq/counter<2>30_pack_1 ),
    .O(\divide_freq/counter<2>30_751 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X18Y7" ))
  \divide_freq/counter<2>30  (
    .ADR0(\divide_freq/counter [12]),
    .ADR1(\divide_freq/counter [13]),
    .ADR2(\divide_freq/counter [15]),
    .ADR3(\divide_freq/counter [14]),
    .O(\divide_freq/counter<2>30_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X18Y6" ))
  \divide_freq/counter_mux0000<12>1  (
    .ADR0(VCC),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [12]),
    .ADR3(\divide_freq/counter [12]),
    .O(\divide_freq/counter<12>_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y6" ))
  \divide_freq/counter<12>/XUSED  (
    .I(\divide_freq/counter<12>_pack_2 ),
    .O(\divide_freq/counter [12])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y6" ))
  \divide_freq/counter<12>/YUSED  (
    .I(\divide_freq/counter<14>_pack_3 ),
    .O(\divide_freq/counter [14])
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X18Y6" ))
  \divide_freq/counter_mux0000<14>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter_addsub0000 [14]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [14]),
    .O(\divide_freq/counter<14>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hAACC ),
    .LOC ( "SLICE_X19Y10" ))
  \divide_freq/counter_mux0000<15>1  (
    .ADR0(\divide_freq/counter_addsub0000 [15]),
    .ADR1(\divide_freq/counter [15]),
    .ADR2(VCC),
    .ADR3(clk_IBUF_641),
    .O(\divide_freq/counter<15>_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y10" ))
  \divide_freq/counter<15>/XUSED  (
    .I(\divide_freq/counter<15>_pack_2 ),
    .O(\divide_freq/counter [15])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y10" ))
  \divide_freq/counter<15>/YUSED  (
    .I(\divide_freq/counter<22>_pack_3 ),
    .O(\divide_freq/counter [22])
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X19Y10" ))
  \divide_freq/counter_mux0000<22>1  (
    .ADR0(\divide_freq/counter [22]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter_addsub0000 [22]),
    .O(\divide_freq/counter<22>_pack_3 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y14" ))
  \divide_freq/counter<16>/XUSED  (
    .I(\divide_freq/counter<16>_pack_2 ),
    .O(\divide_freq/counter [16])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y14" ))
  \divide_freq/counter<16>/YUSED  (
    .I(\divide_freq/counter<30>_pack_3 ),
    .O(\divide_freq/counter [30])
  );
  X_LUT4 #(
    .INIT ( 16'hF0CC ),
    .LOC ( "SLICE_X17Y14" ))
  \divide_freq/counter_mux0000<30>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter [30]),
    .ADR2(\divide_freq/counter_addsub0000 [30]),
    .ADR3(clk_IBUF_641),
    .O(\divide_freq/counter<30>_pack_3 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y10" ))
  \divide_freq/counter<2>59/XUSED  (
    .I(\divide_freq/counter<2>59_2078 ),
    .O(\divide_freq/counter<2>59_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y10" ))
  \divide_freq/counter<2>59/YUSED  (
    .I(\divide_freq/counter<23>_pack_2 ),
    .O(\divide_freq/counter [23])
  );
  X_LUT4 #(
    .INIT ( 16'hCCF0 ),
    .LOC ( "SLICE_X17Y10" ))
  \divide_freq/counter_mux0000<23>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter_addsub0000 [23]),
    .ADR2(\divide_freq/counter [23]),
    .ADR3(clk_IBUF_641),
    .O(\divide_freq/counter<23>_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y15" ))
  \divide_freq/counter<2>76/XUSED  (
    .I(\divide_freq/counter<2>76_2102 ),
    .O(\divide_freq/counter<2>76_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y15" ))
  \divide_freq/counter<2>76/YUSED  (
    .I(\divide_freq/counter<31>_pack_2 ),
    .O(\divide_freq/counter [31])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y13" ))
  \divide_freq/counter<17>/XUSED  (
    .I(\divide_freq/counter<17>_pack_2 ),
    .O(\divide_freq/counter [17])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y13" ))
  \divide_freq/counter<17>/YUSED  (
    .I(\divide_freq/counter<24>_pack_3 ),
    .O(\divide_freq/counter [24])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y9" ))
  \divide_freq/counter<18>/XUSED  (
    .I(\divide_freq/counter<18>_pack_2 ),
    .O(\divide_freq/counter [18])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y9" ))
  \divide_freq/counter<18>/YUSED  (
    .I(\divide_freq/counter<25>_pack_3 ),
    .O(\divide_freq/counter [25])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y8" ))
  \divide_freq/counter<19>/XUSED  (
    .I(\divide_freq/counter<19>_pack_2 ),
    .O(\divide_freq/counter [19])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y8" ))
  \divide_freq/counter<19>/YUSED  (
    .I(\divide_freq/counter<26>_pack_3 ),
    .O(\divide_freq/counter [26])
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y2" ))
  \divide_freq/counter<2>/XUSED  (
    .I(\divide_freq/counter [2]),
    .O(\divide_freq/counter<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y2" ))
  \divide_freq/counter<2>/YUSED  (
    .I(\divide_freq/counter<2>97_pack_1 ),
    .O(\divide_freq/counter<2>97_646 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y12" ))
  \divide_freq/counter<2>71/XUSED  (
    .I(\divide_freq/counter<2>71_2222 ),
    .O(\divide_freq/counter<2>71_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y12" ))
  \divide_freq/counter<2>71/YUSED  (
    .I(\divide_freq/counter<27>_pack_2 ),
    .O(\divide_freq/counter [27])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y5" ))
  \divide_freq/counter<1>/XUSED  (
    .I(\divide_freq/counter<1>_pack_2 ),
    .O(\divide_freq/counter [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y5" ))
  \divide_freq/counter<1>/YUSED  (
    .I(\divide_freq/counter<28>_pack_3 ),
    .O(\divide_freq/counter [28])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y2" ))
  \divide_freq/counter<2>7/XUSED  (
    .I(\divide_freq/counter<2>7_2270 ),
    .O(\divide_freq/counter<2>7_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y2" ))
  \divide_freq/counter<2>7/YUSED  (
    .I(\divide_freq/counter<3>_pack_2 ),
    .O(\divide_freq/counter [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \divide_freq/counter<20>/XUSED  (
    .I(\divide_freq/counter<20>_pack_2 ),
    .O(\divide_freq/counter [20])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \divide_freq/counter<20>/YUSED  (
    .I(\divide_freq/counter<29>_pack_3 ),
    .O(\divide_freq/counter [29])
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y4" ))
  \counter/t6/res_not0002/YUSED  (
    .I(N4_pack_1),
    .O(N4)
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y2" ))
  \counter/t5/res_not0002/YUSED  (
    .I(N2_pack_1),
    .O(N2)
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y2" ))
  \led5_OBUF/YUSED  (
    .I(\counter/RCO25_pack_1 ),
    .O(\counter/RCO25_761 )
  );
  X_BUF #(
    .LOC ( "SLICE_X1Y3" ))
  \counter/t7/res_not0002/YUSED  (
    .I(\counter/t7/res_not000225_pack_1 ),
    .O(\counter/t7/res_not000225_762 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y3" ))
  \divide_freq/counter<5>/XUSED  (
    .I(\divide_freq/counter<5>_pack_2 ),
    .O(\divide_freq/counter [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y3" ))
  \divide_freq/counter<5>/YUSED  (
    .I(\divide_freq/counter<4>_pack_3 ),
    .O(\divide_freq/counter [4])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y11" ))
  \divide_freq/counter<2>85/XUSED  (
    .I(\divide_freq/counter<2>85_2438 ),
    .O(\divide_freq/counter<2>85_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y11" ))
  \divide_freq/counter<2>85/YUSED  (
    .I(N6_pack_1),
    .O(N6)
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y3" ))
  \divide_freq/counter<8>/XUSED  (
    .I(\divide_freq/counter<8>_pack_2 ),
    .O(\divide_freq/counter [8])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y3" ))
  \divide_freq/counter<8>/YUSED  (
    .I(\divide_freq/counter<6>_pack_3 ),
    .O(\divide_freq/counter [6])
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y4" ))
  \divide_freq/counter<2>25/XUSED  (
    .I(\divide_freq/counter<2>25_2486 ),
    .O(\divide_freq/counter<2>25_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y4" ))
  \divide_freq/counter<2>25/YUSED  (
    .I(\divide_freq/counter<11>_pack_2 ),
    .O(\divide_freq/counter [11])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y2" ))
  \divide_freq/counter<2>12/XUSED  (
    .I(\divide_freq/counter<2>12_2510 ),
    .O(\divide_freq/counter<2>12_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y2" ))
  \divide_freq/counter<2>12/YUSED  (
    .I(\divide_freq/counter<7>_pack_2 ),
    .O(\divide_freq/counter [7])
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_mux0000<6>11  (
    .ADR0(\divide_freq/counter [6]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [6]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<6>1_904 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8B8 ),
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_mux0000<4>11  (
    .ADR0(\divide_freq/counter_addsub0000 [4]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter [4]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<4>1_866 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8B8 ),
    .LOC ( "SLICE_X16Y3" ))
  \divide_freq/counter_mux0000<7>11  (
    .ADR0(\divide_freq/counter_addsub0000 [7]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter [7]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<7>1_886 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_mux0000<9>11  (
    .ADR0(\divide_freq/counter [9]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter_addsub0000 [9]),
    .O(\divide_freq/counter_mux0000<9>1_924 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X17Y14" ))
  \divide_freq/counter_mux0000<16>1  (
    .ADR0(\divide_freq/counter [16]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter_addsub0000 [16]),
    .O(\divide_freq/counter<16>_pack_2 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X0Y5" ),
    .INIT ( 1'b0 ))
  \counter/t2/res_mux0001  (
    .I(\counter/t2/res_mux0001/DYMUX_1871 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t2/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t2/res_mux0001_729 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X0Y2" ),
    .INIT ( 1'b0 ))
  \counter/t7/res_mux0001  (
    .I(\counter/t7/res_mux0001/DYMUX_1828 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t7/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t7/res_mux0001_747 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X0Y3" ))
  \counter/RCO12  (
    .ADR0(\counter/t5/res_mux0001_744 ),
    .ADR1(\counter/t2/res_mux0001_729 ),
    .ADR2(\counter/t4/res_mux0001_731 ),
    .ADR3(\counter/t3/res_mux0001_730 ),
    .O(\counter/RCO12_1806 )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X1Y1" ),
    .INIT ( 1'b0 ))
  \counter/t3/res_mux0001  (
    .I(\counter/t3/res_mux0001/DYMUX_1767 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/t3/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/t3/res_mux0001_730 )
  );
  X_LUT4 #(
    .INIT ( 16'h7F7F ),
    .LOC ( "SLICE_X0Y4" ))
  \counter/t2/res_not00021  (
    .ADR0(\counter/t0/res_mux0001_726 ),
    .ADR1(key2_IBUF_734),
    .ADR2(\counter/t1/res_mux0001_728 ),
    .ADR3(VCC),
    .O(\counter/t2/res_not0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X0Y1" ))
  \counter/t7/res_not000212  (
    .ADR0(\counter/t3/res_mux0001_730 ),
    .ADR1(\counter/t2/res_mux0001_729 ),
    .ADR2(\counter/t4/res_mux0001_731 ),
    .ADR3(key2_IBUF_734),
    .O(\counter/t7/res_not000212_1686 )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X0Y0" ))
  \counter/t0/res_mux00021  (
    .ADR0(key2_IBUF_734),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\counter/t0/res_mux0001_726 ),
    .O(\counter/t0/res_mux0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X0Y5" ))
  \counter/t2/res_mux00021  (
    .ADR0(VCC),
    .ADR1(key2_IBUF_734),
    .ADR2(VCC),
    .ADR3(\counter/t2/res_mux0001_729 ),
    .O(\counter/t2/res_mux0002 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_mux0000<1>11  (
    .ADR0(VCC),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [1]),
    .ADR3(\divide_freq/counter [1]),
    .O(\divide_freq/counter_mux0000<1>1_772 )
  );
  X_LUT4 #(
    .INIT ( 16'hBB88 ),
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter_mux0000<3>11  (
    .ADR0(\divide_freq/counter_addsub0000 [3]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter [3]),
    .O(\divide_freq/counter_mux0000<3>1_811 )
  );
  X_LUT4 #(
    .INIT ( 16'hB800 ),
    .LOC ( "SLICE_X16Y1" ))
  \divide_freq/counter<2>1071  (
    .ADR0(\divide_freq/counter_addsub0000 [2]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter<2>_0 ),
    .ADR3(\divide_freq/counter<2>97_646 ),
    .O(\divide_freq/counter<2>107_829 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X16Y2" ))
  \divide_freq/counter_mux0000<5>11  (
    .ADR0(\divide_freq/counter [5]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter_addsub0000 [5]),
    .O(\divide_freq/counter_mux0000<5>1_848 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X16Y4" ))
  \divide_freq/counter_mux0000<8>11  (
    .ADR0(\divide_freq/counter [8]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [8]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<8>1_942 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_mux0000<11>11  (
    .ADR0(\divide_freq/counter_addsub0000 [11]),
    .ADR1(\divide_freq/counter [11]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<11>1_962 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X16Y5" ))
  \divide_freq/counter_mux0000<10>11  (
    .ADR0(\divide_freq/counter [10]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [10]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<10>1_980 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_mux0000<13>11  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter [13]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [13]),
    .O(\divide_freq/counter_mux0000<13>1_1000 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X16Y6" ))
  \divide_freq/counter_mux0000<12>11  (
    .ADR0(\divide_freq/counter_addsub0000 [12]),
    .ADR1(\divide_freq/counter [12]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<12>1_1018 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_mux0000<15>11  (
    .ADR0(\divide_freq/counter_addsub0000 [15]),
    .ADR1(\divide_freq/counter [15]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<15>1_1038 )
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X16Y7" ))
  \divide_freq/counter_mux0000<14>11  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter_addsub0000 [14]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [14]),
    .O(\divide_freq/counter_mux0000<14>1_1056 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_mux0000<17>11  (
    .ADR0(\divide_freq/counter [17]),
    .ADR1(\divide_freq/counter_addsub0000 [17]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<17>1_1076 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X16Y8" ))
  \divide_freq/counter_mux0000<16>11  (
    .ADR0(\divide_freq/counter_addsub0000 [16]),
    .ADR1(\divide_freq/counter [16]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<16>1_1094 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_mux0000<19>11  (
    .ADR0(\divide_freq/counter [19]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [19]),
    .O(\divide_freq/counter_mux0000<19>1_1114 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X16Y9" ))
  \divide_freq/counter_mux0000<18>11  (
    .ADR0(\divide_freq/counter_addsub0000 [18]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [18]),
    .O(\divide_freq/counter_mux0000<18>1_1132 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_mux0000<21>11  (
    .ADR0(\divide_freq/counter [21]),
    .ADR1(\divide_freq/counter_addsub0000 [21]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<21>1_1152 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X16Y10" ))
  \divide_freq/counter_mux0000<20>11  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter [20]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [20]),
    .O(\divide_freq/counter_mux0000<20>1_1170 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_mux0000<23>11  (
    .ADR0(clk_IBUF_641),
    .ADR1(\divide_freq/counter [23]),
    .ADR2(\divide_freq/counter_addsub0000 [23]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<23>1_1190 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X16Y11" ))
  \divide_freq/counter_mux0000<22>11  (
    .ADR0(\divide_freq/counter_addsub0000 [22]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [22]),
    .O(\divide_freq/counter_mux0000<22>1_1208 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_mux0000<25>11  (
    .ADR0(\divide_freq/counter [25]),
    .ADR1(\divide_freq/counter_addsub0000 [25]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<25>1_1228 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X16Y12" ))
  \divide_freq/counter_mux0000<24>11  (
    .ADR0(\divide_freq/counter [24]),
    .ADR1(\divide_freq/counter_addsub0000 [24]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<24>1_1246 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_mux0000<27>11  (
    .ADR0(\divide_freq/counter_addsub0000 [27]),
    .ADR1(\divide_freq/counter [27]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<27>1_1266 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X16Y13" ))
  \divide_freq/counter_mux0000<26>11  (
    .ADR0(clk_IBUF_641),
    .ADR1(\divide_freq/counter [26]),
    .ADR2(\divide_freq/counter_addsub0000 [26]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<26>1_1284 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_mux0000<29>11  (
    .ADR0(\divide_freq/counter [29]),
    .ADR1(\divide_freq/counter_addsub0000 [29]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<29>1_1304 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X16Y14" ))
  \divide_freq/counter_mux0000<28>11  (
    .ADR0(\divide_freq/counter [28]),
    .ADR1(\divide_freq/counter_addsub0000 [28]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<28>1_1322 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_mux0000<31>11  (
    .ADR0(\divide_freq/counter [31]),
    .ADR1(VCC),
    .ADR2(\divide_freq/counter_addsub0000 [31]),
    .ADR3(clk_IBUF_641),
    .O(\divide_freq/counter_mux0000<31>1_1346 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X16Y15" ))
  \divide_freq/counter_mux0000<30>11  (
    .ADR0(clk_IBUF_641),
    .ADR1(\divide_freq/counter [30]),
    .ADR2(\divide_freq/counter_addsub0000 [30]),
    .ADR3(VCC),
    .O(\divide_freq/counter_mux0000<30>1_1351 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_lut<1>  (
    .ADR0(\divide_freq/counter [10]),
    .ADR1(\divide_freq/counter [16]),
    .ADR2(\divide_freq/counter [15]),
    .ADR3(\divide_freq/counter [17]),
    .O(\divide_freq/COUT_not0001_wg_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y6" ))
  \divide_freq/COUT_not0001_wg_lut<0>  (
    .ADR0(\divide_freq/counter [14]),
    .ADR1(\divide_freq/counter [11]),
    .ADR2(\divide_freq/counter [13]),
    .ADR3(\divide_freq/counter [12]),
    .O(\divide_freq/COUT_not0001_wg_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_lut<3>  (
    .ADR0(\divide_freq/counter [22]),
    .ADR1(\divide_freq/counter [23]),
    .ADR2(\divide_freq/counter [8]),
    .ADR3(\divide_freq/counter [21]),
    .O(\divide_freq/COUT_not0001_wg_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y7" ))
  \divide_freq/COUT_not0001_wg_lut<2>  (
    .ADR0(\divide_freq/counter [20]),
    .ADR1(\divide_freq/counter [18]),
    .ADR2(\divide_freq/counter [9]),
    .ADR3(\divide_freq/counter [19]),
    .O(\divide_freq/COUT_not0001_wg_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_lut<5>  (
    .ADR0(\divide_freq/counter [28]),
    .ADR1(\divide_freq/counter [6]),
    .ADR2(\divide_freq/counter [27]),
    .ADR3(\divide_freq/counter [29]),
    .O(\divide_freq/COUT_not0001_wg_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y8" ))
  \divide_freq/COUT_not0001_wg_lut<4>  (
    .ADR0(\divide_freq/counter [7]),
    .ADR1(\divide_freq/counter [26]),
    .ADR2(\divide_freq/counter [25]),
    .ADR3(\divide_freq/counter [24]),
    .O(\divide_freq/COUT_not0001_wg_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001_wg_lut<7>  (
    .ADR0(\divide_freq/counter [4]),
    .ADR1(\divide_freq/counter<2>_0 ),
    .ADR2(\divide_freq/counter [1]),
    .ADR3(\divide_freq/counter [3]),
    .O(\divide_freq/COUT_not0001_wg_lut [7])
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X17Y9" ))
  \divide_freq/COUT_not0001_wg_lut<6>  (
    .ADR0(\divide_freq/Madd_counter_addsub0000_lut [0]),
    .ADR1(\divide_freq/counter [5]),
    .ADR2(\divide_freq/counter [30]),
    .ADR3(\divide_freq/counter [31]),
    .O(\divide_freq/COUT_not0001_wg_lut [6])
  );
  X_BUF #(
    .LOC ( "PAD86" ))
  \led0/OUTPUT/OFF/O1INV  (
    .I(\counter/t0/res_mux0001_726 ),
    .O(\led0/OUTPUT/OFF/O1INV_1500 )
  );
  X_BUF #(
    .LOC ( "PAD86" ))
  \led0/OUTPUT/OFF/OMUX  (
    .I(\counter/r0/res_mux0001_1503 ),
    .O(\led0/O )
  );
  X_BUF #(
    .LOC ( "PAD86" ))
  \led0/OUTPUT/OTCLK1INV  (
    .I(\divide_freq/COUT_725 ),
    .O(\led0/OUTPUT/OTCLK1INV_1497 )
  );
  X_LATCHE #(
    .LOC ( "PAD86" ),
    .INIT ( 1'b0 ))
  \counter/r0/res_mux0001  (
    .I(\led0/OUTPUT/OFF/O1INV_1500 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/r0/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/r0/res_mux0001_1503 )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led1/OUTPUT/OFF/O1INV  (
    .I(\counter/t1/res_mux0001_728 ),
    .O(\led1/OUTPUT/OFF/O1INV_1524 )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led1/OUTPUT/OFF/OMUX  (
    .I(\counter/r1/res_mux0001_1527 ),
    .O(\led1/O )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led1/OUTPUT/OTCLK1INV  (
    .I(\divide_freq/COUT_725 ),
    .O(\led1/OUTPUT/OTCLK1INV_1521 )
  );
  X_LATCHE #(
    .LOC ( "PAD90" ),
    .INIT ( 1'b0 ))
  \counter/r1/res_mux0001  (
    .I(\led1/OUTPUT/OFF/O1INV_1524 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/r1/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/r1/res_mux0001_1527 )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \led2/OUTPUT/OFF/O1INV  (
    .I(\counter/t2/res_mux0001_729 ),
    .O(\led2/OUTPUT/OFF/O1INV_1548 )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \led2/OUTPUT/OFF/OMUX  (
    .I(\counter/r2/res_mux0001_1551 ),
    .O(\led2/O )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \led2/OUTPUT/OTCLK1INV  (
    .I(\divide_freq/COUT_725 ),
    .O(\led2/OUTPUT/OTCLK1INV_1545 )
  );
  X_LATCHE #(
    .LOC ( "PAD91" ),
    .INIT ( 1'b0 ))
  \counter/r2/res_mux0001  (
    .I(\led2/OUTPUT/OFF/O1INV_1548 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/r2/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/r2/res_mux0001_1551 )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \led3/OUTPUT/OFF/O1INV  (
    .I(\counter/t3/res_mux0001_730 ),
    .O(\led3/OUTPUT/OFF/O1INV_1572 )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \led3/OUTPUT/OFF/OMUX  (
    .I(\counter/r3/res_mux0001_1575 ),
    .O(\led3/O )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \led3/OUTPUT/OTCLK1INV  (
    .I(\divide_freq/COUT_725 ),
    .O(\led3/OUTPUT/OTCLK1INV_1569 )
  );
  X_LATCHE #(
    .LOC ( "PAD92" ),
    .INIT ( 1'b0 ))
  \counter/r3/res_mux0001  (
    .I(\led3/OUTPUT/OFF/O1INV_1572 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/r3/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/r3/res_mux0001_1575 )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \led4/OUTPUT/OFF/O1INV  (
    .I(\counter/t4/res_mux0001_731 ),
    .O(\led4/OUTPUT/OFF/O1INV_1596 )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \led4/OUTPUT/OFF/OMUX  (
    .I(\counter/r4/res_mux0001_1599 ),
    .O(\led4/O )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \led4/OUTPUT/OTCLK1INV  (
    .I(\divide_freq/COUT_725 ),
    .O(\led4/OUTPUT/OTCLK1INV_1593 )
  );
  X_LATCHE #(
    .LOC ( "PAD89" ),
    .INIT ( 1'b0 ))
  \counter/r4/res_mux0001  (
    .I(\led4/OUTPUT/OFF/O1INV_1596 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_counter/r4/res_mux0001/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\counter/r4/res_mux0001_1599 )
  );
  X_BUF #(
    .LOC ( "PAD85" ))
  \clk/IFF/IMUX  (
    .I(\clk/INBUF ),
    .O(clk_IBUF_641)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \key0/IFF/IMUX  (
    .I(\key0/INBUF ),
    .O(key0_IBUF_727)
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \key1/IFF/IMUX  (
    .I(\key1/INBUF ),
    .O(key1_IBUF_733)
  );
  X_BUF #(
    .LOC ( "PAD98" ))
  \key2/IFF/IMUX  (
    .I(\key2/INBUF ),
    .O(key2_IBUF_734)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X1Y0" ))
  \counter/t4/res_not00021  (
    .ADR0(\counter/t0/res_mux0001_726 ),
    .ADR1(\counter/t1/res_mux0001_728 ),
    .ADR2(\counter/t2/res_mux0001_729 ),
    .ADR3(\counter/t3/res_mux0001_730 ),
    .O(\counter/t4/res_not00021_1655 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y10" ))
  \divide_freq/counter<2>59  (
    .ADR0(\divide_freq/counter [20]),
    .ADR1(\divide_freq/counter [22]),
    .ADR2(\divide_freq/counter [23]),
    .ADR3(\divide_freq/counter [21]),
    .O(\divide_freq/counter<2>59_2078 )
  );
  X_LUT4 #(
    .INIT ( 16'hDD88 ),
    .LOC ( "SLICE_X17Y15" ))
  \divide_freq/counter_mux0000<31>1  (
    .ADR0(clk_IBUF_641),
    .ADR1(\divide_freq/counter_addsub0000 [31]),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter [31]),
    .O(\divide_freq/counter<31>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y15" ))
  \divide_freq/counter<2>76  (
    .ADR0(\divide_freq/counter [29]),
    .ADR1(\divide_freq/counter [30]),
    .ADR2(\divide_freq/counter [28]),
    .ADR3(\divide_freq/counter [31]),
    .O(\divide_freq/counter<2>76_2102 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X17Y13" ))
  \divide_freq/counter_mux0000<24>1  (
    .ADR0(VCC),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [24]),
    .ADR3(\divide_freq/counter [24]),
    .O(\divide_freq/counter<24>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X17Y13" ))
  \divide_freq/counter_mux0000<17>1  (
    .ADR0(\divide_freq/counter [17]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter_addsub0000 [17]),
    .ADR3(VCC),
    .O(\divide_freq/counter<17>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X18Y9" ))
  \divide_freq/counter_mux0000<25>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter [25]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [25]),
    .O(\divide_freq/counter<25>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X18Y9" ))
  \divide_freq/counter_mux0000<18>1  (
    .ADR0(\divide_freq/counter [18]),
    .ADR1(\divide_freq/counter_addsub0000 [18]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter<18>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X18Y8" ))
  \divide_freq/counter_mux0000<26>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter_addsub0000 [26]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [26]),
    .O(\divide_freq/counter<26>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X18Y8" ))
  \divide_freq/counter_mux0000<19>1  (
    .ADR0(\divide_freq/counter [19]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [19]),
    .O(\divide_freq/counter<19>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X19Y2" ))
  \divide_freq/counter<2>97  (
    .ADR0(\divide_freq/counter<2>31_0 ),
    .ADR1(\divide_freq/counter<2>85_0 ),
    .ADR2(\divide_freq/counter<2>7_0 ),
    .ADR3(\divide_freq/counter<2>12_0 ),
    .O(\divide_freq/counter<2>97_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X19Y2" ))
  \divide_freq/counter<2>107  (
    .ADR0(\divide_freq/counter_mux0000<2>_0 ),
    .ADR1(VCC),
    .ADR2(\divide_freq/counter<2>97_646 ),
    .ADR3(VCC),
    .O(\divide_freq/counter [2])
  );
  X_LUT4 #(
    .INIT ( 16'hCCF0 ),
    .LOC ( "SLICE_X17Y12" ))
  \divide_freq/counter_mux0000<27>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter_addsub0000 [27]),
    .ADR2(\divide_freq/counter [27]),
    .ADR3(clk_IBUF_641),
    .O(\divide_freq/counter<27>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y12" ))
  \divide_freq/counter<2>71  (
    .ADR0(\divide_freq/counter [25]),
    .ADR1(\divide_freq/counter [26]),
    .ADR2(\divide_freq/counter [27]),
    .ADR3(\divide_freq/counter [24]),
    .O(\divide_freq/counter<2>71_2222 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X17Y5" ))
  \divide_freq/counter_mux0000<28>1  (
    .ADR0(\divide_freq/counter [28]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [28]),
    .O(\divide_freq/counter<28>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X17Y5" ))
  \divide_freq/counter_mux0000<1>1  (
    .ADR0(\divide_freq/counter_addsub0000 [1]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [1]),
    .O(\divide_freq/counter<1>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X17Y2" ))
  \divide_freq/counter_mux0000<3>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter [3]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [3]),
    .O(\divide_freq/counter<3>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFF ),
    .LOC ( "SLICE_X17Y2" ))
  \divide_freq/counter<2>7  (
    .ADR0(\divide_freq/counter [1]),
    .ADR1(\divide_freq/counter_mux0000<2>_0 ),
    .ADR2(\divide_freq/counter [3]),
    .ADR3(\divide_freq/Madd_counter_addsub0000_lut [0]),
    .O(\divide_freq/counter<2>7_2270 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X18Y11" ))
  \divide_freq/counter_mux0000<29>1  (
    .ADR0(\divide_freq/counter [29]),
    .ADR1(VCC),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [29]),
    .O(\divide_freq/counter<29>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X18Y11" ))
  \divide_freq/counter_mux0000<20>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter [20]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter_addsub0000 [20]),
    .O(\divide_freq/counter<20>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X1Y4" ))
  \counter/t6/res_not0002_SW0  (
    .ADR0(\counter/t2/res_mux0001_729 ),
    .ADR1(\counter/t1/res_mux0001_728 ),
    .ADR2(key2_IBUF_734),
    .ADR3(\counter/t0/res_mux0001_726 ),
    .O(N4_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X1Y4" ))
  \counter/t6/res_not0002  (
    .ADR0(\counter/t3/res_mux0001_730 ),
    .ADR1(\counter/t4/res_mux0001_731 ),
    .ADR2(N4),
    .ADR3(\counter/t5/res_mux0001_744 ),
    .O(\counter/t6/res_not0002_2318 )
  );
  X_LUT4 #(
    .INIT ( 16'hC000 ),
    .LOC ( "SLICE_X1Y2" ))
  \counter/t5/res_not0002_SW0  (
    .ADR0(VCC),
    .ADR1(\counter/t0/res_mux0001_726 ),
    .ADR2(\counter/t1/res_mux0001_728 ),
    .ADR3(key2_IBUF_734),
    .O(N2_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X1Y2" ))
  \counter/t5/res_not0002  (
    .ADR0(\counter/t2/res_mux0001_729 ),
    .ADR1(N2),
    .ADR2(\counter/t4/res_mux0001_731 ),
    .ADR3(\counter/t3/res_mux0001_730 ),
    .O(\counter/t5/res_not0002_2342 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X2Y2" ))
  \counter/RCO25  (
    .ADR0(\counter/t1/res_mux0001_728 ),
    .ADR1(\counter/t7/res_mux0001_747 ),
    .ADR2(\counter/t6/res_mux0001_738 ),
    .ADR3(\counter/t0/res_mux0001_726 ),
    .O(\counter/RCO25_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X2Y2" ))
  \counter/RCO26  (
    .ADR0(VCC),
    .ADR1(\counter/RCO12_0 ),
    .ADR2(VCC),
    .ADR3(\counter/RCO25_761 ),
    .O(led5_OBUF_2366)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ),
    .LOC ( "SLICE_X1Y3" ))
  \counter/t7/res_not000225  (
    .ADR0(\counter/t5/res_mux0001_744 ),
    .ADR1(\counter/t6/res_mux0001_738 ),
    .ADR2(\counter/t1/res_mux0001_728 ),
    .ADR3(\counter/t0/res_mux0001_726 ),
    .O(\counter/t7/res_not000225_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X1Y3" ))
  \counter/t7/res_not000226  (
    .ADR0(VCC),
    .ADR1(\counter/t7/res_not000212_0 ),
    .ADR2(VCC),
    .ADR3(\counter/t7/res_not000225_762 ),
    .O(\counter/t7/res_not0002 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8B8 ),
    .LOC ( "SLICE_X18Y3" ))
  \divide_freq/counter_mux0000<4>1  (
    .ADR0(\divide_freq/counter_addsub0000 [4]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter [4]),
    .ADR3(VCC),
    .O(\divide_freq/counter<4>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X18Y3" ))
  \divide_freq/counter_mux0000<5>1  (
    .ADR0(\divide_freq/counter [5]),
    .ADR1(clk_IBUF_641),
    .ADR2(VCC),
    .ADR3(\divide_freq/counter_addsub0000 [5]),
    .O(\divide_freq/counter<5>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y11" ))
  \divide_freq/counter<2>85_SW0  (
    .ADR0(\divide_freq/counter<2>76_0 ),
    .ADR1(\divide_freq/counter<2>59_0 ),
    .ADR2(\divide_freq/counter [19]),
    .ADR3(\divide_freq/counter<2>71_0 ),
    .O(N6_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y11" ))
  \divide_freq/counter<2>85  (
    .ADR0(\divide_freq/counter [18]),
    .ADR1(\divide_freq/counter [17]),
    .ADR2(\divide_freq/counter [16]),
    .ADR3(N6),
    .O(\divide_freq/counter<2>85_2438 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X17Y3" ))
  \divide_freq/counter_mux0000<6>1  (
    .ADR0(\divide_freq/counter [6]),
    .ADR1(\divide_freq/counter_addsub0000 [6]),
    .ADR2(clk_IBUF_641),
    .ADR3(VCC),
    .O(\divide_freq/counter<6>_pack_3 )
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X17Y3" ))
  \divide_freq/counter_mux0000<8>1  (
    .ADR0(VCC),
    .ADR1(\divide_freq/counter_addsub0000 [8]),
    .ADR2(clk_IBUF_641),
    .ADR3(\divide_freq/counter [8]),
    .O(\divide_freq/counter<8>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC30 ),
    .LOC ( "SLICE_X17Y4" ))
  \divide_freq/counter_mux0000<11>1  (
    .ADR0(VCC),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter [11]),
    .ADR3(\divide_freq/counter_addsub0000 [11]),
    .O(\divide_freq/counter<11>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X17Y4" ))
  \divide_freq/counter<2>25  (
    .ADR0(\divide_freq/counter [9]),
    .ADR1(\divide_freq/counter [10]),
    .ADR2(\divide_freq/counter [11]),
    .ADR3(\divide_freq/counter [8]),
    .O(\divide_freq/counter<2>25_2486 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8B8 ),
    .LOC ( "SLICE_X18Y2" ))
  \divide_freq/counter_mux0000<7>1  (
    .ADR0(\divide_freq/counter_addsub0000 [7]),
    .ADR1(clk_IBUF_641),
    .ADR2(\divide_freq/counter [7]),
    .ADR3(VCC),
    .O(\divide_freq/counter<7>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X18Y2" ))
  \divide_freq/counter<2>12  (
    .ADR0(\divide_freq/counter [4]),
    .ADR1(\divide_freq/counter [5]),
    .ADR2(\divide_freq/counter [7]),
    .ADR3(\divide_freq/counter [6]),
    .O(\divide_freq/counter<2>12_2510 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X16Y0" ))
  \divide_freq/counter_addsub0000<0>/F/X_LUT4  (
    .ADR0(\divide_freq/Madd_counter_addsub0000_lut [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divide_freq/counter_addsub0000<0>/F )
  );
  X_BUF #(
    .LOC ( "PAD88" ))
  \led5/OUTPUT/OFF/OMUX  (
    .I(led5_OBUF_2366),
    .O(\led5/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X1Y0" ))
  \counter/t4/res_not0002/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\counter/t4/res_not0002/G )
  );
  X_BUF #(
    .LOC ( "PAD86" ))
  \led0/OUTPUT/TFF/TMUX  (
    .I(key0_IBUF_727),
    .O(\led0/T )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led1/OUTPUT/TFF/TMUX  (
    .I(key0_IBUF_727),
    .O(\led1/T )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \led2/OUTPUT/TFF/TMUX  (
    .I(key0_IBUF_727),
    .O(\led2/T )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \led3/OUTPUT/TFF/TMUX  (
    .I(key0_IBUF_727),
    .O(\led3/T )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \led4/OUTPUT/TFF/TMUX  (
    .I(key0_IBUF_727),
    .O(\led4/T )
  );
  X_ONE   NlwBlock_FPGA_VCC (
    .O(VCC)
  );
  X_INV   \NlwInverterBlock_counter/t4/res_mux0001/CLK  (
    .I(\counter/t4/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t4/res_mux0001/CLK )
  );
  X_ZERO   NlwBlock_FPGA_GND (
    .O(GND)
  );
  X_INV   \NlwInverterBlock_counter/t6/res_mux0001/CLK  (
    .I(\counter/t6/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t6/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/t1/res_mux0001/CLK  (
    .I(\counter/t1/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t1/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/t5/res_mux0001/CLK  (
    .I(\counter/t5/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t5/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/t0/res_mux0001/CLK  (
    .I(\counter/t0/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t0/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_divide_freq/COUT/CLK  (
    .I(\divide_freq/COUT/CLKINV_1951 ),
    .O(\NlwInverterSignal_divide_freq/COUT/CLK )
  );
  X_INV   \NlwInverterBlock_counter/t2/res_mux0001/CLK  (
    .I(\counter/t2/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t2/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/t7/res_mux0001/CLK  (
    .I(\counter/t7/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t7/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/t3/res_mux0001/CLK  (
    .I(\counter/t3/res_mux0001/CLKINVNOT ),
    .O(\NlwInverterSignal_counter/t3/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/r0/res_mux0001/CLK  (
    .I(\led0/OUTPUT/OTCLK1INV_1497 ),
    .O(\NlwInverterSignal_counter/r0/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/r1/res_mux0001/CLK  (
    .I(\led1/OUTPUT/OTCLK1INV_1521 ),
    .O(\NlwInverterSignal_counter/r1/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/r2/res_mux0001/CLK  (
    .I(\led2/OUTPUT/OTCLK1INV_1545 ),
    .O(\NlwInverterSignal_counter/r2/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/r3/res_mux0001/CLK  (
    .I(\led3/OUTPUT/OTCLK1INV_1569 ),
    .O(\NlwInverterSignal_counter/r3/res_mux0001/CLK )
  );
  X_INV   \NlwInverterBlock_counter/r4/res_mux0001/CLK  (
    .I(\led4/OUTPUT/OTCLK1INV_1593 ),
    .O(\NlwInverterSignal_counter/r4/res_mux0001/CLK )
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

