/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Sun Jun 23 13:03:55 2024
/////////////////////////////////////////////////////////////


module controller_data_width8 ( clk, rst, start, i_comp, j_comp, ld_i, ena_i, 
        ld_j, ena_j, re_A, re_B, ena_temp, ena_SAD, SAD_sel, done );
  input clk, rst, start, i_comp, j_comp;
  output ld_i, ena_i, ld_j, ena_j, re_A, re_B, ena_temp, ena_SAD, SAD_sel,
         done;
  wire   N81, N82, N83, N84, re_A, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n15, n40, n41, n42, n44, n45, n46, n47, n48, n49;
  wire   [3:0] current_state;
  assign re_B = re_A;

  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[3]  ( .D(N84), .CK(clk), .RD(n48), 
        .Q(current_state[3]) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[1]  ( .D(N82), .CK(clk), .RD(n48), 
        .Q(current_state[1]) );
  SAEDRVT14_AN3_0P75 U23 ( .A1(current_state[2]), .A2(n40), .A3(n31), .X(re_A)
         );
  SAEDRVT14_EO2_V1_0P75 U44 ( .A1(current_state[2]), .A2(n20), .X(n18) );
  SAEDRVT14_EO2_V1_0P75 U45 ( .A1(current_state[1]), .A2(current_state[0]), 
        .X(n20) );
  SAEDRVT14_OA31_1 U46 ( .A1(current_state[2]), .A2(n45), .A3(n40), .B(n30), 
        .X(n25) );
  SAEDRVT14_AO32_1 U47 ( .A1(n33), .A2(n47), .A3(current_state[0]), .B1(n42), 
        .B2(n49), .X(n32) );
  SAEDRVT14_OA22_0P75 U48 ( .A1(n49), .A2(n30), .B1(current_state[2]), .B2(
        current_state[0]), .X(n35) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[2]  ( .D(N83), .CK(clk), .RD(n48), 
        .Q(current_state[2]) );
  SAEDRVT14_FDPRBQ_V2_1 \current_state_reg[0]  ( .D(N81), .CK(clk), .RD(n48), 
        .Q(current_state[0]) );
  SAEDRVT14_INV_1 U3 ( .A(n29), .X(done) );
  SAEDRVT14_OAI21_0P75 U4 ( .A1(j_comp), .A2(n34), .B(n29), .X(n23) );
  SAEDRVT14_INV_1 U5 ( .A(n31), .X(n45) );
  SAEDRVT14_INV_1 U6 ( .A(SAD_sel), .X(ld_i) );
  SAEDRVT14_INV_1 U7 ( .A(n34), .X(n41) );
  SAEDRVT14_INV_1 U8 ( .A(n27), .X(ld_j) );
  SAEDRVT14_ND3B_0P75 U9 ( .A(n28), .B1(n44), .B2(n40), .X(n27) );
  SAEDRVT14_NR2_ISO_1 U10 ( .CK(n40), .EN(n21), .X(ena_i) );
  SAEDRVT14_INV_1 U11 ( .A(n16), .X(ena_temp) );
  SAEDRVT14_ND3B_0P75 U12 ( .A(n17), .B1(n44), .B2(n18), .X(n16) );
  SAEDRVT14_INV_1 U13 ( .A(current_state[0]), .X(n40) );
  SAEDRVT14_ND2_CDC_1 U14 ( .A1(current_state[2]), .A2(n46), .X(n28) );
  SAEDRVT14_INV_1 U15 ( .A(current_state[1]), .X(n46) );
  SAEDRVT14_INV_1 U16 ( .A(start), .X(n49) );
  SAEDRVT14_ND3B_0P75 U17 ( .A(n28), .B1(n40), .B2(current_state[3]), .X(n29)
         );
  SAEDRVT14_OR4_1 U18 ( .A1(re_A), .A2(n41), .A3(ld_i), .A4(n32), .X(N82) );
  SAEDRVT14_INV_1 U19 ( .A(n30), .X(n42) );
  SAEDRVT14_OAI21_0P75 U20 ( .A1(current_state[1]), .A2(n49), .B(n44), .X(n33)
         );
  SAEDRVT14_ND3B_0P75 U21 ( .A(current_state[3]), .B1(n46), .B2(n38), .X(n37)
         );
  SAEDRVT14_OAI21_0P75 U22 ( .A1(start), .A2(current_state[2]), .B(
        current_state[0]), .X(n38) );
  SAEDRVT14_ND3B_0P75 U24 ( .A(n23), .B1(n15), .B2(n35), .X(N81) );
  SAEDRVT14_INV_1 U25 ( .A(n36), .X(n15) );
  SAEDRVT14_ND3B_0P75 U26 ( .A(re_A), .B1(n21), .B2(n37), .X(n36) );
  SAEDRVT14_ND3B_0P75 U27 ( .A(current_state[0]), .B1(n31), .B2(n47), .X(
        SAD_sel) );
  SAEDRVT14_INV_1 U28 ( .A(current_state[3]), .X(n44) );
  SAEDRVT14_NR2_ISO_1 U29 ( .CK(n46), .EN(current_state[3]), .X(n31) );
  SAEDRVT14_INV_1 U30 ( .A(current_state[2]), .X(n47) );
  SAEDRVT14_ND3B_0P75 U31 ( .A(current_state[2]), .B1(current_state[1]), .B2(
        current_state[3]), .X(n21) );
  SAEDRVT14_NR2_ISO_1 U32 ( .CK(current_state[0]), .EN(n21), .X(ena_j) );
  SAEDRVT14_ND3B_0P75 U33 ( .A(n28), .B1(current_state[0]), .B2(
        current_state[3]), .X(n30) );
  SAEDRVT14_AO221_0P5 U34 ( .A1(n22), .A2(current_state[0]), .B1(
        current_state[3]), .B2(n46), .C(n23), .X(N84) );
  SAEDRVT14_AOI21_0P5 U35 ( .A1(i_comp), .A2(n47), .B(n45), .X(n22) );
  SAEDRVT14_ND3B_0P75 U36 ( .A(n28), .B1(n44), .B2(current_state[0]), .X(n34)
         );
  SAEDRVT14_ND3B_0P75 U37 ( .A(n24), .B1(n25), .B2(n26), .X(N83) );
  SAEDRVT14_AN2_MM_1 U38 ( .A1(n41), .A2(j_comp), .X(n24) );
  SAEDRVT14_NR4_0P75 U39 ( .A1(done), .A2(ena_j), .A3(ld_j), .A4(re_A), .X(n26) );
  SAEDRVT14_OA2BB2_V1_1 U40 ( .A1(n20), .A2(current_state[2]), .B1(n46), .B2(
        n40), .X(n17) );
  SAEDRVT14_INV_1 U41 ( .A(rst), .X(n48) );
  SAEDRVT14_INV_1 U42 ( .A(n19), .X(ena_SAD) );
  SAEDRVT14_ND3B_0P75 U43 ( .A(n18), .B1(n17), .B2(current_state[3]), .X(n19)
         );
endmodule


module datapath_8_03_03_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [7:1] carry;

  SAEDRVT14_EO2_V1_0P75 U4 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
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
  SAEDRVT14_INV_1 U1 ( .A(B[0]), .X(n3) );
  SAEDRVT14_NR2_ISO_1 U2 ( .CK(n4), .EN(n3), .X(carry[1]) );
  SAEDRVT14_INV_1 U3 ( .A(A[0]), .X(n4) );
endmodule


module datapath_8_03_03_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  SAEDRVT14_EO2_V1_0P75 U2 ( .A1(carry[7]), .A2(A[7]), .X(SUM[7]) );
  SAEDRVT14_ADDH_0P5 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  SAEDRVT14_ADDH_0P5 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  SAEDRVT14_ADDH_0P5 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  SAEDRVT14_ADDH_0P5 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  SAEDRVT14_ADDH_0P5 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  SAEDRVT14_ADDH_0P5 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  SAEDRVT14_INV_1 U1 ( .A(A[0]), .X(SUM[0]) );
endmodule


module datapath_8_03_03_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n11, n12, n13, n14, n15, n16, n17;
  wire   [8:0] carry;

  SAEDRVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDRVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n16), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDRVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDRVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDRVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDRVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n12), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDRVT14_EN2_1 U1 ( .A1(A[0]), .A2(n11), .X(DIFF[0]) );
  SAEDRVT14_INV_1 U2 ( .A(B[1]), .X(n12) );
  SAEDRVT14_OR2_MM_0P5 U3 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDRVT14_INV_1 U4 ( .A(B[2]), .X(n13) );
  SAEDRVT14_INV_1 U5 ( .A(B[3]), .X(n14) );
  SAEDRVT14_INV_1 U6 ( .A(B[4]), .X(n15) );
  SAEDRVT14_INV_1 U7 ( .A(B[5]), .X(n16) );
  SAEDRVT14_INV_1 U8 ( .A(B[6]), .X(n17) );
  SAEDRVT14_INV_1 U9 ( .A(B[0]), .X(n11) );
  SAEDRVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
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
         N8, N7, N14, N13, N12, N10, \add_0_root_add_0_root_add_77_3/carry[4] ,
         \add_0_root_add_0_root_add_77_3/carry[3] ,
         \add_0_root_add_0_root_add_77_3/carry[2] ,
         \add_2_root_add_0_root_add_77_3/carry[4] ,
         \add_2_root_add_0_root_add_77_3/carry[3] ,
         \add_2_root_add_0_root_add_77_3/carry[2] ,
         \add_2_root_add_0_root_add_77_3/carry[1] , n1, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
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

  SAEDRVT14_EO2_V1_0P75 U43 ( .A1(N7), .A2(N12), .X(n12) );
  SAEDRVT14_EO2_V1_0P75 U44 ( .A1(count_j_p[0]), .A2(N7), .X(n13) );
  counter_0 dem_i ( .clk(clk), .rst(rst), .ld(ld_i), .ena(ena_i), .count({
        \count_i_p[4] , N10, N9, N8, N7}) );
  counter_1 dem_j ( .clk(clk), .rst(rst), .ld(ld_j), .ena(ena_j), .count(
        count_j_p) );
  mem_data_width8_0 MemA ( .clk(clk), .rst(rst), .re(re_A), .we(we_A), .addr(
        addr), .data_in(data_in), .data_out(data_A) );
  mem_data_width8_1 MemB ( .clk(clk), .rst(rst), .re(re_B), .we(we_B), .addr(
        addr), .data_in(data_in), .data_out(data_B) );
  reg_data_width8_0 temp ( .clk(clk), .rst(rst), .ena(ena_temp), .D(temp_in), 
        .Q(temp_out_p) );
  reg_data_width8_1 sad ( .clk(clk), .rst(rst), .ena(ena_SAD), .D(SAD_in), .Q(
        data_out) );
  datapath_8_03_03_DW01_add_0 add_107 ( .A(data_out), .B(temp_out), .CI(n1), 
        .SUM(temp_add) );
  datapath_8_03_03_DW01_inc_0 add_98 ( .A({n26, n25, n24, n23, n22, n21, n20, 
        n19}), .SUM({N32, N31, N30, N29, N28, N27, N26, N25}) );
  datapath_8_03_03_DW01_sub_0 sub_94 ( .A(data_A), .B(data_B), .CI(n1), .DIFF(
        temp_in) );
  SAEDRVT14_ADDF_V1_1 \add_0_root_add_0_root_add_77_3/U1_3  ( .A(N14), .B(N9), 
        .CI(\add_0_root_add_0_root_add_77_3/carry[3] ), .CO(
        \add_0_root_add_0_root_add_77_3/carry[4] ), .S(value_addr[3]) );
  SAEDRVT14_ADDF_V1_1 \add_2_root_add_0_root_add_77_3/U1_3  ( .A(count_j_p[3]), 
        .B(N10), .CI(\add_2_root_add_0_root_add_77_3/carry[3] ), .CO(
        \add_2_root_add_0_root_add_77_3/carry[4] ), .S(N14) );
  SAEDRVT14_ADDF_V1_1 \add_0_root_add_0_root_add_77_3/U1_2  ( .A(N13), .B(N8), 
        .CI(\add_0_root_add_0_root_add_77_3/carry[2] ), .CO(
        \add_0_root_add_0_root_add_77_3/carry[3] ), .S(value_addr[2]) );
  SAEDRVT14_ADDF_V1_1 \add_2_root_add_0_root_add_77_3/U1_2  ( .A(count_j_p[2]), 
        .B(N9), .CI(\add_2_root_add_0_root_add_77_3/carry[2] ), .CO(
        \add_2_root_add_0_root_add_77_3/carry[3] ), .S(N13) );
  SAEDRVT14_ADDF_V1_1 \add_2_root_add_0_root_add_77_3/U1_1  ( .A(count_j_p[1]), 
        .B(N8), .CI(\add_2_root_add_0_root_add_77_3/carry[1] ), .CO(
        \add_2_root_add_0_root_add_77_3/carry[2] ), .S(N12) );
  SAEDRVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDRVT14_AO22_1 U4 ( .A1(value_addr[4]), .A2(start), .B1(addr_in[4]), .B2(
        n27), .X(addr[4]) );
  SAEDRVT14_AN2_MM_1 U5 ( .A1(temp_add[1]), .A2(SAD_sel), .X(SAD_in[1]) );
  SAEDRVT14_AN2_MM_1 U6 ( .A1(temp_add[2]), .A2(SAD_sel), .X(SAD_in[2]) );
  SAEDRVT14_AN2_MM_1 U7 ( .A1(temp_add[3]), .A2(SAD_sel), .X(SAD_in[3]) );
  SAEDRVT14_AN2_MM_1 U8 ( .A1(temp_add[4]), .A2(SAD_sel), .X(SAD_in[4]) );
  SAEDRVT14_AN2_MM_1 U9 ( .A1(temp_add[5]), .A2(SAD_sel), .X(SAD_in[5]) );
  SAEDRVT14_AN2_MM_1 U10 ( .A1(temp_add[6]), .A2(SAD_sel), .X(SAD_in[6]) );
  SAEDRVT14_OR2_MM_0P5 U11 ( .A1(n16), .A2(\count_i_p[4] ), .X(N16) );
  SAEDRVT14_AOI21_0P5 U12 ( .A1(N8), .A2(N7), .B(n17), .X(n16) );
  SAEDRVT14_INV_1 U13 ( .A(temp_out_p[7]), .X(n26) );
  SAEDRVT14_INV_1 U14 ( .A(start), .X(n27) );
  SAEDRVT14_AO22_1 U15 ( .A1(temp_out_p[0]), .A2(n26), .B1(N25), .B2(
        temp_out_p[7]), .X(temp_out[0]) );
  SAEDRVT14_OR2_MM_0P5 U16 ( .A1(n14), .A2(count_j_p[4]), .X(N17) );
  SAEDRVT14_AOI21_0P5 U17 ( .A1(count_j_p[1]), .A2(count_j_p[0]), .B(n15), .X(
        n14) );
  SAEDRVT14_OR2_MM_0P5 U18 ( .A1(count_j_p[3]), .A2(count_j_p[2]), .X(n15) );
  SAEDRVT14_AN2_MM_1 U19 ( .A1(N7), .A2(count_j_p[0]), .X(
        \add_2_root_add_0_root_add_77_3/carry[1] ) );
  SAEDRVT14_AN2_MM_1 U20 ( .A1(N7), .A2(N12), .X(
        \add_0_root_add_0_root_add_77_3/carry[2] ) );
  SAEDRVT14_AO22_1 U21 ( .A1(temp_out_p[1]), .A2(n26), .B1(N26), .B2(
        temp_out_p[7]), .X(temp_out[1]) );
  SAEDRVT14_AO22_1 U22 ( .A1(temp_out_p[2]), .A2(n26), .B1(N27), .B2(
        temp_out_p[7]), .X(temp_out[2]) );
  SAEDRVT14_AO22_1 U23 ( .A1(temp_out_p[3]), .A2(n26), .B1(N28), .B2(
        temp_out_p[7]), .X(temp_out[3]) );
  SAEDRVT14_AO22_1 U24 ( .A1(temp_out_p[4]), .A2(n26), .B1(N29), .B2(
        temp_out_p[7]), .X(temp_out[4]) );
  SAEDRVT14_AO22_1 U25 ( .A1(temp_out_p[5]), .A2(n26), .B1(N30), .B2(
        temp_out_p[7]), .X(temp_out[5]) );
  SAEDRVT14_INV_1 U26 ( .A(temp_out_p[1]), .X(n20) );
  SAEDRVT14_INV_1 U27 ( .A(temp_out_p[2]), .X(n21) );
  SAEDRVT14_INV_1 U28 ( .A(temp_out_p[3]), .X(n22) );
  SAEDRVT14_INV_1 U29 ( .A(temp_out_p[4]), .X(n23) );
  SAEDRVT14_INV_1 U30 ( .A(temp_out_p[5]), .X(n24) );
  SAEDRVT14_AO22_1 U31 ( .A1(addr_in[0]), .A2(n27), .B1(start), .B2(n13), .X(
        addr[0]) );
  SAEDRVT14_AO22_1 U32 ( .A1(addr_in[1]), .A2(n27), .B1(start), .B2(n12), .X(
        addr[1]) );
  SAEDRVT14_AO22_1 U33 ( .A1(value_addr[2]), .A2(start), .B1(addr_in[2]), .B2(
        n27), .X(addr[2]) );
  SAEDRVT14_AO22_1 U34 ( .A1(value_addr[3]), .A2(start), .B1(addr_in[3]), .B2(
        n27), .X(addr[3]) );
  SAEDRVT14_EN3_1 U35 ( .A1(n18), .A2(N10), .A3(
        \add_0_root_add_0_root_add_77_3/carry[4] ), .X(value_addr[4]) );
  SAEDRVT14_EN3_1 U36 ( .A1(count_j_p[4]), .A2(\count_i_p[4] ), .A3(
        \add_2_root_add_0_root_add_77_3/carry[4] ), .X(n18) );
  SAEDRVT14_OR2_MM_0P5 U37 ( .A1(N9), .A2(N10), .X(n17) );
  SAEDRVT14_INV_1 U38 ( .A(temp_out_p[0]), .X(n19) );
  SAEDRVT14_INV_1 U39 ( .A(temp_out_p[6]), .X(n25) );
  SAEDRVT14_AO22_1 U40 ( .A1(temp_out_p[6]), .A2(n26), .B1(N31), .B2(
        temp_out_p[7]), .X(temp_out[6]) );
  SAEDRVT14_AN2_MM_1 U41 ( .A1(temp_add[0]), .A2(SAD_sel), .X(SAD_in[0]) );
  SAEDRVT14_AN2_MM_1 U42 ( .A1(temp_add[7]), .A2(SAD_sel), .X(SAD_in[7]) );
  SAEDRVT14_AN2_MM_1 U45 ( .A1(N32), .A2(temp_out_p[7]), .X(temp_out[7]) );
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

