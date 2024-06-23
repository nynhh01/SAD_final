/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Sun Jun 23 07:25:34 2024
/////////////////////////////////////////////////////////////


module controller_data_width8 ( clk, rst, start, i_comp, j_comp, ld_i, ena_i, 
        ld_j, ena_j, re_A, re_B, ena_temp, ena_SAD, SAD_sel, done );
  input clk, rst, start, i_comp, j_comp;
  output ld_i, ena_i, ld_j, ena_j, re_A, re_B, ena_temp, ena_SAD, SAD_sel,
         done;
  wire   N81, N82, N83, N84, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, re_A, n1,
         n2, n6, n7, n8, n9, n10, n11;
  wire   [3:0] current_state;
  assign re_B = re_A;

  SAEDRVT14_AOI31_0P75 U14 ( .A1(n9), .A2(current_state[0]), .A3(n19), .B(n25), 
        .X(n22) );
  SAEDRVT14_AOI22_1P5 U20 ( .A1(start), .A2(n25), .B1(n9), .B2(n6), .X(n30) );
  SAEDRVT14_AN3_0P75 U24 ( .A1(n6), .A2(n8), .A3(current_state[2]), .X(n24) );
  SAEDRVT14_AN3_0P75 U31 ( .A1(current_state[2]), .A2(n19), .A3(n6), .X(re_A)
         );
  SAEDRVT14_EO2_V1_0P75 U43 ( .A1(current_state[2]), .A2(n16), .X(n14) );
  SAEDRVT14_EO2_V1_0P75 U44 ( .A1(current_state[1]), .A2(current_state[0]), 
        .X(n16) );
  SAEDRVT14_AO32_1 U45 ( .A1(n28), .A2(n9), .A3(current_state[0]), .B1(n25), 
        .B2(n11), .X(n27) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[0]  ( .D(N81), .CK(clk), .RD(n10), 
        .Q(current_state[0]) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[3]  ( .D(N84), .CK(clk), .RD(n10), 
        .Q(current_state[3]) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[1]  ( .D(N82), .CK(clk), .RD(n10), 
        .Q(current_state[1]) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[2]  ( .D(N83), .CK(clk), .RD(n10), 
        .Q(current_state[2]) );
  SAEDRVT14_NR2_ISO_1 U3 ( .CK(n6), .EN(n17), .X(ena_i) );
  SAEDRVT14_AOI21_0P5 U4 ( .A1(n2), .A2(n26), .B(done), .X(n20) );
  SAEDRVT14_INV_1 U5 ( .A(j_comp), .X(n2) );
  SAEDRVT14_INV_1 U6 ( .A(SAD_sel), .X(ld_i) );
  SAEDRVT14_NR2_ISO_1 U7 ( .CK(n7), .EN(n31), .X(n25) );
  SAEDRVT14_AN2_MM_1 U8 ( .A1(n24), .A2(n7), .X(ld_j) );
  SAEDRVT14_INV_1 U9 ( .A(n12), .X(ena_temp) );
  SAEDRVT14_ND3B_0P75 U10 ( .A(n13), .B1(n7), .B2(n14), .X(n12) );
  SAEDRVT14_INV_1 U11 ( .A(current_state[0]), .X(n6) );
  SAEDRVT14_INV_1 U12 ( .A(current_state[1]), .X(n8) );
  SAEDRVT14_AN2_MM_1 U13 ( .A1(current_state[3]), .A2(n24), .X(done) );
  SAEDRVT14_ND3B_0P75 U15 ( .A(current_state[2]), .B1(n6), .B2(n19), .X(
        SAD_sel) );
  SAEDRVT14_INV_1 U16 ( .A(current_state[3]), .X(n7) );
  SAEDRVT14_NR2_ISO_1 U17 ( .CK(current_state[3]), .EN(n31), .X(n26) );
  SAEDRVT14_NR2_ISO_1 U18 ( .CK(n8), .EN(current_state[3]), .X(n19) );
  SAEDRVT14_OAI21_0P75 U19 ( .A1(start), .A2(current_state[2]), .B(
        current_state[0]), .X(n33) );
  SAEDRVT14_NR2_ISO_1 U21 ( .CK(current_state[0]), .EN(n17), .X(ena_j) );
  SAEDRVT14_INV_1 U22 ( .A(current_state[2]), .X(n9) );
  SAEDRVT14_ND3B_0P75 U23 ( .A(current_state[2]), .B1(current_state[3]), .B2(
        current_state[1]), .X(n17) );
  SAEDRVT14_AO221_0P5 U25 ( .A1(n18), .A2(n19), .B1(current_state[3]), .B2(n8), 
        .C(n1), .X(N84) );
  SAEDRVT14_AOI21_0P5 U26 ( .A1(i_comp), .A2(n9), .B(n6), .X(n18) );
  SAEDRVT14_INV_1 U27 ( .A(n20), .X(n1) );
  SAEDRVT14_ND3B_0P75 U28 ( .A(current_state[1]), .B1(current_state[0]), .B2(
        current_state[2]), .X(n31) );
  SAEDRVT14_OR4_1 U29 ( .A1(re_A), .A2(ld_i), .A3(n26), .A4(n27), .X(N82) );
  SAEDRVT14_OAI21_0P75 U30 ( .A1(current_state[1]), .A2(n11), .B(n7), .X(n28)
         );
  SAEDRVT14_INV_1 U32 ( .A(start), .X(n11) );
  SAEDRVT14_ND3B_0P75 U33 ( .A(n29), .B1(n20), .B2(n30), .X(N81) );
  SAEDRVT14_ND3B_0P75 U34 ( .A(re_A), .B1(n17), .B2(n32), .X(n29) );
  SAEDRVT14_ND3B_0P75 U35 ( .A(current_state[3]), .B1(n8), .B2(n33), .X(n32)
         );
  SAEDRVT14_ND3B_0P75 U36 ( .A(n21), .B1(n22), .B2(n23), .X(N83) );
  SAEDRVT14_AN2_MM_1 U37 ( .A1(n26), .A2(j_comp), .X(n21) );
  SAEDRVT14_NR4_0P75 U38 ( .A1(ena_j), .A2(done), .A3(ld_j), .A4(re_A), .X(n23) );
  SAEDRVT14_OA2BB2_V1_1 U39 ( .A1(n16), .A2(current_state[2]), .B1(n8), .B2(n6), .X(n13) );
  SAEDRVT14_INV_1 U40 ( .A(rst), .X(n10) );
  SAEDRVT14_INV_1 U41 ( .A(n15), .X(ena_SAD) );
  SAEDRVT14_ND3B_0P75 U42 ( .A(n14), .B1(current_state[3]), .B2(n13), .X(n15)
         );
endmodule


module counter_0 ( clk, rst, ld, ena, count );
  output [4:0] count;
  input clk, rst, ld, ena;
  wire   N6, N7, N8, N9, N10, n2, n3, n4, n5, n6, n7, n8, \add_24/carry[4] ,
         \add_24/carry[3] , \add_24/carry[2] , n1;

  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[0]  ( .D(n8), .CK(clk), .RD(n1), .Q(
        count[0]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[1]  ( .D(n7), .CK(clk), .RD(n1), .Q(
        count[1]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[2]  ( .D(n6), .CK(clk), .RD(n1), .Q(
        count[2]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[3]  ( .D(n5), .CK(clk), .RD(n1), .Q(
        count[3]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[4]  ( .D(n4), .CK(clk), .RD(n1), .Q(
        count[4]) );
  SAEDRVT14_ADDH_0P5 \add_24/U1_1_3  ( .A(count[3]), .B(\add_24/carry[3] ), 
        .CO(\add_24/carry[4] ), .S(N9) );
  SAEDRVT14_ADDH_0P5 \add_24/U1_1_2  ( .A(count[2]), .B(\add_24/carry[2] ), 
        .CO(\add_24/carry[3] ), .S(N8) );
  SAEDRVT14_ADDH_0P5 \add_24/U1_1_1  ( .A(count[1]), .B(count[0]), .CO(
        \add_24/carry[2] ), .S(N7) );
  SAEDRVT14_NR2_ISO_1 U3 ( .CK(n2), .EN(ld), .X(n3) );
  SAEDRVT14_NR2_ISO_1 U4 ( .CK(ena), .EN(ld), .X(n2) );
  SAEDRVT14_AO22_1 U5 ( .A1(count[0]), .A2(n2), .B1(N6), .B2(n3), .X(n8) );
  SAEDRVT14_INV_1 U6 ( .A(count[0]), .X(N6) );
  SAEDRVT14_AO22_1 U7 ( .A1(count[1]), .A2(n2), .B1(N7), .B2(n3), .X(n7) );
  SAEDRVT14_AO22_1 U8 ( .A1(count[3]), .A2(n2), .B1(N9), .B2(n3), .X(n5) );
  SAEDRVT14_AO22_1 U9 ( .A1(count[2]), .A2(n2), .B1(N8), .B2(n3), .X(n6) );
  SAEDRVT14_AO22_1 U10 ( .A1(count[4]), .A2(n2), .B1(N10), .B2(n3), .X(n4) );
  SAEDRVT14_INV_1 U11 ( .A(rst), .X(n1) );
  SAEDRVT14_EO2_V1_0P75 U12 ( .A1(\add_24/carry[4] ), .A2(count[4]), .X(N10)
         );
endmodule


module counter_1 ( clk, rst, ld, ena, count );
  output [4:0] count;
  input clk, rst, ld, ena;
  wire   N6, N7, N8, N9, N10, \add_24/carry[4] , \add_24/carry[3] ,
         \add_24/carry[2] , n1, n9, n10, n11, n12, n13, n14, n15;

  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[0]  ( .D(n9), .CK(clk), .RD(n1), .Q(
        count[0]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[1]  ( .D(n10), .CK(clk), .RD(n1), .Q(
        count[1]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[2]  ( .D(n11), .CK(clk), .RD(n1), .Q(
        count[2]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[3]  ( .D(n12), .CK(clk), .RD(n1), .Q(
        count[3]) );
  SAEDRVT14_FDPRBQ_V2_1 \count_p_reg[4]  ( .D(n13), .CK(clk), .RD(n1), .Q(
        count[4]) );
  SAEDRVT14_ADDH_0P5 \add_24/U1_1_3  ( .A(count[3]), .B(\add_24/carry[3] ), 
        .CO(\add_24/carry[4] ), .S(N9) );
  SAEDRVT14_ADDH_0P5 \add_24/U1_1_2  ( .A(count[2]), .B(\add_24/carry[2] ), 
        .CO(\add_24/carry[3] ), .S(N8) );
  SAEDRVT14_ADDH_0P5 \add_24/U1_1_1  ( .A(count[1]), .B(count[0]), .CO(
        \add_24/carry[2] ), .S(N7) );
  SAEDRVT14_NR2_ISO_1 U3 ( .CK(n15), .EN(ld), .X(n14) );
  SAEDRVT14_NR2_ISO_1 U4 ( .CK(ena), .EN(ld), .X(n15) );
  SAEDRVT14_AO22_1 U5 ( .A1(count[0]), .A2(n15), .B1(N6), .B2(n14), .X(n9) );
  SAEDRVT14_INV_1 U6 ( .A(count[0]), .X(N6) );
  SAEDRVT14_AO22_1 U7 ( .A1(count[1]), .A2(n15), .B1(N7), .B2(n14), .X(n10) );
  SAEDRVT14_AO22_1 U8 ( .A1(count[4]), .A2(n15), .B1(N10), .B2(n14), .X(n13)
         );
  SAEDRVT14_AO22_1 U9 ( .A1(count[3]), .A2(n15), .B1(N9), .B2(n14), .X(n12) );
  SAEDRVT14_AO22_1 U10 ( .A1(count[2]), .A2(n15), .B1(N8), .B2(n14), .X(n11)
         );
  SAEDRVT14_INV_1 U11 ( .A(rst), .X(n1) );
  SAEDRVT14_EO2_V1_0P75 U12 ( .A1(\add_24/carry[4] ), .A2(count[4]), .X(N10)
         );
endmodule


module mem_0 ( clk, rst, re, we, addr, data_in, data_out );
  input [4:0] addr;
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, re, we;
  wire   \ramA[0][7] , \ramA[0][6] , \ramA[0][5] , \ramA[0][4] , \ramA[0][3] ,
         \ramA[0][2] , \ramA[0][1] , \ramA[0][0] , \ramA[1][7] , \ramA[1][6] ,
         \ramA[1][5] , \ramA[1][4] , \ramA[1][3] , \ramA[1][2] , \ramA[1][1] ,
         \ramA[1][0] , \ramA[2][7] , \ramA[2][6] , \ramA[2][5] , \ramA[2][4] ,
         \ramA[2][3] , \ramA[2][2] , \ramA[2][1] , \ramA[2][0] , \ramA[3][7] ,
         \ramA[3][6] , \ramA[3][5] , \ramA[3][4] , \ramA[3][3] , \ramA[3][2] ,
         \ramA[3][1] , \ramA[3][0] , \ramA[4][7] , \ramA[4][6] , \ramA[4][5] ,
         \ramA[4][4] , \ramA[4][3] , \ramA[4][2] , \ramA[4][1] , \ramA[4][0] ,
         \ramA[5][7] , \ramA[5][6] , \ramA[5][5] , \ramA[5][4] , \ramA[5][3] ,
         \ramA[5][2] , \ramA[5][1] , \ramA[5][0] , \ramA[6][7] , \ramA[6][6] ,
         \ramA[6][5] , \ramA[6][4] , \ramA[6][3] , \ramA[6][2] , \ramA[6][1] ,
         \ramA[6][0] , \ramA[7][7] , \ramA[7][6] , \ramA[7][5] , \ramA[7][4] ,
         \ramA[7][3] , \ramA[7][2] , \ramA[7][1] , \ramA[7][0] , \ramA[8][7] ,
         \ramA[8][6] , \ramA[8][5] , \ramA[8][4] , \ramA[8][3] , \ramA[8][2] ,
         \ramA[8][1] , \ramA[8][0] , n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n243, n244, n245, n246, n247, n248, n249;

  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][7]  ( .D(n242), .CK(clk), .RD(n7), .Q(
        \ramA[0][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][6]  ( .D(n241), .CK(clk), .RD(n7), .Q(
        \ramA[0][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][5]  ( .D(n240), .CK(clk), .RD(n7), .Q(
        \ramA[0][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][4]  ( .D(n239), .CK(clk), .RD(n7), .Q(
        \ramA[0][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][3]  ( .D(n238), .CK(clk), .RD(n7), .Q(
        \ramA[0][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][2]  ( .D(n237), .CK(clk), .RD(n7), .Q(
        \ramA[0][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][1]  ( .D(n236), .CK(clk), .RD(n7), .Q(
        \ramA[0][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][0]  ( .D(n235), .CK(clk), .RD(n7), .Q(
        \ramA[0][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][7]  ( .D(n234), .CK(clk), .RD(n6), .Q(
        \ramA[1][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][6]  ( .D(n233), .CK(clk), .RD(n6), .Q(
        \ramA[1][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][5]  ( .D(n232), .CK(clk), .RD(n6), .Q(
        \ramA[1][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][4]  ( .D(n231), .CK(clk), .RD(n6), .Q(
        \ramA[1][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][3]  ( .D(n230), .CK(clk), .RD(n6), .Q(
        \ramA[1][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][2]  ( .D(n229), .CK(clk), .RD(n6), .Q(
        \ramA[1][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][1]  ( .D(n228), .CK(clk), .RD(n6), .Q(
        \ramA[1][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][0]  ( .D(n227), .CK(clk), .RD(n6), .Q(
        \ramA[1][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][7]  ( .D(n226), .CK(clk), .RD(n6), .Q(
        \ramA[2][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][6]  ( .D(n225), .CK(clk), .RD(n6), .Q(
        \ramA[2][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][5]  ( .D(n224), .CK(clk), .RD(n6), .Q(
        \ramA[2][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][4]  ( .D(n223), .CK(clk), .RD(n6), .Q(
        \ramA[2][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][3]  ( .D(n222), .CK(clk), .RD(n5), .Q(
        \ramA[2][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][2]  ( .D(n221), .CK(clk), .RD(n5), .Q(
        \ramA[2][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][1]  ( .D(n220), .CK(clk), .RD(n5), .Q(
        \ramA[2][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][0]  ( .D(n219), .CK(clk), .RD(n5), .Q(
        \ramA[2][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][7]  ( .D(n218), .CK(clk), .RD(n5), .Q(
        \ramA[3][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][6]  ( .D(n217), .CK(clk), .RD(n5), .Q(
        \ramA[3][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][5]  ( .D(n216), .CK(clk), .RD(n5), .Q(
        \ramA[3][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][4]  ( .D(n215), .CK(clk), .RD(n5), .Q(
        \ramA[3][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][3]  ( .D(n214), .CK(clk), .RD(n5), .Q(
        \ramA[3][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][2]  ( .D(n213), .CK(clk), .RD(n5), .Q(
        \ramA[3][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][1]  ( .D(n212), .CK(clk), .RD(n5), .Q(
        \ramA[3][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][0]  ( .D(n211), .CK(clk), .RD(n5), .Q(
        \ramA[3][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][7]  ( .D(n210), .CK(clk), .RD(n4), .Q(
        \ramA[4][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][6]  ( .D(n209), .CK(clk), .RD(n4), .Q(
        \ramA[4][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][5]  ( .D(n208), .CK(clk), .RD(n4), .Q(
        \ramA[4][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][4]  ( .D(n207), .CK(clk), .RD(n4), .Q(
        \ramA[4][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][3]  ( .D(n206), .CK(clk), .RD(n4), .Q(
        \ramA[4][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][2]  ( .D(n205), .CK(clk), .RD(n4), .Q(
        \ramA[4][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][1]  ( .D(n204), .CK(clk), .RD(n4), .Q(
        \ramA[4][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][0]  ( .D(n203), .CK(clk), .RD(n4), .Q(
        \ramA[4][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][7]  ( .D(n202), .CK(clk), .RD(n4), .Q(
        \ramA[5][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][6]  ( .D(n201), .CK(clk), .RD(n4), .Q(
        \ramA[5][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][5]  ( .D(n200), .CK(clk), .RD(n4), .Q(
        \ramA[5][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][4]  ( .D(n199), .CK(clk), .RD(n4), .Q(
        \ramA[5][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][3]  ( .D(n198), .CK(clk), .RD(n3), .Q(
        \ramA[5][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][2]  ( .D(n197), .CK(clk), .RD(n3), .Q(
        \ramA[5][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][1]  ( .D(n196), .CK(clk), .RD(n3), .Q(
        \ramA[5][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][0]  ( .D(n195), .CK(clk), .RD(n3), .Q(
        \ramA[5][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][7]  ( .D(n194), .CK(clk), .RD(n3), .Q(
        \ramA[6][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][6]  ( .D(n193), .CK(clk), .RD(n3), .Q(
        \ramA[6][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][5]  ( .D(n192), .CK(clk), .RD(n3), .Q(
        \ramA[6][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][4]  ( .D(n191), .CK(clk), .RD(n3), .Q(
        \ramA[6][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][3]  ( .D(n190), .CK(clk), .RD(n3), .Q(
        \ramA[6][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][2]  ( .D(n189), .CK(clk), .RD(n3), .Q(
        \ramA[6][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][1]  ( .D(n188), .CK(clk), .RD(n3), .Q(
        \ramA[6][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][0]  ( .D(n187), .CK(clk), .RD(n3), .Q(
        \ramA[6][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][7]  ( .D(n186), .CK(clk), .RD(n2), .Q(
        \ramA[7][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][6]  ( .D(n185), .CK(clk), .RD(n2), .Q(
        \ramA[7][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][5]  ( .D(n184), .CK(clk), .RD(n2), .Q(
        \ramA[7][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][4]  ( .D(n183), .CK(clk), .RD(n2), .Q(
        \ramA[7][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][3]  ( .D(n182), .CK(clk), .RD(n2), .Q(
        \ramA[7][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][2]  ( .D(n181), .CK(clk), .RD(n2), .Q(
        \ramA[7][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][1]  ( .D(n180), .CK(clk), .RD(n2), .Q(
        \ramA[7][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][0]  ( .D(n179), .CK(clk), .RD(n2), .Q(
        \ramA[7][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][7]  ( .D(n178), .CK(clk), .RD(n2), .Q(
        \ramA[8][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[7]  ( .D(n177), .CK(clk), .RD(n2), .Q(
        data_out[7]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][6]  ( .D(n176), .CK(clk), .RD(n2), .Q(
        \ramA[8][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[6]  ( .D(n175), .CK(clk), .RD(n2), .Q(
        data_out[6]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][5]  ( .D(n174), .CK(clk), .RD(n1), .Q(
        \ramA[8][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[5]  ( .D(n173), .CK(clk), .RD(n1), .Q(
        data_out[5]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][4]  ( .D(n172), .CK(clk), .RD(n1), .Q(
        \ramA[8][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[4]  ( .D(n171), .CK(clk), .RD(n1), .Q(
        data_out[4]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][3]  ( .D(n170), .CK(clk), .RD(n1), .Q(
        \ramA[8][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[3]  ( .D(n169), .CK(clk), .RD(n1), .Q(
        data_out[3]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][2]  ( .D(n168), .CK(clk), .RD(n1), .Q(
        \ramA[8][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[2]  ( .D(n167), .CK(clk), .RD(n1), .Q(
        data_out[2]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][1]  ( .D(n166), .CK(clk), .RD(n1), .Q(
        \ramA[8][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[1]  ( .D(n165), .CK(clk), .RD(n1), .Q(
        data_out[1]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][0]  ( .D(n164), .CK(clk), .RD(n1), .Q(
        \ramA[8][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[0]  ( .D(n163), .CK(clk), .RD(n1), .Q(
        data_out[0]) );
  SAEDRVT14_INV_1 U2 ( .A(n88), .X(n84) );
  SAEDRVT14_INV_1 U3 ( .A(n162), .X(n15) );
  SAEDRVT14_INV_1 U4 ( .A(addr[3]), .X(n14) );
  SAEDRVT14_ND2_CDC_1 U5 ( .A1(n154), .A2(addr[0]), .X(n96) );
  SAEDRVT14_ND2_CDC_1 U6 ( .A1(re), .A2(n86), .X(n88) );
  SAEDRVT14_AN3_0P75 U7 ( .A1(addr[2]), .A2(n18), .A3(addr[0]), .X(n98) );
  SAEDRVT14_INV_1 U8 ( .A(n157), .X(n16) );
  SAEDRVT14_INV_1 U9 ( .A(n104), .X(n17) );
  SAEDRVT14_NR2_ISO_1 U10 ( .CK(addr[2]), .EN(addr[1]), .X(n154) );
  SAEDRVT14_NR2_ISO_1 U11 ( .CK(n95), .EN(n86), .X(n162) );
  SAEDRVT14_INV_1 U12 ( .A(n155), .X(n8) );
  SAEDRVT14_INV_1 U13 ( .A(n156), .X(n9) );
  SAEDRVT14_INV_1 U14 ( .A(n158), .X(n10) );
  SAEDRVT14_INV_1 U15 ( .A(n159), .X(n11) );
  SAEDRVT14_INV_1 U16 ( .A(n160), .X(n12) );
  SAEDRVT14_INV_1 U17 ( .A(n161), .X(n13) );
  SAEDRVT14_ND3B_0P75 U18 ( .A(addr[0]), .B1(n18), .B2(addr[2]), .X(n103) );
  SAEDRVT14_ND3B_0P75 U19 ( .A(addr[2]), .B1(addr[1]), .B2(n19), .X(n97) );
  SAEDRVT14_ND3B_0P75 U20 ( .A(n18), .B1(addr[0]), .B2(addr[2]), .X(n101) );
  SAEDRVT14_INV_1 U21 ( .A(addr[0]), .X(n19) );
  SAEDRVT14_ND3B_0P75 U22 ( .A(addr[3]), .B1(n19), .B2(n154), .X(n95) );
  SAEDRVT14_ND3B_0P75 U23 ( .A(addr[0]), .B1(addr[1]), .B2(addr[2]), .X(n100)
         );
  SAEDRVT14_ND3B_0P75 U24 ( .A(addr[2]), .B1(addr[0]), .B2(addr[1]), .X(n102)
         );
  SAEDRVT14_OAI22_1 U25 ( .A1(n100), .A2(n67), .B1(n101), .B2(n75), .X(n99) );
  SAEDRVT14_OAI22_1 U26 ( .A1(n100), .A2(n66), .B1(n101), .B2(n74), .X(n111)
         );
  SAEDRVT14_OAI22_1 U27 ( .A1(n100), .A2(n65), .B1(n101), .B2(n73), .X(n118)
         );
  SAEDRVT14_OAI22_1 U28 ( .A1(n100), .A2(n64), .B1(n101), .B2(n72), .X(n125)
         );
  SAEDRVT14_OAI22_1 U29 ( .A1(n100), .A2(n63), .B1(n101), .B2(n71), .X(n132)
         );
  SAEDRVT14_OAI22_1 U30 ( .A1(n100), .A2(n62), .B1(n101), .B2(n70), .X(n139)
         );
  SAEDRVT14_OAI22_1 U31 ( .A1(n100), .A2(n61), .B1(n101), .B2(n69), .X(n146)
         );
  SAEDRVT14_OAI22_1 U32 ( .A1(n100), .A2(n60), .B1(n101), .B2(n68), .X(n153)
         );
  SAEDRVT14_INV_1 U33 ( .A(addr[1]), .X(n18) );
  SAEDRVT14_OAI22_1 U34 ( .A1(n104), .A2(n83), .B1(n17), .B2(n249), .X(n164)
         );
  SAEDRVT14_OAI22_1 U35 ( .A1(n104), .A2(n82), .B1(n17), .B2(n248), .X(n166)
         );
  SAEDRVT14_OAI22_1 U36 ( .A1(n104), .A2(n81), .B1(n17), .B2(n247), .X(n168)
         );
  SAEDRVT14_OAI22_1 U37 ( .A1(n104), .A2(n80), .B1(n17), .B2(n246), .X(n170)
         );
  SAEDRVT14_OAI22_1 U38 ( .A1(n104), .A2(n79), .B1(n17), .B2(n245), .X(n172)
         );
  SAEDRVT14_OAI22_1 U39 ( .A1(n104), .A2(n78), .B1(n17), .B2(n244), .X(n174)
         );
  SAEDRVT14_OAI22_1 U40 ( .A1(n104), .A2(n77), .B1(n17), .B2(n243), .X(n176)
         );
  SAEDRVT14_OAI22_1 U41 ( .A1(n104), .A2(n76), .B1(n17), .B2(n87), .X(n178) );
  SAEDRVT14_OAI22_1 U42 ( .A1(n8), .A2(n75), .B1(n249), .B2(n155), .X(n179) );
  SAEDRVT14_OAI22_1 U43 ( .A1(n8), .A2(n74), .B1(n248), .B2(n155), .X(n180) );
  SAEDRVT14_OAI22_1 U44 ( .A1(n8), .A2(n73), .B1(n247), .B2(n155), .X(n181) );
  SAEDRVT14_OAI22_1 U45 ( .A1(n8), .A2(n72), .B1(n246), .B2(n155), .X(n182) );
  SAEDRVT14_OAI22_1 U46 ( .A1(n8), .A2(n71), .B1(n245), .B2(n155), .X(n183) );
  SAEDRVT14_OAI22_1 U47 ( .A1(n8), .A2(n70), .B1(n244), .B2(n155), .X(n184) );
  SAEDRVT14_OAI22_1 U48 ( .A1(n8), .A2(n69), .B1(n243), .B2(n155), .X(n185) );
  SAEDRVT14_OAI22_1 U49 ( .A1(n8), .A2(n68), .B1(n87), .B2(n155), .X(n186) );
  SAEDRVT14_OAI22_1 U50 ( .A1(n9), .A2(n67), .B1(n249), .B2(n156), .X(n187) );
  SAEDRVT14_OAI22_1 U51 ( .A1(n9), .A2(n66), .B1(n248), .B2(n156), .X(n188) );
  SAEDRVT14_OAI22_1 U52 ( .A1(n9), .A2(n65), .B1(n247), .B2(n156), .X(n189) );
  SAEDRVT14_OAI22_1 U53 ( .A1(n9), .A2(n64), .B1(n246), .B2(n156), .X(n190) );
  SAEDRVT14_OAI22_1 U54 ( .A1(n9), .A2(n63), .B1(n245), .B2(n156), .X(n191) );
  SAEDRVT14_OAI22_1 U55 ( .A1(n9), .A2(n62), .B1(n244), .B2(n156), .X(n192) );
  SAEDRVT14_OAI22_1 U56 ( .A1(n9), .A2(n61), .B1(n243), .B2(n156), .X(n193) );
  SAEDRVT14_OAI22_1 U57 ( .A1(n9), .A2(n60), .B1(n87), .B2(n156), .X(n194) );
  SAEDRVT14_OAI22_1 U58 ( .A1(n10), .A2(n59), .B1(n249), .B2(n158), .X(n203)
         );
  SAEDRVT14_OAI22_1 U59 ( .A1(n10), .A2(n58), .B1(n248), .B2(n158), .X(n204)
         );
  SAEDRVT14_OAI22_1 U60 ( .A1(n10), .A2(n57), .B1(n247), .B2(n158), .X(n205)
         );
  SAEDRVT14_OAI22_1 U61 ( .A1(n10), .A2(n56), .B1(n246), .B2(n158), .X(n206)
         );
  SAEDRVT14_OAI22_1 U62 ( .A1(n10), .A2(n55), .B1(n245), .B2(n158), .X(n207)
         );
  SAEDRVT14_OAI22_1 U63 ( .A1(n10), .A2(n54), .B1(n244), .B2(n158), .X(n208)
         );
  SAEDRVT14_OAI22_1 U64 ( .A1(n10), .A2(n53), .B1(n243), .B2(n158), .X(n209)
         );
  SAEDRVT14_OAI22_1 U65 ( .A1(n10), .A2(n52), .B1(n87), .B2(n158), .X(n210) );
  SAEDRVT14_OAI22_1 U66 ( .A1(n11), .A2(n51), .B1(n249), .B2(n159), .X(n211)
         );
  SAEDRVT14_OAI22_1 U67 ( .A1(n11), .A2(n50), .B1(n248), .B2(n159), .X(n212)
         );
  SAEDRVT14_OAI22_1 U68 ( .A1(n11), .A2(n49), .B1(n247), .B2(n159), .X(n213)
         );
  SAEDRVT14_OAI22_1 U69 ( .A1(n11), .A2(n48), .B1(n246), .B2(n159), .X(n214)
         );
  SAEDRVT14_OAI22_1 U70 ( .A1(n11), .A2(n47), .B1(n245), .B2(n159), .X(n215)
         );
  SAEDRVT14_OAI22_1 U71 ( .A1(n11), .A2(n46), .B1(n244), .B2(n159), .X(n216)
         );
  SAEDRVT14_OAI22_1 U72 ( .A1(n11), .A2(n45), .B1(n243), .B2(n159), .X(n217)
         );
  SAEDRVT14_OAI22_1 U73 ( .A1(n11), .A2(n44), .B1(n87), .B2(n159), .X(n218) );
  SAEDRVT14_OAI22_1 U74 ( .A1(n12), .A2(n43), .B1(n249), .B2(n160), .X(n219)
         );
  SAEDRVT14_OAI22_1 U75 ( .A1(n12), .A2(n42), .B1(n248), .B2(n160), .X(n220)
         );
  SAEDRVT14_OAI22_1 U76 ( .A1(n12), .A2(n41), .B1(n247), .B2(n160), .X(n221)
         );
  SAEDRVT14_OAI22_1 U77 ( .A1(n12), .A2(n40), .B1(n246), .B2(n160), .X(n222)
         );
  SAEDRVT14_OAI22_1 U78 ( .A1(n12), .A2(n39), .B1(n245), .B2(n160), .X(n223)
         );
  SAEDRVT14_OAI22_1 U79 ( .A1(n12), .A2(n38), .B1(n244), .B2(n160), .X(n224)
         );
  SAEDRVT14_OAI22_1 U80 ( .A1(n12), .A2(n37), .B1(n243), .B2(n160), .X(n225)
         );
  SAEDRVT14_OAI22_1 U81 ( .A1(n12), .A2(n36), .B1(n87), .B2(n160), .X(n226) );
  SAEDRVT14_OAI22_1 U82 ( .A1(n13), .A2(n35), .B1(n249), .B2(n161), .X(n227)
         );
  SAEDRVT14_OAI22_1 U83 ( .A1(n13), .A2(n34), .B1(n248), .B2(n161), .X(n228)
         );
  SAEDRVT14_OAI22_1 U84 ( .A1(n13), .A2(n33), .B1(n247), .B2(n161), .X(n229)
         );
  SAEDRVT14_OAI22_1 U85 ( .A1(n13), .A2(n32), .B1(n246), .B2(n161), .X(n230)
         );
  SAEDRVT14_OAI22_1 U86 ( .A1(n13), .A2(n31), .B1(n245), .B2(n161), .X(n231)
         );
  SAEDRVT14_OAI22_1 U87 ( .A1(n13), .A2(n30), .B1(n244), .B2(n161), .X(n232)
         );
  SAEDRVT14_OAI22_1 U88 ( .A1(n13), .A2(n29), .B1(n243), .B2(n161), .X(n233)
         );
  SAEDRVT14_OAI22_1 U89 ( .A1(n13), .A2(n28), .B1(n87), .B2(n161), .X(n234) );
  SAEDRVT14_OAI22_1 U90 ( .A1(n162), .A2(n27), .B1(n249), .B2(n15), .X(n235)
         );
  SAEDRVT14_OAI22_1 U91 ( .A1(n162), .A2(n26), .B1(n248), .B2(n15), .X(n236)
         );
  SAEDRVT14_OAI22_1 U92 ( .A1(n162), .A2(n25), .B1(n247), .B2(n15), .X(n237)
         );
  SAEDRVT14_OAI22_1 U93 ( .A1(n162), .A2(n24), .B1(n246), .B2(n15), .X(n238)
         );
  SAEDRVT14_OAI22_1 U94 ( .A1(n162), .A2(n23), .B1(n245), .B2(n15), .X(n239)
         );
  SAEDRVT14_OAI22_1 U95 ( .A1(n162), .A2(n22), .B1(n244), .B2(n15), .X(n240)
         );
  SAEDRVT14_OAI22_1 U96 ( .A1(n162), .A2(n21), .B1(n243), .B2(n15), .X(n241)
         );
  SAEDRVT14_OAI22_1 U97 ( .A1(n162), .A2(n20), .B1(n87), .B2(n15), .X(n242) );
  SAEDRVT14_NR2_ISO_1 U98 ( .CK(n93), .EN(n94), .X(n92) );
  SAEDRVT14_OAI22_1 U99 ( .A1(n96), .A2(n35), .B1(n97), .B2(n43), .X(n93) );
  SAEDRVT14_OAI22_1 U100 ( .A1(n14), .A2(n83), .B1(n95), .B2(n27), .X(n94) );
  SAEDRVT14_NR2_ISO_1 U101 ( .CK(n109), .EN(n110), .X(n108) );
  SAEDRVT14_OAI22_1 U102 ( .A1(n96), .A2(n34), .B1(n97), .B2(n42), .X(n109) );
  SAEDRVT14_OAI22_1 U103 ( .A1(n14), .A2(n82), .B1(n95), .B2(n26), .X(n110) );
  SAEDRVT14_NR2_ISO_1 U104 ( .CK(n116), .EN(n117), .X(n115) );
  SAEDRVT14_OAI22_1 U105 ( .A1(n96), .A2(n33), .B1(n97), .B2(n41), .X(n116) );
  SAEDRVT14_OAI22_1 U106 ( .A1(n14), .A2(n81), .B1(n95), .B2(n25), .X(n117) );
  SAEDRVT14_NR2_ISO_1 U107 ( .CK(n123), .EN(n124), .X(n122) );
  SAEDRVT14_OAI22_1 U108 ( .A1(n96), .A2(n32), .B1(n97), .B2(n40), .X(n123) );
  SAEDRVT14_OAI22_1 U109 ( .A1(n14), .A2(n80), .B1(n95), .B2(n24), .X(n124) );
  SAEDRVT14_NR2_ISO_1 U110 ( .CK(n130), .EN(n131), .X(n129) );
  SAEDRVT14_OAI22_1 U111 ( .A1(n96), .A2(n31), .B1(n97), .B2(n39), .X(n130) );
  SAEDRVT14_OAI22_1 U112 ( .A1(n14), .A2(n79), .B1(n95), .B2(n23), .X(n131) );
  SAEDRVT14_NR2_ISO_1 U113 ( .CK(n137), .EN(n138), .X(n136) );
  SAEDRVT14_OAI22_1 U114 ( .A1(n96), .A2(n30), .B1(n97), .B2(n38), .X(n137) );
  SAEDRVT14_OAI22_1 U115 ( .A1(n14), .A2(n78), .B1(n95), .B2(n22), .X(n138) );
  SAEDRVT14_NR2_ISO_1 U116 ( .CK(n144), .EN(n145), .X(n143) );
  SAEDRVT14_OAI22_1 U117 ( .A1(n96), .A2(n29), .B1(n97), .B2(n37), .X(n144) );
  SAEDRVT14_OAI22_1 U118 ( .A1(n14), .A2(n77), .B1(n95), .B2(n21), .X(n145) );
  SAEDRVT14_NR2_ISO_1 U119 ( .CK(n151), .EN(n152), .X(n150) );
  SAEDRVT14_OAI22_1 U120 ( .A1(n96), .A2(n28), .B1(n97), .B2(n36), .X(n151) );
  SAEDRVT14_OAI22_1 U121 ( .A1(n14), .A2(n76), .B1(n95), .B2(n20), .X(n152) );
  SAEDRVT14_BUF_S_1 U122 ( .A(n85), .X(n1) );
  SAEDRVT14_BUF_S_1 U123 ( .A(n85), .X(n2) );
  SAEDRVT14_BUF_S_1 U124 ( .A(n85), .X(n3) );
  SAEDRVT14_BUF_S_1 U125 ( .A(n85), .X(n4) );
  SAEDRVT14_BUF_S_1 U126 ( .A(n85), .X(n5) );
  SAEDRVT14_BUF_S_1 U127 ( .A(n85), .X(n6) );
  SAEDRVT14_BUF_S_1 U128 ( .A(n85), .X(n7) );
  SAEDRVT14_AN4_1 U129 ( .A1(addr[3]), .A2(we), .A3(n19), .A4(n154), .X(n104)
         );
  SAEDRVT14_ND3B_0P75 U130 ( .A(n101), .B1(n14), .B2(we), .X(n155) );
  SAEDRVT14_ND3B_0P75 U131 ( .A(n100), .B1(n14), .B2(we), .X(n156) );
  SAEDRVT14_ND3B_0P75 U132 ( .A(n103), .B1(n14), .B2(we), .X(n158) );
  SAEDRVT14_ND3B_0P75 U133 ( .A(n102), .B1(n14), .B2(we), .X(n159) );
  SAEDRVT14_ND3B_0P75 U134 ( .A(n97), .B1(n14), .B2(we), .X(n160) );
  SAEDRVT14_ND3B_0P75 U135 ( .A(n96), .B1(n14), .B2(we), .X(n161) );
  SAEDRVT14_ND3B_0P75 U136 ( .A(addr[3]), .B1(we), .B2(n98), .X(n157) );
  SAEDRVT14_AO22_1 U137 ( .A1(n84), .A2(n147), .B1(data_out[7]), .B2(n88), .X(
        n177) );
  SAEDRVT14_ND3B_0P75 U138 ( .A(n148), .B1(n149), .B2(n150), .X(n147) );
  SAEDRVT14_OAI22_1 U139 ( .A1(n102), .A2(n44), .B1(n103), .B2(n52), .X(n148)
         );
  SAEDRVT14_AOI21_0P5 U140 ( .A1(\ramA[5][7] ), .A2(n98), .B(n153), .X(n149)
         );
  SAEDRVT14_AO22_1 U141 ( .A1(n157), .A2(\ramA[5][0] ), .B1(data_in[0]), .B2(
        n16), .X(n195) );
  SAEDRVT14_AO22_1 U142 ( .A1(n157), .A2(\ramA[5][1] ), .B1(data_in[1]), .B2(
        n16), .X(n196) );
  SAEDRVT14_AO22_1 U143 ( .A1(n157), .A2(\ramA[5][2] ), .B1(data_in[2]), .B2(
        n16), .X(n197) );
  SAEDRVT14_AO22_1 U144 ( .A1(n157), .A2(\ramA[5][3] ), .B1(data_in[3]), .B2(
        n16), .X(n198) );
  SAEDRVT14_AO22_1 U145 ( .A1(n157), .A2(\ramA[5][4] ), .B1(data_in[4]), .B2(
        n16), .X(n199) );
  SAEDRVT14_AO22_1 U146 ( .A1(n157), .A2(\ramA[5][5] ), .B1(data_in[5]), .B2(
        n16), .X(n200) );
  SAEDRVT14_AO22_1 U147 ( .A1(n157), .A2(\ramA[5][6] ), .B1(data_in[6]), .B2(
        n16), .X(n201) );
  SAEDRVT14_AO22_1 U148 ( .A1(n157), .A2(\ramA[5][7] ), .B1(data_in[7]), .B2(
        n16), .X(n202) );
  SAEDRVT14_INV_1 U149 ( .A(\ramA[0][0] ), .X(n27) );
  SAEDRVT14_INV_1 U150 ( .A(\ramA[2][0] ), .X(n43) );
  SAEDRVT14_INV_1 U151 ( .A(\ramA[7][0] ), .X(n75) );
  SAEDRVT14_INV_1 U152 ( .A(\ramA[0][1] ), .X(n26) );
  SAEDRVT14_INV_1 U153 ( .A(\ramA[2][1] ), .X(n42) );
  SAEDRVT14_INV_1 U154 ( .A(\ramA[7][1] ), .X(n74) );
  SAEDRVT14_INV_1 U155 ( .A(\ramA[0][2] ), .X(n25) );
  SAEDRVT14_INV_1 U156 ( .A(\ramA[2][2] ), .X(n41) );
  SAEDRVT14_INV_1 U157 ( .A(\ramA[7][2] ), .X(n73) );
  SAEDRVT14_INV_1 U158 ( .A(\ramA[0][3] ), .X(n24) );
  SAEDRVT14_INV_1 U159 ( .A(\ramA[2][3] ), .X(n40) );
  SAEDRVT14_INV_1 U160 ( .A(\ramA[7][3] ), .X(n72) );
  SAEDRVT14_INV_1 U161 ( .A(\ramA[0][4] ), .X(n23) );
  SAEDRVT14_INV_1 U162 ( .A(\ramA[2][4] ), .X(n39) );
  SAEDRVT14_INV_1 U163 ( .A(\ramA[7][4] ), .X(n71) );
  SAEDRVT14_INV_1 U164 ( .A(\ramA[0][5] ), .X(n22) );
  SAEDRVT14_INV_1 U165 ( .A(\ramA[2][5] ), .X(n38) );
  SAEDRVT14_INV_1 U166 ( .A(\ramA[7][5] ), .X(n70) );
  SAEDRVT14_INV_1 U167 ( .A(\ramA[0][6] ), .X(n21) );
  SAEDRVT14_INV_1 U168 ( .A(\ramA[2][6] ), .X(n37) );
  SAEDRVT14_INV_1 U169 ( .A(\ramA[7][6] ), .X(n69) );
  SAEDRVT14_INV_1 U170 ( .A(\ramA[0][7] ), .X(n20) );
  SAEDRVT14_INV_1 U171 ( .A(\ramA[2][7] ), .X(n36) );
  SAEDRVT14_INV_1 U172 ( .A(\ramA[7][7] ), .X(n68) );
  SAEDRVT14_INV_1 U173 ( .A(\ramA[4][0] ), .X(n59) );
  SAEDRVT14_INV_1 U174 ( .A(\ramA[4][1] ), .X(n58) );
  SAEDRVT14_INV_1 U175 ( .A(\ramA[4][2] ), .X(n57) );
  SAEDRVT14_INV_1 U176 ( .A(\ramA[4][3] ), .X(n56) );
  SAEDRVT14_INV_1 U177 ( .A(\ramA[4][4] ), .X(n55) );
  SAEDRVT14_INV_1 U178 ( .A(\ramA[4][5] ), .X(n54) );
  SAEDRVT14_INV_1 U179 ( .A(\ramA[4][6] ), .X(n53) );
  SAEDRVT14_INV_1 U180 ( .A(\ramA[4][7] ), .X(n52) );
  SAEDRVT14_INV_1 U181 ( .A(\ramA[8][0] ), .X(n83) );
  SAEDRVT14_INV_1 U182 ( .A(\ramA[1][0] ), .X(n35) );
  SAEDRVT14_INV_1 U183 ( .A(\ramA[6][0] ), .X(n67) );
  SAEDRVT14_INV_1 U184 ( .A(\ramA[8][1] ), .X(n82) );
  SAEDRVT14_INV_1 U185 ( .A(\ramA[1][1] ), .X(n34) );
  SAEDRVT14_INV_1 U186 ( .A(\ramA[6][1] ), .X(n66) );
  SAEDRVT14_INV_1 U187 ( .A(\ramA[8][2] ), .X(n81) );
  SAEDRVT14_INV_1 U188 ( .A(\ramA[1][2] ), .X(n33) );
  SAEDRVT14_INV_1 U189 ( .A(\ramA[6][2] ), .X(n65) );
  SAEDRVT14_INV_1 U190 ( .A(\ramA[8][3] ), .X(n80) );
  SAEDRVT14_INV_1 U191 ( .A(\ramA[1][3] ), .X(n32) );
  SAEDRVT14_INV_1 U192 ( .A(\ramA[6][3] ), .X(n64) );
  SAEDRVT14_INV_1 U193 ( .A(\ramA[8][4] ), .X(n79) );
  SAEDRVT14_INV_1 U194 ( .A(\ramA[1][4] ), .X(n31) );
  SAEDRVT14_INV_1 U195 ( .A(\ramA[6][4] ), .X(n63) );
  SAEDRVT14_INV_1 U196 ( .A(\ramA[8][5] ), .X(n78) );
  SAEDRVT14_INV_1 U197 ( .A(\ramA[1][5] ), .X(n30) );
  SAEDRVT14_INV_1 U198 ( .A(\ramA[6][5] ), .X(n62) );
  SAEDRVT14_INV_1 U199 ( .A(\ramA[8][6] ), .X(n77) );
  SAEDRVT14_INV_1 U200 ( .A(\ramA[1][6] ), .X(n29) );
  SAEDRVT14_INV_1 U201 ( .A(\ramA[6][6] ), .X(n61) );
  SAEDRVT14_INV_1 U202 ( .A(\ramA[8][7] ), .X(n76) );
  SAEDRVT14_INV_1 U203 ( .A(\ramA[1][7] ), .X(n28) );
  SAEDRVT14_INV_1 U204 ( .A(\ramA[6][7] ), .X(n60) );
  SAEDRVT14_INV_1 U205 ( .A(\ramA[3][0] ), .X(n51) );
  SAEDRVT14_INV_1 U206 ( .A(\ramA[3][1] ), .X(n50) );
  SAEDRVT14_INV_1 U207 ( .A(\ramA[3][2] ), .X(n49) );
  SAEDRVT14_INV_1 U208 ( .A(\ramA[3][3] ), .X(n48) );
  SAEDRVT14_INV_1 U209 ( .A(\ramA[3][4] ), .X(n47) );
  SAEDRVT14_INV_1 U210 ( .A(\ramA[3][5] ), .X(n46) );
  SAEDRVT14_INV_1 U211 ( .A(\ramA[3][6] ), .X(n45) );
  SAEDRVT14_INV_1 U212 ( .A(\ramA[3][7] ), .X(n44) );
  SAEDRVT14_AO22_1 U213 ( .A1(data_out[0]), .A2(n88), .B1(n84), .B2(n89), .X(
        n163) );
  SAEDRVT14_ND3B_0P75 U214 ( .A(n90), .B1(n91), .B2(n92), .X(n89) );
  SAEDRVT14_OAI22_1 U215 ( .A1(n102), .A2(n51), .B1(n103), .B2(n59), .X(n90)
         );
  SAEDRVT14_AOI21_0P5 U216 ( .A1(\ramA[5][0] ), .A2(n98), .B(n99), .X(n91) );
  SAEDRVT14_AO22_1 U217 ( .A1(data_out[1]), .A2(n88), .B1(n84), .B2(n105), .X(
        n165) );
  SAEDRVT14_ND3B_0P75 U218 ( .A(n106), .B1(n107), .B2(n108), .X(n105) );
  SAEDRVT14_OAI22_1 U219 ( .A1(n102), .A2(n50), .B1(n103), .B2(n58), .X(n106)
         );
  SAEDRVT14_AOI21_0P5 U220 ( .A1(\ramA[5][1] ), .A2(n98), .B(n111), .X(n107)
         );
  SAEDRVT14_AO22_1 U221 ( .A1(data_out[2]), .A2(n88), .B1(n84), .B2(n112), .X(
        n167) );
  SAEDRVT14_ND3B_0P75 U222 ( .A(n113), .B1(n114), .B2(n115), .X(n112) );
  SAEDRVT14_OAI22_1 U223 ( .A1(n102), .A2(n49), .B1(n103), .B2(n57), .X(n113)
         );
  SAEDRVT14_AOI21_0P5 U224 ( .A1(\ramA[5][2] ), .A2(n98), .B(n118), .X(n114)
         );
  SAEDRVT14_AO22_1 U225 ( .A1(data_out[3]), .A2(n88), .B1(n84), .B2(n119), .X(
        n169) );
  SAEDRVT14_ND3B_0P75 U226 ( .A(n120), .B1(n121), .B2(n122), .X(n119) );
  SAEDRVT14_OAI22_1 U227 ( .A1(n102), .A2(n48), .B1(n103), .B2(n56), .X(n120)
         );
  SAEDRVT14_AOI21_0P5 U228 ( .A1(\ramA[5][3] ), .A2(n98), .B(n125), .X(n121)
         );
  SAEDRVT14_AO22_1 U229 ( .A1(data_out[4]), .A2(n88), .B1(n84), .B2(n126), .X(
        n171) );
  SAEDRVT14_ND3B_0P75 U230 ( .A(n127), .B1(n128), .B2(n129), .X(n126) );
  SAEDRVT14_OAI22_1 U231 ( .A1(n102), .A2(n47), .B1(n103), .B2(n55), .X(n127)
         );
  SAEDRVT14_AOI21_0P5 U232 ( .A1(\ramA[5][4] ), .A2(n98), .B(n132), .X(n128)
         );
  SAEDRVT14_AO22_1 U233 ( .A1(data_out[5]), .A2(n88), .B1(n84), .B2(n133), .X(
        n173) );
  SAEDRVT14_ND3B_0P75 U234 ( .A(n134), .B1(n135), .B2(n136), .X(n133) );
  SAEDRVT14_OAI22_1 U235 ( .A1(n102), .A2(n46), .B1(n103), .B2(n54), .X(n134)
         );
  SAEDRVT14_AOI21_0P5 U236 ( .A1(\ramA[5][5] ), .A2(n98), .B(n139), .X(n135)
         );
  SAEDRVT14_AO22_1 U237 ( .A1(data_out[6]), .A2(n88), .B1(n84), .B2(n140), .X(
        n175) );
  SAEDRVT14_ND3B_0P75 U238 ( .A(n141), .B1(n142), .B2(n143), .X(n140) );
  SAEDRVT14_OAI22_1 U239 ( .A1(n102), .A2(n45), .B1(n103), .B2(n53), .X(n141)
         );
  SAEDRVT14_AOI21_0P5 U240 ( .A1(\ramA[5][6] ), .A2(n98), .B(n146), .X(n142)
         );
  SAEDRVT14_INV_1 U241 ( .A(data_in[0]), .X(n249) );
  SAEDRVT14_INV_1 U242 ( .A(data_in[1]), .X(n248) );
  SAEDRVT14_INV_1 U243 ( .A(data_in[2]), .X(n247) );
  SAEDRVT14_INV_1 U244 ( .A(data_in[3]), .X(n246) );
  SAEDRVT14_INV_1 U245 ( .A(data_in[4]), .X(n245) );
  SAEDRVT14_INV_1 U246 ( .A(data_in[5]), .X(n244) );
  SAEDRVT14_INV_1 U247 ( .A(data_in[6]), .X(n243) );
  SAEDRVT14_INV_1 U248 ( .A(data_in[7]), .X(n87) );
  SAEDRVT14_INV_1 U249 ( .A(rst), .X(n85) );
  SAEDRVT14_INV_1 U250 ( .A(we), .X(n86) );
endmodule


module mem_1 ( clk, rst, re, we, addr, data_in, data_out );
  input [4:0] addr;
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, re, we;
  wire   \ramA[0][7] , \ramA[0][6] , \ramA[0][5] , \ramA[0][4] , \ramA[0][3] ,
         \ramA[0][2] , \ramA[0][1] , \ramA[0][0] , \ramA[1][7] , \ramA[1][6] ,
         \ramA[1][5] , \ramA[1][4] , \ramA[1][3] , \ramA[1][2] , \ramA[1][1] ,
         \ramA[1][0] , \ramA[2][7] , \ramA[2][6] , \ramA[2][5] , \ramA[2][4] ,
         \ramA[2][3] , \ramA[2][2] , \ramA[2][1] , \ramA[2][0] , \ramA[3][7] ,
         \ramA[3][6] , \ramA[3][5] , \ramA[3][4] , \ramA[3][3] , \ramA[3][2] ,
         \ramA[3][1] , \ramA[3][0] , \ramA[4][7] , \ramA[4][6] , \ramA[4][5] ,
         \ramA[4][4] , \ramA[4][3] , \ramA[4][2] , \ramA[4][1] , \ramA[4][0] ,
         \ramA[5][7] , \ramA[5][6] , \ramA[5][5] , \ramA[5][4] , \ramA[5][3] ,
         \ramA[5][2] , \ramA[5][1] , \ramA[5][0] , \ramA[6][7] , \ramA[6][6] ,
         \ramA[6][5] , \ramA[6][4] , \ramA[6][3] , \ramA[6][2] , \ramA[6][1] ,
         \ramA[6][0] , \ramA[7][7] , \ramA[7][6] , \ramA[7][5] , \ramA[7][4] ,
         \ramA[7][3] , \ramA[7][2] , \ramA[7][1] , \ramA[7][0] , \ramA[8][7] ,
         \ramA[8][6] , \ramA[8][5] , \ramA[8][4] , \ramA[8][3] , \ramA[8][2] ,
         \ramA[8][1] , \ramA[8][0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404;

  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][7]  ( .D(n250), .CK(clk), .RD(n7), .Q(
        \ramA[0][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][6]  ( .D(n251), .CK(clk), .RD(n7), .Q(
        \ramA[0][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][5]  ( .D(n252), .CK(clk), .RD(n7), .Q(
        \ramA[0][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][4]  ( .D(n253), .CK(clk), .RD(n7), .Q(
        \ramA[0][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][3]  ( .D(n254), .CK(clk), .RD(n7), .Q(
        \ramA[0][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][2]  ( .D(n255), .CK(clk), .RD(n7), .Q(
        \ramA[0][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][1]  ( .D(n256), .CK(clk), .RD(n7), .Q(
        \ramA[0][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[0][0]  ( .D(n257), .CK(clk), .RD(n7), .Q(
        \ramA[0][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][7]  ( .D(n258), .CK(clk), .RD(n6), .Q(
        \ramA[1][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][6]  ( .D(n259), .CK(clk), .RD(n6), .Q(
        \ramA[1][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][5]  ( .D(n260), .CK(clk), .RD(n6), .Q(
        \ramA[1][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][4]  ( .D(n261), .CK(clk), .RD(n6), .Q(
        \ramA[1][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][3]  ( .D(n262), .CK(clk), .RD(n6), .Q(
        \ramA[1][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][2]  ( .D(n263), .CK(clk), .RD(n6), .Q(
        \ramA[1][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][1]  ( .D(n264), .CK(clk), .RD(n6), .Q(
        \ramA[1][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[1][0]  ( .D(n265), .CK(clk), .RD(n6), .Q(
        \ramA[1][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][7]  ( .D(n266), .CK(clk), .RD(n6), .Q(
        \ramA[2][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][6]  ( .D(n267), .CK(clk), .RD(n6), .Q(
        \ramA[2][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][5]  ( .D(n268), .CK(clk), .RD(n6), .Q(
        \ramA[2][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][4]  ( .D(n269), .CK(clk), .RD(n6), .Q(
        \ramA[2][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][3]  ( .D(n270), .CK(clk), .RD(n5), .Q(
        \ramA[2][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][2]  ( .D(n271), .CK(clk), .RD(n5), .Q(
        \ramA[2][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][1]  ( .D(n272), .CK(clk), .RD(n5), .Q(
        \ramA[2][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[2][0]  ( .D(n273), .CK(clk), .RD(n5), .Q(
        \ramA[2][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][7]  ( .D(n274), .CK(clk), .RD(n5), .Q(
        \ramA[3][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][6]  ( .D(n275), .CK(clk), .RD(n5), .Q(
        \ramA[3][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][5]  ( .D(n276), .CK(clk), .RD(n5), .Q(
        \ramA[3][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][4]  ( .D(n277), .CK(clk), .RD(n5), .Q(
        \ramA[3][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][3]  ( .D(n278), .CK(clk), .RD(n5), .Q(
        \ramA[3][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][2]  ( .D(n279), .CK(clk), .RD(n5), .Q(
        \ramA[3][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][1]  ( .D(n280), .CK(clk), .RD(n5), .Q(
        \ramA[3][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[3][0]  ( .D(n281), .CK(clk), .RD(n5), .Q(
        \ramA[3][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][7]  ( .D(n282), .CK(clk), .RD(n4), .Q(
        \ramA[4][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][6]  ( .D(n283), .CK(clk), .RD(n4), .Q(
        \ramA[4][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][5]  ( .D(n284), .CK(clk), .RD(n4), .Q(
        \ramA[4][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][4]  ( .D(n285), .CK(clk), .RD(n4), .Q(
        \ramA[4][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][3]  ( .D(n286), .CK(clk), .RD(n4), .Q(
        \ramA[4][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][2]  ( .D(n287), .CK(clk), .RD(n4), .Q(
        \ramA[4][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][1]  ( .D(n288), .CK(clk), .RD(n4), .Q(
        \ramA[4][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[4][0]  ( .D(n289), .CK(clk), .RD(n4), .Q(
        \ramA[4][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][7]  ( .D(n290), .CK(clk), .RD(n4), .Q(
        \ramA[5][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][6]  ( .D(n291), .CK(clk), .RD(n4), .Q(
        \ramA[5][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][5]  ( .D(n292), .CK(clk), .RD(n4), .Q(
        \ramA[5][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][4]  ( .D(n293), .CK(clk), .RD(n4), .Q(
        \ramA[5][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][3]  ( .D(n294), .CK(clk), .RD(n3), .Q(
        \ramA[5][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][2]  ( .D(n295), .CK(clk), .RD(n3), .Q(
        \ramA[5][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][1]  ( .D(n296), .CK(clk), .RD(n3), .Q(
        \ramA[5][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[5][0]  ( .D(n297), .CK(clk), .RD(n3), .Q(
        \ramA[5][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][7]  ( .D(n298), .CK(clk), .RD(n3), .Q(
        \ramA[6][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][6]  ( .D(n299), .CK(clk), .RD(n3), .Q(
        \ramA[6][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][5]  ( .D(n300), .CK(clk), .RD(n3), .Q(
        \ramA[6][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][4]  ( .D(n301), .CK(clk), .RD(n3), .Q(
        \ramA[6][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][3]  ( .D(n302), .CK(clk), .RD(n3), .Q(
        \ramA[6][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][2]  ( .D(n303), .CK(clk), .RD(n3), .Q(
        \ramA[6][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][1]  ( .D(n304), .CK(clk), .RD(n3), .Q(
        \ramA[6][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[6][0]  ( .D(n305), .CK(clk), .RD(n3), .Q(
        \ramA[6][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][7]  ( .D(n306), .CK(clk), .RD(n2), .Q(
        \ramA[7][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][6]  ( .D(n307), .CK(clk), .RD(n2), .Q(
        \ramA[7][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][5]  ( .D(n308), .CK(clk), .RD(n2), .Q(
        \ramA[7][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][4]  ( .D(n309), .CK(clk), .RD(n2), .Q(
        \ramA[7][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][3]  ( .D(n310), .CK(clk), .RD(n2), .Q(
        \ramA[7][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][2]  ( .D(n311), .CK(clk), .RD(n2), .Q(
        \ramA[7][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][1]  ( .D(n312), .CK(clk), .RD(n2), .Q(
        \ramA[7][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[7][0]  ( .D(n313), .CK(clk), .RD(n2), .Q(
        \ramA[7][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][7]  ( .D(n314), .CK(clk), .RD(n2), .Q(
        \ramA[8][7] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[7]  ( .D(n315), .CK(clk), .RD(n2), .Q(
        data_out[7]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][6]  ( .D(n316), .CK(clk), .RD(n2), .Q(
        \ramA[8][6] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[6]  ( .D(n317), .CK(clk), .RD(n2), .Q(
        data_out[6]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][5]  ( .D(n318), .CK(clk), .RD(n1), .Q(
        \ramA[8][5] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[5]  ( .D(n319), .CK(clk), .RD(n1), .Q(
        data_out[5]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][4]  ( .D(n320), .CK(clk), .RD(n1), .Q(
        \ramA[8][4] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[4]  ( .D(n321), .CK(clk), .RD(n1), .Q(
        data_out[4]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][3]  ( .D(n322), .CK(clk), .RD(n1), .Q(
        \ramA[8][3] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[3]  ( .D(n323), .CK(clk), .RD(n1), .Q(
        data_out[3]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][2]  ( .D(n324), .CK(clk), .RD(n1), .Q(
        \ramA[8][2] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[2]  ( .D(n325), .CK(clk), .RD(n1), .Q(
        data_out[2]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][1]  ( .D(n326), .CK(clk), .RD(n1), .Q(
        \ramA[8][1] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[1]  ( .D(n327), .CK(clk), .RD(n1), .Q(
        data_out[1]) );
  SAEDRVT14_FDPRBQ_V2_1 \ramA_reg[8][0]  ( .D(n328), .CK(clk), .RD(n1), .Q(
        \ramA[8][0] ) );
  SAEDRVT14_FDPRBQ_V2_1 \data_out_reg[0]  ( .D(n329), .CK(clk), .RD(n1), .Q(
        data_out[0]) );
  SAEDRVT14_INV_1 U2 ( .A(n404), .X(n84) );
  SAEDRVT14_INV_1 U3 ( .A(n330), .X(n15) );
  SAEDRVT14_INV_1 U4 ( .A(addr[3]), .X(n14) );
  SAEDRVT14_ND2_CDC_1 U5 ( .A1(n338), .A2(addr[0]), .X(n396) );
  SAEDRVT14_ND2_CDC_1 U6 ( .A1(re), .A2(n86), .X(n404) );
  SAEDRVT14_AN3_0P75 U7 ( .A1(addr[2]), .A2(n18), .A3(addr[0]), .X(n394) );
  SAEDRVT14_INV_1 U8 ( .A(n335), .X(n16) );
  SAEDRVT14_INV_1 U9 ( .A(n388), .X(n17) );
  SAEDRVT14_NR2_ISO_1 U10 ( .CK(addr[2]), .EN(addr[1]), .X(n338) );
  SAEDRVT14_NR2_ISO_1 U11 ( .CK(n397), .EN(n86), .X(n330) );
  SAEDRVT14_INV_1 U12 ( .A(n337), .X(n8) );
  SAEDRVT14_INV_1 U13 ( .A(n336), .X(n9) );
  SAEDRVT14_INV_1 U14 ( .A(n334), .X(n10) );
  SAEDRVT14_INV_1 U15 ( .A(n333), .X(n11) );
  SAEDRVT14_INV_1 U16 ( .A(n332), .X(n12) );
  SAEDRVT14_INV_1 U17 ( .A(n331), .X(n13) );
  SAEDRVT14_ND3B_0P75 U18 ( .A(addr[0]), .B1(n18), .B2(addr[2]), .X(n389) );
  SAEDRVT14_ND3B_0P75 U19 ( .A(addr[2]), .B1(addr[1]), .B2(n19), .X(n395) );
  SAEDRVT14_ND3B_0P75 U20 ( .A(n18), .B1(addr[0]), .B2(addr[2]), .X(n391) );
  SAEDRVT14_INV_1 U21 ( .A(addr[0]), .X(n19) );
  SAEDRVT14_ND3B_0P75 U22 ( .A(addr[3]), .B1(n19), .B2(n338), .X(n397) );
  SAEDRVT14_ND3B_0P75 U23 ( .A(addr[0]), .B1(addr[1]), .B2(addr[2]), .X(n392)
         );
  SAEDRVT14_ND3B_0P75 U24 ( .A(addr[2]), .B1(addr[0]), .B2(addr[1]), .X(n390)
         );
  SAEDRVT14_OAI22_1 U25 ( .A1(n392), .A2(n67), .B1(n391), .B2(n75), .X(n393)
         );
  SAEDRVT14_OAI22_1 U26 ( .A1(n392), .A2(n66), .B1(n391), .B2(n74), .X(n381)
         );
  SAEDRVT14_OAI22_1 U27 ( .A1(n392), .A2(n65), .B1(n391), .B2(n73), .X(n374)
         );
  SAEDRVT14_OAI22_1 U28 ( .A1(n392), .A2(n64), .B1(n391), .B2(n72), .X(n367)
         );
  SAEDRVT14_OAI22_1 U29 ( .A1(n392), .A2(n63), .B1(n391), .B2(n71), .X(n360)
         );
  SAEDRVT14_OAI22_1 U30 ( .A1(n392), .A2(n62), .B1(n391), .B2(n70), .X(n353)
         );
  SAEDRVT14_OAI22_1 U31 ( .A1(n392), .A2(n61), .B1(n391), .B2(n69), .X(n346)
         );
  SAEDRVT14_OAI22_1 U32 ( .A1(n392), .A2(n60), .B1(n391), .B2(n68), .X(n339)
         );
  SAEDRVT14_INV_1 U33 ( .A(addr[1]), .X(n18) );
  SAEDRVT14_OAI22_1 U34 ( .A1(n388), .A2(n83), .B1(n17), .B2(n249), .X(n328)
         );
  SAEDRVT14_OAI22_1 U35 ( .A1(n388), .A2(n82), .B1(n17), .B2(n248), .X(n326)
         );
  SAEDRVT14_OAI22_1 U36 ( .A1(n388), .A2(n81), .B1(n17), .B2(n247), .X(n324)
         );
  SAEDRVT14_OAI22_1 U37 ( .A1(n388), .A2(n80), .B1(n17), .B2(n246), .X(n322)
         );
  SAEDRVT14_OAI22_1 U38 ( .A1(n388), .A2(n79), .B1(n17), .B2(n245), .X(n320)
         );
  SAEDRVT14_OAI22_1 U39 ( .A1(n388), .A2(n78), .B1(n17), .B2(n244), .X(n318)
         );
  SAEDRVT14_OAI22_1 U40 ( .A1(n388), .A2(n77), .B1(n17), .B2(n243), .X(n316)
         );
  SAEDRVT14_OAI22_1 U41 ( .A1(n388), .A2(n76), .B1(n17), .B2(n87), .X(n314) );
  SAEDRVT14_OAI22_1 U42 ( .A1(n8), .A2(n75), .B1(n249), .B2(n337), .X(n313) );
  SAEDRVT14_OAI22_1 U43 ( .A1(n8), .A2(n74), .B1(n248), .B2(n337), .X(n312) );
  SAEDRVT14_OAI22_1 U44 ( .A1(n8), .A2(n73), .B1(n247), .B2(n337), .X(n311) );
  SAEDRVT14_OAI22_1 U45 ( .A1(n8), .A2(n72), .B1(n246), .B2(n337), .X(n310) );
  SAEDRVT14_OAI22_1 U46 ( .A1(n8), .A2(n71), .B1(n245), .B2(n337), .X(n309) );
  SAEDRVT14_OAI22_1 U47 ( .A1(n8), .A2(n70), .B1(n244), .B2(n337), .X(n308) );
  SAEDRVT14_OAI22_1 U48 ( .A1(n8), .A2(n69), .B1(n243), .B2(n337), .X(n307) );
  SAEDRVT14_OAI22_1 U49 ( .A1(n8), .A2(n68), .B1(n87), .B2(n337), .X(n306) );
  SAEDRVT14_OAI22_1 U50 ( .A1(n9), .A2(n67), .B1(n249), .B2(n336), .X(n305) );
  SAEDRVT14_OAI22_1 U51 ( .A1(n9), .A2(n66), .B1(n248), .B2(n336), .X(n304) );
  SAEDRVT14_OAI22_1 U52 ( .A1(n9), .A2(n65), .B1(n247), .B2(n336), .X(n303) );
  SAEDRVT14_OAI22_1 U53 ( .A1(n9), .A2(n64), .B1(n246), .B2(n336), .X(n302) );
  SAEDRVT14_OAI22_1 U54 ( .A1(n9), .A2(n63), .B1(n245), .B2(n336), .X(n301) );
  SAEDRVT14_OAI22_1 U55 ( .A1(n9), .A2(n62), .B1(n244), .B2(n336), .X(n300) );
  SAEDRVT14_OAI22_1 U56 ( .A1(n9), .A2(n61), .B1(n243), .B2(n336), .X(n299) );
  SAEDRVT14_OAI22_1 U57 ( .A1(n9), .A2(n60), .B1(n87), .B2(n336), .X(n298) );
  SAEDRVT14_OAI22_1 U58 ( .A1(n10), .A2(n59), .B1(n249), .B2(n334), .X(n289)
         );
  SAEDRVT14_OAI22_1 U59 ( .A1(n10), .A2(n58), .B1(n248), .B2(n334), .X(n288)
         );
  SAEDRVT14_OAI22_1 U60 ( .A1(n10), .A2(n57), .B1(n247), .B2(n334), .X(n287)
         );
  SAEDRVT14_OAI22_1 U61 ( .A1(n10), .A2(n56), .B1(n246), .B2(n334), .X(n286)
         );
  SAEDRVT14_OAI22_1 U62 ( .A1(n10), .A2(n55), .B1(n245), .B2(n334), .X(n285)
         );
  SAEDRVT14_OAI22_1 U63 ( .A1(n10), .A2(n54), .B1(n244), .B2(n334), .X(n284)
         );
  SAEDRVT14_OAI22_1 U64 ( .A1(n10), .A2(n53), .B1(n243), .B2(n334), .X(n283)
         );
  SAEDRVT14_OAI22_1 U65 ( .A1(n10), .A2(n52), .B1(n87), .B2(n334), .X(n282) );
  SAEDRVT14_OAI22_1 U66 ( .A1(n11), .A2(n51), .B1(n249), .B2(n333), .X(n281)
         );
  SAEDRVT14_OAI22_1 U67 ( .A1(n11), .A2(n50), .B1(n248), .B2(n333), .X(n280)
         );
  SAEDRVT14_OAI22_1 U68 ( .A1(n11), .A2(n49), .B1(n247), .B2(n333), .X(n279)
         );
  SAEDRVT14_OAI22_1 U69 ( .A1(n11), .A2(n48), .B1(n246), .B2(n333), .X(n278)
         );
  SAEDRVT14_OAI22_1 U70 ( .A1(n11), .A2(n47), .B1(n245), .B2(n333), .X(n277)
         );
  SAEDRVT14_OAI22_1 U71 ( .A1(n11), .A2(n46), .B1(n244), .B2(n333), .X(n276)
         );
  SAEDRVT14_OAI22_1 U72 ( .A1(n11), .A2(n45), .B1(n243), .B2(n333), .X(n275)
         );
  SAEDRVT14_OAI22_1 U73 ( .A1(n11), .A2(n44), .B1(n87), .B2(n333), .X(n274) );
  SAEDRVT14_OAI22_1 U74 ( .A1(n12), .A2(n43), .B1(n249), .B2(n332), .X(n273)
         );
  SAEDRVT14_OAI22_1 U75 ( .A1(n12), .A2(n42), .B1(n248), .B2(n332), .X(n272)
         );
  SAEDRVT14_OAI22_1 U76 ( .A1(n12), .A2(n41), .B1(n247), .B2(n332), .X(n271)
         );
  SAEDRVT14_OAI22_1 U77 ( .A1(n12), .A2(n40), .B1(n246), .B2(n332), .X(n270)
         );
  SAEDRVT14_OAI22_1 U78 ( .A1(n12), .A2(n39), .B1(n245), .B2(n332), .X(n269)
         );
  SAEDRVT14_OAI22_1 U79 ( .A1(n12), .A2(n38), .B1(n244), .B2(n332), .X(n268)
         );
  SAEDRVT14_OAI22_1 U80 ( .A1(n12), .A2(n37), .B1(n243), .B2(n332), .X(n267)
         );
  SAEDRVT14_OAI22_1 U81 ( .A1(n12), .A2(n36), .B1(n87), .B2(n332), .X(n266) );
  SAEDRVT14_OAI22_1 U82 ( .A1(n13), .A2(n35), .B1(n249), .B2(n331), .X(n265)
         );
  SAEDRVT14_OAI22_1 U83 ( .A1(n13), .A2(n34), .B1(n248), .B2(n331), .X(n264)
         );
  SAEDRVT14_OAI22_1 U84 ( .A1(n13), .A2(n33), .B1(n247), .B2(n331), .X(n263)
         );
  SAEDRVT14_OAI22_1 U85 ( .A1(n13), .A2(n32), .B1(n246), .B2(n331), .X(n262)
         );
  SAEDRVT14_OAI22_1 U86 ( .A1(n13), .A2(n31), .B1(n245), .B2(n331), .X(n261)
         );
  SAEDRVT14_OAI22_1 U87 ( .A1(n13), .A2(n30), .B1(n244), .B2(n331), .X(n260)
         );
  SAEDRVT14_OAI22_1 U88 ( .A1(n13), .A2(n29), .B1(n243), .B2(n331), .X(n259)
         );
  SAEDRVT14_OAI22_1 U89 ( .A1(n13), .A2(n28), .B1(n87), .B2(n331), .X(n258) );
  SAEDRVT14_OAI22_1 U90 ( .A1(n330), .A2(n27), .B1(n249), .B2(n15), .X(n257)
         );
  SAEDRVT14_OAI22_1 U91 ( .A1(n330), .A2(n26), .B1(n248), .B2(n15), .X(n256)
         );
  SAEDRVT14_OAI22_1 U92 ( .A1(n330), .A2(n25), .B1(n247), .B2(n15), .X(n255)
         );
  SAEDRVT14_OAI22_1 U93 ( .A1(n330), .A2(n24), .B1(n246), .B2(n15), .X(n254)
         );
  SAEDRVT14_OAI22_1 U94 ( .A1(n330), .A2(n23), .B1(n245), .B2(n15), .X(n253)
         );
  SAEDRVT14_OAI22_1 U95 ( .A1(n330), .A2(n22), .B1(n244), .B2(n15), .X(n252)
         );
  SAEDRVT14_OAI22_1 U96 ( .A1(n330), .A2(n21), .B1(n243), .B2(n15), .X(n251)
         );
  SAEDRVT14_OAI22_1 U97 ( .A1(n330), .A2(n20), .B1(n87), .B2(n15), .X(n250) );
  SAEDRVT14_NR2_ISO_1 U98 ( .CK(n399), .EN(n398), .X(n400) );
  SAEDRVT14_OAI22_1 U99 ( .A1(n396), .A2(n35), .B1(n395), .B2(n43), .X(n399)
         );
  SAEDRVT14_OAI22_1 U100 ( .A1(n14), .A2(n83), .B1(n397), .B2(n27), .X(n398)
         );
  SAEDRVT14_NR2_ISO_1 U101 ( .CK(n383), .EN(n382), .X(n384) );
  SAEDRVT14_OAI22_1 U102 ( .A1(n396), .A2(n34), .B1(n395), .B2(n42), .X(n383)
         );
  SAEDRVT14_OAI22_1 U103 ( .A1(n14), .A2(n82), .B1(n397), .B2(n26), .X(n382)
         );
  SAEDRVT14_NR2_ISO_1 U104 ( .CK(n376), .EN(n375), .X(n377) );
  SAEDRVT14_OAI22_1 U105 ( .A1(n396), .A2(n33), .B1(n395), .B2(n41), .X(n376)
         );
  SAEDRVT14_OAI22_1 U106 ( .A1(n14), .A2(n81), .B1(n397), .B2(n25), .X(n375)
         );
  SAEDRVT14_NR2_ISO_1 U107 ( .CK(n369), .EN(n368), .X(n370) );
  SAEDRVT14_OAI22_1 U108 ( .A1(n396), .A2(n32), .B1(n395), .B2(n40), .X(n369)
         );
  SAEDRVT14_OAI22_1 U109 ( .A1(n14), .A2(n80), .B1(n397), .B2(n24), .X(n368)
         );
  SAEDRVT14_NR2_ISO_1 U110 ( .CK(n362), .EN(n361), .X(n363) );
  SAEDRVT14_OAI22_1 U111 ( .A1(n396), .A2(n31), .B1(n395), .B2(n39), .X(n362)
         );
  SAEDRVT14_OAI22_1 U112 ( .A1(n14), .A2(n79), .B1(n397), .B2(n23), .X(n361)
         );
  SAEDRVT14_NR2_ISO_1 U113 ( .CK(n355), .EN(n354), .X(n356) );
  SAEDRVT14_OAI22_1 U114 ( .A1(n396), .A2(n30), .B1(n395), .B2(n38), .X(n355)
         );
  SAEDRVT14_OAI22_1 U115 ( .A1(n14), .A2(n78), .B1(n397), .B2(n22), .X(n354)
         );
  SAEDRVT14_NR2_ISO_1 U116 ( .CK(n348), .EN(n347), .X(n349) );
  SAEDRVT14_OAI22_1 U117 ( .A1(n396), .A2(n29), .B1(n395), .B2(n37), .X(n348)
         );
  SAEDRVT14_OAI22_1 U118 ( .A1(n14), .A2(n77), .B1(n397), .B2(n21), .X(n347)
         );
  SAEDRVT14_NR2_ISO_1 U119 ( .CK(n341), .EN(n340), .X(n342) );
  SAEDRVT14_OAI22_1 U120 ( .A1(n396), .A2(n28), .B1(n395), .B2(n36), .X(n341)
         );
  SAEDRVT14_OAI22_1 U121 ( .A1(n14), .A2(n76), .B1(n397), .B2(n20), .X(n340)
         );
  SAEDRVT14_BUF_S_1 U122 ( .A(n85), .X(n1) );
  SAEDRVT14_BUF_S_1 U123 ( .A(n85), .X(n2) );
  SAEDRVT14_BUF_S_1 U124 ( .A(n85), .X(n3) );
  SAEDRVT14_BUF_S_1 U125 ( .A(n85), .X(n4) );
  SAEDRVT14_BUF_S_1 U126 ( .A(n85), .X(n5) );
  SAEDRVT14_BUF_S_1 U127 ( .A(n85), .X(n6) );
  SAEDRVT14_BUF_S_1 U128 ( .A(n85), .X(n7) );
  SAEDRVT14_AN4_1 U129 ( .A1(addr[3]), .A2(we), .A3(n19), .A4(n338), .X(n388)
         );
  SAEDRVT14_ND3B_0P75 U130 ( .A(n391), .B1(n14), .B2(we), .X(n337) );
  SAEDRVT14_ND3B_0P75 U131 ( .A(n392), .B1(n14), .B2(we), .X(n336) );
  SAEDRVT14_ND3B_0P75 U132 ( .A(n389), .B1(n14), .B2(we), .X(n334) );
  SAEDRVT14_ND3B_0P75 U133 ( .A(n390), .B1(n14), .B2(we), .X(n333) );
  SAEDRVT14_ND3B_0P75 U134 ( .A(n395), .B1(n14), .B2(we), .X(n332) );
  SAEDRVT14_ND3B_0P75 U135 ( .A(n396), .B1(n14), .B2(we), .X(n331) );
  SAEDRVT14_ND3B_0P75 U136 ( .A(addr[3]), .B1(we), .B2(n394), .X(n335) );
  SAEDRVT14_AO22_1 U137 ( .A1(n84), .A2(n345), .B1(data_out[7]), .B2(n404), 
        .X(n315) );
  SAEDRVT14_ND3B_0P75 U138 ( .A(n344), .B1(n343), .B2(n342), .X(n345) );
  SAEDRVT14_OAI22_1 U139 ( .A1(n390), .A2(n44), .B1(n389), .B2(n52), .X(n344)
         );
  SAEDRVT14_AOI21_0P5 U140 ( .A1(\ramA[5][7] ), .A2(n394), .B(n339), .X(n343)
         );
  SAEDRVT14_AO22_1 U141 ( .A1(n335), .A2(\ramA[5][0] ), .B1(data_in[0]), .B2(
        n16), .X(n297) );
  SAEDRVT14_AO22_1 U142 ( .A1(n335), .A2(\ramA[5][1] ), .B1(data_in[1]), .B2(
        n16), .X(n296) );
  SAEDRVT14_AO22_1 U143 ( .A1(n335), .A2(\ramA[5][2] ), .B1(data_in[2]), .B2(
        n16), .X(n295) );
  SAEDRVT14_AO22_1 U144 ( .A1(n335), .A2(\ramA[5][3] ), .B1(data_in[3]), .B2(
        n16), .X(n294) );
  SAEDRVT14_AO22_1 U145 ( .A1(n335), .A2(\ramA[5][4] ), .B1(data_in[4]), .B2(
        n16), .X(n293) );
  SAEDRVT14_AO22_1 U146 ( .A1(n335), .A2(\ramA[5][5] ), .B1(data_in[5]), .B2(
        n16), .X(n292) );
  SAEDRVT14_AO22_1 U147 ( .A1(n335), .A2(\ramA[5][6] ), .B1(data_in[6]), .B2(
        n16), .X(n291) );
  SAEDRVT14_AO22_1 U148 ( .A1(n335), .A2(\ramA[5][7] ), .B1(data_in[7]), .B2(
        n16), .X(n290) );
  SAEDRVT14_INV_1 U149 ( .A(\ramA[0][0] ), .X(n27) );
  SAEDRVT14_INV_1 U150 ( .A(\ramA[2][0] ), .X(n43) );
  SAEDRVT14_INV_1 U151 ( .A(\ramA[7][0] ), .X(n75) );
  SAEDRVT14_INV_1 U152 ( .A(\ramA[0][1] ), .X(n26) );
  SAEDRVT14_INV_1 U153 ( .A(\ramA[2][1] ), .X(n42) );
  SAEDRVT14_INV_1 U154 ( .A(\ramA[7][1] ), .X(n74) );
  SAEDRVT14_INV_1 U155 ( .A(\ramA[0][2] ), .X(n25) );
  SAEDRVT14_INV_1 U156 ( .A(\ramA[2][2] ), .X(n41) );
  SAEDRVT14_INV_1 U157 ( .A(\ramA[7][2] ), .X(n73) );
  SAEDRVT14_INV_1 U158 ( .A(\ramA[0][3] ), .X(n24) );
  SAEDRVT14_INV_1 U159 ( .A(\ramA[2][3] ), .X(n40) );
  SAEDRVT14_INV_1 U160 ( .A(\ramA[7][3] ), .X(n72) );
  SAEDRVT14_INV_1 U161 ( .A(\ramA[0][4] ), .X(n23) );
  SAEDRVT14_INV_1 U162 ( .A(\ramA[2][4] ), .X(n39) );
  SAEDRVT14_INV_1 U163 ( .A(\ramA[7][4] ), .X(n71) );
  SAEDRVT14_INV_1 U164 ( .A(\ramA[0][5] ), .X(n22) );
  SAEDRVT14_INV_1 U165 ( .A(\ramA[2][5] ), .X(n38) );
  SAEDRVT14_INV_1 U166 ( .A(\ramA[7][5] ), .X(n70) );
  SAEDRVT14_INV_1 U167 ( .A(\ramA[0][6] ), .X(n21) );
  SAEDRVT14_INV_1 U168 ( .A(\ramA[2][6] ), .X(n37) );
  SAEDRVT14_INV_1 U169 ( .A(\ramA[7][6] ), .X(n69) );
  SAEDRVT14_INV_1 U170 ( .A(\ramA[0][7] ), .X(n20) );
  SAEDRVT14_INV_1 U171 ( .A(\ramA[2][7] ), .X(n36) );
  SAEDRVT14_INV_1 U172 ( .A(\ramA[7][7] ), .X(n68) );
  SAEDRVT14_INV_1 U173 ( .A(\ramA[4][0] ), .X(n59) );
  SAEDRVT14_INV_1 U174 ( .A(\ramA[4][1] ), .X(n58) );
  SAEDRVT14_INV_1 U175 ( .A(\ramA[4][2] ), .X(n57) );
  SAEDRVT14_INV_1 U176 ( .A(\ramA[4][3] ), .X(n56) );
  SAEDRVT14_INV_1 U177 ( .A(\ramA[4][4] ), .X(n55) );
  SAEDRVT14_INV_1 U178 ( .A(\ramA[4][5] ), .X(n54) );
  SAEDRVT14_INV_1 U179 ( .A(\ramA[4][6] ), .X(n53) );
  SAEDRVT14_INV_1 U180 ( .A(\ramA[4][7] ), .X(n52) );
  SAEDRVT14_INV_1 U181 ( .A(\ramA[8][0] ), .X(n83) );
  SAEDRVT14_INV_1 U182 ( .A(\ramA[1][0] ), .X(n35) );
  SAEDRVT14_INV_1 U183 ( .A(\ramA[6][0] ), .X(n67) );
  SAEDRVT14_INV_1 U184 ( .A(\ramA[8][1] ), .X(n82) );
  SAEDRVT14_INV_1 U185 ( .A(\ramA[1][1] ), .X(n34) );
  SAEDRVT14_INV_1 U186 ( .A(\ramA[6][1] ), .X(n66) );
  SAEDRVT14_INV_1 U187 ( .A(\ramA[8][2] ), .X(n81) );
  SAEDRVT14_INV_1 U188 ( .A(\ramA[1][2] ), .X(n33) );
  SAEDRVT14_INV_1 U189 ( .A(\ramA[6][2] ), .X(n65) );
  SAEDRVT14_INV_1 U190 ( .A(\ramA[8][3] ), .X(n80) );
  SAEDRVT14_INV_1 U191 ( .A(\ramA[1][3] ), .X(n32) );
  SAEDRVT14_INV_1 U192 ( .A(\ramA[6][3] ), .X(n64) );
  SAEDRVT14_INV_1 U193 ( .A(\ramA[8][4] ), .X(n79) );
  SAEDRVT14_INV_1 U194 ( .A(\ramA[1][4] ), .X(n31) );
  SAEDRVT14_INV_1 U195 ( .A(\ramA[6][4] ), .X(n63) );
  SAEDRVT14_INV_1 U196 ( .A(\ramA[8][5] ), .X(n78) );
  SAEDRVT14_INV_1 U197 ( .A(\ramA[1][5] ), .X(n30) );
  SAEDRVT14_INV_1 U198 ( .A(\ramA[6][5] ), .X(n62) );
  SAEDRVT14_INV_1 U199 ( .A(\ramA[8][6] ), .X(n77) );
  SAEDRVT14_INV_1 U200 ( .A(\ramA[1][6] ), .X(n29) );
  SAEDRVT14_INV_1 U201 ( .A(\ramA[6][6] ), .X(n61) );
  SAEDRVT14_INV_1 U202 ( .A(\ramA[8][7] ), .X(n76) );
  SAEDRVT14_INV_1 U203 ( .A(\ramA[1][7] ), .X(n28) );
  SAEDRVT14_INV_1 U204 ( .A(\ramA[6][7] ), .X(n60) );
  SAEDRVT14_INV_1 U205 ( .A(\ramA[3][0] ), .X(n51) );
  SAEDRVT14_INV_1 U206 ( .A(\ramA[3][1] ), .X(n50) );
  SAEDRVT14_INV_1 U207 ( .A(\ramA[3][2] ), .X(n49) );
  SAEDRVT14_INV_1 U208 ( .A(\ramA[3][3] ), .X(n48) );
  SAEDRVT14_INV_1 U209 ( .A(\ramA[3][4] ), .X(n47) );
  SAEDRVT14_INV_1 U210 ( .A(\ramA[3][5] ), .X(n46) );
  SAEDRVT14_INV_1 U211 ( .A(\ramA[3][6] ), .X(n45) );
  SAEDRVT14_INV_1 U212 ( .A(\ramA[3][7] ), .X(n44) );
  SAEDRVT14_AO22_1 U213 ( .A1(data_out[0]), .A2(n404), .B1(n84), .B2(n403), 
        .X(n329) );
  SAEDRVT14_ND3B_0P75 U214 ( .A(n402), .B1(n401), .B2(n400), .X(n403) );
  SAEDRVT14_OAI22_1 U215 ( .A1(n390), .A2(n51), .B1(n389), .B2(n59), .X(n402)
         );
  SAEDRVT14_AOI21_0P5 U216 ( .A1(\ramA[5][0] ), .A2(n394), .B(n393), .X(n401)
         );
  SAEDRVT14_AO22_1 U217 ( .A1(data_out[1]), .A2(n404), .B1(n84), .B2(n387), 
        .X(n327) );
  SAEDRVT14_ND3B_0P75 U218 ( .A(n386), .B1(n385), .B2(n384), .X(n387) );
  SAEDRVT14_OAI22_1 U219 ( .A1(n390), .A2(n50), .B1(n389), .B2(n58), .X(n386)
         );
  SAEDRVT14_AOI21_0P5 U220 ( .A1(\ramA[5][1] ), .A2(n394), .B(n381), .X(n385)
         );
  SAEDRVT14_AO22_1 U221 ( .A1(data_out[2]), .A2(n404), .B1(n84), .B2(n380), 
        .X(n325) );
  SAEDRVT14_ND3B_0P75 U222 ( .A(n379), .B1(n378), .B2(n377), .X(n380) );
  SAEDRVT14_OAI22_1 U223 ( .A1(n390), .A2(n49), .B1(n389), .B2(n57), .X(n379)
         );
  SAEDRVT14_AOI21_0P5 U224 ( .A1(\ramA[5][2] ), .A2(n394), .B(n374), .X(n378)
         );
  SAEDRVT14_AO22_1 U225 ( .A1(data_out[3]), .A2(n404), .B1(n84), .B2(n373), 
        .X(n323) );
  SAEDRVT14_ND3B_0P75 U226 ( .A(n372), .B1(n371), .B2(n370), .X(n373) );
  SAEDRVT14_OAI22_1 U227 ( .A1(n390), .A2(n48), .B1(n389), .B2(n56), .X(n372)
         );
  SAEDRVT14_AOI21_0P5 U228 ( .A1(\ramA[5][3] ), .A2(n394), .B(n367), .X(n371)
         );
  SAEDRVT14_AO22_1 U229 ( .A1(data_out[4]), .A2(n404), .B1(n84), .B2(n366), 
        .X(n321) );
  SAEDRVT14_ND3B_0P75 U230 ( .A(n365), .B1(n364), .B2(n363), .X(n366) );
  SAEDRVT14_OAI22_1 U231 ( .A1(n390), .A2(n47), .B1(n389), .B2(n55), .X(n365)
         );
  SAEDRVT14_AOI21_0P5 U232 ( .A1(\ramA[5][4] ), .A2(n394), .B(n360), .X(n364)
         );
  SAEDRVT14_AO22_1 U233 ( .A1(data_out[5]), .A2(n404), .B1(n84), .B2(n359), 
        .X(n319) );
  SAEDRVT14_ND3B_0P75 U234 ( .A(n358), .B1(n357), .B2(n356), .X(n359) );
  SAEDRVT14_OAI22_1 U235 ( .A1(n390), .A2(n46), .B1(n389), .B2(n54), .X(n358)
         );
  SAEDRVT14_AOI21_0P5 U236 ( .A1(\ramA[5][5] ), .A2(n394), .B(n353), .X(n357)
         );
  SAEDRVT14_AO22_1 U237 ( .A1(data_out[6]), .A2(n404), .B1(n84), .B2(n352), 
        .X(n317) );
  SAEDRVT14_ND3B_0P75 U238 ( .A(n351), .B1(n350), .B2(n349), .X(n352) );
  SAEDRVT14_OAI22_1 U239 ( .A1(n390), .A2(n45), .B1(n389), .B2(n53), .X(n351)
         );
  SAEDRVT14_AOI21_0P5 U240 ( .A1(\ramA[5][6] ), .A2(n394), .B(n346), .X(n350)
         );
  SAEDRVT14_INV_1 U241 ( .A(data_in[0]), .X(n249) );
  SAEDRVT14_INV_1 U242 ( .A(data_in[1]), .X(n248) );
  SAEDRVT14_INV_1 U243 ( .A(data_in[2]), .X(n247) );
  SAEDRVT14_INV_1 U244 ( .A(data_in[3]), .X(n246) );
  SAEDRVT14_INV_1 U245 ( .A(data_in[4]), .X(n245) );
  SAEDRVT14_INV_1 U246 ( .A(data_in[5]), .X(n244) );
  SAEDRVT14_INV_1 U247 ( .A(data_in[6]), .X(n243) );
  SAEDRVT14_INV_1 U248 ( .A(data_in[7]), .X(n87) );
  SAEDRVT14_INV_1 U249 ( .A(rst), .X(n85) );
  SAEDRVT14_INV_1 U250 ( .A(we), .X(n86) );
endmodule


module datapath_8_03_03_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  SAEDRVT14_EO3_1 U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(SUM[7]) );
  SAEDRVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDRVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDRVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDRVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDRVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDRVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDRVT14_INV_1 U1 ( .A(B[0]), .X(n2) );
  SAEDRVT14_NR2_ISO_1 U2 ( .CK(n1), .EN(n2), .X(carry[1]) );
  SAEDRVT14_INV_1 U3 ( .A(A[0]), .X(n1) );
  SAEDRVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
endmodule


module datapath_8_03_03_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  SAEDRVT14_ADDH_0P5 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  SAEDRVT14_ADDH_0P5 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  SAEDRVT14_ADDH_0P5 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  SAEDRVT14_ADDH_0P5 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  SAEDRVT14_ADDH_0P5 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  SAEDRVT14_ADDH_0P5 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  SAEDRVT14_INV_1 U1 ( .A(A[0]), .X(SUM[0]) );
  SAEDRVT14_EO2_V1_0P75 U2 ( .A1(carry[7]), .A2(A[7]), .X(SUM[7]) );
endmodule


module datapath_8_03_03_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  SAEDRVT14_EO3_1 U2_7 ( .A1(A[7]), .A2(n2), .A3(carry[7]), .X(DIFF[7]) );
  SAEDRVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDRVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDRVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDRVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDRVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDRVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n8), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(A[0]), .A2(n9), .X(n1) );
  SAEDRVT14_EN2_1 U2 ( .A1(A[0]), .A2(n9), .X(DIFF[0]) );
  SAEDRVT14_INV_1 U3 ( .A(B[1]), .X(n8) );
  SAEDRVT14_INV_1 U4 ( .A(B[2]), .X(n7) );
  SAEDRVT14_INV_1 U5 ( .A(B[3]), .X(n6) );
  SAEDRVT14_INV_1 U6 ( .A(B[4]), .X(n5) );
  SAEDRVT14_INV_1 U7 ( .A(B[5]), .X(n4) );
  SAEDRVT14_INV_1 U8 ( .A(B[6]), .X(n3) );
  SAEDRVT14_INV_1 U9 ( .A(B[0]), .X(n9) );
  SAEDRVT14_INV_1 U10 ( .A(B[7]), .X(n2) );
endmodule


module datapath_8_03_03 ( clk, rst, start, ld_i, ena_i, ld_j, ena_j, we_A, 
        re_A, we_B, re_B, ena_temp, ena_SAD, SAD_sel, addr_in, data_in, i_comp, 
        j_comp, data_out );
  input [4:0] addr_in;
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst, start, ld_i, ena_i, ld_j, ena_j, we_A, re_A, we_B, re_B,
         ena_temp, ena_SAD, SAD_sel;
  output i_comp, j_comp;
  wire   \count_i_p[4] , N16, N17, N25, N26, N27, N28, N29, N30, N31, N32, N9,
         N8, N7, N15, N14, N13, N12, N10,
         \add_0_root_add_0_root_add_76_3/carry[4] ,
         \add_0_root_add_0_root_add_76_3/carry[3] ,
         \add_0_root_add_0_root_add_76_3/carry[2] ,
         \add_2_root_add_0_root_add_76_3/carry[4] ,
         \add_2_root_add_0_root_add_76_3/carry[3] ,
         \add_2_root_add_0_root_add_76_3/carry[2] ,
         \add_2_root_add_0_root_add_76_3/carry[1] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14;
  wire   [4:0] count_j_p;
  wire   [4:0] value_addr;
  wire   [4:0] addr;
  wire   [7:0] data_A;
  wire   [7:0] data_B;
  wire   [7:0] temp_in;
  wire   [7:0] temp_out_p;
  wire   [7:0] temp_out;
  wire   [7:0] SAD_in;
  wire   [7:0] temp_add;
  assign i_comp = N16;
  assign j_comp = N17;

  counter_0 dem_i ( .clk(clk), .rst(rst), .ld(ld_i), .ena(ena_i), .count({
        \count_i_p[4] , N10, N9, N8, N7}) );
  counter_1 dem_j ( .clk(clk), .rst(rst), .ld(ld_j), .ena(ena_j), .count(
        count_j_p) );
  mem_0 MemA ( .clk(clk), .rst(rst), .re(re_A), .we(we_A), .addr(addr), 
        .data_in(data_in), .data_out(data_A) );
  mem_1 MemB ( .clk(clk), .rst(rst), .re(re_B), .we(we_B), .addr(addr), 
        .data_in(data_in), .data_out(data_B) );
  \reg  temp ( .clk(clk), .rst(rst), .ena(ena_temp), .D(temp_in), .Q(
        temp_out_p) );
  \reg  sad ( .clk(clk), .rst(rst), .ena(ena_SAD), .D(SAD_in), .Q(data_out) );
  datapath_8_03_03_DW01_add_0 add_106 ( .A(data_out), .B(temp_out), .CI(n1), 
        .SUM(temp_add) );
  datapath_8_03_03_DW01_inc_0 add_97 ( .A({n13, n12, n11, n10, n9, n8, n7, n6}), .SUM({N32, N31, N30, N29, N28, N27, N26, N25}) );
  datapath_8_03_03_DW01_sub_0 sub_93 ( .A(data_A), .B(data_B), .CI(n1), .DIFF(
        temp_in) );
  SAEDRVT14_EO3_1 \add_2_root_add_0_root_add_76_3/U1_4  ( .A1(count_j_p[4]), 
        .A2(\count_i_p[4] ), .A3(\add_2_root_add_0_root_add_76_3/carry[4] ), 
        .X(N15) );
  SAEDRVT14_EO3_1 \add_0_root_add_0_root_add_76_3/U1_4  ( .A1(N15), .A2(N10), 
        .A3(\add_0_root_add_0_root_add_76_3/carry[4] ), .X(value_addr[4]) );
  SAEDRVT14_ADDF_V1_1 \add_2_root_add_0_root_add_76_3/U1_3  ( .A(count_j_p[3]), 
        .B(N10), .CI(\add_2_root_add_0_root_add_76_3/carry[3] ), .CO(
        \add_2_root_add_0_root_add_76_3/carry[4] ), .S(N14) );
  SAEDRVT14_ADDF_V1_1 \add_2_root_add_0_root_add_76_3/U1_2  ( .A(count_j_p[2]), 
        .B(N9), .CI(\add_2_root_add_0_root_add_76_3/carry[2] ), .CO(
        \add_2_root_add_0_root_add_76_3/carry[3] ), .S(N13) );
  SAEDRVT14_ADDF_V1_1 \add_0_root_add_0_root_add_76_3/U1_2  ( .A(N13), .B(N8), 
        .CI(\add_0_root_add_0_root_add_76_3/carry[2] ), .CO(
        \add_0_root_add_0_root_add_76_3/carry[3] ), .S(value_addr[2]) );
  SAEDRVT14_ADDF_V1_1 \add_0_root_add_0_root_add_76_3/U1_3  ( .A(N14), .B(N9), 
        .CI(\add_0_root_add_0_root_add_76_3/carry[3] ), .CO(
        \add_0_root_add_0_root_add_76_3/carry[4] ), .S(value_addr[3]) );
  SAEDRVT14_ADDF_V1_1 \add_2_root_add_0_root_add_76_3/U1_1  ( .A(count_j_p[1]), 
        .B(N8), .CI(\add_2_root_add_0_root_add_76_3/carry[1] ), .CO(
        \add_2_root_add_0_root_add_76_3/carry[2] ), .S(N12) );
  SAEDRVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDRVT14_AO22_1 U4 ( .A1(value_addr[4]), .A2(start), .B1(addr_in[4]), .B2(
        n14), .X(addr[4]) );
  SAEDRVT14_AN2_MM_1 U5 ( .A1(temp_add[1]), .A2(SAD_sel), .X(SAD_in[1]) );
  SAEDRVT14_AN2_MM_1 U6 ( .A1(temp_add[2]), .A2(SAD_sel), .X(SAD_in[2]) );
  SAEDRVT14_AN2_MM_1 U7 ( .A1(temp_add[3]), .A2(SAD_sel), .X(SAD_in[3]) );
  SAEDRVT14_AN2_MM_1 U8 ( .A1(temp_add[4]), .A2(SAD_sel), .X(SAD_in[4]) );
  SAEDRVT14_AN2_MM_1 U9 ( .A1(temp_add[5]), .A2(SAD_sel), .X(SAD_in[5]) );
  SAEDRVT14_AN2_MM_1 U10 ( .A1(temp_add[6]), .A2(SAD_sel), .X(SAD_in[6]) );
  SAEDRVT14_AO22_1 U11 ( .A1(value_addr[2]), .A2(start), .B1(addr_in[2]), .B2(
        n14), .X(addr[2]) );
  SAEDRVT14_AO22_1 U12 ( .A1(value_addr[0]), .A2(start), .B1(addr_in[0]), .B2(
        n14), .X(addr[0]) );
  SAEDRVT14_AO22_1 U13 ( .A1(value_addr[1]), .A2(start), .B1(addr_in[1]), .B2(
        n14), .X(addr[1]) );
  SAEDRVT14_AO22_1 U14 ( .A1(value_addr[3]), .A2(start), .B1(addr_in[3]), .B2(
        n14), .X(addr[3]) );
  SAEDRVT14_INV_1 U15 ( .A(temp_out_p[7]), .X(n13) );
  SAEDRVT14_INV_1 U16 ( .A(start), .X(n14) );
  SAEDRVT14_AO22_1 U17 ( .A1(temp_out_p[0]), .A2(n13), .B1(N25), .B2(
        temp_out_p[7]), .X(temp_out[0]) );
  SAEDRVT14_AO22_1 U18 ( .A1(temp_out_p[1]), .A2(n13), .B1(N26), .B2(
        temp_out_p[7]), .X(temp_out[1]) );
  SAEDRVT14_AO22_1 U19 ( .A1(temp_out_p[2]), .A2(n13), .B1(N27), .B2(
        temp_out_p[7]), .X(temp_out[2]) );
  SAEDRVT14_AO22_1 U20 ( .A1(temp_out_p[3]), .A2(n13), .B1(N28), .B2(
        temp_out_p[7]), .X(temp_out[3]) );
  SAEDRVT14_AO22_1 U21 ( .A1(temp_out_p[4]), .A2(n13), .B1(N29), .B2(
        temp_out_p[7]), .X(temp_out[4]) );
  SAEDRVT14_AO22_1 U22 ( .A1(temp_out_p[5]), .A2(n13), .B1(N30), .B2(
        temp_out_p[7]), .X(temp_out[5]) );
  SAEDRVT14_AO22_1 U23 ( .A1(temp_out_p[6]), .A2(n13), .B1(N31), .B2(
        temp_out_p[7]), .X(temp_out[6]) );
  SAEDRVT14_INV_1 U24 ( .A(temp_out_p[1]), .X(n7) );
  SAEDRVT14_INV_1 U25 ( .A(temp_out_p[2]), .X(n8) );
  SAEDRVT14_INV_1 U26 ( .A(temp_out_p[3]), .X(n9) );
  SAEDRVT14_INV_1 U27 ( .A(temp_out_p[4]), .X(n10) );
  SAEDRVT14_INV_1 U28 ( .A(temp_out_p[5]), .X(n11) );
  SAEDRVT14_INV_1 U29 ( .A(temp_out_p[6]), .X(n12) );
  SAEDRVT14_INV_1 U30 ( .A(temp_out_p[0]), .X(n6) );
  SAEDRVT14_AN2_MM_1 U31 ( .A1(temp_add[0]), .A2(SAD_sel), .X(SAD_in[0]) );
  SAEDRVT14_AN2_MM_1 U32 ( .A1(temp_add[7]), .A2(SAD_sel), .X(SAD_in[7]) );
  SAEDRVT14_AN2_MM_1 U33 ( .A1(N32), .A2(temp_out_p[7]), .X(temp_out[7]) );
  SAEDRVT14_AN2_1 U34 ( .A1(N7), .A2(N12), .X(
        \add_0_root_add_0_root_add_76_3/carry[2] ) );
  SAEDRVT14_EO2_V1_0P75 U35 ( .A1(N7), .A2(N12), .X(value_addr[1]) );
  SAEDRVT14_AN2_1 U36 ( .A1(N7), .A2(count_j_p[0]), .X(
        \add_2_root_add_0_root_add_76_3/carry[1] ) );
  SAEDRVT14_EO2_V1_0P75 U37 ( .A1(N7), .A2(count_j_p[0]), .X(value_addr[0]) );
  SAEDRVT14_OR2_MM_0P5 U38 ( .A1(N10), .A2(N9), .X(n2) );
  SAEDRVT14_AOI21_0P5 U39 ( .A1(N8), .A2(N7), .B(n2), .X(n3) );
  SAEDRVT14_OR2_MM_0P5 U40 ( .A1(\count_i_p[4] ), .A2(n3), .X(N16) );
  SAEDRVT14_OR2_MM_0P5 U41 ( .A1(count_j_p[3]), .A2(count_j_p[2]), .X(n4) );
  SAEDRVT14_AOI21_0P5 U42 ( .A1(count_j_p[1]), .A2(count_j_p[0]), .B(n4), .X(
        n5) );
  SAEDRVT14_OR2_MM_0P5 U43 ( .A1(count_j_p[4]), .A2(n5), .X(N17) );
endmodule


module sad ( clk, rst, start, we_A, we_B, data_in, addr_in, done, data_out );
  input [7:0] data_in;
  input [4:0] addr_in;
  output [7:0] data_out;
  input clk, rst, start, we_A, we_B;
  output done;
  wire   i_comp, j_comp, ld_i, ena_i, ld_j, ena_j, re_A, re_B, ena_temp,
         ena_SAD, SAD_sel;

  controller_data_width8 control_unit ( .clk(clk), .rst(rst), .start(start), 
        .i_comp(i_comp), .j_comp(j_comp), .ld_i(ld_i), .ena_i(ena_i), .ld_j(
        ld_j), .ena_j(ena_j), .re_A(re_A), .re_B(re_B), .ena_temp(ena_temp), 
        .ena_SAD(ena_SAD), .SAD_sel(SAD_sel), .done(done) );
  datapath_8_03_03 datapath_unit ( .clk(clk), .rst(rst), .start(start), .ld_i(
        ld_i), .ena_i(ena_i), .ld_j(ld_j), .ena_j(ena_j), .we_A(we_A), .re_A(
        re_A), .we_B(we_B), .re_B(re_B), .ena_temp(ena_temp), .ena_SAD(ena_SAD), .SAD_sel(SAD_sel), .addr_in(addr_in), .data_in(data_in), .i_comp(i_comp), 
        .j_comp(j_comp), .data_out(data_out) );
endmodule

