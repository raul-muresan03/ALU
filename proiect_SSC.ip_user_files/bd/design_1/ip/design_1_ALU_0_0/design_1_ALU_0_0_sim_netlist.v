// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 23 13:21:09 2024
// Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_sim_netlist.v
// Design      : design_1_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ALU_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ALU_0_0
   (A,
    B,
    result,
    operation,
    overflow,
    zero,
    clk);
  input [31:0]A;
  input [31:0]B;
  output [31:0]result;
  input [1:0]operation;
  output overflow;
  output zero;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;

  wire [31:0]A;
  wire [31:0]B;
  wire clk;
  wire [1:0]operation;
  wire overflow;
  wire [31:0]result;
  wire zero;

  design_1_ALU_0_0_ALU U0
       (.A(A),
        .B(B),
        .clk(clk),
        .operation(operation),
        .overflow(overflow),
        .result(result),
        .zero(zero));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module design_1_ALU_0_0_ALU
   (result,
    overflow,
    zero,
    A,
    B,
    clk,
    operation);
  output [31:0]result;
  output overflow;
  output zero;
  input [31:0]A;
  input [31:0]B;
  input clk;
  input [1:0]operation;

  wire [31:0]A;
  wire [31:0]B;
  wire DIV1_n_10;
  wire DIV1_n_2;
  wire DIV1_n_3;
  wire DIV1_n_4;
  wire DIV1_n_5;
  wire DIV1_n_6;
  wire DIV1_n_7;
  wire DIV1_n_8;
  wire DIV1_n_9;
  wire SUB1_n_10;
  wire SUB1_n_11;
  wire SUB1_n_2;
  wire SUB1_n_3;
  wire SUB1_n_4;
  wire SUB1_n_5;
  wire SUB1_n_6;
  wire SUB1_n_7;
  wire SUB1_n_8;
  wire SUB1_n_9;
  wire clk;
  wire [6:0]minusOp;
  wire [1:0]operation;
  wire overflow;
  wire overflow1;
  wire overflow2;
  wire overflow3;
  wire overflow4;
  wire overflow__0_n_0;
  wire [31:0]p_0_in;
  wire [31:0]result;
  wire [31:0]result1;
  wire [31:0]result2;
  wire [31:0]result3;
  wire [31:0]result4;
  wire zero;
  wire zero1;
  wire zero2;
  wire zero3;
  wire zero4;
  wire zero__0_n_0;

  design_1_ALU_0_0_add ADD1
       (.A({A[31],A[22:0]}),
        .B({B[31],B[22:0]}),
        .D({SUB1_n_2,SUB1_n_3,minusOp}),
        .Q(result1),
        .clk(clk),
        .\exp_A_reg[8]_0 ({DIV1_n_2,DIV1_n_3,SUB1_n_5,SUB1_n_6,SUB1_n_7,SUB1_n_8,SUB1_n_9,SUB1_n_10,SUB1_n_11}),
        .overflow1(overflow1),
        .zero1(zero1));
  design_1_ALU_0_0_div DIV1
       (.A(A),
        .A_0_sp_1(DIV1_n_6),
        .A_19_sp_1(DIV1_n_8),
        .A_25_sp_1(DIV1_n_7),
        .A_28_sp_1(DIV1_n_4),
        .B(B),
        .\B[29] (minusOp),
        .B_0_sp_1(DIV1_n_5),
        .B_19_sp_1(DIV1_n_10),
        .B_25_sp_1(DIV1_n_9),
        .D({DIV1_n_2,DIV1_n_3}),
        .clk(clk),
        .\exp_A_reg[6]_0 ({SUB1_n_5,SUB1_n_6,SUB1_n_7,SUB1_n_8,SUB1_n_9,SUB1_n_10,SUB1_n_11}),
        .\exp_B_reg[6]_0 (SUB1_n_4),
        .\exp_B_reg[8]_0 ({SUB1_n_2,SUB1_n_3}),
        .overflow4(overflow4),
        .result4(result4),
        .zero4(zero4));
  design_1_ALU_0_0_mul MUL1
       (.A(A),
        .B(B),
        .\FSM_sequential_stare[2]_i_2_0 (DIV1_n_8),
        .\FSM_sequential_stare[2]_i_2_1 (DIV1_n_7),
        .\FSM_sequential_stare[2]_i_2_2 (DIV1_n_10),
        .\FSM_sequential_stare[2]_i_2_3 (DIV1_n_9),
        .\FSM_sequential_stare_reg[2]_0 (DIV1_n_5),
        .\FSM_sequential_stare_reg[2]_1 (DIV1_n_6),
        .clk(clk),
        .overflow3(overflow3),
        .result3(result3),
        .zero3(zero3));
  design_1_ALU_0_0_sub SUB1
       (.A({A[31],A[29:0]}),
        .\A[29] ({SUB1_n_5,SUB1_n_6,SUB1_n_7,SUB1_n_8,SUB1_n_9,SUB1_n_10,SUB1_n_11}),
        .B(B),
        .B_28_sp_1(SUB1_n_4),
        .D({SUB1_n_2,SUB1_n_3}),
        .Q(result2),
        .clk(clk),
        .\exp_A_reg[6]_0 (DIV1_n_4),
        .\exp_A_reg[8]_0 ({DIV1_n_2,DIV1_n_3}),
        .\exp_B_reg[6]_0 (minusOp),
        .overflow2(overflow2),
        .zero2(zero2));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    overflow__0
       (.I0(overflow2),
        .I1(overflow1),
        .I2(overflow4),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(overflow3),
        .O(overflow__0_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow__0_n_0),
        .Q(overflow),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[0]_i_1__0 
       (.I0(result2[0]),
        .I1(result1[0]),
        .I2(result4[0]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[10]_i_1__0 
       (.I0(result2[10]),
        .I1(result1[10]),
        .I2(result4[10]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[11]_i_1__0 
       (.I0(result2[11]),
        .I1(result1[11]),
        .I2(result4[11]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[12]_i_1__0 
       (.I0(result2[12]),
        .I1(result1[12]),
        .I2(result4[12]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[13]_i_1__0 
       (.I0(result2[13]),
        .I1(result1[13]),
        .I2(result4[13]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[14]_i_1__0 
       (.I0(result2[14]),
        .I1(result1[14]),
        .I2(result4[14]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[15]_i_1__0 
       (.I0(result2[15]),
        .I1(result1[15]),
        .I2(result4[15]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[16]_i_1__0 
       (.I0(result2[16]),
        .I1(result1[16]),
        .I2(result4[16]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[16]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[17]_i_1__0 
       (.I0(result2[17]),
        .I1(result1[17]),
        .I2(result4[17]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[18]_i_1__0 
       (.I0(result2[18]),
        .I1(result1[18]),
        .I2(result4[18]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[19]_i_1__0 
       (.I0(result2[19]),
        .I1(result1[19]),
        .I2(result4[19]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[1]_i_1__0 
       (.I0(result2[1]),
        .I1(result1[1]),
        .I2(result4[1]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[20]_i_1__0 
       (.I0(result2[20]),
        .I1(result1[20]),
        .I2(result4[20]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[20]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[21]_i_1__1 
       (.I0(result2[21]),
        .I1(result1[21]),
        .I2(result4[21]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[22]_i_1__1 
       (.I0(result2[22]),
        .I1(result1[22]),
        .I2(result4[22]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[22]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[23]_i_1__2 
       (.I0(result2[23]),
        .I1(result1[23]),
        .I2(result4[23]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[23]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[24]_i_1__2 
       (.I0(result2[24]),
        .I1(result1[24]),
        .I2(result4[24]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[24]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[25]_i_1__1 
       (.I0(result2[25]),
        .I1(result1[25]),
        .I2(result4[25]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[26]_i_1__1 
       (.I0(result2[26]),
        .I1(result1[26]),
        .I2(result4[26]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[26]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[27]_i_1__1 
       (.I0(result2[27]),
        .I1(result1[27]),
        .I2(result4[27]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[27]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[28]_i_1__1 
       (.I0(result2[28]),
        .I1(result1[28]),
        .I2(result4[28]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[28]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[29]_i_1__1 
       (.I0(result2[29]),
        .I1(result1[29]),
        .I2(result4[29]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[2]_i_1__0 
       (.I0(result2[2]),
        .I1(result1[2]),
        .I2(result4[2]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[30]_i_1__1 
       (.I0(result2[30]),
        .I1(result1[30]),
        .I2(result4[30]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[30]),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[31]_i_1__3 
       (.I0(result2[31]),
        .I1(result1[31]),
        .I2(result4[31]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[31]),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[3]_i_1__0 
       (.I0(result2[3]),
        .I1(result1[3]),
        .I2(result4[3]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[4]_i_1__0 
       (.I0(result2[4]),
        .I1(result1[4]),
        .I2(result4[4]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[5]_i_1__0 
       (.I0(result2[5]),
        .I1(result1[5]),
        .I2(result4[5]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[6]_i_1__0 
       (.I0(result2[6]),
        .I1(result1[6]),
        .I2(result4[6]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[7]_i_1__0 
       (.I0(result2[7]),
        .I1(result1[7]),
        .I2(result4[7]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[8]_i_1__0 
       (.I0(result2[8]),
        .I1(result1[8]),
        .I2(result4[8]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \result[9]_i_1__0 
       (.I0(result2[9]),
        .I1(result1[9]),
        .I2(result4[9]),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(result3[9]),
        .O(p_0_in[9]));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(result[0]),
        .R(1'b0));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(result[10]),
        .R(1'b0));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(result[11]),
        .R(1'b0));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(result[12]),
        .R(1'b0));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(result[13]),
        .R(1'b0));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(result[14]),
        .R(1'b0));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(result[15]),
        .R(1'b0));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(result[16]),
        .R(1'b0));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(result[17]),
        .R(1'b0));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(result[18]),
        .R(1'b0));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(result[19]),
        .R(1'b0));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(result[1]),
        .R(1'b0));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(result[20]),
        .R(1'b0));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(result[21]),
        .R(1'b0));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(result[22]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(result[23]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(result[24]),
        .R(1'b0));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(result[25]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(result[26]),
        .R(1'b0));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(result[27]),
        .R(1'b0));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(result[28]),
        .R(1'b0));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[29]),
        .Q(result[29]),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(result[2]),
        .R(1'b0));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[30]),
        .Q(result[30]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[31]),
        .Q(result[31]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(result[3]),
        .R(1'b0));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(result[4]),
        .R(1'b0));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(result[5]),
        .R(1'b0));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(result[6]),
        .R(1'b0));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(result[7]),
        .R(1'b0));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(result[8]),
        .R(1'b0));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(result[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    zero__0
       (.I0(zero2),
        .I1(zero1),
        .I2(zero4),
        .I3(operation[1]),
        .I4(operation[0]),
        .I5(zero3),
        .O(zero__0_n_0));
  FDRE zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(zero__0_n_0),
        .Q(zero),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "add" *) 
module design_1_ALU_0_0_add
   (overflow1,
    zero1,
    Q,
    A,
    clk,
    B,
    D,
    \exp_A_reg[8]_0 );
  output overflow1;
  output zero1;
  output [31:0]Q;
  input [23:0]A;
  input clk;
  input [23:0]B;
  input [8:0]D;
  input [8:0]\exp_A_reg[8]_0 ;

  wire [23:0]A;
  wire [23:0]B;
  wire [8:0]D;
  wire \FSM_sequential_stare[0]_i_1_n_0 ;
  wire \FSM_sequential_stare[1]_i_1_n_0 ;
  wire \FSM_sequential_stare[2]_i_1_n_0 ;
  wire [31:0]Q;
  wire clk;
  wire [8:0]\exp_A_reg[8]_0 ;
  wire \exp_A_reg_n_0_[0] ;
  wire \exp_A_reg_n_0_[1] ;
  wire \exp_A_reg_n_0_[2] ;
  wire \exp_A_reg_n_0_[3] ;
  wire \exp_A_reg_n_0_[4] ;
  wire \exp_A_reg_n_0_[5] ;
  wire \exp_A_reg_n_0_[6] ;
  wire \exp_A_reg_n_0_[7] ;
  wire \exp_A_reg_n_0_[8] ;
  wire [8:0]exp_B;
  wire \exp_result[0]_i_1__0_n_0 ;
  wire \exp_result[1]_i_1__1_n_0 ;
  wire \exp_result[2]_i_1__1_n_0 ;
  wire \exp_result[3]_i_1__1_n_0 ;
  wire \exp_result[4]_i_1_n_0 ;
  wire \exp_result[5]_i_1__1_n_0 ;
  wire \exp_result[6]_i_1__1_n_0 ;
  wire \exp_result[7]_i_1__1_n_0 ;
  wire \exp_result[8]_i_1__1_n_0 ;
  wire \exp_result[8]_i_2__1_n_0 ;
  wire \exp_result[8]_i_3_n_0 ;
  wire \exp_result[8]_i_4_n_0 ;
  wire \exp_result[8]_i_5_n_0 ;
  wire \exp_result[8]_i_6_n_0 ;
  wire \exp_result[8]_i_7_n_0 ;
  wire \exp_result[8]_i_8_n_0 ;
  wire \exp_result[8]_i_9_n_0 ;
  wire [8:8]exp_result_reg;
  wire [7:0]exp_result_reg__0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [22:0]mantisa_a;
  wire [22:0]mantisa_b;
  wire [24:0]mantisa_result;
  wire [24:0]mantisa_result0;
  wire mantisa_result0_carry__0_i_1_n_0;
  wire mantisa_result0_carry__0_i_2_n_0;
  wire mantisa_result0_carry__0_i_3_n_0;
  wire mantisa_result0_carry__0_i_4_n_0;
  wire mantisa_result0_carry__0_i_5_n_0;
  wire mantisa_result0_carry__0_i_6_n_0;
  wire mantisa_result0_carry__0_i_7_n_0;
  wire mantisa_result0_carry__0_i_8_n_0;
  wire mantisa_result0_carry__0_n_0;
  wire mantisa_result0_carry__0_n_1;
  wire mantisa_result0_carry__0_n_2;
  wire mantisa_result0_carry__0_n_3;
  wire mantisa_result0_carry__1_i_1_n_0;
  wire mantisa_result0_carry__1_i_2_n_0;
  wire mantisa_result0_carry__1_i_3_n_0;
  wire mantisa_result0_carry__1_i_4_n_0;
  wire mantisa_result0_carry__1_i_5_n_0;
  wire mantisa_result0_carry__1_i_6_n_0;
  wire mantisa_result0_carry__1_i_7_n_0;
  wire mantisa_result0_carry__1_i_8_n_0;
  wire mantisa_result0_carry__1_n_0;
  wire mantisa_result0_carry__1_n_1;
  wire mantisa_result0_carry__1_n_2;
  wire mantisa_result0_carry__1_n_3;
  wire mantisa_result0_carry__2_i_1_n_0;
  wire mantisa_result0_carry__2_i_2_n_0;
  wire mantisa_result0_carry__2_i_3_n_0;
  wire mantisa_result0_carry__2_i_4_n_0;
  wire mantisa_result0_carry__2_i_5_n_0;
  wire mantisa_result0_carry__2_i_6_n_0;
  wire mantisa_result0_carry__2_i_7_n_0;
  wire mantisa_result0_carry__2_i_8_n_0;
  wire mantisa_result0_carry__2_n_0;
  wire mantisa_result0_carry__2_n_1;
  wire mantisa_result0_carry__2_n_2;
  wire mantisa_result0_carry__2_n_3;
  wire mantisa_result0_carry__3_i_1_n_0;
  wire mantisa_result0_carry__3_i_2_n_0;
  wire mantisa_result0_carry__3_i_3_n_0;
  wire mantisa_result0_carry__3_i_4_n_0;
  wire mantisa_result0_carry__3_i_5_n_0;
  wire mantisa_result0_carry__3_i_6_n_0;
  wire mantisa_result0_carry__3_i_7_n_0;
  wire mantisa_result0_carry__3_i_8_n_0;
  wire mantisa_result0_carry__3_n_0;
  wire mantisa_result0_carry__3_n_1;
  wire mantisa_result0_carry__3_n_2;
  wire mantisa_result0_carry__3_n_3;
  wire mantisa_result0_carry__4_i_1_n_0;
  wire mantisa_result0_carry__4_i_2_n_0;
  wire mantisa_result0_carry__4_i_3_n_0;
  wire mantisa_result0_carry__4_i_4_n_0;
  wire mantisa_result0_carry__4_i_5_n_0;
  wire mantisa_result0_carry__4_i_6_n_0;
  wire mantisa_result0_carry__4_i_7_n_0;
  wire mantisa_result0_carry__4_n_0;
  wire mantisa_result0_carry__4_n_1;
  wire mantisa_result0_carry__4_n_2;
  wire mantisa_result0_carry__4_n_3;
  wire mantisa_result0_carry_i_1_n_0;
  wire mantisa_result0_carry_i_2_n_0;
  wire mantisa_result0_carry_i_3_n_0;
  wire mantisa_result0_carry_i_4_n_0;
  wire mantisa_result0_carry_i_5_n_0;
  wire mantisa_result0_carry_i_6_n_0;
  wire mantisa_result0_carry_i_7_n_0;
  wire mantisa_result0_carry_i_8_n_0;
  wire mantisa_result0_carry_n_0;
  wire mantisa_result0_carry_n_1;
  wire mantisa_result0_carry_n_2;
  wire mantisa_result0_carry_n_3;
  wire \mantisa_result[0]_i_1_n_0 ;
  wire \mantisa_result[10]_i_1_n_0 ;
  wire \mantisa_result[11]_i_1_n_0 ;
  wire \mantisa_result[11]_i_3_n_0 ;
  wire \mantisa_result[11]_i_4_n_0 ;
  wire \mantisa_result[11]_i_5_n_0 ;
  wire \mantisa_result[11]_i_6_n_0 ;
  wire \mantisa_result[12]_i_1_n_0 ;
  wire \mantisa_result[13]_i_1_n_0 ;
  wire \mantisa_result[14]_i_1_n_0 ;
  wire \mantisa_result[15]_i_1_n_0 ;
  wire \mantisa_result[15]_i_3_n_0 ;
  wire \mantisa_result[15]_i_4_n_0 ;
  wire \mantisa_result[15]_i_5_n_0 ;
  wire \mantisa_result[15]_i_6_n_0 ;
  wire \mantisa_result[16]_i_1_n_0 ;
  wire \mantisa_result[17]_i_1_n_0 ;
  wire \mantisa_result[18]_i_1_n_0 ;
  wire \mantisa_result[19]_i_1_n_0 ;
  wire \mantisa_result[19]_i_3_n_0 ;
  wire \mantisa_result[19]_i_4_n_0 ;
  wire \mantisa_result[19]_i_5_n_0 ;
  wire \mantisa_result[19]_i_6_n_0 ;
  wire \mantisa_result[1]_i_1_n_0 ;
  wire \mantisa_result[20]_i_1_n_0 ;
  wire \mantisa_result[21]_i_1_n_0 ;
  wire \mantisa_result[22]_i_1_n_0 ;
  wire \mantisa_result[23]_i_1_n_0 ;
  wire \mantisa_result[23]_i_2_n_0 ;
  wire \mantisa_result[23]_i_4_n_0 ;
  wire \mantisa_result[23]_i_5_n_0 ;
  wire \mantisa_result[23]_i_6_n_0 ;
  wire \mantisa_result[23]_i_7_n_0 ;
  wire \mantisa_result[24]_i_1_n_0 ;
  wire \mantisa_result[24]_i_2_n_0 ;
  wire \mantisa_result[2]_i_1_n_0 ;
  wire \mantisa_result[3]_i_1_n_0 ;
  wire \mantisa_result[3]_i_3_n_0 ;
  wire \mantisa_result[3]_i_4_n_0 ;
  wire \mantisa_result[3]_i_5_n_0 ;
  wire \mantisa_result[3]_i_6_n_0 ;
  wire \mantisa_result[4]_i_1_n_0 ;
  wire \mantisa_result[5]_i_1_n_0 ;
  wire \mantisa_result[6]_i_1_n_0 ;
  wire \mantisa_result[7]_i_1_n_0 ;
  wire \mantisa_result[7]_i_3_n_0 ;
  wire \mantisa_result[7]_i_4_n_0 ;
  wire \mantisa_result[7]_i_5_n_0 ;
  wire \mantisa_result[7]_i_6_n_0 ;
  wire \mantisa_result[8]_i_1_n_0 ;
  wire \mantisa_result[9]_i_1_n_0 ;
  wire [23:0]mantisa_result__0;
  wire \mantisa_result_reg[11]_i_2_n_0 ;
  wire \mantisa_result_reg[11]_i_2_n_1 ;
  wire \mantisa_result_reg[11]_i_2_n_2 ;
  wire \mantisa_result_reg[11]_i_2_n_3 ;
  wire \mantisa_result_reg[15]_i_2_n_0 ;
  wire \mantisa_result_reg[15]_i_2_n_1 ;
  wire \mantisa_result_reg[15]_i_2_n_2 ;
  wire \mantisa_result_reg[15]_i_2_n_3 ;
  wire \mantisa_result_reg[19]_i_2_n_0 ;
  wire \mantisa_result_reg[19]_i_2_n_1 ;
  wire \mantisa_result_reg[19]_i_2_n_2 ;
  wire \mantisa_result_reg[19]_i_2_n_3 ;
  wire \mantisa_result_reg[23]_i_3_n_0 ;
  wire \mantisa_result_reg[23]_i_3_n_1 ;
  wire \mantisa_result_reg[23]_i_3_n_2 ;
  wire \mantisa_result_reg[23]_i_3_n_3 ;
  wire \mantisa_result_reg[24]_i_4_n_3 ;
  wire \mantisa_result_reg[3]_i_2_n_0 ;
  wire \mantisa_result_reg[3]_i_2_n_1 ;
  wire \mantisa_result_reg[3]_i_2_n_2 ;
  wire \mantisa_result_reg[3]_i_2_n_3 ;
  wire \mantisa_result_reg[7]_i_2_n_0 ;
  wire \mantisa_result_reg[7]_i_2_n_1 ;
  wire \mantisa_result_reg[7]_i_2_n_2 ;
  wire \mantisa_result_reg[7]_i_2_n_3 ;
  wire mantisa_shifted;
  wire mantisa_shifted1_carry__0_i_1_n_0;
  wire mantisa_shifted1_carry__0_i_2_n_0;
  wire mantisa_shifted1_carry__0_n_3;
  wire mantisa_shifted1_carry_i_1_n_0;
  wire mantisa_shifted1_carry_i_2_n_0;
  wire mantisa_shifted1_carry_i_3_n_0;
  wire mantisa_shifted1_carry_i_4_n_0;
  wire mantisa_shifted1_carry_i_5_n_0;
  wire mantisa_shifted1_carry_i_6_n_0;
  wire mantisa_shifted1_carry_i_7_n_0;
  wire mantisa_shifted1_carry_i_8_n_0;
  wire mantisa_shifted1_carry_n_0;
  wire mantisa_shifted1_carry_n_1;
  wire mantisa_shifted1_carry_n_2;
  wire mantisa_shifted1_carry_n_3;
  wire \mantisa_shifted1_inferred__0/i__carry__0_n_3 ;
  wire \mantisa_shifted1_inferred__0/i__carry_n_0 ;
  wire \mantisa_shifted1_inferred__0/i__carry_n_1 ;
  wire \mantisa_shifted1_inferred__0/i__carry_n_2 ;
  wire \mantisa_shifted1_inferred__0/i__carry_n_3 ;
  wire \mantisa_shifted[0]_i_2_n_0 ;
  wire \mantisa_shifted[0]_i_3_n_0 ;
  wire \mantisa_shifted[0]_i_4_n_0 ;
  wire \mantisa_shifted[0]_i_5_n_0 ;
  wire \mantisa_shifted[0]_i_6_n_0 ;
  wire \mantisa_shifted[0]_i_7_n_0 ;
  wire \mantisa_shifted[0]_i_8_n_0 ;
  wire \mantisa_shifted[10]_i_2_n_0 ;
  wire \mantisa_shifted[10]_i_3_n_0 ;
  wire \mantisa_shifted[10]_i_4_n_0 ;
  wire \mantisa_shifted[10]_i_5_n_0 ;
  wire \mantisa_shifted[10]_i_6_n_0 ;
  wire \mantisa_shifted[10]_i_7_n_0 ;
  wire \mantisa_shifted[10]_i_8_n_0 ;
  wire \mantisa_shifted[10]_i_9_n_0 ;
  wire \mantisa_shifted[11]_i_2_n_0 ;
  wire \mantisa_shifted[11]_i_3_n_0 ;
  wire \mantisa_shifted[11]_i_4_n_0 ;
  wire \mantisa_shifted[11]_i_5_n_0 ;
  wire \mantisa_shifted[11]_i_6_n_0 ;
  wire \mantisa_shifted[12]_i_2_n_0 ;
  wire \mantisa_shifted[12]_i_3_n_0 ;
  wire \mantisa_shifted[12]_i_4_n_0 ;
  wire \mantisa_shifted[12]_i_5_n_0 ;
  wire \mantisa_shifted[12]_i_6_n_0 ;
  wire \mantisa_shifted[12]_i_7_n_0 ;
  wire \mantisa_shifted[13]_i_2_n_0 ;
  wire \mantisa_shifted[13]_i_3_n_0 ;
  wire \mantisa_shifted[13]_i_4_n_0 ;
  wire \mantisa_shifted[13]_i_5_n_0 ;
  wire \mantisa_shifted[13]_i_6_n_0 ;
  wire \mantisa_shifted[13]_i_7_n_0 ;
  wire \mantisa_shifted[14]_i_2_n_0 ;
  wire \mantisa_shifted[14]_i_3_n_0 ;
  wire \mantisa_shifted[14]_i_4_n_0 ;
  wire \mantisa_shifted[14]_i_5_n_0 ;
  wire \mantisa_shifted[14]_i_6_n_0 ;
  wire \mantisa_shifted[14]_i_7_n_0 ;
  wire \mantisa_shifted[15]_i_2_n_0 ;
  wire \mantisa_shifted[15]_i_3_n_0 ;
  wire \mantisa_shifted[15]_i_4_n_0 ;
  wire \mantisa_shifted[15]_i_5_n_0 ;
  wire \mantisa_shifted[15]_i_6_n_0 ;
  wire \mantisa_shifted[15]_i_7_n_0 ;
  wire \mantisa_shifted[16]_i_2_n_0 ;
  wire \mantisa_shifted[16]_i_3_n_0 ;
  wire \mantisa_shifted[16]_i_4_n_0 ;
  wire \mantisa_shifted[16]_i_5_n_0 ;
  wire \mantisa_shifted[16]_i_6_n_0 ;
  wire \mantisa_shifted[17]_i_2_n_0 ;
  wire \mantisa_shifted[17]_i_3_n_0 ;
  wire \mantisa_shifted[17]_i_4_n_0 ;
  wire \mantisa_shifted[17]_i_5_n_0 ;
  wire \mantisa_shifted[17]_i_6_n_0 ;
  wire \mantisa_shifted[17]_i_7_n_0 ;
  wire \mantisa_shifted[18]_i_2_n_0 ;
  wire \mantisa_shifted[18]_i_3_n_0 ;
  wire \mantisa_shifted[18]_i_4_n_0 ;
  wire \mantisa_shifted[18]_i_5_n_0 ;
  wire \mantisa_shifted[18]_i_6_n_0 ;
  wire \mantisa_shifted[19]_i_1_n_0 ;
  wire \mantisa_shifted[19]_i_2_n_0 ;
  wire \mantisa_shifted[19]_i_3_n_0 ;
  wire \mantisa_shifted[19]_i_4_n_0 ;
  wire \mantisa_shifted[19]_i_5_n_0 ;
  wire \mantisa_shifted[19]_i_6_n_0 ;
  wire \mantisa_shifted[1]_i_2_n_0 ;
  wire \mantisa_shifted[1]_i_3_n_0 ;
  wire \mantisa_shifted[1]_i_4_n_0 ;
  wire \mantisa_shifted[1]_i_5_n_0 ;
  wire \mantisa_shifted[1]_i_6_n_0 ;
  wire \mantisa_shifted[1]_i_7_n_0 ;
  wire \mantisa_shifted[20]_i_2_n_0 ;
  wire \mantisa_shifted[20]_i_3_n_0 ;
  wire \mantisa_shifted[20]_i_4_n_0 ;
  wire \mantisa_shifted[20]_i_5_n_0 ;
  wire \mantisa_shifted[21]_i_2_n_0 ;
  wire \mantisa_shifted[21]_i_3_n_0 ;
  wire \mantisa_shifted[21]_i_4_n_0 ;
  wire \mantisa_shifted[21]_i_5_n_0 ;
  wire \mantisa_shifted[21]_i_6_n_0 ;
  wire \mantisa_shifted[21]_i_7_n_0 ;
  wire \mantisa_shifted[22]_i_1_n_0 ;
  wire \mantisa_shifted[22]_i_2_n_0 ;
  wire \mantisa_shifted[22]_i_3_n_0 ;
  wire \mantisa_shifted[23]_i_3_n_0 ;
  wire \mantisa_shifted[23]_i_4_n_0 ;
  wire \mantisa_shifted[23]_i_5_n_0 ;
  wire \mantisa_shifted[23]_i_6_n_0 ;
  wire \mantisa_shifted[2]_i_2_n_0 ;
  wire \mantisa_shifted[2]_i_3_n_0 ;
  wire \mantisa_shifted[2]_i_4_n_0 ;
  wire \mantisa_shifted[2]_i_5_n_0 ;
  wire \mantisa_shifted[2]_i_6_n_0 ;
  wire \mantisa_shifted[2]_i_7_n_0 ;
  wire \mantisa_shifted[3]_i_2_n_0 ;
  wire \mantisa_shifted[3]_i_3_n_0 ;
  wire \mantisa_shifted[3]_i_4_n_0 ;
  wire \mantisa_shifted[3]_i_5_n_0 ;
  wire \mantisa_shifted[3]_i_6_n_0 ;
  wire \mantisa_shifted[3]_i_7_n_0 ;
  wire \mantisa_shifted[4]_i_2_n_0 ;
  wire \mantisa_shifted[4]_i_3_n_0 ;
  wire \mantisa_shifted[4]_i_4_n_0 ;
  wire \mantisa_shifted[4]_i_5_n_0 ;
  wire \mantisa_shifted[4]_i_6_n_0 ;
  wire \mantisa_shifted[4]_i_7_n_0 ;
  wire \mantisa_shifted[5]_i_2_n_0 ;
  wire \mantisa_shifted[5]_i_3_n_0 ;
  wire \mantisa_shifted[5]_i_4_n_0 ;
  wire \mantisa_shifted[5]_i_5_n_0 ;
  wire \mantisa_shifted[5]_i_6_n_0 ;
  wire \mantisa_shifted[5]_i_7_n_0 ;
  wire \mantisa_shifted[6]_i_2_n_0 ;
  wire \mantisa_shifted[6]_i_3_n_0 ;
  wire \mantisa_shifted[6]_i_4_n_0 ;
  wire \mantisa_shifted[6]_i_5_n_0 ;
  wire \mantisa_shifted[6]_i_6_n_0 ;
  wire \mantisa_shifted[6]_i_7_n_0 ;
  wire \mantisa_shifted[7]_i_2_n_0 ;
  wire \mantisa_shifted[7]_i_3_n_0 ;
  wire \mantisa_shifted[7]_i_4_n_0 ;
  wire \mantisa_shifted[7]_i_5_n_0 ;
  wire \mantisa_shifted[7]_i_6_n_0 ;
  wire \mantisa_shifted[7]_i_7_n_0 ;
  wire \mantisa_shifted[7]_i_8_n_0 ;
  wire \mantisa_shifted[7]_i_9_n_0 ;
  wire \mantisa_shifted[8]_i_2_n_0 ;
  wire \mantisa_shifted[8]_i_3_n_0 ;
  wire \mantisa_shifted[8]_i_4_n_0 ;
  wire \mantisa_shifted[8]_i_5_n_0 ;
  wire \mantisa_shifted[8]_i_6_n_0 ;
  wire \mantisa_shifted[8]_i_7_n_0 ;
  wire \mantisa_shifted[8]_i_8_n_0 ;
  wire \mantisa_shifted[8]_i_9_n_0 ;
  wire \mantisa_shifted[9]_i_2_n_0 ;
  wire \mantisa_shifted[9]_i_3_n_0 ;
  wire \mantisa_shifted[9]_i_4_n_0 ;
  wire \mantisa_shifted[9]_i_5_n_0 ;
  wire \mantisa_shifted[9]_i_6_n_0 ;
  wire \mantisa_shifted[9]_i_7_n_0 ;
  wire \mantisa_shifted[9]_i_8_n_0 ;
  wire \mantisa_shifted[9]_i_9_n_0 ;
  wire \mantisa_shifted_reg[0]_i_1_n_0 ;
  wire \mantisa_shifted_reg[10]_i_1_n_0 ;
  wire \mantisa_shifted_reg[11]_i_1_n_0 ;
  wire \mantisa_shifted_reg[12]_i_1_n_0 ;
  wire \mantisa_shifted_reg[13]_i_1_n_0 ;
  wire \mantisa_shifted_reg[14]_i_1_n_0 ;
  wire \mantisa_shifted_reg[15]_i_1_n_0 ;
  wire \mantisa_shifted_reg[16]_i_1_n_0 ;
  wire \mantisa_shifted_reg[17]_i_1_n_0 ;
  wire \mantisa_shifted_reg[18]_i_1_n_0 ;
  wire \mantisa_shifted_reg[1]_i_1_n_0 ;
  wire \mantisa_shifted_reg[20]_i_1_n_0 ;
  wire \mantisa_shifted_reg[21]_i_1_n_0 ;
  wire \mantisa_shifted_reg[23]_i_2_n_0 ;
  wire \mantisa_shifted_reg[2]_i_1_n_0 ;
  wire \mantisa_shifted_reg[3]_i_1_n_0 ;
  wire \mantisa_shifted_reg[4]_i_1_n_0 ;
  wire \mantisa_shifted_reg[5]_i_1_n_0 ;
  wire \mantisa_shifted_reg[6]_i_1_n_0 ;
  wire \mantisa_shifted_reg[7]_i_1_n_0 ;
  wire \mantisa_shifted_reg[8]_i_1_n_0 ;
  wire \mantisa_shifted_reg[9]_i_1_n_0 ;
  wire \mantisa_shifted_reg_n_0_[0] ;
  wire \mantisa_shifted_reg_n_0_[10] ;
  wire \mantisa_shifted_reg_n_0_[11] ;
  wire \mantisa_shifted_reg_n_0_[12] ;
  wire \mantisa_shifted_reg_n_0_[13] ;
  wire \mantisa_shifted_reg_n_0_[14] ;
  wire \mantisa_shifted_reg_n_0_[15] ;
  wire \mantisa_shifted_reg_n_0_[16] ;
  wire \mantisa_shifted_reg_n_0_[17] ;
  wire \mantisa_shifted_reg_n_0_[18] ;
  wire \mantisa_shifted_reg_n_0_[19] ;
  wire \mantisa_shifted_reg_n_0_[1] ;
  wire \mantisa_shifted_reg_n_0_[20] ;
  wire \mantisa_shifted_reg_n_0_[21] ;
  wire \mantisa_shifted_reg_n_0_[22] ;
  wire \mantisa_shifted_reg_n_0_[23] ;
  wire \mantisa_shifted_reg_n_0_[2] ;
  wire \mantisa_shifted_reg_n_0_[3] ;
  wire \mantisa_shifted_reg_n_0_[4] ;
  wire \mantisa_shifted_reg_n_0_[5] ;
  wire \mantisa_shifted_reg_n_0_[6] ;
  wire \mantisa_shifted_reg_n_0_[7] ;
  wire \mantisa_shifted_reg_n_0_[8] ;
  wire \mantisa_shifted_reg_n_0_[9] ;
  wire [8:0]minusOp0_out;
  wire [8:0]minusOp2_out;
  wire \minusOp_inferred__1/i__carry__0_n_0 ;
  wire \minusOp_inferred__1/i__carry__0_n_1 ;
  wire \minusOp_inferred__1/i__carry__0_n_2 ;
  wire \minusOp_inferred__1/i__carry__0_n_3 ;
  wire \minusOp_inferred__1/i__carry_n_0 ;
  wire \minusOp_inferred__1/i__carry_n_1 ;
  wire \minusOp_inferred__1/i__carry_n_2 ;
  wire \minusOp_inferred__1/i__carry_n_3 ;
  wire \minusOp_inferred__2/i__carry__0_n_0 ;
  wire \minusOp_inferred__2/i__carry__0_n_1 ;
  wire \minusOp_inferred__2/i__carry__0_n_2 ;
  wire \minusOp_inferred__2/i__carry__0_n_3 ;
  wire \minusOp_inferred__2/i__carry_n_0 ;
  wire \minusOp_inferred__2/i__carry_n_1 ;
  wire \minusOp_inferred__2/i__carry_n_2 ;
  wire \minusOp_inferred__2/i__carry_n_3 ;
  wire overflow1;
  wire overflow_i_1_n_0;
  wire \result[31]_i_1__0_n_0 ;
  wire semn_A;
  wire semn_A_reg_n_0;
  wire semn_B;
  wire semn_result;
  wire semn_result1_carry__0_i_1_n_0;
  wire semn_result1_carry__0_i_2_n_0;
  wire semn_result1_carry__0_i_3_n_0;
  wire semn_result1_carry__0_i_4_n_0;
  wire semn_result1_carry__0_n_0;
  wire semn_result1_carry__0_n_1;
  wire semn_result1_carry__0_n_2;
  wire semn_result1_carry__0_n_3;
  wire semn_result1_carry_i_1_n_0;
  wire semn_result1_carry_i_2_n_0;
  wire semn_result1_carry_i_3_n_0;
  wire semn_result1_carry_i_4_n_0;
  wire semn_result1_carry_n_0;
  wire semn_result1_carry_n_1;
  wire semn_result1_carry_n_2;
  wire semn_result1_carry_n_3;
  wire \semn_result1_inferred__0/i__carry__0_n_0 ;
  wire \semn_result1_inferred__0/i__carry__0_n_1 ;
  wire \semn_result1_inferred__0/i__carry__0_n_2 ;
  wire \semn_result1_inferred__0/i__carry__0_n_3 ;
  wire \semn_result1_inferred__0/i__carry__1_n_0 ;
  wire \semn_result1_inferred__0/i__carry__1_n_1 ;
  wire \semn_result1_inferred__0/i__carry__1_n_2 ;
  wire \semn_result1_inferred__0/i__carry__1_n_3 ;
  wire \semn_result1_inferred__0/i__carry_n_0 ;
  wire \semn_result1_inferred__0/i__carry_n_1 ;
  wire \semn_result1_inferred__0/i__carry_n_2 ;
  wire \semn_result1_inferred__0/i__carry_n_3 ;
  wire semn_result_i_1_n_0;
  wire semn_result_i_3_n_0;
  wire semn_result_reg_n_0;
  wire [2:0]stare;
  wire zero1;
  wire zero_i_1_n_0;
  wire zero_i_2_n_0;
  wire zero_i_3_n_0;
  wire zero_i_4_n_0;
  wire [3:1]\NLW_mantisa_result_reg[24]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_mantisa_result_reg[24]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_mantisa_result_reg[24]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_mantisa_result_reg[24]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_mantisa_shifted1_carry_O_UNCONNECTED;
  wire [3:1]NLW_mantisa_shifted1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_mantisa_shifted1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_mantisa_shifted1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_mantisa_shifted1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_mantisa_shifted1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_minusOp_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_minusOp_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_minusOp_inferred__2/i__carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_minusOp_inferred__2/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_semn_result1_carry_O_UNCONNECTED;
  wire [3:0]NLW_semn_result1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_stare[0]_i_1 
       (.I0(stare[2]),
        .I1(stare[0]),
        .O(\FSM_sequential_stare[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \FSM_sequential_stare[1]_i_1 
       (.I0(stare[0]),
        .I1(stare[2]),
        .I2(stare[1]),
        .O(\FSM_sequential_stare[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_sequential_stare[2]_i_1 
       (.I0(stare[1]),
        .I1(stare[0]),
        .I2(stare[2]),
        .O(\FSM_sequential_stare[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "aliniereexponenti:001,adunaremantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[0]_i_1_n_0 ),
        .Q(stare[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "aliniereexponenti:001,adunaremantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[1]_i_1_n_0 ),
        .Q(stare[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "aliniereexponenti:001,adunaremantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[2]_i_1_n_0 ),
        .Q(stare[2]),
        .R(1'b0));
  FDRE \exp_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [0]),
        .Q(\exp_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exp_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [1]),
        .Q(\exp_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \exp_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [2]),
        .Q(\exp_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \exp_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [3]),
        .Q(\exp_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \exp_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [4]),
        .Q(\exp_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \exp_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [5]),
        .Q(\exp_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \exp_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [6]),
        .Q(\exp_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \exp_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [7]),
        .Q(\exp_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \exp_A_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [8]),
        .Q(\exp_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \exp_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(D[0]),
        .Q(exp_B[0]),
        .R(1'b0));
  FDRE \exp_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(D[1]),
        .Q(exp_B[1]),
        .R(1'b0));
  FDRE \exp_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(D[2]),
        .Q(exp_B[2]),
        .R(1'b0));
  FDRE \exp_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(D[3]),
        .Q(exp_B[3]),
        .R(1'b0));
  FDRE \exp_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(D[4]),
        .Q(exp_B[4]),
        .R(1'b0));
  FDRE \exp_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(D[5]),
        .Q(exp_B[5]),
        .R(1'b0));
  FDRE \exp_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(D[6]),
        .Q(exp_B[6]),
        .R(1'b0));
  FDRE \exp_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(D[7]),
        .Q(exp_B[7]),
        .R(1'b0));
  FDRE \exp_B_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(D[8]),
        .Q(exp_B[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \exp_result[0]_i_1__0 
       (.I0(exp_result_reg__0[0]),
        .O(\exp_result[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \exp_result[1]_i_1__1 
       (.I0(exp_result_reg__0[0]),
        .I1(exp_result_reg__0[1]),
        .O(\exp_result[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \exp_result[2]_i_1__1 
       (.I0(exp_result_reg__0[2]),
        .I1(exp_result_reg__0[1]),
        .I2(exp_result_reg__0[0]),
        .O(\exp_result[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \exp_result[3]_i_1__1 
       (.I0(exp_result_reg__0[3]),
        .I1(exp_result_reg__0[0]),
        .I2(exp_result_reg__0[1]),
        .I3(exp_result_reg__0[2]),
        .O(\exp_result[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \exp_result[4]_i_1 
       (.I0(exp_result_reg__0[4]),
        .I1(exp_result_reg__0[2]),
        .I2(exp_result_reg__0[1]),
        .I3(exp_result_reg__0[0]),
        .I4(exp_result_reg__0[3]),
        .O(\exp_result[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \exp_result[5]_i_1__1 
       (.I0(exp_result_reg__0[5]),
        .I1(exp_result_reg__0[4]),
        .I2(exp_result_reg__0[3]),
        .I3(exp_result_reg__0[0]),
        .I4(exp_result_reg__0[1]),
        .I5(exp_result_reg__0[2]),
        .O(\exp_result[5]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hA6)) 
    \exp_result[6]_i_1__1 
       (.I0(exp_result_reg__0[6]),
        .I1(\exp_result[8]_i_6_n_0 ),
        .I2(exp_result_reg__0[5]),
        .O(\exp_result[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5565)) 
    \exp_result[7]_i_1__1 
       (.I0(exp_result_reg__0[7]),
        .I1(exp_result_reg__0[5]),
        .I2(\exp_result[8]_i_6_n_0 ),
        .I3(exp_result_reg__0[6]),
        .O(\exp_result[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \exp_result[8]_i_1__1 
       (.I0(stare[0]),
        .I1(stare[1]),
        .I2(stare[2]),
        .I3(\exp_result[8]_i_3_n_0 ),
        .I4(\exp_result[8]_i_4_n_0 ),
        .I5(\exp_result[8]_i_5_n_0 ),
        .O(\exp_result[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66666A66)) 
    \exp_result[8]_i_2__1 
       (.I0(exp_result_reg),
        .I1(exp_result_reg__0[7]),
        .I2(exp_result_reg__0[6]),
        .I3(\exp_result[8]_i_6_n_0 ),
        .I4(exp_result_reg__0[5]),
        .O(\exp_result[8]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_result[8]_i_3 
       (.I0(\exp_result[8]_i_7_n_0 ),
        .I1(mantisa_result[5]),
        .I2(mantisa_result[4]),
        .I3(mantisa_result[6]),
        .O(\exp_result[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exp_result[8]_i_4 
       (.I0(mantisa_result[24]),
        .I1(mantisa_result[22]),
        .I2(mantisa_result[23]),
        .I3(mantisa_result[12]),
        .I4(mantisa_result[7]),
        .O(\exp_result[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \exp_result[8]_i_5 
       (.I0(\exp_result[8]_i_8_n_0 ),
        .I1(\exp_result[8]_i_9_n_0 ),
        .I2(mantisa_result[21]),
        .I3(mantisa_result[19]),
        .I4(mantisa_result[18]),
        .O(\exp_result[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \exp_result[8]_i_6 
       (.I0(exp_result_reg__0[2]),
        .I1(exp_result_reg__0[1]),
        .I2(exp_result_reg__0[0]),
        .I3(exp_result_reg__0[3]),
        .I4(exp_result_reg__0[4]),
        .O(\exp_result[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_result[8]_i_7 
       (.I0(mantisa_result[2]),
        .I1(mantisa_result[3]),
        .I2(mantisa_result[0]),
        .I3(mantisa_result[1]),
        .O(\exp_result[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \exp_result[8]_i_8 
       (.I0(mantisa_result[16]),
        .I1(mantisa_result[20]),
        .I2(mantisa_result[10]),
        .I3(mantisa_result[17]),
        .I4(mantisa_result[14]),
        .I5(mantisa_result[15]),
        .O(\exp_result[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_result[8]_i_9 
       (.I0(mantisa_result[9]),
        .I1(mantisa_result[8]),
        .I2(mantisa_result[13]),
        .I3(mantisa_result[11]),
        .O(\exp_result[8]_i_9_n_0 ));
  FDRE \exp_result_reg[0] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[0]_i_1__0_n_0 ),
        .Q(exp_result_reg__0[0]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[1] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[1]_i_1__1_n_0 ),
        .Q(exp_result_reg__0[1]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[2] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[2]_i_1__1_n_0 ),
        .Q(exp_result_reg__0[2]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[3] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[3]_i_1__1_n_0 ),
        .Q(exp_result_reg__0[3]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[4] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[4]_i_1_n_0 ),
        .Q(exp_result_reg__0[4]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[5] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[5]_i_1__1_n_0 ),
        .Q(exp_result_reg__0[5]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[6] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[6]_i_1__1_n_0 ),
        .Q(exp_result_reg__0[6]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[7] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[7]_i_1__1_n_0 ),
        .Q(exp_result_reg__0[7]),
        .R(\exp_result[8]_i_1__1_n_0 ));
  FDRE \exp_result_reg[8] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(\exp_result[8]_i_2__1_n_0 ),
        .Q(exp_result_reg),
        .R(\exp_result[8]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\exp_A_reg_n_0_[8] ),
        .I1(exp_B[8]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__0
       (.I0(mantisa_a[15]),
        .I1(\mantisa_shifted_reg_n_0_[15] ),
        .I2(mantisa_a[14]),
        .I3(\mantisa_shifted_reg_n_0_[14] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(exp_B[7]),
        .I1(\exp_A_reg_n_0_[7] ),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(\exp_A_reg_n_0_[7] ),
        .I1(exp_B[7]),
        .O(i__carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(mantisa_a[13]),
        .I1(\mantisa_shifted_reg_n_0_[13] ),
        .I2(mantisa_a[12]),
        .I3(\mantisa_shifted_reg_n_0_[12] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(exp_B[8]),
        .I1(\exp_A_reg_n_0_[8] ),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__2
       (.I0(exp_B[6]),
        .I1(\exp_A_reg_n_0_[6] ),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__3
       (.I0(\exp_A_reg_n_0_[6] ),
        .I1(exp_B[6]),
        .O(i__carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(mantisa_a[11]),
        .I1(\mantisa_shifted_reg_n_0_[11] ),
        .I2(mantisa_a[10]),
        .I3(\mantisa_shifted_reg_n_0_[10] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(exp_B[5]),
        .I1(\exp_A_reg_n_0_[5] ),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__2
       (.I0(\exp_A_reg_n_0_[5] ),
        .I1(exp_B[5]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(mantisa_a[9]),
        .I1(\mantisa_shifted_reg_n_0_[9] ),
        .I2(mantisa_a[8]),
        .I3(\mantisa_shifted_reg_n_0_[8] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(exp_B[4]),
        .I1(\exp_A_reg_n_0_[4] ),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__2
       (.I0(\exp_A_reg_n_0_[4] ),
        .I1(exp_B[4]),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\mantisa_shifted_reg_n_0_[14] ),
        .I1(mantisa_a[14]),
        .I2(\mantisa_shifted_reg_n_0_[15] ),
        .I3(mantisa_a[15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\mantisa_shifted_reg_n_0_[12] ),
        .I1(mantisa_a[12]),
        .I2(\mantisa_shifted_reg_n_0_[13] ),
        .I3(mantisa_a[13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\mantisa_shifted_reg_n_0_[11] ),
        .I1(mantisa_a[11]),
        .I2(\mantisa_shifted_reg_n_0_[10] ),
        .I3(mantisa_a[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\mantisa_shifted_reg_n_0_[8] ),
        .I1(mantisa_a[8]),
        .I2(\mantisa_shifted_reg_n_0_[9] ),
        .I3(mantisa_a[9]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(exp_B[8]),
        .I1(\exp_A_reg_n_0_[8] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__1
       (.I0(exp_B[8]),
        .I1(\exp_A_reg_n_0_[8] ),
        .O(i__carry__1_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    i__carry__1_i_1__2
       (.I0(\mantisa_shifted_reg_n_0_[22] ),
        .I1(mantisa_a[22]),
        .I2(\mantisa_shifted_reg_n_0_[23] ),
        .O(i__carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2
       (.I0(mantisa_a[21]),
        .I1(\mantisa_shifted_reg_n_0_[21] ),
        .I2(mantisa_a[20]),
        .I3(\mantisa_shifted_reg_n_0_[20] ),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3
       (.I0(mantisa_a[19]),
        .I1(\mantisa_shifted_reg_n_0_[19] ),
        .I2(mantisa_a[18]),
        .I3(\mantisa_shifted_reg_n_0_[18] ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4
       (.I0(mantisa_a[17]),
        .I1(\mantisa_shifted_reg_n_0_[17] ),
        .I2(mantisa_a[16]),
        .I3(\mantisa_shifted_reg_n_0_[16] ),
        .O(i__carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    i__carry__1_i_5
       (.I0(\mantisa_shifted_reg_n_0_[23] ),
        .I1(\mantisa_shifted_reg_n_0_[22] ),
        .I2(mantisa_a[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\mantisa_shifted_reg_n_0_[20] ),
        .I1(mantisa_a[20]),
        .I2(\mantisa_shifted_reg_n_0_[21] ),
        .I3(mantisa_a[21]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\mantisa_shifted_reg_n_0_[18] ),
        .I1(mantisa_a[18]),
        .I2(\mantisa_shifted_reg_n_0_[19] ),
        .I3(mantisa_a[19]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\mantisa_shifted_reg_n_0_[17] ),
        .I1(mantisa_a[17]),
        .I2(\mantisa_shifted_reg_n_0_[16] ),
        .I3(mantisa_a[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(\exp_A_reg_n_0_[6] ),
        .I1(exp_B[6]),
        .I2(exp_B[7]),
        .I3(\exp_A_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(mantisa_a[7]),
        .I1(\mantisa_shifted_reg_n_0_[7] ),
        .I2(mantisa_a[6]),
        .I3(\mantisa_shifted_reg_n_0_[6] ),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__2
       (.I0(exp_B[3]),
        .I1(\exp_A_reg_n_0_[3] ),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(\exp_A_reg_n_0_[3] ),
        .I1(exp_B[3]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(\exp_A_reg_n_0_[4] ),
        .I1(exp_B[4]),
        .I2(exp_B[5]),
        .I3(\exp_A_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(mantisa_a[5]),
        .I1(\mantisa_shifted_reg_n_0_[5] ),
        .I2(mantisa_a[4]),
        .I3(\mantisa_shifted_reg_n_0_[4] ),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__2
       (.I0(exp_B[2]),
        .I1(\exp_A_reg_n_0_[2] ),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(\exp_A_reg_n_0_[2] ),
        .I1(exp_B[2]),
        .O(i__carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(\exp_A_reg_n_0_[2] ),
        .I1(exp_B[2]),
        .I2(exp_B[3]),
        .I3(\exp_A_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(mantisa_a[3]),
        .I1(\mantisa_shifted_reg_n_0_[3] ),
        .I2(mantisa_a[2]),
        .I3(\mantisa_shifted_reg_n_0_[2] ),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__2
       (.I0(exp_B[1]),
        .I1(\exp_A_reg_n_0_[1] ),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__3
       (.I0(\exp_A_reg_n_0_[1] ),
        .I1(exp_B[1]),
        .O(i__carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(\exp_A_reg_n_0_[0] ),
        .I1(exp_B[0]),
        .I2(exp_B[1]),
        .I3(\exp_A_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(mantisa_a[1]),
        .I1(\mantisa_shifted_reg_n_0_[1] ),
        .I2(mantisa_a[0]),
        .I3(\mantisa_shifted_reg_n_0_[0] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__2
       (.I0(exp_B[0]),
        .I1(\exp_A_reg_n_0_[0] ),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__3
       (.I0(\exp_A_reg_n_0_[0] ),
        .I1(exp_B[0]),
        .O(i__carry_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\exp_A_reg_n_0_[6] ),
        .I1(exp_B[6]),
        .I2(exp_B[7]),
        .I3(\exp_A_reg_n_0_[7] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\mantisa_shifted_reg_n_0_[6] ),
        .I1(mantisa_a[6]),
        .I2(\mantisa_shifted_reg_n_0_[7] ),
        .I3(mantisa_a[7]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\exp_A_reg_n_0_[4] ),
        .I1(exp_B[4]),
        .I2(exp_B[5]),
        .I3(\exp_A_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\mantisa_shifted_reg_n_0_[5] ),
        .I1(mantisa_a[5]),
        .I2(\mantisa_shifted_reg_n_0_[4] ),
        .I3(mantisa_a[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\exp_A_reg_n_0_[2] ),
        .I1(exp_B[2]),
        .I2(exp_B[3]),
        .I3(\exp_A_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\mantisa_shifted_reg_n_0_[2] ),
        .I1(mantisa_a[2]),
        .I2(\mantisa_shifted_reg_n_0_[3] ),
        .I3(mantisa_a[3]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\exp_A_reg_n_0_[0] ),
        .I1(exp_B[0]),
        .I2(exp_B[1]),
        .I3(\exp_A_reg_n_0_[1] ),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(\mantisa_shifted_reg_n_0_[0] ),
        .I1(mantisa_a[0]),
        .I2(\mantisa_shifted_reg_n_0_[1] ),
        .I3(mantisa_a[1]),
        .O(i__carry_i_8__0_n_0));
  FDRE \mantisa_a_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(A[0]),
        .Q(mantisa_a[0]),
        .R(1'b0));
  FDRE \mantisa_a_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(A[10]),
        .Q(mantisa_a[10]),
        .R(1'b0));
  FDRE \mantisa_a_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(A[11]),
        .Q(mantisa_a[11]),
        .R(1'b0));
  FDRE \mantisa_a_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(A[12]),
        .Q(mantisa_a[12]),
        .R(1'b0));
  FDRE \mantisa_a_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(A[13]),
        .Q(mantisa_a[13]),
        .R(1'b0));
  FDRE \mantisa_a_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(A[14]),
        .Q(mantisa_a[14]),
        .R(1'b0));
  FDRE \mantisa_a_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(A[15]),
        .Q(mantisa_a[15]),
        .R(1'b0));
  FDRE \mantisa_a_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(A[16]),
        .Q(mantisa_a[16]),
        .R(1'b0));
  FDRE \mantisa_a_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(A[17]),
        .Q(mantisa_a[17]),
        .R(1'b0));
  FDRE \mantisa_a_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(A[18]),
        .Q(mantisa_a[18]),
        .R(1'b0));
  FDRE \mantisa_a_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(A[19]),
        .Q(mantisa_a[19]),
        .R(1'b0));
  FDRE \mantisa_a_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(A[1]),
        .Q(mantisa_a[1]),
        .R(1'b0));
  FDRE \mantisa_a_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(A[20]),
        .Q(mantisa_a[20]),
        .R(1'b0));
  FDRE \mantisa_a_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(A[21]),
        .Q(mantisa_a[21]),
        .R(1'b0));
  FDRE \mantisa_a_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(A[22]),
        .Q(mantisa_a[22]),
        .R(1'b0));
  FDRE \mantisa_a_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(A[2]),
        .Q(mantisa_a[2]),
        .R(1'b0));
  FDRE \mantisa_a_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(A[3]),
        .Q(mantisa_a[3]),
        .R(1'b0));
  FDRE \mantisa_a_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(A[4]),
        .Q(mantisa_a[4]),
        .R(1'b0));
  FDRE \mantisa_a_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(A[5]),
        .Q(mantisa_a[5]),
        .R(1'b0));
  FDRE \mantisa_a_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(A[6]),
        .Q(mantisa_a[6]),
        .R(1'b0));
  FDRE \mantisa_a_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(A[7]),
        .Q(mantisa_a[7]),
        .R(1'b0));
  FDRE \mantisa_a_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(A[8]),
        .Q(mantisa_a[8]),
        .R(1'b0));
  FDRE \mantisa_a_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(A[9]),
        .Q(mantisa_a[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \mantisa_b[22]_i_1 
       (.I0(stare[1]),
        .I1(stare[0]),
        .I2(stare[2]),
        .O(semn_A));
  FDRE \mantisa_b_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(B[0]),
        .Q(mantisa_b[0]),
        .R(1'b0));
  FDRE \mantisa_b_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(B[10]),
        .Q(mantisa_b[10]),
        .R(1'b0));
  FDRE \mantisa_b_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(B[11]),
        .Q(mantisa_b[11]),
        .R(1'b0));
  FDRE \mantisa_b_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(B[12]),
        .Q(mantisa_b[12]),
        .R(1'b0));
  FDRE \mantisa_b_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(B[13]),
        .Q(mantisa_b[13]),
        .R(1'b0));
  FDRE \mantisa_b_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(B[14]),
        .Q(mantisa_b[14]),
        .R(1'b0));
  FDRE \mantisa_b_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(B[15]),
        .Q(mantisa_b[15]),
        .R(1'b0));
  FDRE \mantisa_b_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(B[16]),
        .Q(mantisa_b[16]),
        .R(1'b0));
  FDRE \mantisa_b_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(B[17]),
        .Q(mantisa_b[17]),
        .R(1'b0));
  FDRE \mantisa_b_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(B[18]),
        .Q(mantisa_b[18]),
        .R(1'b0));
  FDRE \mantisa_b_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(B[19]),
        .Q(mantisa_b[19]),
        .R(1'b0));
  FDRE \mantisa_b_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(B[1]),
        .Q(mantisa_b[1]),
        .R(1'b0));
  FDRE \mantisa_b_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(B[20]),
        .Q(mantisa_b[20]),
        .R(1'b0));
  FDRE \mantisa_b_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(B[21]),
        .Q(mantisa_b[21]),
        .R(1'b0));
  FDRE \mantisa_b_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(B[22]),
        .Q(mantisa_b[22]),
        .R(1'b0));
  FDRE \mantisa_b_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(B[2]),
        .Q(mantisa_b[2]),
        .R(1'b0));
  FDRE \mantisa_b_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(B[3]),
        .Q(mantisa_b[3]),
        .R(1'b0));
  FDRE \mantisa_b_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(B[4]),
        .Q(mantisa_b[4]),
        .R(1'b0));
  FDRE \mantisa_b_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(B[5]),
        .Q(mantisa_b[5]),
        .R(1'b0));
  FDRE \mantisa_b_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(B[6]),
        .Q(mantisa_b[6]),
        .R(1'b0));
  FDRE \mantisa_b_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(B[7]),
        .Q(mantisa_b[7]),
        .R(1'b0));
  FDRE \mantisa_b_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(B[8]),
        .Q(mantisa_b[8]),
        .R(1'b0));
  FDRE \mantisa_b_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(B[9]),
        .Q(mantisa_b[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mantisa_result0_carry
       (.CI(1'b0),
        .CO({mantisa_result0_carry_n_0,mantisa_result0_carry_n_1,mantisa_result0_carry_n_2,mantisa_result0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({mantisa_result0_carry_i_1_n_0,mantisa_result0_carry_i_2_n_0,mantisa_result0_carry_i_3_n_0,mantisa_result0_carry_i_4_n_0}),
        .O(mantisa_result__0[3:0]),
        .S({mantisa_result0_carry_i_5_n_0,mantisa_result0_carry_i_6_n_0,mantisa_result0_carry_i_7_n_0,mantisa_result0_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mantisa_result0_carry__0
       (.CI(mantisa_result0_carry_n_0),
        .CO({mantisa_result0_carry__0_n_0,mantisa_result0_carry__0_n_1,mantisa_result0_carry__0_n_2,mantisa_result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({mantisa_result0_carry__0_i_1_n_0,mantisa_result0_carry__0_i_2_n_0,mantisa_result0_carry__0_i_3_n_0,mantisa_result0_carry__0_i_4_n_0}),
        .O(mantisa_result__0[7:4]),
        .S({mantisa_result0_carry__0_i_5_n_0,mantisa_result0_carry__0_i_6_n_0,mantisa_result0_carry__0_i_7_n_0,mantisa_result0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_1
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[7]),
        .O(mantisa_result0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_2
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[6]),
        .O(mantisa_result0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_3
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[5]),
        .O(mantisa_result0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_4
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[4]),
        .O(mantisa_result0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_5
       (.I0(mantisa_a[7]),
        .I1(\mantisa_shifted_reg_n_0_[7] ),
        .O(mantisa_result0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_6
       (.I0(mantisa_a[6]),
        .I1(\mantisa_shifted_reg_n_0_[6] ),
        .O(mantisa_result0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_7
       (.I0(mantisa_a[5]),
        .I1(\mantisa_shifted_reg_n_0_[5] ),
        .O(mantisa_result0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__0_i_8
       (.I0(mantisa_a[4]),
        .I1(\mantisa_shifted_reg_n_0_[4] ),
        .O(mantisa_result0_carry__0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mantisa_result0_carry__1
       (.CI(mantisa_result0_carry__0_n_0),
        .CO({mantisa_result0_carry__1_n_0,mantisa_result0_carry__1_n_1,mantisa_result0_carry__1_n_2,mantisa_result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({mantisa_result0_carry__1_i_1_n_0,mantisa_result0_carry__1_i_2_n_0,mantisa_result0_carry__1_i_3_n_0,mantisa_result0_carry__1_i_4_n_0}),
        .O(mantisa_result__0[11:8]),
        .S({mantisa_result0_carry__1_i_5_n_0,mantisa_result0_carry__1_i_6_n_0,mantisa_result0_carry__1_i_7_n_0,mantisa_result0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_1
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[11]),
        .O(mantisa_result0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_2
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[10]),
        .O(mantisa_result0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_3
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[9]),
        .O(mantisa_result0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_4
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[8]),
        .O(mantisa_result0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_5
       (.I0(mantisa_a[11]),
        .I1(\mantisa_shifted_reg_n_0_[11] ),
        .O(mantisa_result0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_6
       (.I0(mantisa_a[10]),
        .I1(\mantisa_shifted_reg_n_0_[10] ),
        .O(mantisa_result0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_7
       (.I0(mantisa_a[9]),
        .I1(\mantisa_shifted_reg_n_0_[9] ),
        .O(mantisa_result0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__1_i_8
       (.I0(mantisa_a[8]),
        .I1(\mantisa_shifted_reg_n_0_[8] ),
        .O(mantisa_result0_carry__1_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mantisa_result0_carry__2
       (.CI(mantisa_result0_carry__1_n_0),
        .CO({mantisa_result0_carry__2_n_0,mantisa_result0_carry__2_n_1,mantisa_result0_carry__2_n_2,mantisa_result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({mantisa_result0_carry__2_i_1_n_0,mantisa_result0_carry__2_i_2_n_0,mantisa_result0_carry__2_i_3_n_0,mantisa_result0_carry__2_i_4_n_0}),
        .O(mantisa_result__0[15:12]),
        .S({mantisa_result0_carry__2_i_5_n_0,mantisa_result0_carry__2_i_6_n_0,mantisa_result0_carry__2_i_7_n_0,mantisa_result0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_1
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[15]),
        .O(mantisa_result0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_2
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[14]),
        .O(mantisa_result0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_3
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[13]),
        .O(mantisa_result0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_4
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[12]),
        .O(mantisa_result0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_5
       (.I0(mantisa_a[15]),
        .I1(\mantisa_shifted_reg_n_0_[15] ),
        .O(mantisa_result0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_6
       (.I0(mantisa_a[14]),
        .I1(\mantisa_shifted_reg_n_0_[14] ),
        .O(mantisa_result0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_7
       (.I0(mantisa_a[13]),
        .I1(\mantisa_shifted_reg_n_0_[13] ),
        .O(mantisa_result0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__2_i_8
       (.I0(mantisa_a[12]),
        .I1(\mantisa_shifted_reg_n_0_[12] ),
        .O(mantisa_result0_carry__2_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mantisa_result0_carry__3
       (.CI(mantisa_result0_carry__2_n_0),
        .CO({mantisa_result0_carry__3_n_0,mantisa_result0_carry__3_n_1,mantisa_result0_carry__3_n_2,mantisa_result0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({mantisa_result0_carry__3_i_1_n_0,mantisa_result0_carry__3_i_2_n_0,mantisa_result0_carry__3_i_3_n_0,mantisa_result0_carry__3_i_4_n_0}),
        .O(mantisa_result__0[19:16]),
        .S({mantisa_result0_carry__3_i_5_n_0,mantisa_result0_carry__3_i_6_n_0,mantisa_result0_carry__3_i_7_n_0,mantisa_result0_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_1
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[19]),
        .O(mantisa_result0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_2
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[18]),
        .O(mantisa_result0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_3
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[17]),
        .O(mantisa_result0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_4
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[16]),
        .O(mantisa_result0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_5
       (.I0(mantisa_a[19]),
        .I1(\mantisa_shifted_reg_n_0_[19] ),
        .O(mantisa_result0_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_6
       (.I0(mantisa_a[18]),
        .I1(\mantisa_shifted_reg_n_0_[18] ),
        .O(mantisa_result0_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_7
       (.I0(mantisa_a[17]),
        .I1(\mantisa_shifted_reg_n_0_[17] ),
        .O(mantisa_result0_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__3_i_8
       (.I0(mantisa_a[16]),
        .I1(\mantisa_shifted_reg_n_0_[16] ),
        .O(mantisa_result0_carry__3_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mantisa_result0_carry__4
       (.CI(mantisa_result0_carry__3_n_0),
        .CO({mantisa_result0_carry__4_n_0,mantisa_result0_carry__4_n_1,mantisa_result0_carry__4_n_2,mantisa_result0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\semn_result1_inferred__0/i__carry__1_n_0 ,mantisa_result0_carry__4_i_1_n_0,mantisa_result0_carry__4_i_2_n_0,mantisa_result0_carry__4_i_3_n_0}),
        .O(mantisa_result__0[23:20]),
        .S({mantisa_result0_carry__4_i_4_n_0,mantisa_result0_carry__4_i_5_n_0,mantisa_result0_carry__4_i_6_n_0,mantisa_result0_carry__4_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__4_i_1
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[22]),
        .O(mantisa_result0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__4_i_2
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[21]),
        .O(mantisa_result0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__4_i_3
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[20]),
        .O(mantisa_result0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    mantisa_result0_carry__4_i_4
       (.I0(\mantisa_shifted_reg_n_0_[23] ),
        .O(mantisa_result0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__4_i_5
       (.I0(mantisa_a[22]),
        .I1(\mantisa_shifted_reg_n_0_[22] ),
        .O(mantisa_result0_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__4_i_6
       (.I0(mantisa_a[21]),
        .I1(\mantisa_shifted_reg_n_0_[21] ),
        .O(mantisa_result0_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry__4_i_7
       (.I0(mantisa_a[20]),
        .I1(\mantisa_shifted_reg_n_0_[20] ),
        .O(mantisa_result0_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_1
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[3]),
        .O(mantisa_result0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_2
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[2]),
        .O(mantisa_result0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_3
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[1]),
        .O(mantisa_result0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_4
       (.I0(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I1(mantisa_a[0]),
        .O(mantisa_result0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_5
       (.I0(mantisa_a[3]),
        .I1(\mantisa_shifted_reg_n_0_[3] ),
        .O(mantisa_result0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_6
       (.I0(mantisa_a[2]),
        .I1(\mantisa_shifted_reg_n_0_[2] ),
        .O(mantisa_result0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_7
       (.I0(mantisa_a[1]),
        .I1(\mantisa_shifted_reg_n_0_[1] ),
        .O(mantisa_result0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_result0_carry_i_8
       (.I0(mantisa_a[0]),
        .I1(\mantisa_shifted_reg_n_0_[0] ),
        .O(mantisa_result0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[0]_i_1 
       (.I0(mantisa_result[1]),
        .I1(stare[0]),
        .I2(mantisa_result__0[0]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[0]),
        .O(\mantisa_result[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[10]_i_1 
       (.I0(mantisa_result[11]),
        .I1(stare[0]),
        .I2(mantisa_result__0[10]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[10]),
        .O(\mantisa_result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[11]_i_1 
       (.I0(mantisa_result[12]),
        .I1(stare[0]),
        .I2(mantisa_result__0[11]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[11]),
        .O(\mantisa_result[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[11]_i_3 
       (.I0(mantisa_a[11]),
        .I1(\mantisa_shifted_reg_n_0_[11] ),
        .O(\mantisa_result[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[11]_i_4 
       (.I0(mantisa_a[10]),
        .I1(\mantisa_shifted_reg_n_0_[10] ),
        .O(\mantisa_result[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[11]_i_5 
       (.I0(mantisa_a[9]),
        .I1(\mantisa_shifted_reg_n_0_[9] ),
        .O(\mantisa_result[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[11]_i_6 
       (.I0(mantisa_a[8]),
        .I1(\mantisa_shifted_reg_n_0_[8] ),
        .O(\mantisa_result[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[12]_i_1 
       (.I0(mantisa_result[13]),
        .I1(stare[0]),
        .I2(mantisa_result__0[12]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[12]),
        .O(\mantisa_result[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[13]_i_1 
       (.I0(mantisa_result[14]),
        .I1(stare[0]),
        .I2(mantisa_result__0[13]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[13]),
        .O(\mantisa_result[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[14]_i_1 
       (.I0(mantisa_result[15]),
        .I1(stare[0]),
        .I2(mantisa_result__0[14]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[14]),
        .O(\mantisa_result[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[15]_i_1 
       (.I0(mantisa_result[16]),
        .I1(stare[0]),
        .I2(mantisa_result__0[15]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[15]),
        .O(\mantisa_result[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[15]_i_3 
       (.I0(mantisa_a[15]),
        .I1(\mantisa_shifted_reg_n_0_[15] ),
        .O(\mantisa_result[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[15]_i_4 
       (.I0(mantisa_a[14]),
        .I1(\mantisa_shifted_reg_n_0_[14] ),
        .O(\mantisa_result[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[15]_i_5 
       (.I0(mantisa_a[13]),
        .I1(\mantisa_shifted_reg_n_0_[13] ),
        .O(\mantisa_result[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[15]_i_6 
       (.I0(mantisa_a[12]),
        .I1(\mantisa_shifted_reg_n_0_[12] ),
        .O(\mantisa_result[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[16]_i_1 
       (.I0(mantisa_result[17]),
        .I1(stare[0]),
        .I2(mantisa_result__0[16]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[16]),
        .O(\mantisa_result[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[17]_i_1 
       (.I0(mantisa_result[18]),
        .I1(stare[0]),
        .I2(mantisa_result__0[17]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[17]),
        .O(\mantisa_result[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[18]_i_1 
       (.I0(mantisa_result[19]),
        .I1(stare[0]),
        .I2(mantisa_result__0[18]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[18]),
        .O(\mantisa_result[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[19]_i_1 
       (.I0(mantisa_result[20]),
        .I1(stare[0]),
        .I2(mantisa_result__0[19]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[19]),
        .O(\mantisa_result[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[19]_i_3 
       (.I0(mantisa_a[19]),
        .I1(\mantisa_shifted_reg_n_0_[19] ),
        .O(\mantisa_result[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[19]_i_4 
       (.I0(mantisa_a[18]),
        .I1(\mantisa_shifted_reg_n_0_[18] ),
        .O(\mantisa_result[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[19]_i_5 
       (.I0(mantisa_a[17]),
        .I1(\mantisa_shifted_reg_n_0_[17] ),
        .O(\mantisa_result[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[19]_i_6 
       (.I0(mantisa_a[16]),
        .I1(\mantisa_shifted_reg_n_0_[16] ),
        .O(\mantisa_result[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[1]_i_1 
       (.I0(mantisa_result[2]),
        .I1(stare[0]),
        .I2(mantisa_result__0[1]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[1]),
        .O(\mantisa_result[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[20]_i_1 
       (.I0(mantisa_result[21]),
        .I1(stare[0]),
        .I2(mantisa_result__0[20]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[20]),
        .O(\mantisa_result[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[21]_i_1 
       (.I0(mantisa_result[22]),
        .I1(stare[0]),
        .I2(mantisa_result__0[21]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[21]),
        .O(\mantisa_result[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[22]_i_1 
       (.I0(mantisa_result[23]),
        .I1(stare[0]),
        .I2(mantisa_result__0[22]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[22]),
        .O(\mantisa_result[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[23]_i_1 
       (.I0(mantisa_result[24]),
        .I1(stare[0]),
        .I2(mantisa_result__0[23]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[23]),
        .O(\mantisa_result[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[23]_i_2 
       (.I0(semn_B),
        .I1(semn_A_reg_n_0),
        .O(\mantisa_result[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mantisa_result[23]_i_4 
       (.I0(\mantisa_shifted_reg_n_0_[23] ),
        .O(\mantisa_result[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[23]_i_5 
       (.I0(mantisa_a[22]),
        .I1(\mantisa_shifted_reg_n_0_[22] ),
        .O(\mantisa_result[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[23]_i_6 
       (.I0(mantisa_a[21]),
        .I1(\mantisa_shifted_reg_n_0_[21] ),
        .O(\mantisa_result[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[23]_i_7 
       (.I0(mantisa_a[20]),
        .I1(\mantisa_shifted_reg_n_0_[20] ),
        .O(\mantisa_result[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4044)) 
    \mantisa_result[24]_i_1 
       (.I0(stare[2]),
        .I1(stare[1]),
        .I2(mantisa_result[24]),
        .I3(stare[0]),
        .O(\mantisa_result[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4004400440044554)) 
    \mantisa_result[24]_i_2 
       (.I0(stare[0]),
        .I1(mantisa_result0[24]),
        .I2(semn_A_reg_n_0),
        .I3(semn_B),
        .I4(\mantisa_result_reg[24]_i_4_n_3 ),
        .I5(semn_result1_carry__0_n_0),
        .O(\mantisa_result[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[2]_i_1 
       (.I0(mantisa_result[3]),
        .I1(stare[0]),
        .I2(mantisa_result__0[2]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[2]),
        .O(\mantisa_result[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[3]_i_1 
       (.I0(mantisa_result[4]),
        .I1(stare[0]),
        .I2(mantisa_result__0[3]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[3]),
        .O(\mantisa_result[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[3]_i_3 
       (.I0(mantisa_a[3]),
        .I1(\mantisa_shifted_reg_n_0_[3] ),
        .O(\mantisa_result[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[3]_i_4 
       (.I0(mantisa_a[2]),
        .I1(\mantisa_shifted_reg_n_0_[2] ),
        .O(\mantisa_result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[3]_i_5 
       (.I0(mantisa_a[1]),
        .I1(\mantisa_shifted_reg_n_0_[1] ),
        .O(\mantisa_result[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[3]_i_6 
       (.I0(mantisa_a[0]),
        .I1(\mantisa_shifted_reg_n_0_[0] ),
        .O(\mantisa_result[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[4]_i_1 
       (.I0(mantisa_result[5]),
        .I1(stare[0]),
        .I2(mantisa_result__0[4]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[4]),
        .O(\mantisa_result[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[5]_i_1 
       (.I0(mantisa_result[6]),
        .I1(stare[0]),
        .I2(mantisa_result__0[5]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[5]),
        .O(\mantisa_result[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[6]_i_1 
       (.I0(mantisa_result[7]),
        .I1(stare[0]),
        .I2(mantisa_result__0[6]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[6]),
        .O(\mantisa_result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[7]_i_1 
       (.I0(mantisa_result[8]),
        .I1(stare[0]),
        .I2(mantisa_result__0[7]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[7]),
        .O(\mantisa_result[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[7]_i_3 
       (.I0(mantisa_a[7]),
        .I1(\mantisa_shifted_reg_n_0_[7] ),
        .O(\mantisa_result[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[7]_i_4 
       (.I0(mantisa_a[6]),
        .I1(\mantisa_shifted_reg_n_0_[6] ),
        .O(\mantisa_result[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[7]_i_5 
       (.I0(mantisa_a[5]),
        .I1(\mantisa_shifted_reg_n_0_[5] ),
        .O(\mantisa_result[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mantisa_result[7]_i_6 
       (.I0(mantisa_a[4]),
        .I1(\mantisa_shifted_reg_n_0_[4] ),
        .O(\mantisa_result[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[8]_i_1 
       (.I0(mantisa_result[9]),
        .I1(stare[0]),
        .I2(mantisa_result__0[8]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[8]),
        .O(\mantisa_result[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \mantisa_result[9]_i_1 
       (.I0(mantisa_result[10]),
        .I1(stare[0]),
        .I2(mantisa_result__0[9]),
        .I3(semn_result1_carry__0_n_0),
        .I4(\mantisa_result[23]_i_2_n_0 ),
        .I5(mantisa_result0[9]),
        .O(\mantisa_result[9]_i_1_n_0 ));
  FDRE \mantisa_result_reg[0] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[0]_i_1_n_0 ),
        .Q(mantisa_result[0]),
        .R(1'b0));
  FDRE \mantisa_result_reg[10] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[10]_i_1_n_0 ),
        .Q(mantisa_result[10]),
        .R(1'b0));
  FDRE \mantisa_result_reg[11] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[11]_i_1_n_0 ),
        .Q(mantisa_result[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mantisa_result_reg[11]_i_2 
       (.CI(\mantisa_result_reg[7]_i_2_n_0 ),
        .CO({\mantisa_result_reg[11]_i_2_n_0 ,\mantisa_result_reg[11]_i_2_n_1 ,\mantisa_result_reg[11]_i_2_n_2 ,\mantisa_result_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(mantisa_a[11:8]),
        .O(mantisa_result0[11:8]),
        .S({\mantisa_result[11]_i_3_n_0 ,\mantisa_result[11]_i_4_n_0 ,\mantisa_result[11]_i_5_n_0 ,\mantisa_result[11]_i_6_n_0 }));
  FDRE \mantisa_result_reg[12] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[12]_i_1_n_0 ),
        .Q(mantisa_result[12]),
        .R(1'b0));
  FDRE \mantisa_result_reg[13] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[13]_i_1_n_0 ),
        .Q(mantisa_result[13]),
        .R(1'b0));
  FDRE \mantisa_result_reg[14] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[14]_i_1_n_0 ),
        .Q(mantisa_result[14]),
        .R(1'b0));
  FDRE \mantisa_result_reg[15] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[15]_i_1_n_0 ),
        .Q(mantisa_result[15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mantisa_result_reg[15]_i_2 
       (.CI(\mantisa_result_reg[11]_i_2_n_0 ),
        .CO({\mantisa_result_reg[15]_i_2_n_0 ,\mantisa_result_reg[15]_i_2_n_1 ,\mantisa_result_reg[15]_i_2_n_2 ,\mantisa_result_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(mantisa_a[15:12]),
        .O(mantisa_result0[15:12]),
        .S({\mantisa_result[15]_i_3_n_0 ,\mantisa_result[15]_i_4_n_0 ,\mantisa_result[15]_i_5_n_0 ,\mantisa_result[15]_i_6_n_0 }));
  FDRE \mantisa_result_reg[16] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[16]_i_1_n_0 ),
        .Q(mantisa_result[16]),
        .R(1'b0));
  FDRE \mantisa_result_reg[17] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[17]_i_1_n_0 ),
        .Q(mantisa_result[17]),
        .R(1'b0));
  FDRE \mantisa_result_reg[18] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[18]_i_1_n_0 ),
        .Q(mantisa_result[18]),
        .R(1'b0));
  FDRE \mantisa_result_reg[19] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[19]_i_1_n_0 ),
        .Q(mantisa_result[19]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mantisa_result_reg[19]_i_2 
       (.CI(\mantisa_result_reg[15]_i_2_n_0 ),
        .CO({\mantisa_result_reg[19]_i_2_n_0 ,\mantisa_result_reg[19]_i_2_n_1 ,\mantisa_result_reg[19]_i_2_n_2 ,\mantisa_result_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(mantisa_a[19:16]),
        .O(mantisa_result0[19:16]),
        .S({\mantisa_result[19]_i_3_n_0 ,\mantisa_result[19]_i_4_n_0 ,\mantisa_result[19]_i_5_n_0 ,\mantisa_result[19]_i_6_n_0 }));
  FDRE \mantisa_result_reg[1] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[1]_i_1_n_0 ),
        .Q(mantisa_result[1]),
        .R(1'b0));
  FDRE \mantisa_result_reg[20] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[20]_i_1_n_0 ),
        .Q(mantisa_result[20]),
        .R(1'b0));
  FDRE \mantisa_result_reg[21] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[21]_i_1_n_0 ),
        .Q(mantisa_result[21]),
        .R(1'b0));
  FDRE \mantisa_result_reg[22] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[22]_i_1_n_0 ),
        .Q(mantisa_result[22]),
        .R(1'b0));
  FDRE \mantisa_result_reg[23] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[23]_i_1_n_0 ),
        .Q(mantisa_result[23]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mantisa_result_reg[23]_i_3 
       (.CI(\mantisa_result_reg[19]_i_2_n_0 ),
        .CO({\mantisa_result_reg[23]_i_3_n_0 ,\mantisa_result_reg[23]_i_3_n_1 ,\mantisa_result_reg[23]_i_3_n_2 ,\mantisa_result_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,mantisa_a[22:20]}),
        .O(mantisa_result0[23:20]),
        .S({\mantisa_result[23]_i_4_n_0 ,\mantisa_result[23]_i_5_n_0 ,\mantisa_result[23]_i_6_n_0 ,\mantisa_result[23]_i_7_n_0 }));
  FDRE \mantisa_result_reg[24] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[24]_i_2_n_0 ),
        .Q(mantisa_result[24]),
        .R(1'b0));
  CARRY4 \mantisa_result_reg[24]_i_3 
       (.CI(\mantisa_result_reg[23]_i_3_n_0 ),
        .CO({\NLW_mantisa_result_reg[24]_i_3_CO_UNCONNECTED [3:1],mantisa_result0[24]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mantisa_result_reg[24]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \mantisa_result_reg[24]_i_4 
       (.CI(mantisa_result0_carry__4_n_0),
        .CO({\NLW_mantisa_result_reg[24]_i_4_CO_UNCONNECTED [3:1],\mantisa_result_reg[24]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mantisa_result_reg[24]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \mantisa_result_reg[2] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[2]_i_1_n_0 ),
        .Q(mantisa_result[2]),
        .R(1'b0));
  FDRE \mantisa_result_reg[3] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[3]_i_1_n_0 ),
        .Q(mantisa_result[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mantisa_result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\mantisa_result_reg[3]_i_2_n_0 ,\mantisa_result_reg[3]_i_2_n_1 ,\mantisa_result_reg[3]_i_2_n_2 ,\mantisa_result_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(mantisa_a[3:0]),
        .O(mantisa_result0[3:0]),
        .S({\mantisa_result[3]_i_3_n_0 ,\mantisa_result[3]_i_4_n_0 ,\mantisa_result[3]_i_5_n_0 ,\mantisa_result[3]_i_6_n_0 }));
  FDRE \mantisa_result_reg[4] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[4]_i_1_n_0 ),
        .Q(mantisa_result[4]),
        .R(1'b0));
  FDRE \mantisa_result_reg[5] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[5]_i_1_n_0 ),
        .Q(mantisa_result[5]),
        .R(1'b0));
  FDRE \mantisa_result_reg[6] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[6]_i_1_n_0 ),
        .Q(mantisa_result[6]),
        .R(1'b0));
  FDRE \mantisa_result_reg[7] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[7]_i_1_n_0 ),
        .Q(mantisa_result[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mantisa_result_reg[7]_i_2 
       (.CI(\mantisa_result_reg[3]_i_2_n_0 ),
        .CO({\mantisa_result_reg[7]_i_2_n_0 ,\mantisa_result_reg[7]_i_2_n_1 ,\mantisa_result_reg[7]_i_2_n_2 ,\mantisa_result_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(mantisa_a[7:4]),
        .O(mantisa_result0[7:4]),
        .S({\mantisa_result[7]_i_3_n_0 ,\mantisa_result[7]_i_4_n_0 ,\mantisa_result[7]_i_5_n_0 ,\mantisa_result[7]_i_6_n_0 }));
  FDRE \mantisa_result_reg[8] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[8]_i_1_n_0 ),
        .Q(mantisa_result[8]),
        .R(1'b0));
  FDRE \mantisa_result_reg[9] 
       (.C(clk),
        .CE(\mantisa_result[24]_i_1_n_0 ),
        .D(\mantisa_result[9]_i_1_n_0 ),
        .Q(mantisa_result[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 mantisa_shifted1_carry
       (.CI(1'b0),
        .CO({mantisa_shifted1_carry_n_0,mantisa_shifted1_carry_n_1,mantisa_shifted1_carry_n_2,mantisa_shifted1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({mantisa_shifted1_carry_i_1_n_0,mantisa_shifted1_carry_i_2_n_0,mantisa_shifted1_carry_i_3_n_0,mantisa_shifted1_carry_i_4_n_0}),
        .O(NLW_mantisa_shifted1_carry_O_UNCONNECTED[3:0]),
        .S({mantisa_shifted1_carry_i_5_n_0,mantisa_shifted1_carry_i_6_n_0,mantisa_shifted1_carry_i_7_n_0,mantisa_shifted1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 mantisa_shifted1_carry__0
       (.CI(mantisa_shifted1_carry_n_0),
        .CO({NLW_mantisa_shifted1_carry__0_CO_UNCONNECTED[3:1],mantisa_shifted1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mantisa_shifted1_carry__0_i_1_n_0}),
        .O(NLW_mantisa_shifted1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,mantisa_shifted1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    mantisa_shifted1_carry__0_i_1
       (.I0(exp_B[8]),
        .I1(\exp_A_reg_n_0_[8] ),
        .O(mantisa_shifted1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mantisa_shifted1_carry__0_i_2
       (.I0(\exp_A_reg_n_0_[8] ),
        .I1(exp_B[8]),
        .O(mantisa_shifted1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    mantisa_shifted1_carry_i_1
       (.I0(exp_B[6]),
        .I1(\exp_A_reg_n_0_[6] ),
        .I2(\exp_A_reg_n_0_[7] ),
        .I3(exp_B[7]),
        .O(mantisa_shifted1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    mantisa_shifted1_carry_i_2
       (.I0(exp_B[4]),
        .I1(\exp_A_reg_n_0_[4] ),
        .I2(\exp_A_reg_n_0_[5] ),
        .I3(exp_B[5]),
        .O(mantisa_shifted1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    mantisa_shifted1_carry_i_3
       (.I0(exp_B[2]),
        .I1(\exp_A_reg_n_0_[2] ),
        .I2(\exp_A_reg_n_0_[3] ),
        .I3(exp_B[3]),
        .O(mantisa_shifted1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    mantisa_shifted1_carry_i_4
       (.I0(exp_B[0]),
        .I1(\exp_A_reg_n_0_[0] ),
        .I2(\exp_A_reg_n_0_[1] ),
        .I3(exp_B[1]),
        .O(mantisa_shifted1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    mantisa_shifted1_carry_i_5
       (.I0(\exp_A_reg_n_0_[6] ),
        .I1(exp_B[6]),
        .I2(exp_B[7]),
        .I3(\exp_A_reg_n_0_[7] ),
        .O(mantisa_shifted1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    mantisa_shifted1_carry_i_6
       (.I0(\exp_A_reg_n_0_[4] ),
        .I1(exp_B[4]),
        .I2(exp_B[5]),
        .I3(\exp_A_reg_n_0_[5] ),
        .O(mantisa_shifted1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    mantisa_shifted1_carry_i_7
       (.I0(\exp_A_reg_n_0_[2] ),
        .I1(exp_B[2]),
        .I2(exp_B[3]),
        .I3(\exp_A_reg_n_0_[3] ),
        .O(mantisa_shifted1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    mantisa_shifted1_carry_i_8
       (.I0(\exp_A_reg_n_0_[0] ),
        .I1(exp_B[0]),
        .I2(exp_B[1]),
        .I3(\exp_A_reg_n_0_[1] ),
        .O(mantisa_shifted1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mantisa_shifted1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mantisa_shifted1_inferred__0/i__carry_n_0 ,\mantisa_shifted1_inferred__0/i__carry_n_1 ,\mantisa_shifted1_inferred__0/i__carry_n_2 ,\mantisa_shifted1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_mantisa_shifted1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mantisa_shifted1_inferred__0/i__carry__0 
       (.CI(\mantisa_shifted1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_mantisa_shifted1_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\mantisa_shifted1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}),
        .O(\NLW_mantisa_shifted1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__1_n_0}));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[0]_i_2 
       (.I0(\mantisa_shifted[0]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[1]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[0]),
        .O(\mantisa_shifted[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \mantisa_shifted[0]_i_3 
       (.I0(\mantisa_shifted[0]_i_5_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[0]_i_6_n_0 ),
        .I3(minusOp2_out[0]),
        .I4(\mantisa_shifted[1]_i_5_n_0 ),
        .I5(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[0]_i_4 
       (.I0(\mantisa_shifted[6]_i_6_n_0 ),
        .I1(\mantisa_shifted[2]_i_6_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[4]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[0]_i_7_n_0 ),
        .O(\mantisa_shifted[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mantisa_shifted[0]_i_5 
       (.I0(\mantisa_shifted[4]_i_7_n_0 ),
        .I1(minusOp2_out[2]),
        .I2(\mantisa_shifted[0]_i_8_n_0 ),
        .O(\mantisa_shifted[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mantisa_shifted[0]_i_6 
       (.I0(\mantisa_shifted[6]_i_7_n_0 ),
        .I1(minusOp2_out[2]),
        .I2(\mantisa_shifted[2]_i_7_n_0 ),
        .O(\mantisa_shifted[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[0]_i_7 
       (.I0(mantisa_a[8]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[16]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[0]),
        .O(\mantisa_shifted[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[0]_i_8 
       (.I0(mantisa_b[8]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[16]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[0]),
        .O(\mantisa_shifted[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[10]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[10]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[11]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[10]),
        .O(\mantisa_shifted[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h470047000000FF00)) 
    \mantisa_shifted[10]_i_3 
       (.I0(\mantisa_shifted[13]_i_6_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[11]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .I4(\mantisa_shifted[10]_i_5_n_0 ),
        .I5(minusOp2_out[0]),
        .O(\mantisa_shifted[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB888B8B)) 
    \mantisa_shifted[10]_i_4 
       (.I0(\mantisa_shifted[12]_i_6_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(\mantisa_shifted[10]_i_6_n_0 ),
        .I3(\mantisa_shifted[10]_i_7_n_0 ),
        .I4(minusOp0_out[2]),
        .O(\mantisa_shifted[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mantisa_shifted[10]_i_5 
       (.I0(\mantisa_shifted[12]_i_7_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[10]_i_8_n_0 ),
        .I3(minusOp2_out[2]),
        .I4(\mantisa_shifted[10]_i_9_n_0 ),
        .O(\mantisa_shifted[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[10]_i_6 
       (.I0(mantisa_a[18]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[10]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \mantisa_shifted[10]_i_7 
       (.I0(mantisa_a[22]),
        .I1(minusOp0_out[3]),
        .I2(minusOp0_out[4]),
        .I3(mantisa_a[14]),
        .O(\mantisa_shifted[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \mantisa_shifted[10]_i_8 
       (.I0(mantisa_b[22]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[4]),
        .I3(mantisa_b[14]),
        .O(\mantisa_shifted[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hDCDF)) 
    \mantisa_shifted[10]_i_9 
       (.I0(mantisa_b[18]),
        .I1(minusOp2_out[4]),
        .I2(minusOp2_out[3]),
        .I3(mantisa_b[10]),
        .O(\mantisa_shifted[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[11]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[11]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[12]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[11]),
        .O(\mantisa_shifted[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00004700FF004700)) 
    \mantisa_shifted[11]_i_3 
       (.I0(\mantisa_shifted[13]_i_6_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[11]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .I4(minusOp2_out[0]),
        .I5(\mantisa_shifted[12]_i_5_n_0 ),
        .O(\mantisa_shifted[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mantisa_shifted[11]_i_4 
       (.I0(\mantisa_shifted[13]_i_7_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(\mantisa_shifted[11]_i_6_n_0 ),
        .O(\mantisa_shifted[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0FFF53FF53)) 
    \mantisa_shifted[11]_i_5 
       (.I0(mantisa_b[19]),
        .I1(mantisa_b[11]),
        .I2(minusOp2_out[3]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[15]),
        .I5(minusOp2_out[2]),
        .O(\mantisa_shifted[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0FFF53FF53)) 
    \mantisa_shifted[11]_i_6 
       (.I0(mantisa_a[19]),
        .I1(mantisa_a[11]),
        .I2(minusOp0_out[3]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[15]),
        .I5(minusOp0_out[2]),
        .O(\mantisa_shifted[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[12]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[12]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[13]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[12]),
        .O(\mantisa_shifted[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h470047000000FF00)) 
    \mantisa_shifted[12]_i_3 
       (.I0(\mantisa_shifted[13]_i_5_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[13]_i_6_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .I4(\mantisa_shifted[12]_i_5_n_0 ),
        .I5(minusOp2_out[0]),
        .O(\mantisa_shifted[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mantisa_shifted[12]_i_4 
       (.I0(\mantisa_shifted[14]_i_6_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(\mantisa_shifted[12]_i_6_n_0 ),
        .O(\mantisa_shifted[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mantisa_shifted[12]_i_5 
       (.I0(\mantisa_shifted[14]_i_7_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[12]_i_7_n_0 ),
        .O(\mantisa_shifted[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCF44CF77)) 
    \mantisa_shifted[12]_i_6 
       (.I0(mantisa_a[16]),
        .I1(minusOp0_out[2]),
        .I2(mantisa_a[20]),
        .I3(minusOp0_out[3]),
        .I4(mantisa_a[12]),
        .I5(minusOp0_out[4]),
        .O(\mantisa_shifted[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \mantisa_shifted[12]_i_7 
       (.I0(mantisa_b[16]),
        .I1(minusOp2_out[2]),
        .I2(mantisa_b[20]),
        .I3(minusOp2_out[3]),
        .I4(minusOp2_out[4]),
        .I5(mantisa_b[12]),
        .O(\mantisa_shifted[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[13]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[13]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[14]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[13]),
        .O(\mantisa_shifted[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00004700FF004700)) 
    \mantisa_shifted[13]_i_3 
       (.I0(\mantisa_shifted[13]_i_5_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[13]_i_6_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .I4(minusOp2_out[0]),
        .I5(\mantisa_shifted[14]_i_5_n_0 ),
        .O(\mantisa_shifted[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mantisa_shifted[13]_i_4 
       (.I0(\mantisa_shifted[17]_i_6_n_0 ),
        .I1(mantisa_a[19]),
        .I2(minusOp0_out[2]),
        .I3(\mantisa_shifted[15]_i_7_n_0 ),
        .I4(minusOp0_out[1]),
        .I5(\mantisa_shifted[13]_i_7_n_0 ),
        .O(\mantisa_shifted[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF3FF05)) 
    \mantisa_shifted[13]_i_5 
       (.I0(mantisa_b[15]),
        .I1(mantisa_b[19]),
        .I2(minusOp2_out[3]),
        .I3(minusOp2_out[4]),
        .I4(minusOp2_out[2]),
        .O(\mantisa_shifted[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCF44CF77)) 
    \mantisa_shifted[13]_i_6 
       (.I0(mantisa_b[17]),
        .I1(minusOp2_out[2]),
        .I2(mantisa_b[21]),
        .I3(minusOp2_out[3]),
        .I4(mantisa_b[13]),
        .I5(minusOp2_out[4]),
        .O(\mantisa_shifted[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCF44CF77)) 
    \mantisa_shifted[13]_i_7 
       (.I0(mantisa_a[17]),
        .I1(minusOp0_out[2]),
        .I2(mantisa_a[21]),
        .I3(minusOp0_out[3]),
        .I4(mantisa_a[13]),
        .I5(minusOp0_out[4]),
        .O(\mantisa_shifted[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40454045FFFF0000)) 
    \mantisa_shifted[14]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[15]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[14]_i_4_n_0 ),
        .I4(mantisa_b[14]),
        .I5(mantisa_shifted1_carry__0_n_3),
        .O(\mantisa_shifted[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \mantisa_shifted[14]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[14]_i_5_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(\mantisa_shifted[15]_i_5_n_0 ),
        .O(\mantisa_shifted[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDFDFFFFCDFD0000)) 
    \mantisa_shifted[14]_i_4 
       (.I0(mantisa_a[16]),
        .I1(\mantisa_shifted[17]_i_6_n_0 ),
        .I2(minusOp0_out[2]),
        .I3(mantisa_a[20]),
        .I4(minusOp0_out[1]),
        .I5(\mantisa_shifted[14]_i_6_n_0 ),
        .O(\mantisa_shifted[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mantisa_shifted[14]_i_5 
       (.I0(\mantisa_shifted[16]_i_6_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[14]_i_7_n_0 ),
        .O(\mantisa_shifted[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \mantisa_shifted[14]_i_6 
       (.I0(mantisa_a[18]),
        .I1(minusOp0_out[2]),
        .I2(mantisa_a[22]),
        .I3(minusOp0_out[3]),
        .I4(minusOp0_out[4]),
        .I5(mantisa_a[14]),
        .O(\mantisa_shifted[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \mantisa_shifted[14]_i_7 
       (.I0(mantisa_b[18]),
        .I1(minusOp2_out[2]),
        .I2(mantisa_b[22]),
        .I3(minusOp2_out[3]),
        .I4(minusOp2_out[4]),
        .I5(mantisa_b[14]),
        .O(\mantisa_shifted[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0454FFFF04540000)) 
    \mantisa_shifted[15]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[15]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[16]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[15]),
        .O(\mantisa_shifted[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h470047000000FF00)) 
    \mantisa_shifted[15]_i_3 
       (.I0(\mantisa_shifted[16]_i_5_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[16]_i_6_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .I4(\mantisa_shifted[15]_i_5_n_0 ),
        .I5(minusOp2_out[0]),
        .O(\mantisa_shifted[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888B8BBBB)) 
    \mantisa_shifted[15]_i_4 
       (.I0(\mantisa_shifted[15]_i_6_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(mantisa_a[19]),
        .I3(\mantisa_shifted[17]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[15]_i_7_n_0 ),
        .O(\mantisa_shifted[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCDFDFFFFCDFD0000)) 
    \mantisa_shifted[15]_i_5 
       (.I0(mantisa_b[17]),
        .I1(\mantisa_shifted[17]_i_7_n_0 ),
        .I2(minusOp2_out[2]),
        .I3(mantisa_b[21]),
        .I4(minusOp2_out[1]),
        .I5(\mantisa_shifted[13]_i_5_n_0 ),
        .O(\mantisa_shifted[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h03020002)) 
    \mantisa_shifted[15]_i_6 
       (.I0(mantisa_a[17]),
        .I1(minusOp0_out[3]),
        .I2(minusOp0_out[4]),
        .I3(minusOp0_out[2]),
        .I4(mantisa_a[21]),
        .O(\mantisa_shifted[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \mantisa_shifted[15]_i_7 
       (.I0(minusOp0_out[3]),
        .I1(minusOp0_out[4]),
        .I2(mantisa_a[15]),
        .O(\mantisa_shifted[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[16]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[16]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[17]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[16]),
        .O(\mantisa_shifted[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00004700FF004700)) 
    \mantisa_shifted[16]_i_3 
       (.I0(\mantisa_shifted[16]_i_5_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(\mantisa_shifted[16]_i_6_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .I4(minusOp2_out[0]),
        .I5(\mantisa_shifted[17]_i_5_n_0 ),
        .O(\mantisa_shifted[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBBBBBB8B)) 
    \mantisa_shifted[16]_i_4 
       (.I0(\mantisa_shifted[18]_i_6_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(mantisa_a[16]),
        .I3(\mantisa_shifted[17]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(mantisa_a[20]),
        .O(\mantisa_shifted[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \mantisa_shifted[16]_i_5 
       (.I0(mantisa_b[22]),
        .I1(minusOp2_out[2]),
        .I2(minusOp2_out[3]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[18]),
        .O(\mantisa_shifted[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \mantisa_shifted[16]_i_6 
       (.I0(mantisa_b[20]),
        .I1(minusOp2_out[2]),
        .I2(minusOp2_out[3]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[16]),
        .O(\mantisa_shifted[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[17]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[17]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[18]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[17]),
        .O(\mantisa_shifted[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \mantisa_shifted[17]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[17]_i_5_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(\mantisa_shifted[18]_i_5_n_0 ),
        .O(\mantisa_shifted[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0344FFFF0377)) 
    \mantisa_shifted[17]_i_4 
       (.I0(mantisa_a[19]),
        .I1(minusOp0_out[1]),
        .I2(mantisa_a[21]),
        .I3(minusOp0_out[2]),
        .I4(\mantisa_shifted[17]_i_6_n_0 ),
        .I5(mantisa_a[17]),
        .O(\mantisa_shifted[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF47FF33FF47)) 
    \mantisa_shifted[17]_i_5 
       (.I0(mantisa_b[19]),
        .I1(minusOp2_out[1]),
        .I2(mantisa_b[17]),
        .I3(\mantisa_shifted[17]_i_7_n_0 ),
        .I4(minusOp2_out[2]),
        .I5(mantisa_b[21]),
        .O(\mantisa_shifted[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mantisa_shifted[17]_i_6 
       (.I0(minusOp0_out[4]),
        .I1(minusOp0_out[3]),
        .O(\mantisa_shifted[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mantisa_shifted[17]_i_7 
       (.I0(minusOp2_out[4]),
        .I1(minusOp2_out[3]),
        .O(\mantisa_shifted[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40454045FFFF0000)) 
    \mantisa_shifted[18]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[19]_i_6_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[18]_i_4_n_0 ),
        .I4(mantisa_b[18]),
        .I5(mantisa_shifted1_carry__0_n_3),
        .O(\mantisa_shifted[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1B00)) 
    \mantisa_shifted[18]_i_3 
       (.I0(minusOp2_out[0]),
        .I1(\mantisa_shifted[18]_i_5_n_0 ),
        .I2(\mantisa_shifted[19]_i_3_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFFFF0000)) 
    \mantisa_shifted[18]_i_4 
       (.I0(minusOp0_out[4]),
        .I1(minusOp0_out[3]),
        .I2(minusOp0_out[2]),
        .I3(mantisa_a[20]),
        .I4(\mantisa_shifted[18]_i_6_n_0 ),
        .I5(minusOp0_out[1]),
        .O(\mantisa_shifted[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFFFF0000)) 
    \mantisa_shifted[18]_i_5 
       (.I0(minusOp2_out[4]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[2]),
        .I3(mantisa_b[20]),
        .I4(\mantisa_shifted[16]_i_5_n_0 ),
        .I5(minusOp2_out[1]),
        .O(\mantisa_shifted[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \mantisa_shifted[18]_i_6 
       (.I0(mantisa_a[22]),
        .I1(minusOp0_out[2]),
        .I2(minusOp0_out[3]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[18]),
        .O(\mantisa_shifted[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02A2FFFF02A20000)) 
    \mantisa_shifted[19]_i_1 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[19]_i_3_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(\mantisa_shifted[19]_i_4_n_0 ),
        .I4(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ),
        .I5(\mantisa_shifted[19]_i_5_n_0 ),
        .O(\mantisa_shifted[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \mantisa_shifted[19]_i_2 
       (.I0(minusOp2_out[8]),
        .I1(minusOp2_out[5]),
        .I2(minusOp2_out[7]),
        .I3(minusOp2_out[6]),
        .O(\mantisa_shifted[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFDFFFFFCFD)) 
    \mantisa_shifted[19]_i_3 
       (.I0(mantisa_b[19]),
        .I1(minusOp2_out[4]),
        .I2(minusOp2_out[3]),
        .I3(minusOp2_out[2]),
        .I4(minusOp2_out[1]),
        .I5(mantisa_b[21]),
        .O(\mantisa_shifted[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFFFFFEFF)) 
    \mantisa_shifted[19]_i_4 
       (.I0(minusOp2_out[4]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[2]),
        .I3(mantisa_b[20]),
        .I4(minusOp2_out[1]),
        .I5(mantisa_b[22]),
        .O(\mantisa_shifted[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[19]_i_5 
       (.I0(\mantisa_shifted[19]_i_6_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[20]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[19]),
        .O(\mantisa_shifted[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0003030200000302)) 
    \mantisa_shifted[19]_i_6 
       (.I0(mantisa_a[19]),
        .I1(minusOp0_out[4]),
        .I2(minusOp0_out[3]),
        .I3(minusOp0_out[2]),
        .I4(minusOp0_out[1]),
        .I5(mantisa_a[21]),
        .O(\mantisa_shifted[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[1]_i_2 
       (.I0(\mantisa_shifted[1]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[2]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[1]),
        .O(\mantisa_shifted[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mantisa_shifted[1]_i_3 
       (.I0(\mantisa_shifted[1]_i_5_n_0 ),
        .I1(minusOp2_out[0]),
        .I2(\mantisa_shifted[2]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[1]_i_4 
       (.I0(\mantisa_shifted[7]_i_7_n_0 ),
        .I1(\mantisa_shifted[3]_i_6_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[5]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[1]_i_6_n_0 ),
        .O(\mantisa_shifted[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[1]_i_5 
       (.I0(\mantisa_shifted[7]_i_9_n_0 ),
        .I1(\mantisa_shifted[3]_i_7_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[5]_i_7_n_0 ),
        .I4(minusOp2_out[2]),
        .I5(\mantisa_shifted[1]_i_7_n_0 ),
        .O(\mantisa_shifted[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[1]_i_6 
       (.I0(mantisa_a[9]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[17]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[1]),
        .O(\mantisa_shifted[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[1]_i_7 
       (.I0(mantisa_b[9]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[17]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[1]),
        .O(\mantisa_shifted[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h222E2E2E222E2222)) 
    \mantisa_shifted[20]_i_2 
       (.I0(mantisa_b[20]),
        .I1(mantisa_shifted1_carry__0_n_3),
        .I2(\mantisa_shifted[23]_i_5_n_0 ),
        .I3(\mantisa_shifted[21]_i_5_n_0 ),
        .I4(minusOp0_out[0]),
        .I5(\mantisa_shifted[20]_i_4_n_0 ),
        .O(\mantisa_shifted[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0202A2A20202A202)) 
    \mantisa_shifted[20]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[19]_i_4_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(mantisa_b[21]),
        .I4(\mantisa_shifted[20]_i_5_n_0 ),
        .I5(minusOp2_out[1]),
        .O(\mantisa_shifted[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \mantisa_shifted[20]_i_4 
       (.I0(mantisa_a[20]),
        .I1(minusOp0_out[1]),
        .I2(mantisa_a[22]),
        .I3(minusOp0_out[4]),
        .I4(minusOp0_out[3]),
        .I5(minusOp0_out[2]),
        .O(\mantisa_shifted[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \mantisa_shifted[20]_i_5 
       (.I0(minusOp2_out[2]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[4]),
        .O(\mantisa_shifted[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00470047FFFF0000)) 
    \mantisa_shifted[21]_i_2 
       (.I0(\mantisa_shifted[21]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[21]_i_5_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_b[21]),
        .I5(mantisa_shifted1_carry__0_n_3),
        .O(\mantisa_shifted[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02020202020202A2)) 
    \mantisa_shifted[21]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[21]_i_6_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(minusOp2_out[2]),
        .I4(\mantisa_shifted[21]_i_7_n_0 ),
        .I5(minusOp2_out[1]),
        .O(\mantisa_shifted[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \mantisa_shifted[21]_i_4 
       (.I0(minusOp0_out[1]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[22]),
        .I3(minusOp0_out[4]),
        .I4(minusOp0_out[2]),
        .O(\mantisa_shifted[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFCFFFD)) 
    \mantisa_shifted[21]_i_5 
       (.I0(minusOp0_out[1]),
        .I1(minusOp0_out[2]),
        .I2(minusOp0_out[3]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[21]),
        .O(\mantisa_shifted[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFCFFFD)) 
    \mantisa_shifted[21]_i_6 
       (.I0(minusOp2_out[1]),
        .I1(minusOp2_out[2]),
        .I2(minusOp2_out[3]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[21]),
        .O(\mantisa_shifted[21]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \mantisa_shifted[21]_i_7 
       (.I0(minusOp2_out[3]),
        .I1(mantisa_b[22]),
        .I2(minusOp2_out[4]),
        .O(\mantisa_shifted[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0DDCC0000DDCC)) 
    \mantisa_shifted[22]_i_1 
       (.I0(mantisa_shifted1_carry__0_n_3),
        .I1(\mantisa_shifted[22]_i_2_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(mantisa_b[22]),
        .I4(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ),
        .I5(\mantisa_shifted[22]_i_3_n_0 ),
        .O(\mantisa_shifted[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    \mantisa_shifted[22]_i_2 
       (.I0(\mantisa_shifted[23]_i_6_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(\mantisa_shifted[23]_i_5_n_0 ),
        .I3(mantisa_shifted1_carry__0_n_3),
        .I4(mantisa_a[22]),
        .I5(minusOp0_out[0]),
        .O(\mantisa_shifted[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \mantisa_shifted[22]_i_3 
       (.I0(minusOp2_out[2]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[4]),
        .I3(minusOp2_out[1]),
        .I4(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \mantisa_shifted[23]_i_1 
       (.I0(stare[1]),
        .I1(stare[0]),
        .I2(stare[2]),
        .O(mantisa_shifted));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \mantisa_shifted[23]_i_3 
       (.I0(minusOp0_out[0]),
        .I1(\mantisa_shifted[23]_i_5_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[23]_i_6_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .O(\mantisa_shifted[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \mantisa_shifted[23]_i_4 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(minusOp2_out[1]),
        .I2(minusOp2_out[4]),
        .I3(minusOp2_out[3]),
        .I4(minusOp2_out[2]),
        .I5(minusOp2_out[0]),
        .O(\mantisa_shifted[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mantisa_shifted[23]_i_5 
       (.I0(minusOp0_out[8]),
        .I1(minusOp0_out[5]),
        .I2(minusOp0_out[7]),
        .I3(minusOp0_out[6]),
        .O(\mantisa_shifted[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \mantisa_shifted[23]_i_6 
       (.I0(minusOp0_out[2]),
        .I1(minusOp0_out[3]),
        .I2(minusOp0_out[4]),
        .O(\mantisa_shifted[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[2]_i_2 
       (.I0(\mantisa_shifted[2]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[3]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[2]),
        .O(\mantisa_shifted[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mantisa_shifted[2]_i_3 
       (.I0(\mantisa_shifted[2]_i_5_n_0 ),
        .I1(minusOp2_out[0]),
        .I2(\mantisa_shifted[3]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[2]_i_4 
       (.I0(\mantisa_shifted[8]_i_6_n_0 ),
        .I1(\mantisa_shifted[4]_i_6_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[6]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[2]_i_6_n_0 ),
        .O(\mantisa_shifted[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3F30AFAF3F30A0A0)) 
    \mantisa_shifted[2]_i_5 
       (.I0(\mantisa_shifted[4]_i_7_n_0 ),
        .I1(\mantisa_shifted[8]_i_9_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[6]_i_7_n_0 ),
        .I4(minusOp2_out[2]),
        .I5(\mantisa_shifted[2]_i_7_n_0 ),
        .O(\mantisa_shifted[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[2]_i_6 
       (.I0(mantisa_a[10]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[18]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[2]),
        .O(\mantisa_shifted[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[2]_i_7 
       (.I0(mantisa_b[10]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[18]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[2]),
        .O(\mantisa_shifted[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[3]_i_2 
       (.I0(\mantisa_shifted[3]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[4]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[3]),
        .O(\mantisa_shifted[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mantisa_shifted[3]_i_3 
       (.I0(\mantisa_shifted[3]_i_5_n_0 ),
        .I1(minusOp2_out[0]),
        .I2(\mantisa_shifted[4]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[3]_i_4 
       (.I0(\mantisa_shifted[9]_i_6_n_0 ),
        .I1(\mantisa_shifted[5]_i_6_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[7]_i_7_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[3]_i_6_n_0 ),
        .O(\mantisa_shifted[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[3]_i_5 
       (.I0(\mantisa_shifted[9]_i_9_n_0 ),
        .I1(\mantisa_shifted[5]_i_7_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[7]_i_9_n_0 ),
        .I4(minusOp2_out[2]),
        .I5(\mantisa_shifted[3]_i_7_n_0 ),
        .O(\mantisa_shifted[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[3]_i_6 
       (.I0(mantisa_a[11]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[19]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[3]),
        .O(\mantisa_shifted[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[3]_i_7 
       (.I0(mantisa_b[11]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[19]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[3]),
        .O(\mantisa_shifted[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[4]_i_2 
       (.I0(\mantisa_shifted[4]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[5]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[4]),
        .O(\mantisa_shifted[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mantisa_shifted[4]_i_3 
       (.I0(\mantisa_shifted[4]_i_5_n_0 ),
        .I1(minusOp2_out[0]),
        .I2(\mantisa_shifted[5]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[4]_i_4 
       (.I0(\mantisa_shifted[10]_i_6_n_0 ),
        .I1(\mantisa_shifted[6]_i_6_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[8]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[4]_i_6_n_0 ),
        .O(\mantisa_shifted[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3FAFA0AFA0)) 
    \mantisa_shifted[4]_i_5 
       (.I0(\mantisa_shifted[6]_i_7_n_0 ),
        .I1(\mantisa_shifted[10]_i_9_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[4]_i_7_n_0 ),
        .I4(\mantisa_shifted[8]_i_9_n_0 ),
        .I5(minusOp2_out[2]),
        .O(\mantisa_shifted[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[4]_i_6 
       (.I0(mantisa_a[12]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[20]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[4]),
        .O(\mantisa_shifted[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[4]_i_7 
       (.I0(mantisa_b[12]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[20]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[4]),
        .O(\mantisa_shifted[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \mantisa_shifted[5]_i_2 
       (.I0(\mantisa_shifted[5]_i_4_n_0 ),
        .I1(minusOp0_out[0]),
        .I2(\mantisa_shifted[6]_i_4_n_0 ),
        .I3(\mantisa_shifted[23]_i_5_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[5]),
        .O(\mantisa_shifted[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mantisa_shifted[5]_i_3 
       (.I0(\mantisa_shifted[5]_i_5_n_0 ),
        .I1(minusOp2_out[0]),
        .I2(\mantisa_shifted[6]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[5]_i_4 
       (.I0(\mantisa_shifted[7]_i_6_n_0 ),
        .I1(\mantisa_shifted[7]_i_7_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[9]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[5]_i_6_n_0 ),
        .O(\mantisa_shifted[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[5]_i_5 
       (.I0(\mantisa_shifted[7]_i_8_n_0 ),
        .I1(\mantisa_shifted[7]_i_9_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[9]_i_9_n_0 ),
        .I4(minusOp2_out[2]),
        .I5(\mantisa_shifted[5]_i_7_n_0 ),
        .O(\mantisa_shifted[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[5]_i_6 
       (.I0(mantisa_a[13]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[21]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[5]),
        .O(\mantisa_shifted[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[5]_i_7 
       (.I0(mantisa_b[13]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[21]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[5]),
        .O(\mantisa_shifted[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h15101510FFFF0000)) 
    \mantisa_shifted[6]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[7]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[6]_i_4_n_0 ),
        .I4(mantisa_b[6]),
        .I5(mantisa_shifted1_carry__0_n_3),
        .O(\mantisa_shifted[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mantisa_shifted[6]_i_3 
       (.I0(\mantisa_shifted[6]_i_5_n_0 ),
        .I1(minusOp2_out[0]),
        .I2(\mantisa_shifted[7]_i_5_n_0 ),
        .I3(\mantisa_shifted[19]_i_2_n_0 ),
        .O(\mantisa_shifted[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[6]_i_4 
       (.I0(\mantisa_shifted[8]_i_7_n_0 ),
        .I1(\mantisa_shifted[8]_i_6_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[10]_i_6_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[6]_i_6_n_0 ),
        .O(\mantisa_shifted[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3F5F505F50)) 
    \mantisa_shifted[6]_i_5 
       (.I0(\mantisa_shifted[8]_i_9_n_0 ),
        .I1(\mantisa_shifted[8]_i_8_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[6]_i_7_n_0 ),
        .I4(\mantisa_shifted[10]_i_9_n_0 ),
        .I5(minusOp2_out[2]),
        .O(\mantisa_shifted[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[6]_i_6 
       (.I0(mantisa_a[14]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[22]),
        .I3(minusOp0_out[4]),
        .I4(mantisa_a[6]),
        .O(\mantisa_shifted[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \mantisa_shifted[6]_i_7 
       (.I0(mantisa_b[14]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[22]),
        .I3(minusOp2_out[4]),
        .I4(mantisa_b[6]),
        .O(\mantisa_shifted[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[7]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[7]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[8]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[7]),
        .O(\mantisa_shifted[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h08A8)) 
    \mantisa_shifted[7]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[7]_i_5_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(\mantisa_shifted[8]_i_5_n_0 ),
        .O(\mantisa_shifted[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \mantisa_shifted[7]_i_4 
       (.I0(\mantisa_shifted[7]_i_6_n_0 ),
        .I1(\mantisa_shifted[7]_i_7_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(\mantisa_shifted[9]_i_7_n_0 ),
        .I4(minusOp0_out[2]),
        .I5(\mantisa_shifted[9]_i_6_n_0 ),
        .O(\mantisa_shifted[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mantisa_shifted[7]_i_5 
       (.I0(\mantisa_shifted[9]_i_8_n_0 ),
        .I1(\mantisa_shifted[9]_i_9_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(\mantisa_shifted[7]_i_8_n_0 ),
        .I4(minusOp2_out[2]),
        .I5(\mantisa_shifted[7]_i_9_n_0 ),
        .O(\mantisa_shifted[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[7]_i_6 
       (.I0(mantisa_a[19]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[11]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h33B8)) 
    \mantisa_shifted[7]_i_7 
       (.I0(mantisa_a[15]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[7]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \mantisa_shifted[7]_i_8 
       (.I0(mantisa_b[19]),
        .I1(minusOp2_out[4]),
        .I2(minusOp2_out[3]),
        .I3(mantisa_b[11]),
        .O(\mantisa_shifted[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h3B38)) 
    \mantisa_shifted[7]_i_9 
       (.I0(mantisa_b[15]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[4]),
        .I3(mantisa_b[7]),
        .O(\mantisa_shifted[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[8]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[8]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[9]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[8]),
        .O(\mantisa_shifted[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \mantisa_shifted[8]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[8]_i_5_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(\mantisa_shifted[9]_i_5_n_0 ),
        .O(\mantisa_shifted[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC050C05FCF50CF5F)) 
    \mantisa_shifted[8]_i_4 
       (.I0(\mantisa_shifted[10]_i_6_n_0 ),
        .I1(\mantisa_shifted[10]_i_7_n_0 ),
        .I2(minusOp0_out[1]),
        .I3(minusOp0_out[2]),
        .I4(\mantisa_shifted[8]_i_6_n_0 ),
        .I5(\mantisa_shifted[8]_i_7_n_0 ),
        .O(\mantisa_shifted[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \mantisa_shifted[8]_i_5 
       (.I0(\mantisa_shifted[10]_i_8_n_0 ),
        .I1(\mantisa_shifted[10]_i_9_n_0 ),
        .I2(minusOp2_out[1]),
        .I3(minusOp2_out[2]),
        .I4(\mantisa_shifted[8]_i_8_n_0 ),
        .I5(\mantisa_shifted[8]_i_9_n_0 ),
        .O(\mantisa_shifted[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[8]_i_6 
       (.I0(mantisa_a[16]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[8]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[8]_i_7 
       (.I0(mantisa_a[20]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[12]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \mantisa_shifted[8]_i_8 
       (.I0(mantisa_b[20]),
        .I1(minusOp2_out[3]),
        .I2(minusOp2_out[4]),
        .I3(mantisa_b[12]),
        .O(\mantisa_shifted[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDCDF)) 
    \mantisa_shifted[8]_i_9 
       (.I0(mantisa_b[16]),
        .I1(minusOp2_out[4]),
        .I2(minusOp2_out[3]),
        .I3(mantisa_b[8]),
        .O(\mantisa_shifted[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \mantisa_shifted[9]_i_2 
       (.I0(\mantisa_shifted[23]_i_5_n_0 ),
        .I1(\mantisa_shifted[9]_i_4_n_0 ),
        .I2(minusOp0_out[0]),
        .I3(\mantisa_shifted[10]_i_4_n_0 ),
        .I4(mantisa_shifted1_carry__0_n_3),
        .I5(mantisa_b[9]),
        .O(\mantisa_shifted[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \mantisa_shifted[9]_i_3 
       (.I0(\mantisa_shifted[19]_i_2_n_0 ),
        .I1(\mantisa_shifted[9]_i_5_n_0 ),
        .I2(minusOp2_out[0]),
        .I3(\mantisa_shifted[10]_i_5_n_0 ),
        .O(\mantisa_shifted[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \mantisa_shifted[9]_i_4 
       (.I0(\mantisa_shifted[11]_i_6_n_0 ),
        .I1(minusOp0_out[1]),
        .I2(\mantisa_shifted[9]_i_6_n_0 ),
        .I3(minusOp0_out[2]),
        .I4(\mantisa_shifted[9]_i_7_n_0 ),
        .O(\mantisa_shifted[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF005353)) 
    \mantisa_shifted[9]_i_5 
       (.I0(\mantisa_shifted[9]_i_8_n_0 ),
        .I1(\mantisa_shifted[9]_i_9_n_0 ),
        .I2(minusOp2_out[2]),
        .I3(\mantisa_shifted[11]_i_5_n_0 ),
        .I4(minusOp2_out[1]),
        .O(\mantisa_shifted[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[9]_i_6 
       (.I0(mantisa_a[17]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[9]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[9]_i_7 
       (.I0(mantisa_a[21]),
        .I1(minusOp0_out[3]),
        .I2(mantisa_a[13]),
        .I3(minusOp0_out[4]),
        .O(\mantisa_shifted[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[9]_i_8 
       (.I0(mantisa_b[21]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[13]),
        .I3(minusOp2_out[4]),
        .O(\mantisa_shifted[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \mantisa_shifted[9]_i_9 
       (.I0(mantisa_b[17]),
        .I1(minusOp2_out[3]),
        .I2(mantisa_b[9]),
        .I3(minusOp2_out[4]),
        .O(\mantisa_shifted[9]_i_9_n_0 ));
  FDRE \mantisa_shifted_reg[0] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[0]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[0]_i_1 
       (.I0(\mantisa_shifted[0]_i_2_n_0 ),
        .I1(\mantisa_shifted[0]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[0]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[10] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[10]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[10] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[10]_i_1 
       (.I0(\mantisa_shifted[10]_i_2_n_0 ),
        .I1(\mantisa_shifted[10]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[10]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[11] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[11]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[11] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[11]_i_1 
       (.I0(\mantisa_shifted[11]_i_2_n_0 ),
        .I1(\mantisa_shifted[11]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[11]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[12] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[12]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[12] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[12]_i_1 
       (.I0(\mantisa_shifted[12]_i_2_n_0 ),
        .I1(\mantisa_shifted[12]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[12]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[13] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[13]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[13] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[13]_i_1 
       (.I0(\mantisa_shifted[13]_i_2_n_0 ),
        .I1(\mantisa_shifted[13]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[13]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[14] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[14]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[14] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[14]_i_1 
       (.I0(\mantisa_shifted[14]_i_2_n_0 ),
        .I1(\mantisa_shifted[14]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[14]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[15] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[15]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[15] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[15]_i_1 
       (.I0(\mantisa_shifted[15]_i_2_n_0 ),
        .I1(\mantisa_shifted[15]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[15]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[16] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[16]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[16] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[16]_i_1 
       (.I0(\mantisa_shifted[16]_i_2_n_0 ),
        .I1(\mantisa_shifted[16]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[16]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[17] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[17]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[17] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[17]_i_1 
       (.I0(\mantisa_shifted[17]_i_2_n_0 ),
        .I1(\mantisa_shifted[17]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[17]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[18] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[18]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[18] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[18]_i_1 
       (.I0(\mantisa_shifted[18]_i_2_n_0 ),
        .I1(\mantisa_shifted[18]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[18]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[19] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted[19]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_shifted_reg[1] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[1]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[1]_i_1 
       (.I0(\mantisa_shifted[1]_i_2_n_0 ),
        .I1(\mantisa_shifted[1]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[1]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[20] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[20]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[20] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[20]_i_1 
       (.I0(\mantisa_shifted[20]_i_2_n_0 ),
        .I1(\mantisa_shifted[20]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[20]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[21] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[21]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[21] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[21]_i_1 
       (.I0(\mantisa_shifted[21]_i_2_n_0 ),
        .I1(\mantisa_shifted[21]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[21]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[22] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted[22]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_shifted_reg[23] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[23]_i_2_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[23] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[23]_i_2 
       (.I0(\mantisa_shifted[23]_i_3_n_0 ),
        .I1(\mantisa_shifted[23]_i_4_n_0 ),
        .O(\mantisa_shifted_reg[23]_i_2_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[2] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[2]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[2]_i_1 
       (.I0(\mantisa_shifted[2]_i_2_n_0 ),
        .I1(\mantisa_shifted[2]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[2]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[3] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[3]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[3]_i_1 
       (.I0(\mantisa_shifted[3]_i_2_n_0 ),
        .I1(\mantisa_shifted[3]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[3]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[4] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[4]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[4]_i_1 
       (.I0(\mantisa_shifted[4]_i_2_n_0 ),
        .I1(\mantisa_shifted[4]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[4]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[5] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[5]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[5]_i_1 
       (.I0(\mantisa_shifted[5]_i_2_n_0 ),
        .I1(\mantisa_shifted[5]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[5]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[6] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[6]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[6]_i_1 
       (.I0(\mantisa_shifted[6]_i_2_n_0 ),
        .I1(\mantisa_shifted[6]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[6]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[7] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[7]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[7] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[7]_i_1 
       (.I0(\mantisa_shifted[7]_i_2_n_0 ),
        .I1(\mantisa_shifted[7]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[7]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[8] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[8]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[8] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[8]_i_1 
       (.I0(\mantisa_shifted[8]_i_2_n_0 ),
        .I1(\mantisa_shifted[8]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[8]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  FDRE \mantisa_shifted_reg[9] 
       (.C(clk),
        .CE(mantisa_shifted),
        .D(\mantisa_shifted_reg[9]_i_1_n_0 ),
        .Q(\mantisa_shifted_reg_n_0_[9] ),
        .R(1'b0));
  MUXF7 \mantisa_shifted_reg[9]_i_1 
       (.I0(\mantisa_shifted[9]_i_2_n_0 ),
        .I1(\mantisa_shifted[9]_i_3_n_0 ),
        .O(\mantisa_shifted_reg[9]_i_1_n_0 ),
        .S(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__1/i__carry_n_0 ,\minusOp_inferred__1/i__carry_n_1 ,\minusOp_inferred__1/i__carry_n_2 ,\minusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(exp_B[3:0]),
        .O(minusOp0_out[3:0]),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__0 
       (.CI(\minusOp_inferred__1/i__carry_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__0_n_0 ,\minusOp_inferred__1/i__carry__0_n_1 ,\minusOp_inferred__1/i__carry__0_n_2 ,\minusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(exp_B[7:4]),
        .O(minusOp0_out[7:4]),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__1 
       (.CI(\minusOp_inferred__1/i__carry__0_n_0 ),
        .CO(\NLW_minusOp_inferred__1/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_minusOp_inferred__1/i__carry__1_O_UNCONNECTED [3:1],minusOp0_out[8]}),
        .S({1'b0,1'b0,1'b0,i__carry__1_i_1__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__2/i__carry_n_0 ,\minusOp_inferred__2/i__carry_n_1 ,\minusOp_inferred__2/i__carry_n_2 ,\minusOp_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\exp_A_reg_n_0_[3] ,\exp_A_reg_n_0_[2] ,\exp_A_reg_n_0_[1] ,\exp_A_reg_n_0_[0] }),
        .O(minusOp2_out[3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__2/i__carry__0 
       (.CI(\minusOp_inferred__2/i__carry_n_0 ),
        .CO({\minusOp_inferred__2/i__carry__0_n_0 ,\minusOp_inferred__2/i__carry__0_n_1 ,\minusOp_inferred__2/i__carry__0_n_2 ,\minusOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\exp_A_reg_n_0_[7] ,\exp_A_reg_n_0_[6] ,\exp_A_reg_n_0_[5] ,\exp_A_reg_n_0_[4] }),
        .O(minusOp2_out[7:4]),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__2/i__carry__1 
       (.CI(\minusOp_inferred__2/i__carry__0_n_0 ),
        .CO(\NLW_minusOp_inferred__2/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_minusOp_inferred__2/i__carry__1_O_UNCONNECTED [3:1],minusOp2_out[8]}),
        .S({1'b0,1'b0,1'b0,i__carry__1_i_1__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFEFE4000)) 
    overflow_i_1
       (.I0(stare[2]),
        .I1(stare[1]),
        .I2(stare[0]),
        .I3(exp_result_reg),
        .I4(overflow1),
        .O(overflow_i_1_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow_i_1_n_0),
        .Q(overflow1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \result[31]_i_1__0 
       (.I0(stare[2]),
        .I1(stare[1]),
        .I2(stare[0]),
        .O(\result[31]_i_1__0_n_0 ));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[0]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[1]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[2]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[3]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[4]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[5]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[6]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(exp_result_reg__0[7]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(semn_result_reg_n_0),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(\result[31]_i_1__0_n_0 ),
        .D(mantisa_result[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    semn_A_reg
       (.C(clk),
        .CE(semn_A),
        .D(A[23]),
        .Q(semn_A_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    semn_B_reg
       (.C(clk),
        .CE(semn_A),
        .D(B[23]),
        .Q(semn_B),
        .R(1'b0));
  CARRY4 semn_result1_carry
       (.CI(1'b0),
        .CO({semn_result1_carry_n_0,semn_result1_carry_n_1,semn_result1_carry_n_2,semn_result1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_semn_result1_carry_O_UNCONNECTED[3:0]),
        .S({semn_result1_carry_i_1_n_0,semn_result1_carry_i_2_n_0,semn_result1_carry_i_3_n_0,semn_result1_carry_i_4_n_0}));
  CARRY4 semn_result1_carry__0
       (.CI(semn_result1_carry_n_0),
        .CO({semn_result1_carry__0_n_0,semn_result1_carry__0_n_1,semn_result1_carry__0_n_2,semn_result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_semn_result1_carry__0_O_UNCONNECTED[3:0]),
        .S({semn_result1_carry__0_i_1_n_0,semn_result1_carry__0_i_2_n_0,semn_result1_carry__0_i_3_n_0,semn_result1_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'h90000090)) 
    semn_result1_carry__0_i_1
       (.I0(mantisa_a[22]),
        .I1(\mantisa_shifted_reg_n_0_[22] ),
        .I2(\mantisa_shifted_reg_n_0_[23] ),
        .I3(\mantisa_shifted_reg_n_0_[21] ),
        .I4(mantisa_a[21]),
        .O(semn_result1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry__0_i_2
       (.I0(mantisa_a[19]),
        .I1(\mantisa_shifted_reg_n_0_[19] ),
        .I2(mantisa_a[18]),
        .I3(\mantisa_shifted_reg_n_0_[18] ),
        .I4(\mantisa_shifted_reg_n_0_[20] ),
        .I5(mantisa_a[20]),
        .O(semn_result1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry__0_i_3
       (.I0(mantisa_a[16]),
        .I1(\mantisa_shifted_reg_n_0_[16] ),
        .I2(mantisa_a[17]),
        .I3(\mantisa_shifted_reg_n_0_[17] ),
        .I4(\mantisa_shifted_reg_n_0_[15] ),
        .I5(mantisa_a[15]),
        .O(semn_result1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry__0_i_4
       (.I0(mantisa_a[13]),
        .I1(\mantisa_shifted_reg_n_0_[13] ),
        .I2(mantisa_a[12]),
        .I3(\mantisa_shifted_reg_n_0_[12] ),
        .I4(\mantisa_shifted_reg_n_0_[14] ),
        .I5(mantisa_a[14]),
        .O(semn_result1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry_i_1
       (.I0(mantisa_a[10]),
        .I1(\mantisa_shifted_reg_n_0_[10] ),
        .I2(mantisa_a[11]),
        .I3(\mantisa_shifted_reg_n_0_[11] ),
        .I4(\mantisa_shifted_reg_n_0_[9] ),
        .I5(mantisa_a[9]),
        .O(semn_result1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry_i_2
       (.I0(mantisa_a[7]),
        .I1(\mantisa_shifted_reg_n_0_[7] ),
        .I2(mantisa_a[6]),
        .I3(\mantisa_shifted_reg_n_0_[6] ),
        .I4(\mantisa_shifted_reg_n_0_[8] ),
        .I5(mantisa_a[8]),
        .O(semn_result1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry_i_3
       (.I0(mantisa_a[4]),
        .I1(\mantisa_shifted_reg_n_0_[4] ),
        .I2(mantisa_a[5]),
        .I3(\mantisa_shifted_reg_n_0_[5] ),
        .I4(\mantisa_shifted_reg_n_0_[3] ),
        .I5(mantisa_a[3]),
        .O(semn_result1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    semn_result1_carry_i_4
       (.I0(mantisa_a[1]),
        .I1(\mantisa_shifted_reg_n_0_[1] ),
        .I2(mantisa_a[0]),
        .I3(\mantisa_shifted_reg_n_0_[0] ),
        .I4(\mantisa_shifted_reg_n_0_[2] ),
        .I5(mantisa_a[2]),
        .O(semn_result1_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \semn_result1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\semn_result1_inferred__0/i__carry_n_0 ,\semn_result1_inferred__0/i__carry_n_1 ,\semn_result1_inferred__0/i__carry_n_2 ,\semn_result1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \semn_result1_inferred__0/i__carry__0 
       (.CI(\semn_result1_inferred__0/i__carry_n_0 ),
        .CO({\semn_result1_inferred__0/i__carry__0_n_0 ,\semn_result1_inferred__0/i__carry__0_n_1 ,\semn_result1_inferred__0/i__carry__0_n_2 ,\semn_result1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \semn_result1_inferred__0/i__carry__1 
       (.CI(\semn_result1_inferred__0/i__carry__0_n_0 ),
        .CO({\semn_result1_inferred__0/i__carry__1_n_0 ,\semn_result1_inferred__0/i__carry__1_n_1 ,\semn_result1_inferred__0/i__carry__1_n_2 ,\semn_result1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__2_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFBAF000008A0)) 
    semn_result_i_1
       (.I0(semn_result),
        .I1(\mantisa_result[23]_i_2_n_0 ),
        .I2(stare[0]),
        .I3(stare[1]),
        .I4(stare[2]),
        .I5(semn_result_reg_n_0),
        .O(semn_result_i_1_n_0));
  LUT6 #(
    .INIT(64'hEF40FFFFEF400000)) 
    semn_result_i_2
       (.I0(\mantisa_shifted1_inferred__0/i__carry__0_n_3 ),
        .I1(semn_B),
        .I2(mantisa_shifted1_carry__0_n_3),
        .I3(semn_A_reg_n_0),
        .I4(stare[0]),
        .I5(semn_result_i_3_n_0),
        .O(semn_result));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    semn_result_i_3
       (.I0(semn_B),
        .I1(\semn_result1_inferred__0/i__carry__1_n_0 ),
        .I2(semn_A_reg_n_0),
        .I3(semn_result1_carry__0_n_0),
        .O(semn_result_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    semn_result_reg
       (.C(clk),
        .CE(1'b1),
        .D(semn_result_i_1_n_0),
        .Q(semn_result_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFEFE4000)) 
    zero_i_1
       (.I0(stare[2]),
        .I1(stare[1]),
        .I2(stare[0]),
        .I3(zero_i_2_n_0),
        .I4(zero1),
        .O(zero_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    zero_i_2
       (.I0(\exp_result[8]_i_5_n_0 ),
        .I1(\exp_result[8]_i_6_n_0 ),
        .I2(zero_i_3_n_0),
        .I3(\exp_result[8]_i_3_n_0 ),
        .O(zero_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_i_3
       (.I0(exp_result_reg__0[5]),
        .I1(exp_result_reg__0[7]),
        .I2(exp_result_reg),
        .I3(exp_result_reg__0[6]),
        .I4(mantisa_result[22]),
        .I5(zero_i_4_n_0),
        .O(zero_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    zero_i_4
       (.I0(mantisa_result[7]),
        .I1(mantisa_result[12]),
        .O(zero_i_4_n_0));
  FDRE zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(zero_i_1_n_0),
        .Q(zero1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "div" *) 
module design_1_ALU_0_0_div
   (overflow4,
    zero4,
    D,
    A_28_sp_1,
    B_0_sp_1,
    A_0_sp_1,
    A_25_sp_1,
    A_19_sp_1,
    B_25_sp_1,
    B_19_sp_1,
    \B[29] ,
    result4,
    B,
    clk,
    A,
    \exp_B_reg[6]_0 ,
    \exp_B_reg[8]_0 ,
    \exp_A_reg[6]_0 );
  output overflow4;
  output zero4;
  output [1:0]D;
  output A_28_sp_1;
  output B_0_sp_1;
  output A_0_sp_1;
  output A_25_sp_1;
  output A_19_sp_1;
  output B_25_sp_1;
  output B_19_sp_1;
  output [6:0]\B[29] ;
  output [31:0]result4;
  input [31:0]B;
  input clk;
  input [31:0]A;
  input \exp_B_reg[6]_0 ;
  input [1:0]\exp_B_reg[8]_0 ;
  input [6:0]\exp_A_reg[6]_0 ;

  wire [31:0]A;
  wire A_0_sn_1;
  wire A_19_sn_1;
  wire A_25_sn_1;
  wire A_28_sn_1;
  wire [31:0]B;
  wire [6:0]\B[29] ;
  wire B_0_sn_1;
  wire B_19_sn_1;
  wire B_25_sn_1;
  wire [1:0]D;
  wire \FSM_sequential_stare[2]_i_1__2_n_0 ;
  wire \FSM_sequential_stare[2]_i_2__0_n_0 ;
  wire \FSM_sequential_stare[2]_i_3__0_n_0 ;
  wire \FSM_sequential_stare[2]_i_8_n_0 ;
  wire \FSM_sequential_stare[2]_i_9_n_0 ;
  wire clk;
  wire [6:0]\exp_A_reg[6]_0 ;
  wire \exp_A_reg_n_0_[0] ;
  wire \exp_A_reg_n_0_[1] ;
  wire \exp_A_reg_n_0_[2] ;
  wire \exp_A_reg_n_0_[3] ;
  wire \exp_A_reg_n_0_[4] ;
  wire \exp_A_reg_n_0_[5] ;
  wire \exp_A_reg_n_0_[6] ;
  wire \exp_A_reg_n_0_[7] ;
  wire \exp_A_reg_n_0_[8] ;
  wire [8:0]exp_B;
  wire \exp_B[8]_i_10_n_0 ;
  wire \exp_B[8]_i_11_n_0 ;
  wire \exp_B[8]_i_12_n_0 ;
  wire \exp_B[8]_i_2_n_0 ;
  wire \exp_B[8]_i_4_n_0 ;
  wire \exp_B[8]_i_6_n_0 ;
  wire \exp_B[8]_i_7_n_0 ;
  wire \exp_B[8]_i_8_n_0 ;
  wire \exp_B[8]_i_9_n_0 ;
  wire \exp_B_reg[6]_0 ;
  wire [1:0]\exp_B_reg[8]_0 ;
  wire [8:0]exp_result;
  wire exp_result0_carry__0_i_1_n_0;
  wire exp_result0_carry__0_i_2_n_0;
  wire exp_result0_carry__0_i_3_n_0;
  wire exp_result0_carry__0_i_4_n_0;
  wire exp_result0_carry__0_n_0;
  wire exp_result0_carry__0_n_1;
  wire exp_result0_carry__0_n_2;
  wire exp_result0_carry__0_n_3;
  wire exp_result0_carry__1_i_1_n_0;
  wire exp_result0_carry_i_1_n_0;
  wire exp_result0_carry_i_2_n_0;
  wire exp_result0_carry_i_3_n_0;
  wire exp_result0_carry_i_4_n_0;
  wire exp_result0_carry_n_0;
  wire exp_result0_carry_n_1;
  wire exp_result0_carry_n_2;
  wire exp_result0_carry_n_3;
  wire \exp_result[6]_i_2_n_0 ;
  wire \exp_result[8]_i_1__0_n_0 ;
  wire \exp_result[8]_i_3__0_n_0 ;
  wire \exp_result_reg_n_0_[0] ;
  wire \exp_result_reg_n_0_[1] ;
  wire \exp_result_reg_n_0_[2] ;
  wire \exp_result_reg_n_0_[3] ;
  wire \exp_result_reg_n_0_[4] ;
  wire \exp_result_reg_n_0_[5] ;
  wire \exp_result_reg_n_0_[6] ;
  wire \exp_result_reg_n_0_[7] ;
  wire \exp_result_reg_n_0_[8] ;
  wire impartitorNormal_n_0;
  wire impartitorNormal_n_1;
  wire impartitorNormal_n_10;
  wire impartitorNormal_n_11;
  wire impartitorNormal_n_12;
  wire impartitorNormal_n_13;
  wire impartitorNormal_n_14;
  wire impartitorNormal_n_15;
  wire impartitorNormal_n_16;
  wire impartitorNormal_n_17;
  wire impartitorNormal_n_18;
  wire impartitorNormal_n_19;
  wire impartitorNormal_n_2;
  wire impartitorNormal_n_20;
  wire impartitorNormal_n_21;
  wire impartitorNormal_n_23;
  wire impartitorNormal_n_24;
  wire impartitorNormal_n_25;
  wire impartitorNormal_n_26;
  wire impartitorNormal_n_3;
  wire impartitorNormal_n_4;
  wire impartitorNormal_n_5;
  wire impartitorNormal_n_6;
  wire impartitorNormal_n_7;
  wire impartitorNormal_n_8;
  wire impartitorNormal_n_9;
  wire [8:0]in13;
  wire \mantisa_A_reg_n_0_[0] ;
  wire \mantisa_A_reg_n_0_[10] ;
  wire \mantisa_A_reg_n_0_[11] ;
  wire \mantisa_A_reg_n_0_[12] ;
  wire \mantisa_A_reg_n_0_[13] ;
  wire \mantisa_A_reg_n_0_[14] ;
  wire \mantisa_A_reg_n_0_[15] ;
  wire \mantisa_A_reg_n_0_[16] ;
  wire \mantisa_A_reg_n_0_[17] ;
  wire \mantisa_A_reg_n_0_[18] ;
  wire \mantisa_A_reg_n_0_[19] ;
  wire \mantisa_A_reg_n_0_[1] ;
  wire \mantisa_A_reg_n_0_[20] ;
  wire \mantisa_A_reg_n_0_[21] ;
  wire \mantisa_A_reg_n_0_[22] ;
  wire \mantisa_A_reg_n_0_[2] ;
  wire \mantisa_A_reg_n_0_[3] ;
  wire \mantisa_A_reg_n_0_[4] ;
  wire \mantisa_A_reg_n_0_[5] ;
  wire \mantisa_A_reg_n_0_[6] ;
  wire \mantisa_A_reg_n_0_[7] ;
  wire \mantisa_A_reg_n_0_[8] ;
  wire \mantisa_A_reg_n_0_[9] ;
  wire \mantisa_B_reg_n_0_[0] ;
  wire \mantisa_B_reg_n_0_[10] ;
  wire \mantisa_B_reg_n_0_[11] ;
  wire \mantisa_B_reg_n_0_[12] ;
  wire \mantisa_B_reg_n_0_[13] ;
  wire \mantisa_B_reg_n_0_[14] ;
  wire \mantisa_B_reg_n_0_[15] ;
  wire \mantisa_B_reg_n_0_[16] ;
  wire \mantisa_B_reg_n_0_[17] ;
  wire \mantisa_B_reg_n_0_[18] ;
  wire \mantisa_B_reg_n_0_[19] ;
  wire \mantisa_B_reg_n_0_[1] ;
  wire \mantisa_B_reg_n_0_[20] ;
  wire \mantisa_B_reg_n_0_[21] ;
  wire \mantisa_B_reg_n_0_[22] ;
  wire \mantisa_B_reg_n_0_[2] ;
  wire \mantisa_B_reg_n_0_[3] ;
  wire \mantisa_B_reg_n_0_[4] ;
  wire \mantisa_B_reg_n_0_[5] ;
  wire \mantisa_B_reg_n_0_[6] ;
  wire \mantisa_B_reg_n_0_[7] ;
  wire \mantisa_B_reg_n_0_[8] ;
  wire \mantisa_B_reg_n_0_[9] ;
  wire overflow4;
  wire overflow_i_1__2_n_0;
  wire [31:22]result0_in;
  wire [31:0]result4;
  wire \result[21]_i_1_n_0 ;
  wire \result[31]_i_1__1_n_0 ;
  wire semn_A;
  wire semn_A_reg_n_0;
  wire semn_B;
  wire semn_result_i_1__1_n_0;
  wire semn_result_reg_n_0;
  wire [2:0]stare;
  wire start_div_reg_n_0;
  wire zero4;
  wire [3:0]NLW_exp_result0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_exp_result0_carry__1_O_UNCONNECTED;

  assign A_0_sp_1 = A_0_sn_1;
  assign A_19_sp_1 = A_19_sn_1;
  assign A_25_sp_1 = A_25_sn_1;
  assign A_28_sp_1 = A_28_sn_1;
  assign B_0_sp_1 = B_0_sn_1;
  assign B_19_sp_1 = B_19_sn_1;
  assign B_25_sp_1 = B_25_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h000FF00E)) 
    \FSM_sequential_stare[2]_i_1__2 
       (.I0(\FSM_sequential_stare[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .I2(stare[0]),
        .I3(stare[1]),
        .I4(stare[2]),
        .O(\FSM_sequential_stare[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_stare[2]_i_2__0 
       (.I0(A_0_sn_1),
        .I1(A_25_sn_1),
        .I2(A[28]),
        .I3(A[30]),
        .I4(A[29]),
        .I5(A_19_sn_1),
        .O(\FSM_sequential_stare[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_stare[2]_i_3__0 
       (.I0(B_0_sn_1),
        .I1(B_25_sn_1),
        .I2(B[28]),
        .I3(B[30]),
        .I4(B[29]),
        .I5(B_19_sn_1),
        .O(\FSM_sequential_stare[2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_stare[2]_i_4 
       (.I0(A[25]),
        .I1(A[24]),
        .I2(A[27]),
        .I3(A[26]),
        .O(A_25_sn_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_stare[2]_i_5__0 
       (.I0(A[19]),
        .I1(A[18]),
        .I2(A[16]),
        .I3(A[17]),
        .I4(\FSM_sequential_stare[2]_i_8_n_0 ),
        .O(A_19_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_stare[2]_i_6 
       (.I0(B[25]),
        .I1(B[24]),
        .I2(B[27]),
        .I3(B[26]),
        .O(B_25_sn_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_stare[2]_i_7 
       (.I0(B[19]),
        .I1(B[18]),
        .I2(B[16]),
        .I3(B[17]),
        .I4(\FSM_sequential_stare[2]_i_9_n_0 ),
        .O(B_19_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_stare[2]_i_8 
       (.I0(A[21]),
        .I1(A[20]),
        .I2(A[22]),
        .I3(A[23]),
        .O(\FSM_sequential_stare[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_stare[2]_i_9 
       (.I0(B[21]),
        .I1(B[20]),
        .I2(B[22]),
        .I3(B[23]),
        .O(\FSM_sequential_stare[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "ajustareexponent:010,normalizarerezultat:011,impartiremantise:001,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(impartitorNormal_n_26),
        .Q(stare[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ajustareexponent:010,normalizarerezultat:011,impartiremantise:001,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(impartitorNormal_n_25),
        .Q(stare[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ajustareexponent:010,normalizarerezultat:011,impartiremantise:001,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[2]_i_1__2_n_0 ),
        .Q(stare[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \exp_A[7]_i_1 
       (.I0(A[30]),
        .I1(A_28_sn_1),
        .I2(A[29]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \exp_A[8]_i_1 
       (.I0(A[30]),
        .I1(A_28_sn_1),
        .I2(A[29]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \exp_A[8]_i_2 
       (.I0(A[28]),
        .I1(A[27]),
        .I2(A[25]),
        .I3(A[23]),
        .I4(A[24]),
        .I5(A[26]),
        .O(A_28_sn_1));
  FDRE \exp_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [0]),
        .Q(\exp_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exp_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [1]),
        .Q(\exp_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \exp_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [2]),
        .Q(\exp_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \exp_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [3]),
        .Q(\exp_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \exp_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [4]),
        .Q(\exp_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \exp_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [5]),
        .Q(\exp_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \exp_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[6]_0 [6]),
        .Q(\exp_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \exp_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(D[0]),
        .Q(\exp_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \exp_A_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(D[1]),
        .Q(\exp_A_reg_n_0_[8] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \exp_B[0]_i_1 
       (.I0(B[23]),
        .O(\B[29] [0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \exp_B[1]_i_1 
       (.I0(B[23]),
        .I1(B[24]),
        .O(\B[29] [1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \exp_B[2]_i_1 
       (.I0(B[25]),
        .I1(B[23]),
        .I2(B[24]),
        .O(\B[29] [2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \exp_B[3]_i_1 
       (.I0(B[26]),
        .I1(B[24]),
        .I2(B[23]),
        .I3(B[25]),
        .O(\B[29] [3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \exp_B[4]_i_1 
       (.I0(B[27]),
        .I1(B[25]),
        .I2(B[23]),
        .I3(B[24]),
        .I4(B[26]),
        .O(\B[29] [4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \exp_B[5]_i_1 
       (.I0(B[26]),
        .I1(B[24]),
        .I2(B[23]),
        .I3(B[25]),
        .I4(B[27]),
        .I5(B[28]),
        .O(\B[29] [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \exp_B[6]_i_1 
       (.I0(B[29]),
        .I1(\exp_B_reg[6]_0 ),
        .O(\B[29] [6]));
  LUT6 #(
    .INIT(64'h000000000000B0BB)) 
    \exp_B[8]_i_1 
       (.I0(\exp_B[8]_i_2_n_0 ),
        .I1(B_0_sn_1),
        .I2(\exp_B[8]_i_4_n_0 ),
        .I3(A_0_sn_1),
        .I4(stare[2]),
        .I5(\exp_B[8]_i_6_n_0 ),
        .O(semn_A));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exp_B[8]_i_10 
       (.I0(A[11]),
        .I1(A[10]),
        .I2(A[9]),
        .I3(A[8]),
        .I4(\exp_B[8]_i_12_n_0 ),
        .O(\exp_B[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_B[8]_i_11 
       (.I0(B[13]),
        .I1(B[12]),
        .I2(B[14]),
        .I3(B[15]),
        .O(\exp_B[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_B[8]_i_12 
       (.I0(A[13]),
        .I1(A[12]),
        .I2(A[14]),
        .I3(A[15]),
        .O(\exp_B[8]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exp_B[8]_i_2 
       (.I0(B_19_sn_1),
        .I1(B[29]),
        .I2(B[30]),
        .I3(B[28]),
        .I4(B_25_sn_1),
        .O(\exp_B[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \exp_B[8]_i_3 
       (.I0(\exp_B[8]_i_7_n_0 ),
        .I1(B[0]),
        .I2(B[1]),
        .I3(B[2]),
        .I4(B[3]),
        .I5(\exp_B[8]_i_8_n_0 ),
        .O(B_0_sn_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exp_B[8]_i_4 
       (.I0(A_19_sn_1),
        .I1(A[29]),
        .I2(A[30]),
        .I3(A[28]),
        .I4(A_25_sn_1),
        .O(\exp_B[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \exp_B[8]_i_5 
       (.I0(\exp_B[8]_i_9_n_0 ),
        .I1(A[0]),
        .I2(A[1]),
        .I3(A[2]),
        .I4(A[3]),
        .I5(\exp_B[8]_i_10_n_0 ),
        .O(A_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp_B[8]_i_6 
       (.I0(stare[1]),
        .I1(stare[0]),
        .O(\exp_B[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_B[8]_i_7 
       (.I0(B[5]),
        .I1(B[4]),
        .I2(B[6]),
        .I3(B[7]),
        .O(\exp_B[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exp_B[8]_i_8 
       (.I0(B[11]),
        .I1(B[10]),
        .I2(B[9]),
        .I3(B[8]),
        .I4(\exp_B[8]_i_11_n_0 ),
        .O(\exp_B[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exp_B[8]_i_9 
       (.I0(A[5]),
        .I1(A[4]),
        .I2(A[6]),
        .I3(A[7]),
        .O(\exp_B[8]_i_9_n_0 ));
  FDRE \exp_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [0]),
        .Q(exp_B[0]),
        .R(1'b0));
  FDRE \exp_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [1]),
        .Q(exp_B[1]),
        .R(1'b0));
  FDRE \exp_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [2]),
        .Q(exp_B[2]),
        .R(1'b0));
  FDRE \exp_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [3]),
        .Q(exp_B[3]),
        .R(1'b0));
  FDRE \exp_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [4]),
        .Q(exp_B[4]),
        .R(1'b0));
  FDRE \exp_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [5]),
        .Q(exp_B[5]),
        .R(1'b0));
  FDRE \exp_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(\B[29] [6]),
        .Q(exp_B[6]),
        .R(1'b0));
  FDRE \exp_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[8]_0 [0]),
        .Q(exp_B[7]),
        .R(1'b0));
  FDRE \exp_B_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[8]_0 [1]),
        .Q(exp_B[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 exp_result0_carry
       (.CI(1'b0),
        .CO({exp_result0_carry_n_0,exp_result0_carry_n_1,exp_result0_carry_n_2,exp_result0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\exp_A_reg_n_0_[3] ,\exp_A_reg_n_0_[2] ,\exp_A_reg_n_0_[1] ,\exp_A_reg_n_0_[0] }),
        .O(in13[3:0]),
        .S({exp_result0_carry_i_1_n_0,exp_result0_carry_i_2_n_0,exp_result0_carry_i_3_n_0,exp_result0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 exp_result0_carry__0
       (.CI(exp_result0_carry_n_0),
        .CO({exp_result0_carry__0_n_0,exp_result0_carry__0_n_1,exp_result0_carry__0_n_2,exp_result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\exp_A_reg_n_0_[7] ,\exp_A_reg_n_0_[6] ,\exp_A_reg_n_0_[5] ,\exp_A_reg_n_0_[4] }),
        .O(in13[7:4]),
        .S({exp_result0_carry__0_i_1_n_0,exp_result0_carry__0_i_2_n_0,exp_result0_carry__0_i_3_n_0,exp_result0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry__0_i_1
       (.I0(\exp_A_reg_n_0_[7] ),
        .I1(exp_B[7]),
        .O(exp_result0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry__0_i_2
       (.I0(\exp_A_reg_n_0_[6] ),
        .I1(exp_B[6]),
        .O(exp_result0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry__0_i_3
       (.I0(\exp_A_reg_n_0_[5] ),
        .I1(exp_B[5]),
        .O(exp_result0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry__0_i_4
       (.I0(\exp_A_reg_n_0_[4] ),
        .I1(exp_B[4]),
        .O(exp_result0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 exp_result0_carry__1
       (.CI(exp_result0_carry__0_n_0),
        .CO(NLW_exp_result0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_exp_result0_carry__1_O_UNCONNECTED[3:1],in13[8]}),
        .S({1'b0,1'b0,1'b0,exp_result0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry__1_i_1
       (.I0(\exp_A_reg_n_0_[8] ),
        .I1(exp_B[8]),
        .O(exp_result0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry_i_1
       (.I0(\exp_A_reg_n_0_[3] ),
        .I1(exp_B[3]),
        .O(exp_result0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry_i_2
       (.I0(\exp_A_reg_n_0_[2] ),
        .I1(exp_B[2]),
        .O(exp_result0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry_i_3
       (.I0(\exp_A_reg_n_0_[1] ),
        .I1(exp_B[1]),
        .O(exp_result0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    exp_result0_carry_i_4
       (.I0(\exp_A_reg_n_0_[0] ),
        .I1(exp_B[0]),
        .O(exp_result0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \exp_result[0]_i_1__1 
       (.I0(in13[0]),
        .I1(\exp_result_reg_n_0_[0] ),
        .I2(stare[0]),
        .O(exp_result[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \exp_result[1]_i_1 
       (.I0(\exp_result_reg_n_0_[1] ),
        .I1(\exp_result_reg_n_0_[0] ),
        .I2(stare[0]),
        .I3(in13[1]),
        .O(exp_result[1]));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \exp_result[2]_i_1__0 
       (.I0(\exp_result_reg_n_0_[0] ),
        .I1(\exp_result_reg_n_0_[1] ),
        .I2(\exp_result_reg_n_0_[2] ),
        .I3(stare[0]),
        .I4(in13[2]),
        .O(exp_result[2]));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \exp_result[3]_i_1__0 
       (.I0(\exp_result_reg_n_0_[2] ),
        .I1(\exp_result_reg_n_0_[1] ),
        .I2(\exp_result_reg_n_0_[0] ),
        .I3(\exp_result_reg_n_0_[3] ),
        .I4(stare[0]),
        .I5(in13[3]),
        .O(exp_result[3]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \exp_result[4]_i_1__1 
       (.I0(\exp_result_reg_n_0_[4] ),
        .I1(\exp_result[6]_i_2_n_0 ),
        .I2(stare[0]),
        .I3(in13[4]),
        .O(exp_result[4]));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \exp_result[5]_i_1__0 
       (.I0(\exp_result_reg_n_0_[5] ),
        .I1(\exp_result_reg_n_0_[4] ),
        .I2(\exp_result[6]_i_2_n_0 ),
        .I3(stare[0]),
        .I4(in13[5]),
        .O(exp_result[5]));
  LUT6 #(
    .INIT(64'hAA9AFFFFAA9A0000)) 
    \exp_result[6]_i_1__0 
       (.I0(\exp_result_reg_n_0_[6] ),
        .I1(\exp_result_reg_n_0_[5] ),
        .I2(\exp_result[6]_i_2_n_0 ),
        .I3(\exp_result_reg_n_0_[4] ),
        .I4(stare[0]),
        .I5(in13[6]),
        .O(exp_result[6]));
  LUT4 #(
    .INIT(16'h0001)) 
    \exp_result[6]_i_2 
       (.I0(\exp_result_reg_n_0_[3] ),
        .I1(\exp_result_reg_n_0_[0] ),
        .I2(\exp_result_reg_n_0_[1] ),
        .I3(\exp_result_reg_n_0_[2] ),
        .O(\exp_result[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h59FF5900)) 
    \exp_result[7]_i_1__0 
       (.I0(\exp_result_reg_n_0_[7] ),
        .I1(\exp_result[8]_i_3__0_n_0 ),
        .I2(\exp_result_reg_n_0_[6] ),
        .I3(stare[0]),
        .I4(in13[7]),
        .O(exp_result[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \exp_result[8]_i_1__0 
       (.I0(stare[1]),
        .I1(stare[2]),
        .O(\exp_result[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h65AAFFFF65AA0000)) 
    \exp_result[8]_i_2__0 
       (.I0(\exp_result_reg_n_0_[8] ),
        .I1(\exp_result_reg_n_0_[6] ),
        .I2(\exp_result[8]_i_3__0_n_0 ),
        .I3(\exp_result_reg_n_0_[7] ),
        .I4(stare[0]),
        .I5(in13[8]),
        .O(exp_result[8]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \exp_result[8]_i_3__0 
       (.I0(\exp_result_reg_n_0_[4] ),
        .I1(\exp_result_reg_n_0_[3] ),
        .I2(\exp_result_reg_n_0_[0] ),
        .I3(\exp_result_reg_n_0_[1] ),
        .I4(\exp_result_reg_n_0_[2] ),
        .I5(\exp_result_reg_n_0_[5] ),
        .O(\exp_result[8]_i_3__0_n_0 ));
  FDRE \exp_result_reg[0] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[0]),
        .Q(\exp_result_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exp_result_reg[1] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[1]),
        .Q(\exp_result_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \exp_result_reg[2] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[2]),
        .Q(\exp_result_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \exp_result_reg[3] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[3]),
        .Q(\exp_result_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \exp_result_reg[4] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[4]),
        .Q(\exp_result_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \exp_result_reg[5] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[5]),
        .Q(\exp_result_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \exp_result_reg[6] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[6]),
        .Q(\exp_result_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \exp_result_reg[7] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[7]),
        .Q(\exp_result_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \exp_result_reg[8] 
       (.C(clk),
        .CE(\exp_result[8]_i_1__0_n_0 ),
        .D(exp_result[8]),
        .Q(\exp_result_reg_n_0_[8] ),
        .R(1'b0));
  design_1_ALU_0_0_divBinary impartitorNormal
       (.\A_extins_reg[22]_0 ({\mantisa_A_reg_n_0_[22] ,\mantisa_A_reg_n_0_[21] ,\mantisa_A_reg_n_0_[20] ,\mantisa_A_reg_n_0_[19] ,\mantisa_A_reg_n_0_[18] ,\mantisa_A_reg_n_0_[17] ,\mantisa_A_reg_n_0_[16] ,\mantisa_A_reg_n_0_[15] ,\mantisa_A_reg_n_0_[14] ,\mantisa_A_reg_n_0_[13] ,\mantisa_A_reg_n_0_[12] ,\mantisa_A_reg_n_0_[11] ,\mantisa_A_reg_n_0_[10] ,\mantisa_A_reg_n_0_[9] ,\mantisa_A_reg_n_0_[8] ,\mantisa_A_reg_n_0_[7] ,\mantisa_A_reg_n_0_[6] ,\mantisa_A_reg_n_0_[5] ,\mantisa_A_reg_n_0_[4] ,\mantisa_A_reg_n_0_[3] ,\mantisa_A_reg_n_0_[2] ,\mantisa_A_reg_n_0_[1] ,\mantisa_A_reg_n_0_[0] }),
        .\A_extins_reg[23]_0 (start_div_reg_n_0),
        .\B_extins_reg[22]_0 ({\mantisa_B_reg_n_0_[22] ,\mantisa_B_reg_n_0_[21] ,\mantisa_B_reg_n_0_[20] ,\mantisa_B_reg_n_0_[19] ,\mantisa_B_reg_n_0_[18] ,\mantisa_B_reg_n_0_[17] ,\mantisa_B_reg_n_0_[16] ,\mantisa_B_reg_n_0_[15] ,\mantisa_B_reg_n_0_[14] ,\mantisa_B_reg_n_0_[13] ,\mantisa_B_reg_n_0_[12] ,\mantisa_B_reg_n_0_[11] ,\mantisa_B_reg_n_0_[10] ,\mantisa_B_reg_n_0_[9] ,\mantisa_B_reg_n_0_[8] ,\mantisa_B_reg_n_0_[7] ,\mantisa_B_reg_n_0_[6] ,\mantisa_B_reg_n_0_[5] ,\mantisa_B_reg_n_0_[4] ,\mantisa_B_reg_n_0_[3] ,\mantisa_B_reg_n_0_[2] ,\mantisa_B_reg_n_0_[1] ,\mantisa_B_reg_n_0_[0] }),
        .D(result0_in[22]),
        .E(semn_A),
        .\FSM_sequential_stare_reg[0] (\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .\FSM_sequential_stare_reg[0]_0 (\FSM_sequential_stare[2]_i_2__0_n_0 ),
        .\FSM_sequential_stare_reg[2] (impartitorNormal_n_24),
        .Q({impartitorNormal_n_0,impartitorNormal_n_1,impartitorNormal_n_2,impartitorNormal_n_3,impartitorNormal_n_4,impartitorNormal_n_5,impartitorNormal_n_6,impartitorNormal_n_7,impartitorNormal_n_8,impartitorNormal_n_9,impartitorNormal_n_10,impartitorNormal_n_11,impartitorNormal_n_12,impartitorNormal_n_13,impartitorNormal_n_14,impartitorNormal_n_15,impartitorNormal_n_16,impartitorNormal_n_17,impartitorNormal_n_18,impartitorNormal_n_19,impartitorNormal_n_20,impartitorNormal_n_21}),
        .clk(clk),
        .done_reg_0(impartitorNormal_n_23),
        .done_reg_1(impartitorNormal_n_25),
        .done_reg_2(impartitorNormal_n_26),
        .stare(stare),
        .zero4(zero4));
  FDRE \mantisa_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(A[0]),
        .Q(\mantisa_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(A[10]),
        .Q(\mantisa_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(A[11]),
        .Q(\mantisa_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(A[12]),
        .Q(\mantisa_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(A[13]),
        .Q(\mantisa_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(A[14]),
        .Q(\mantisa_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(A[15]),
        .Q(\mantisa_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(A[16]),
        .Q(\mantisa_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(A[17]),
        .Q(\mantisa_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(A[18]),
        .Q(\mantisa_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(A[19]),
        .Q(\mantisa_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(A[1]),
        .Q(\mantisa_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(A[20]),
        .Q(\mantisa_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(A[21]),
        .Q(\mantisa_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(A[22]),
        .Q(\mantisa_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(A[2]),
        .Q(\mantisa_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(A[3]),
        .Q(\mantisa_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(A[4]),
        .Q(\mantisa_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(A[5]),
        .Q(\mantisa_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(A[6]),
        .Q(\mantisa_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(A[7]),
        .Q(\mantisa_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(A[8]),
        .Q(\mantisa_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(A[9]),
        .Q(\mantisa_A_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(B[0]),
        .Q(\mantisa_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(B[10]),
        .Q(\mantisa_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(B[11]),
        .Q(\mantisa_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(B[12]),
        .Q(\mantisa_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(B[13]),
        .Q(\mantisa_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(B[14]),
        .Q(\mantisa_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(B[15]),
        .Q(\mantisa_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(B[16]),
        .Q(\mantisa_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(B[17]),
        .Q(\mantisa_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(B[18]),
        .Q(\mantisa_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(B[19]),
        .Q(\mantisa_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(B[1]),
        .Q(\mantisa_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(B[20]),
        .Q(\mantisa_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(B[21]),
        .Q(\mantisa_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(B[22]),
        .Q(\mantisa_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(B[2]),
        .Q(\mantisa_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(B[3]),
        .Q(\mantisa_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(B[4]),
        .Q(\mantisa_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(B[5]),
        .Q(\mantisa_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(B[6]),
        .Q(\mantisa_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(B[7]),
        .Q(\mantisa_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(B[8]),
        .Q(\mantisa_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(B[9]),
        .Q(\mantisa_B_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF5F55555B0A00000)) 
    overflow_i_1__2
       (.I0(semn_A),
        .I1(stare[2]),
        .I2(stare[1]),
        .I3(stare[0]),
        .I4(\exp_result_reg_n_0_[8] ),
        .I5(overflow4),
        .O(overflow_i_1__2_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow_i_1__2_n_0),
        .Q(overflow4),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000000E)) 
    \result[21]_i_1 
       (.I0(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .I1(\FSM_sequential_stare[2]_i_2__0_n_0 ),
        .I2(stare[0]),
        .I3(stare[2]),
        .I4(stare[1]),
        .O(\result[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[23]_i_1 
       (.I0(\exp_result_reg_n_0_[0] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[24]_i_1 
       (.I0(\exp_result_reg_n_0_[1] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[25]_i_1 
       (.I0(\exp_result_reg_n_0_[2] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[26]_i_1 
       (.I0(\exp_result_reg_n_0_[3] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[27]_i_1 
       (.I0(\exp_result_reg_n_0_[4] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[28]_i_1__0 
       (.I0(\exp_result_reg_n_0_[5] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[29]_i_1__0 
       (.I0(\exp_result_reg_n_0_[6] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[30]_i_1__0 
       (.I0(\exp_result_reg_n_0_[7] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(result0_in[30]));
  LUT5 #(
    .INIT(32'h41414140)) 
    \result[31]_i_1__1 
       (.I0(stare[2]),
        .I1(stare[1]),
        .I2(stare[0]),
        .I3(\FSM_sequential_stare[2]_i_2__0_n_0 ),
        .I4(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .O(\result[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8888BB8BBB8888)) 
    \result[31]_i_2__0 
       (.I0(semn_result_reg_n_0),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare[2]_i_2__0_n_0 ),
        .I3(\FSM_sequential_stare[2]_i_3__0_n_0 ),
        .I4(A[31]),
        .I5(B[31]),
        .O(result0_in[31]));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_21),
        .Q(result4[0]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_11),
        .Q(result4[10]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_10),
        .Q(result4[11]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_9),
        .Q(result4[12]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_8),
        .Q(result4[13]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_7),
        .Q(result4[14]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_6),
        .Q(result4[15]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_5),
        .Q(result4[16]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_4),
        .Q(result4[17]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_3),
        .Q(result4[18]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_2),
        .Q(result4[19]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_20),
        .Q(result4[1]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_1),
        .Q(result4[20]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_0),
        .Q(result4[21]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[22]),
        .Q(result4[22]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[23]),
        .Q(result4[23]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[24]),
        .Q(result4[24]),
        .R(1'b0));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[25]),
        .Q(result4[25]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[26]),
        .Q(result4[26]),
        .R(1'b0));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[27]),
        .Q(result4[27]),
        .R(1'b0));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[28]),
        .Q(result4[28]),
        .R(1'b0));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[29]),
        .Q(result4[29]),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_19),
        .Q(result4[2]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[30]),
        .Q(result4[30]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(result0_in[31]),
        .Q(result4[31]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_18),
        .Q(result4[3]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_17),
        .Q(result4[4]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_16),
        .Q(result4[5]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_15),
        .Q(result4[6]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_14),
        .Q(result4[7]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_13),
        .Q(result4[8]),
        .R(\result[21]_i_1_n_0 ));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(\result[31]_i_1__1_n_0 ),
        .D(impartitorNormal_n_12),
        .Q(result4[9]),
        .R(\result[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    semn_A_reg
       (.C(clk),
        .CE(semn_A),
        .D(A[31]),
        .Q(semn_A_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    semn_B_reg
       (.C(clk),
        .CE(semn_A),
        .D(B[31]),
        .Q(semn_B),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF6FF00000600)) 
    semn_result_i_1__1
       (.I0(semn_B),
        .I1(semn_A_reg_n_0),
        .I2(stare[2]),
        .I3(stare[1]),
        .I4(stare[0]),
        .I5(semn_result_reg_n_0),
        .O(semn_result_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    semn_result_reg
       (.C(clk),
        .CE(1'b1),
        .D(semn_result_i_1__1_n_0),
        .Q(semn_result_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_div_reg
       (.C(clk),
        .CE(1'b1),
        .D(impartitorNormal_n_23),
        .Q(start_div_reg_n_0),
        .R(1'b0));
  FDRE zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(impartitorNormal_n_24),
        .Q(zero4),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "divBinary" *) 
module design_1_ALU_0_0_divBinary
   (Q,
    D,
    done_reg_0,
    \FSM_sequential_stare_reg[2] ,
    done_reg_1,
    done_reg_2,
    clk,
    \A_extins_reg[23]_0 ,
    stare,
    \FSM_sequential_stare_reg[0] ,
    \FSM_sequential_stare_reg[0]_0 ,
    E,
    zero4,
    \B_extins_reg[22]_0 ,
    \A_extins_reg[22]_0 );
  output [21:0]Q;
  output [0:0]D;
  output done_reg_0;
  output \FSM_sequential_stare_reg[2] ;
  output done_reg_1;
  output done_reg_2;
  input clk;
  input \A_extins_reg[23]_0 ;
  input [2:0]stare;
  input \FSM_sequential_stare_reg[0] ;
  input \FSM_sequential_stare_reg[0]_0 ;
  input [0:0]E;
  input zero4;
  input [22:0]\B_extins_reg[22]_0 ;
  input [22:0]\A_extins_reg[22]_0 ;

  wire [22:0]A_extins;
  wire \A_extins[23]_i_1_n_0 ;
  wire [22:0]\A_extins_reg[22]_0 ;
  wire \A_extins_reg[23]_0 ;
  wire \A_extins_reg_n_0_[23] ;
  wire [23:0]B_extins;
  wire B_extins_2;
  wire [22:0]\B_extins_reg[22]_0 ;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_stare[0]_i_1_n_0 ;
  wire \FSM_onehot_stare[1]_i_1_n_0 ;
  wire \FSM_onehot_stare[2]_i_1_n_0 ;
  wire \FSM_onehot_stare[2]_i_2_n_0 ;
  wire \FSM_onehot_stare_reg_n_0_[0] ;
  wire \FSM_onehot_stare_reg_n_0_[1] ;
  wire \FSM_onehot_stare_reg_n_0_[2] ;
  wire \FSM_sequential_stare_reg[0] ;
  wire \FSM_sequential_stare_reg[0]_0 ;
  wire \FSM_sequential_stare_reg[2] ;
  wire [21:0]Q;
  wire clk;
  wire [3:1]contor;
  wire \contor[0]_i_1__1_n_0 ;
  wire \contor[2]_i_1_n_0 ;
  wire \contor[3]_i_1_n_0 ;
  wire \contor[4]_i_1_n_0 ;
  wire \contor[4]_i_2_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire \contor_reg_n_0_[4] ;
  wire done_div;
  wire done_i_1__1_n_0;
  wire done_reg_0;
  wire done_reg_1;
  wire done_reg_2;
  wire [23:1]in9;
  wire p_0_in;
  wire [47:0]partial_remainder;
  wire [47:0]partial_remainder0;
  wire \partial_remainder[11]_i_3_n_0 ;
  wire \partial_remainder[11]_i_4_n_0 ;
  wire \partial_remainder[11]_i_5_n_0 ;
  wire \partial_remainder[11]_i_6_n_0 ;
  wire \partial_remainder[15]_i_3_n_0 ;
  wire \partial_remainder[15]_i_4_n_0 ;
  wire \partial_remainder[15]_i_5_n_0 ;
  wire \partial_remainder[15]_i_6_n_0 ;
  wire \partial_remainder[19]_i_3_n_0 ;
  wire \partial_remainder[19]_i_4_n_0 ;
  wire \partial_remainder[19]_i_5_n_0 ;
  wire \partial_remainder[19]_i_6_n_0 ;
  wire \partial_remainder[23]_i_3_n_0 ;
  wire \partial_remainder[23]_i_4_n_0 ;
  wire \partial_remainder[23]_i_5_n_0 ;
  wire \partial_remainder[23]_i_6_n_0 ;
  wire \partial_remainder[27]_i_3_n_0 ;
  wire \partial_remainder[27]_i_4_n_0 ;
  wire \partial_remainder[27]_i_5_n_0 ;
  wire \partial_remainder[27]_i_6_n_0 ;
  wire \partial_remainder[31]_i_3_n_0 ;
  wire \partial_remainder[31]_i_4_n_0 ;
  wire \partial_remainder[31]_i_5_n_0 ;
  wire \partial_remainder[31]_i_6_n_0 ;
  wire \partial_remainder[35]_i_3_n_0 ;
  wire \partial_remainder[35]_i_4_n_0 ;
  wire \partial_remainder[35]_i_5_n_0 ;
  wire \partial_remainder[35]_i_6_n_0 ;
  wire \partial_remainder[39]_i_3_n_0 ;
  wire \partial_remainder[39]_i_4_n_0 ;
  wire \partial_remainder[39]_i_5_n_0 ;
  wire \partial_remainder[39]_i_6_n_0 ;
  wire \partial_remainder[3]_i_3_n_0 ;
  wire \partial_remainder[3]_i_4_n_0 ;
  wire \partial_remainder[3]_i_5_n_0 ;
  wire \partial_remainder[3]_i_6_n_0 ;
  wire \partial_remainder[43]_i_3_n_0 ;
  wire \partial_remainder[43]_i_4_n_0 ;
  wire \partial_remainder[43]_i_5_n_0 ;
  wire \partial_remainder[43]_i_6_n_0 ;
  wire \partial_remainder[47]_i_3_n_0 ;
  wire \partial_remainder[47]_i_4_n_0 ;
  wire \partial_remainder[47]_i_5_n_0 ;
  wire \partial_remainder[47]_i_6_n_0 ;
  wire \partial_remainder[7]_i_3_n_0 ;
  wire \partial_remainder[7]_i_4_n_0 ;
  wire \partial_remainder[7]_i_5_n_0 ;
  wire \partial_remainder[7]_i_6_n_0 ;
  wire [47:0]partial_remainder_0;
  wire \partial_remainder_reg[11]_i_2_n_0 ;
  wire \partial_remainder_reg[11]_i_2_n_1 ;
  wire \partial_remainder_reg[11]_i_2_n_2 ;
  wire \partial_remainder_reg[11]_i_2_n_3 ;
  wire \partial_remainder_reg[15]_i_2_n_0 ;
  wire \partial_remainder_reg[15]_i_2_n_1 ;
  wire \partial_remainder_reg[15]_i_2_n_2 ;
  wire \partial_remainder_reg[15]_i_2_n_3 ;
  wire \partial_remainder_reg[19]_i_2_n_0 ;
  wire \partial_remainder_reg[19]_i_2_n_1 ;
  wire \partial_remainder_reg[19]_i_2_n_2 ;
  wire \partial_remainder_reg[19]_i_2_n_3 ;
  wire \partial_remainder_reg[23]_i_2_n_0 ;
  wire \partial_remainder_reg[23]_i_2_n_1 ;
  wire \partial_remainder_reg[23]_i_2_n_2 ;
  wire \partial_remainder_reg[23]_i_2_n_3 ;
  wire \partial_remainder_reg[27]_i_2_n_0 ;
  wire \partial_remainder_reg[27]_i_2_n_1 ;
  wire \partial_remainder_reg[27]_i_2_n_2 ;
  wire \partial_remainder_reg[27]_i_2_n_3 ;
  wire \partial_remainder_reg[31]_i_2_n_0 ;
  wire \partial_remainder_reg[31]_i_2_n_1 ;
  wire \partial_remainder_reg[31]_i_2_n_2 ;
  wire \partial_remainder_reg[31]_i_2_n_3 ;
  wire \partial_remainder_reg[35]_i_2_n_0 ;
  wire \partial_remainder_reg[35]_i_2_n_1 ;
  wire \partial_remainder_reg[35]_i_2_n_2 ;
  wire \partial_remainder_reg[35]_i_2_n_3 ;
  wire \partial_remainder_reg[39]_i_2_n_0 ;
  wire \partial_remainder_reg[39]_i_2_n_1 ;
  wire \partial_remainder_reg[39]_i_2_n_2 ;
  wire \partial_remainder_reg[39]_i_2_n_3 ;
  wire \partial_remainder_reg[3]_i_2_n_0 ;
  wire \partial_remainder_reg[3]_i_2_n_1 ;
  wire \partial_remainder_reg[3]_i_2_n_2 ;
  wire \partial_remainder_reg[3]_i_2_n_3 ;
  wire \partial_remainder_reg[43]_i_2_n_0 ;
  wire \partial_remainder_reg[43]_i_2_n_1 ;
  wire \partial_remainder_reg[43]_i_2_n_2 ;
  wire \partial_remainder_reg[43]_i_2_n_3 ;
  wire \partial_remainder_reg[47]_i_2_n_1 ;
  wire \partial_remainder_reg[47]_i_2_n_2 ;
  wire \partial_remainder_reg[47]_i_2_n_3 ;
  wire \partial_remainder_reg[7]_i_2_n_0 ;
  wire \partial_remainder_reg[7]_i_2_n_1 ;
  wire \partial_remainder_reg[7]_i_2_n_2 ;
  wire \partial_remainder_reg[7]_i_2_n_3 ;
  wire \result[23]_i_1__0_n_0 ;
  wire \result_reg_n_0_[22] ;
  wire \result_reg_n_0_[23] ;
  wire [23:0]rezultat;
  wire rezultat1_carry__0_i_1_n_0;
  wire rezultat1_carry__0_i_2_n_0;
  wire rezultat1_carry__0_i_3_n_0;
  wire rezultat1_carry__0_i_4_n_0;
  wire rezultat1_carry__0_i_5_n_0;
  wire rezultat1_carry__0_i_6_n_0;
  wire rezultat1_carry__0_i_7_n_0;
  wire rezultat1_carry__0_i_8_n_0;
  wire rezultat1_carry__0_n_0;
  wire rezultat1_carry__0_n_1;
  wire rezultat1_carry__0_n_2;
  wire rezultat1_carry__0_n_3;
  wire rezultat1_carry__1_i_1_n_0;
  wire rezultat1_carry__1_i_2_n_0;
  wire rezultat1_carry__1_i_3_n_0;
  wire rezultat1_carry__1_i_4_n_0;
  wire rezultat1_carry__1_i_5_n_0;
  wire rezultat1_carry__1_i_6_n_0;
  wire rezultat1_carry__1_i_7_n_0;
  wire rezultat1_carry__1_i_8_n_0;
  wire rezultat1_carry__1_n_0;
  wire rezultat1_carry__1_n_1;
  wire rezultat1_carry__1_n_2;
  wire rezultat1_carry__1_n_3;
  wire rezultat1_carry__2_i_1_n_0;
  wire rezultat1_carry__2_i_2_n_0;
  wire rezultat1_carry__2_i_3_n_0;
  wire rezultat1_carry__2_i_4_n_0;
  wire rezultat1_carry__2_i_5_n_0;
  wire rezultat1_carry__2_i_6_n_0;
  wire rezultat1_carry__2_i_7_n_0;
  wire rezultat1_carry__2_i_8_n_0;
  wire rezultat1_carry__2_n_0;
  wire rezultat1_carry__2_n_1;
  wire rezultat1_carry__2_n_2;
  wire rezultat1_carry__2_n_3;
  wire rezultat1_carry__3_i_1_n_0;
  wire rezultat1_carry__3_i_2_n_0;
  wire rezultat1_carry__3_i_3_n_0;
  wire rezultat1_carry__3_i_4_n_0;
  wire rezultat1_carry__3_i_5_n_0;
  wire rezultat1_carry__3_i_6_n_0;
  wire rezultat1_carry__3_i_7_n_0;
  wire rezultat1_carry__3_i_8_n_0;
  wire rezultat1_carry__3_n_0;
  wire rezultat1_carry__3_n_1;
  wire rezultat1_carry__3_n_2;
  wire rezultat1_carry__3_n_3;
  wire rezultat1_carry__4_i_1_n_0;
  wire rezultat1_carry__4_i_2_n_0;
  wire rezultat1_carry__4_i_3_n_0;
  wire rezultat1_carry__4_i_4_n_0;
  wire rezultat1_carry__4_i_5_n_0;
  wire rezultat1_carry__4_i_6_n_0;
  wire rezultat1_carry__4_i_7_n_0;
  wire rezultat1_carry__4_i_8_n_0;
  wire rezultat1_carry__4_n_1;
  wire rezultat1_carry__4_n_2;
  wire rezultat1_carry__4_n_3;
  wire rezultat1_carry_i_1_n_0;
  wire rezultat1_carry_i_2_n_0;
  wire rezultat1_carry_i_3_n_0;
  wire rezultat1_carry_i_4_n_0;
  wire rezultat1_carry_i_5_n_0;
  wire rezultat1_carry_i_6_n_0;
  wire rezultat1_carry_i_7_n_0;
  wire rezultat1_carry_i_8_n_0;
  wire rezultat1_carry_n_0;
  wire rezultat1_carry_n_1;
  wire rezultat1_carry_n_2;
  wire rezultat1_carry_n_3;
  wire \rezultat[0]_i_1_n_0 ;
  wire \rezultat[10]_i_1_n_0 ;
  wire \rezultat[11]_i_1_n_0 ;
  wire \rezultat[12]_i_1_n_0 ;
  wire \rezultat[13]_i_1_n_0 ;
  wire \rezultat[14]_i_1_n_0 ;
  wire \rezultat[15]_i_1_n_0 ;
  wire \rezultat[15]_i_2_n_0 ;
  wire \rezultat[16]_i_1_n_0 ;
  wire \rezultat[16]_i_2_n_0 ;
  wire \rezultat[17]_i_1_n_0 ;
  wire \rezultat[17]_i_2_n_0 ;
  wire \rezultat[18]_i_1_n_0 ;
  wire \rezultat[18]_i_2_n_0 ;
  wire \rezultat[19]_i_1_n_0 ;
  wire \rezultat[19]_i_2_n_0 ;
  wire \rezultat[1]_i_1_n_0 ;
  wire \rezultat[20]_i_1_n_0 ;
  wire \rezultat[20]_i_2_n_0 ;
  wire \rezultat[21]_i_1_n_0 ;
  wire \rezultat[21]_i_2_n_0 ;
  wire \rezultat[22]_i_1_n_0 ;
  wire \rezultat[22]_i_2_n_0 ;
  wire \rezultat[23]_i_1_n_0 ;
  wire \rezultat[23]_i_3_n_0 ;
  wire \rezultat[23]_i_4_n_0 ;
  wire \rezultat[2]_i_1_n_0 ;
  wire \rezultat[3]_i_1_n_0 ;
  wire \rezultat[4]_i_1_n_0 ;
  wire \rezultat[5]_i_1_n_0 ;
  wire \rezultat[6]_i_1_n_0 ;
  wire \rezultat[7]_i_1_n_0 ;
  wire \rezultat[7]_i_2_n_0 ;
  wire \rezultat[8]_i_1_n_0 ;
  wire \rezultat[9]_i_1_n_0 ;
  wire [22:22]rezultat_1;
  wire [2:0]stare;
  wire zero4;
  wire zero_i_2__1_n_0;
  wire zero_i_3__1_n_0;
  wire zero_i_4__1_n_0;
  wire zero_i_5__0_n_0;
  wire zero_i_6__0_n_0;
  wire zero_i_7__0_n_0;
  wire [3:3]\NLW_partial_remainder_reg[47]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_rezultat1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rezultat1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rezultat1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rezultat1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_rezultat1_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_rezultat1_carry__4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A_extins[0]_i_1__0 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\A_extins_reg[22]_0 [0]),
        .O(A_extins[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[10]_i_1__0 
       (.I0(in9[10]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [10]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[11]_i_1__0 
       (.I0(in9[11]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [11]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[12]_i_1__0 
       (.I0(in9[12]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [12]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[13]_i_1__0 
       (.I0(in9[13]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [13]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[14]_i_1__0 
       (.I0(in9[14]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [14]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[15]_i_1__0 
       (.I0(in9[15]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [15]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[16]_i_1__0 
       (.I0(in9[16]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [16]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[17]_i_1__0 
       (.I0(in9[17]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [17]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[18]_i_1__0 
       (.I0(in9[18]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [18]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[19]_i_1__0 
       (.I0(in9[19]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [19]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[1]_i_1__0 
       (.I0(in9[1]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [1]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[20]_i_1__0 
       (.I0(in9[20]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [20]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[21]_i_1__0 
       (.I0(in9[21]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [21]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[22]_i_1__0 
       (.I0(in9[22]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [22]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[22]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A_extins[23]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in9[23]),
        .O(\A_extins[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[2]_i_1__0 
       (.I0(in9[2]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [2]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[3]_i_1__0 
       (.I0(in9[3]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [3]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[4]_i_1__0 
       (.I0(in9[4]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [4]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[5]_i_1__0 
       (.I0(in9[5]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [5]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[6]_i_1__0 
       (.I0(in9[6]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [6]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[7]_i_1__0 
       (.I0(in9[7]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [7]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[8]_i_1__0 
       (.I0(in9[8]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [8]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \A_extins[9]_i_1__0 
       (.I0(in9[9]),
        .I1(\FSM_onehot_stare_reg_n_0_[1] ),
        .I2(\A_extins_reg[22]_0 [9]),
        .I3(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(A_extins[9]));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[0] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[0]),
        .Q(in9[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[10] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[10]),
        .Q(in9[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[11] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[11]),
        .Q(in9[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[12] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[12]),
        .Q(in9[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[13] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[13]),
        .Q(in9[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[14] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[14]),
        .Q(in9[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[15] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[15]),
        .Q(in9[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[16] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[16]),
        .Q(in9[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[17] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[17]),
        .Q(in9[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[18] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[18]),
        .Q(in9[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[19] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[19]),
        .Q(in9[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[1] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[1]),
        .Q(in9[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[20] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[20]),
        .Q(in9[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[21] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[21]),
        .Q(in9[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[22] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[22]),
        .Q(in9[23]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \A_extins_reg[23] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(\A_extins[23]_i_1_n_0 ),
        .Q(\A_extins_reg_n_0_[23] ),
        .S(\contor[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[2] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[2]),
        .Q(in9[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[3] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[3]),
        .Q(in9[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[4] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[4]),
        .Q(in9[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[5] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[5]),
        .Q(in9[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[6] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[6]),
        .Q(in9[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[7] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[7]),
        .Q(in9[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[8] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[8]),
        .Q(in9[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[9] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(A_extins[9]),
        .Q(in9[10]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \B_extins[23]_i_1__0 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\A_extins_reg[23]_0 ),
        .O(B_extins_2));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[0] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [0]),
        .Q(B_extins[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[10] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [10]),
        .Q(B_extins[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[11] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [11]),
        .Q(B_extins[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[12] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [12]),
        .Q(B_extins[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[13] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [13]),
        .Q(B_extins[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[14] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [14]),
        .Q(B_extins[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[15] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [15]),
        .Q(B_extins[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[16] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [16]),
        .Q(B_extins[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[17] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [17]),
        .Q(B_extins[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[18] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [18]),
        .Q(B_extins[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[19] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [19]),
        .Q(B_extins[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[1] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [1]),
        .Q(B_extins[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[20] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [20]),
        .Q(B_extins[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[21] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [21]),
        .Q(B_extins[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[22] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [22]),
        .Q(B_extins[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[23] 
       (.C(clk),
        .CE(B_extins_2),
        .D(1'b1),
        .Q(B_extins[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[2] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [2]),
        .Q(B_extins[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[3] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [3]),
        .Q(B_extins[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[4] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [4]),
        .Q(B_extins[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[5] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [5]),
        .Q(B_extins[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[6] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [6]),
        .Q(B_extins[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[7] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [7]),
        .Q(B_extins[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[8] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [8]),
        .Q(B_extins[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[9] 
       (.C(clk),
        .CE(B_extins_2),
        .D(\B_extins_reg[22]_0 [9]),
        .Q(B_extins[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h33053327)) 
    \FSM_onehot_stare[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\A_extins_reg[23]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\FSM_onehot_stare_reg_n_0_[2] ),
        .I4(\FSM_onehot_stare[2]_i_2_n_0 ),
        .O(\FSM_onehot_stare[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hAAAAEAF8)) 
    \FSM_onehot_stare[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\A_extins_reg[23]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\FSM_onehot_stare_reg_n_0_[2] ),
        .I4(\FSM_onehot_stare[2]_i_2_n_0 ),
        .O(\FSM_onehot_stare[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F480)) 
    \FSM_onehot_stare[2]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\A_extins_reg[23]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\FSM_onehot_stare_reg_n_0_[2] ),
        .I4(\FSM_onehot_stare[2]_i_2_n_0 ),
        .O(\FSM_onehot_stare[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_stare[2]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[4] ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\contor_reg_n_0_[3] ),
        .I4(\contor_reg_n_0_[0] ),
        .I5(\contor_reg_n_0_[1] ),
        .O(\FSM_onehot_stare[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "impartire:0010,terminare:0100,initializare:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_stare[0]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "impartire:0010,terminare:0100,initializare:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_stare[1]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "impartire:0010,terminare:0100,initializare:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_stare[2]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000FF0F11)) 
    \FSM_sequential_stare[0]_i_1__4 
       (.I0(\FSM_sequential_stare_reg[0]_0 ),
        .I1(\FSM_sequential_stare_reg[0] ),
        .I2(done_div),
        .I3(stare[0]),
        .I4(stare[1]),
        .I5(stare[2]),
        .O(done_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0038)) 
    \FSM_sequential_stare[1]_i_1__4 
       (.I0(done_div),
        .I1(stare[0]),
        .I2(stare[1]),
        .I3(stare[2]),
        .O(done_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \contor[0]_i_1__1 
       (.I0(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \contor[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(contor[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \contor[2]_i_1 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\contor[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \contor[3]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\A_extins_reg[23]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\contor[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFE000100)) 
    \contor[3]_i_2 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .I4(\contor_reg_n_0_[3] ),
        .O(contor[3]));
  LUT3 #(
    .INIT(8'hA8)) 
    \contor[4]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\A_extins_reg[23]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\contor[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \contor[4]_i_2 
       (.I0(\contor_reg_n_0_[3] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[2] ),
        .I4(\contor_reg_n_0_[4] ),
        .O(\contor[4]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(\contor[0]_i_1__1_n_0 ),
        .Q(\contor_reg_n_0_[0] ),
        .S(\contor[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(contor[1]),
        .Q(\contor_reg_n_0_[1] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(\contor[2]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[2] ),
        .S(\contor[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(contor[3]),
        .Q(\contor_reg_n_0_[3] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \contor_reg[4] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(\contor[4]_i_2_n_0 ),
        .Q(\contor_reg_n_0_[4] ),
        .S(\contor[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9D88)) 
    done_i_1__1
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(\A_extins_reg[23]_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .I3(done_div),
        .O(done_i_1__1_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1__1_n_0),
        .Q(done_div),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[0]_i_1 
       (.I0(partial_remainder0[0]),
        .I1(\A_extins_reg_n_0_[23] ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[0]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[10]_i_1 
       (.I0(partial_remainder0[10]),
        .I1(partial_remainder[9]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[10]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[11]_i_1 
       (.I0(partial_remainder0[11]),
        .I1(partial_remainder[10]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[11]));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[11]_i_3 
       (.I0(partial_remainder[11]),
        .I1(B_extins[11]),
        .O(\partial_remainder[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[11]_i_4 
       (.I0(partial_remainder[10]),
        .I1(B_extins[10]),
        .O(\partial_remainder[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[11]_i_5 
       (.I0(partial_remainder[9]),
        .I1(B_extins[9]),
        .O(\partial_remainder[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[11]_i_6 
       (.I0(partial_remainder[8]),
        .I1(B_extins[8]),
        .O(\partial_remainder[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[12]_i_1 
       (.I0(partial_remainder0[12]),
        .I1(partial_remainder[11]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[12]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[13]_i_1 
       (.I0(partial_remainder0[13]),
        .I1(partial_remainder[12]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[13]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[14]_i_1 
       (.I0(partial_remainder0[14]),
        .I1(partial_remainder[13]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[14]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[15]_i_1 
       (.I0(partial_remainder0[15]),
        .I1(partial_remainder[14]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[15]));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[15]_i_3 
       (.I0(partial_remainder[15]),
        .I1(B_extins[15]),
        .O(\partial_remainder[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[15]_i_4 
       (.I0(partial_remainder[14]),
        .I1(B_extins[14]),
        .O(\partial_remainder[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[15]_i_5 
       (.I0(partial_remainder[13]),
        .I1(B_extins[13]),
        .O(\partial_remainder[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[15]_i_6 
       (.I0(partial_remainder[12]),
        .I1(B_extins[12]),
        .O(\partial_remainder[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[16]_i_1 
       (.I0(partial_remainder0[16]),
        .I1(partial_remainder[15]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[16]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[17]_i_1 
       (.I0(partial_remainder0[17]),
        .I1(partial_remainder[16]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[17]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[18]_i_1 
       (.I0(partial_remainder0[18]),
        .I1(partial_remainder[17]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[18]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[19]_i_1 
       (.I0(partial_remainder0[19]),
        .I1(partial_remainder[18]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[19]));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[19]_i_3 
       (.I0(partial_remainder[19]),
        .I1(B_extins[19]),
        .O(\partial_remainder[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[19]_i_4 
       (.I0(partial_remainder[18]),
        .I1(B_extins[18]),
        .O(\partial_remainder[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[19]_i_5 
       (.I0(partial_remainder[17]),
        .I1(B_extins[17]),
        .O(\partial_remainder[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[19]_i_6 
       (.I0(partial_remainder[16]),
        .I1(B_extins[16]),
        .O(\partial_remainder[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[1]_i_1 
       (.I0(partial_remainder0[1]),
        .I1(partial_remainder[0]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[1]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[20]_i_1 
       (.I0(partial_remainder0[20]),
        .I1(partial_remainder[19]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[20]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[21]_i_1 
       (.I0(partial_remainder0[21]),
        .I1(partial_remainder[20]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[21]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[22]_i_1 
       (.I0(partial_remainder0[22]),
        .I1(partial_remainder[21]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[22]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[23]_i_1 
       (.I0(partial_remainder0[23]),
        .I1(partial_remainder[22]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[23]));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[23]_i_3 
       (.I0(partial_remainder[23]),
        .I1(B_extins[23]),
        .O(\partial_remainder[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[23]_i_4 
       (.I0(partial_remainder[22]),
        .I1(B_extins[22]),
        .O(\partial_remainder[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[23]_i_5 
       (.I0(partial_remainder[21]),
        .I1(B_extins[21]),
        .O(\partial_remainder[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[23]_i_6 
       (.I0(partial_remainder[20]),
        .I1(B_extins[20]),
        .O(\partial_remainder[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[24]_i_1 
       (.I0(partial_remainder0[24]),
        .I1(partial_remainder[23]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[24]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[25]_i_1 
       (.I0(partial_remainder0[25]),
        .I1(partial_remainder[24]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[25]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[26]_i_1 
       (.I0(partial_remainder0[26]),
        .I1(partial_remainder[25]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[26]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[27]_i_1 
       (.I0(partial_remainder0[27]),
        .I1(partial_remainder[26]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[27]_i_3 
       (.I0(partial_remainder[27]),
        .O(\partial_remainder[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[27]_i_4 
       (.I0(partial_remainder[26]),
        .O(\partial_remainder[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[27]_i_5 
       (.I0(partial_remainder[25]),
        .O(\partial_remainder[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[27]_i_6 
       (.I0(partial_remainder[24]),
        .O(\partial_remainder[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[28]_i_1 
       (.I0(partial_remainder0[28]),
        .I1(partial_remainder[27]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[28]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[29]_i_1 
       (.I0(partial_remainder0[29]),
        .I1(partial_remainder[28]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[29]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[2]_i_1 
       (.I0(partial_remainder0[2]),
        .I1(partial_remainder[1]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[2]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[30]_i_1 
       (.I0(partial_remainder0[30]),
        .I1(partial_remainder[29]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[30]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[31]_i_1 
       (.I0(partial_remainder0[31]),
        .I1(partial_remainder[30]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[31]_i_3 
       (.I0(partial_remainder[31]),
        .O(\partial_remainder[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[31]_i_4 
       (.I0(partial_remainder[30]),
        .O(\partial_remainder[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[31]_i_5 
       (.I0(partial_remainder[29]),
        .O(\partial_remainder[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[31]_i_6 
       (.I0(partial_remainder[28]),
        .O(\partial_remainder[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[32]_i_1 
       (.I0(partial_remainder0[32]),
        .I1(partial_remainder[31]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[32]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[33]_i_1 
       (.I0(partial_remainder0[33]),
        .I1(partial_remainder[32]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[33]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[34]_i_1 
       (.I0(partial_remainder0[34]),
        .I1(partial_remainder[33]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[34]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[35]_i_1 
       (.I0(partial_remainder0[35]),
        .I1(partial_remainder[34]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[35]));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[35]_i_3 
       (.I0(partial_remainder[35]),
        .O(\partial_remainder[35]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[35]_i_4 
       (.I0(partial_remainder[34]),
        .O(\partial_remainder[35]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[35]_i_5 
       (.I0(partial_remainder[33]),
        .O(\partial_remainder[35]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[35]_i_6 
       (.I0(partial_remainder[32]),
        .O(\partial_remainder[35]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[36]_i_1 
       (.I0(partial_remainder0[36]),
        .I1(partial_remainder[35]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[36]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[37]_i_1 
       (.I0(partial_remainder0[37]),
        .I1(partial_remainder[36]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[37]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[38]_i_1 
       (.I0(partial_remainder0[38]),
        .I1(partial_remainder[37]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[38]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[39]_i_1 
       (.I0(partial_remainder0[39]),
        .I1(partial_remainder[38]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[39]));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[39]_i_3 
       (.I0(partial_remainder[39]),
        .O(\partial_remainder[39]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[39]_i_4 
       (.I0(partial_remainder[38]),
        .O(\partial_remainder[39]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[39]_i_5 
       (.I0(partial_remainder[37]),
        .O(\partial_remainder[39]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[39]_i_6 
       (.I0(partial_remainder[36]),
        .O(\partial_remainder[39]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[3]_i_1 
       (.I0(partial_remainder0[3]),
        .I1(partial_remainder[2]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[3]_i_3 
       (.I0(partial_remainder[3]),
        .I1(B_extins[3]),
        .O(\partial_remainder[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[3]_i_4 
       (.I0(partial_remainder[2]),
        .I1(B_extins[2]),
        .O(\partial_remainder[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[3]_i_5 
       (.I0(partial_remainder[1]),
        .I1(B_extins[1]),
        .O(\partial_remainder[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[3]_i_6 
       (.I0(partial_remainder[0]),
        .I1(B_extins[0]),
        .O(\partial_remainder[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[40]_i_1 
       (.I0(partial_remainder0[40]),
        .I1(partial_remainder[39]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[40]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[41]_i_1 
       (.I0(partial_remainder0[41]),
        .I1(partial_remainder[40]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[41]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[42]_i_1 
       (.I0(partial_remainder0[42]),
        .I1(partial_remainder[41]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[42]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[43]_i_1 
       (.I0(partial_remainder0[43]),
        .I1(partial_remainder[42]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[43]));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[43]_i_3 
       (.I0(partial_remainder[43]),
        .O(\partial_remainder[43]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[43]_i_4 
       (.I0(partial_remainder[42]),
        .O(\partial_remainder[43]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[43]_i_5 
       (.I0(partial_remainder[41]),
        .O(\partial_remainder[43]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[43]_i_6 
       (.I0(partial_remainder[40]),
        .O(\partial_remainder[43]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[44]_i_1 
       (.I0(partial_remainder0[44]),
        .I1(partial_remainder[43]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[44]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[45]_i_1 
       (.I0(partial_remainder0[45]),
        .I1(partial_remainder[44]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[45]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[46]_i_1 
       (.I0(partial_remainder0[46]),
        .I1(partial_remainder[45]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[46]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[47]_i_1 
       (.I0(partial_remainder0[47]),
        .I1(partial_remainder[46]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[47]));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[47]_i_3 
       (.I0(partial_remainder[47]),
        .O(\partial_remainder[47]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[47]_i_4 
       (.I0(partial_remainder[46]),
        .O(\partial_remainder[47]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[47]_i_5 
       (.I0(partial_remainder[45]),
        .O(\partial_remainder[47]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \partial_remainder[47]_i_6 
       (.I0(partial_remainder[44]),
        .O(\partial_remainder[47]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[4]_i_1 
       (.I0(partial_remainder0[4]),
        .I1(partial_remainder[3]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[4]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[5]_i_1 
       (.I0(partial_remainder0[5]),
        .I1(partial_remainder[4]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[5]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[6]_i_1 
       (.I0(partial_remainder0[6]),
        .I1(partial_remainder[5]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[6]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[7]_i_1 
       (.I0(partial_remainder0[7]),
        .I1(partial_remainder[6]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[7]_i_3 
       (.I0(partial_remainder[7]),
        .I1(B_extins[7]),
        .O(\partial_remainder[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[7]_i_4 
       (.I0(partial_remainder[6]),
        .I1(B_extins[6]),
        .O(\partial_remainder[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[7]_i_5 
       (.I0(partial_remainder[5]),
        .I1(B_extins[5]),
        .O(\partial_remainder[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \partial_remainder[7]_i_6 
       (.I0(partial_remainder[4]),
        .I1(B_extins[4]),
        .O(\partial_remainder[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[8]_i_1 
       (.I0(partial_remainder0[8]),
        .I1(partial_remainder[7]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[8]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \partial_remainder[9]_i_1 
       (.I0(partial_remainder0[9]),
        .I1(partial_remainder[8]),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(partial_remainder_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[0] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[0]),
        .Q(partial_remainder[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[10] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[10]),
        .Q(partial_remainder[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[11] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[11]),
        .Q(partial_remainder[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[11]_i_2 
       (.CI(\partial_remainder_reg[7]_i_2_n_0 ),
        .CO({\partial_remainder_reg[11]_i_2_n_0 ,\partial_remainder_reg[11]_i_2_n_1 ,\partial_remainder_reg[11]_i_2_n_2 ,\partial_remainder_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[11:8]),
        .O(partial_remainder0[11:8]),
        .S({\partial_remainder[11]_i_3_n_0 ,\partial_remainder[11]_i_4_n_0 ,\partial_remainder[11]_i_5_n_0 ,\partial_remainder[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[12] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[12]),
        .Q(partial_remainder[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[13] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[13]),
        .Q(partial_remainder[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[14] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[14]),
        .Q(partial_remainder[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[15] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[15]),
        .Q(partial_remainder[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[15]_i_2 
       (.CI(\partial_remainder_reg[11]_i_2_n_0 ),
        .CO({\partial_remainder_reg[15]_i_2_n_0 ,\partial_remainder_reg[15]_i_2_n_1 ,\partial_remainder_reg[15]_i_2_n_2 ,\partial_remainder_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[15:12]),
        .O(partial_remainder0[15:12]),
        .S({\partial_remainder[15]_i_3_n_0 ,\partial_remainder[15]_i_4_n_0 ,\partial_remainder[15]_i_5_n_0 ,\partial_remainder[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[16] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[16]),
        .Q(partial_remainder[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[17] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[17]),
        .Q(partial_remainder[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[18] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[18]),
        .Q(partial_remainder[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[19] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[19]),
        .Q(partial_remainder[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[19]_i_2 
       (.CI(\partial_remainder_reg[15]_i_2_n_0 ),
        .CO({\partial_remainder_reg[19]_i_2_n_0 ,\partial_remainder_reg[19]_i_2_n_1 ,\partial_remainder_reg[19]_i_2_n_2 ,\partial_remainder_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[19:16]),
        .O(partial_remainder0[19:16]),
        .S({\partial_remainder[19]_i_3_n_0 ,\partial_remainder[19]_i_4_n_0 ,\partial_remainder[19]_i_5_n_0 ,\partial_remainder[19]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[1] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[1]),
        .Q(partial_remainder[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[20] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[20]),
        .Q(partial_remainder[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[21] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[21]),
        .Q(partial_remainder[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[22] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[22]),
        .Q(partial_remainder[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[23] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[23]),
        .Q(partial_remainder[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[23]_i_2 
       (.CI(\partial_remainder_reg[19]_i_2_n_0 ),
        .CO({\partial_remainder_reg[23]_i_2_n_0 ,\partial_remainder_reg[23]_i_2_n_1 ,\partial_remainder_reg[23]_i_2_n_2 ,\partial_remainder_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[23:20]),
        .O(partial_remainder0[23:20]),
        .S({\partial_remainder[23]_i_3_n_0 ,\partial_remainder[23]_i_4_n_0 ,\partial_remainder[23]_i_5_n_0 ,\partial_remainder[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[24] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[24]),
        .Q(partial_remainder[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[25] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[25]),
        .Q(partial_remainder[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[26] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[26]),
        .Q(partial_remainder[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[27] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[27]),
        .Q(partial_remainder[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[27]_i_2 
       (.CI(\partial_remainder_reg[23]_i_2_n_0 ),
        .CO({\partial_remainder_reg[27]_i_2_n_0 ,\partial_remainder_reg[27]_i_2_n_1 ,\partial_remainder_reg[27]_i_2_n_2 ,\partial_remainder_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[27:24]),
        .O(partial_remainder0[27:24]),
        .S({\partial_remainder[27]_i_3_n_0 ,\partial_remainder[27]_i_4_n_0 ,\partial_remainder[27]_i_5_n_0 ,\partial_remainder[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[28] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[28]),
        .Q(partial_remainder[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[29] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[29]),
        .Q(partial_remainder[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[2] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[2]),
        .Q(partial_remainder[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[30] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[30]),
        .Q(partial_remainder[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[31] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[31]),
        .Q(partial_remainder[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[31]_i_2 
       (.CI(\partial_remainder_reg[27]_i_2_n_0 ),
        .CO({\partial_remainder_reg[31]_i_2_n_0 ,\partial_remainder_reg[31]_i_2_n_1 ,\partial_remainder_reg[31]_i_2_n_2 ,\partial_remainder_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[31:28]),
        .O(partial_remainder0[31:28]),
        .S({\partial_remainder[31]_i_3_n_0 ,\partial_remainder[31]_i_4_n_0 ,\partial_remainder[31]_i_5_n_0 ,\partial_remainder[31]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[32] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[32]),
        .Q(partial_remainder[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[33] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[33]),
        .Q(partial_remainder[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[34] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[34]),
        .Q(partial_remainder[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[35] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[35]),
        .Q(partial_remainder[35]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[35]_i_2 
       (.CI(\partial_remainder_reg[31]_i_2_n_0 ),
        .CO({\partial_remainder_reg[35]_i_2_n_0 ,\partial_remainder_reg[35]_i_2_n_1 ,\partial_remainder_reg[35]_i_2_n_2 ,\partial_remainder_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[35:32]),
        .O(partial_remainder0[35:32]),
        .S({\partial_remainder[35]_i_3_n_0 ,\partial_remainder[35]_i_4_n_0 ,\partial_remainder[35]_i_5_n_0 ,\partial_remainder[35]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[36] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[36]),
        .Q(partial_remainder[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[37] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[37]),
        .Q(partial_remainder[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[38] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[38]),
        .Q(partial_remainder[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[39] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[39]),
        .Q(partial_remainder[39]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[39]_i_2 
       (.CI(\partial_remainder_reg[35]_i_2_n_0 ),
        .CO({\partial_remainder_reg[39]_i_2_n_0 ,\partial_remainder_reg[39]_i_2_n_1 ,\partial_remainder_reg[39]_i_2_n_2 ,\partial_remainder_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[39:36]),
        .O(partial_remainder0[39:36]),
        .S({\partial_remainder[39]_i_3_n_0 ,\partial_remainder[39]_i_4_n_0 ,\partial_remainder[39]_i_5_n_0 ,\partial_remainder[39]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[3] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[3]),
        .Q(partial_remainder[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\partial_remainder_reg[3]_i_2_n_0 ,\partial_remainder_reg[3]_i_2_n_1 ,\partial_remainder_reg[3]_i_2_n_2 ,\partial_remainder_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(partial_remainder[3:0]),
        .O(partial_remainder0[3:0]),
        .S({\partial_remainder[3]_i_3_n_0 ,\partial_remainder[3]_i_4_n_0 ,\partial_remainder[3]_i_5_n_0 ,\partial_remainder[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[40] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[40]),
        .Q(partial_remainder[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[41] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[41]),
        .Q(partial_remainder[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[42] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[42]),
        .Q(partial_remainder[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[43] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[43]),
        .Q(partial_remainder[43]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[43]_i_2 
       (.CI(\partial_remainder_reg[39]_i_2_n_0 ),
        .CO({\partial_remainder_reg[43]_i_2_n_0 ,\partial_remainder_reg[43]_i_2_n_1 ,\partial_remainder_reg[43]_i_2_n_2 ,\partial_remainder_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[43:40]),
        .O(partial_remainder0[43:40]),
        .S({\partial_remainder[43]_i_3_n_0 ,\partial_remainder[43]_i_4_n_0 ,\partial_remainder[43]_i_5_n_0 ,\partial_remainder[43]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[44] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[44]),
        .Q(partial_remainder[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[45] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[45]),
        .Q(partial_remainder[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[46] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[46]),
        .Q(partial_remainder[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[47] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[47]),
        .Q(partial_remainder[47]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[47]_i_2 
       (.CI(\partial_remainder_reg[43]_i_2_n_0 ),
        .CO({\NLW_partial_remainder_reg[47]_i_2_CO_UNCONNECTED [3],\partial_remainder_reg[47]_i_2_n_1 ,\partial_remainder_reg[47]_i_2_n_2 ,\partial_remainder_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,partial_remainder[46:44]}),
        .O(partial_remainder0[47:44]),
        .S({\partial_remainder[47]_i_3_n_0 ,\partial_remainder[47]_i_4_n_0 ,\partial_remainder[47]_i_5_n_0 ,\partial_remainder[47]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[4] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[4]),
        .Q(partial_remainder[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[5] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[5]),
        .Q(partial_remainder[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[6] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[6]),
        .Q(partial_remainder[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[7] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[7]),
        .Q(partial_remainder[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \partial_remainder_reg[7]_i_2 
       (.CI(\partial_remainder_reg[3]_i_2_n_0 ),
        .CO({\partial_remainder_reg[7]_i_2_n_0 ,\partial_remainder_reg[7]_i_2_n_1 ,\partial_remainder_reg[7]_i_2_n_2 ,\partial_remainder_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(partial_remainder[7:4]),
        .O(partial_remainder0[7:4]),
        .S({\partial_remainder[7]_i_3_n_0 ,\partial_remainder[7]_i_4_n_0 ,\partial_remainder[7]_i_5_n_0 ,\partial_remainder[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[8] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[8]),
        .Q(partial_remainder[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \partial_remainder_reg[9] 
       (.C(clk),
        .CE(\contor[3]_i_1_n_0 ),
        .D(partial_remainder_0[9]),
        .Q(partial_remainder[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    \result[22]_i_1 
       (.I0(\result_reg_n_0_[22] ),
        .I1(stare[0]),
        .I2(\FSM_sequential_stare_reg[0] ),
        .I3(\FSM_sequential_stare_reg[0]_0 ),
        .O(D));
  LUT2 #(
    .INIT(4'h8)) 
    \result[23]_i_1__0 
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(\A_extins_reg[23]_0 ),
        .O(\result[23]_i_1__0_n_0 ));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[22]),
        .Q(\result_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[23]),
        .Q(\result_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(\result[23]_i_1__0_n_0 ),
        .D(rezultat[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rezultat1_carry
       (.CI(1'b0),
        .CO({rezultat1_carry_n_0,rezultat1_carry_n_1,rezultat1_carry_n_2,rezultat1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({rezultat1_carry_i_1_n_0,rezultat1_carry_i_2_n_0,rezultat1_carry_i_3_n_0,rezultat1_carry_i_4_n_0}),
        .O(NLW_rezultat1_carry_O_UNCONNECTED[3:0]),
        .S({rezultat1_carry_i_5_n_0,rezultat1_carry_i_6_n_0,rezultat1_carry_i_7_n_0,rezultat1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rezultat1_carry__0
       (.CI(rezultat1_carry_n_0),
        .CO({rezultat1_carry__0_n_0,rezultat1_carry__0_n_1,rezultat1_carry__0_n_2,rezultat1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rezultat1_carry__0_i_1_n_0,rezultat1_carry__0_i_2_n_0,rezultat1_carry__0_i_3_n_0,rezultat1_carry__0_i_4_n_0}),
        .O(NLW_rezultat1_carry__0_O_UNCONNECTED[3:0]),
        .S({rezultat1_carry__0_i_5_n_0,rezultat1_carry__0_i_6_n_0,rezultat1_carry__0_i_7_n_0,rezultat1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__0_i_1
       (.I0(partial_remainder[14]),
        .I1(B_extins[14]),
        .I2(B_extins[15]),
        .I3(partial_remainder[15]),
        .O(rezultat1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__0_i_2
       (.I0(partial_remainder[12]),
        .I1(B_extins[12]),
        .I2(B_extins[13]),
        .I3(partial_remainder[13]),
        .O(rezultat1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__0_i_3
       (.I0(partial_remainder[10]),
        .I1(B_extins[10]),
        .I2(B_extins[11]),
        .I3(partial_remainder[11]),
        .O(rezultat1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__0_i_4
       (.I0(partial_remainder[8]),
        .I1(B_extins[8]),
        .I2(B_extins[9]),
        .I3(partial_remainder[9]),
        .O(rezultat1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__0_i_5
       (.I0(B_extins[15]),
        .I1(partial_remainder[15]),
        .I2(B_extins[14]),
        .I3(partial_remainder[14]),
        .O(rezultat1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__0_i_6
       (.I0(B_extins[13]),
        .I1(partial_remainder[13]),
        .I2(B_extins[12]),
        .I3(partial_remainder[12]),
        .O(rezultat1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__0_i_7
       (.I0(B_extins[11]),
        .I1(partial_remainder[11]),
        .I2(B_extins[10]),
        .I3(partial_remainder[10]),
        .O(rezultat1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__0_i_8
       (.I0(B_extins[9]),
        .I1(partial_remainder[9]),
        .I2(B_extins[8]),
        .I3(partial_remainder[8]),
        .O(rezultat1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rezultat1_carry__1
       (.CI(rezultat1_carry__0_n_0),
        .CO({rezultat1_carry__1_n_0,rezultat1_carry__1_n_1,rezultat1_carry__1_n_2,rezultat1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({rezultat1_carry__1_i_1_n_0,rezultat1_carry__1_i_2_n_0,rezultat1_carry__1_i_3_n_0,rezultat1_carry__1_i_4_n_0}),
        .O(NLW_rezultat1_carry__1_O_UNCONNECTED[3:0]),
        .S({rezultat1_carry__1_i_5_n_0,rezultat1_carry__1_i_6_n_0,rezultat1_carry__1_i_7_n_0,rezultat1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__1_i_1
       (.I0(partial_remainder[22]),
        .I1(B_extins[22]),
        .I2(B_extins[23]),
        .I3(partial_remainder[23]),
        .O(rezultat1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__1_i_2
       (.I0(partial_remainder[20]),
        .I1(B_extins[20]),
        .I2(B_extins[21]),
        .I3(partial_remainder[21]),
        .O(rezultat1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__1_i_3
       (.I0(partial_remainder[18]),
        .I1(B_extins[18]),
        .I2(B_extins[19]),
        .I3(partial_remainder[19]),
        .O(rezultat1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry__1_i_4
       (.I0(partial_remainder[16]),
        .I1(B_extins[16]),
        .I2(B_extins[17]),
        .I3(partial_remainder[17]),
        .O(rezultat1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__1_i_5
       (.I0(B_extins[23]),
        .I1(partial_remainder[23]),
        .I2(B_extins[22]),
        .I3(partial_remainder[22]),
        .O(rezultat1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__1_i_6
       (.I0(B_extins[21]),
        .I1(partial_remainder[21]),
        .I2(B_extins[20]),
        .I3(partial_remainder[20]),
        .O(rezultat1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__1_i_7
       (.I0(B_extins[19]),
        .I1(partial_remainder[19]),
        .I2(B_extins[18]),
        .I3(partial_remainder[18]),
        .O(rezultat1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry__1_i_8
       (.I0(B_extins[17]),
        .I1(partial_remainder[17]),
        .I2(B_extins[16]),
        .I3(partial_remainder[16]),
        .O(rezultat1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rezultat1_carry__2
       (.CI(rezultat1_carry__1_n_0),
        .CO({rezultat1_carry__2_n_0,rezultat1_carry__2_n_1,rezultat1_carry__2_n_2,rezultat1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({rezultat1_carry__2_i_1_n_0,rezultat1_carry__2_i_2_n_0,rezultat1_carry__2_i_3_n_0,rezultat1_carry__2_i_4_n_0}),
        .O(NLW_rezultat1_carry__2_O_UNCONNECTED[3:0]),
        .S({rezultat1_carry__2_i_5_n_0,rezultat1_carry__2_i_6_n_0,rezultat1_carry__2_i_7_n_0,rezultat1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__2_i_1
       (.I0(partial_remainder[30]),
        .I1(partial_remainder[31]),
        .O(rezultat1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__2_i_2
       (.I0(partial_remainder[28]),
        .I1(partial_remainder[29]),
        .O(rezultat1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__2_i_3
       (.I0(partial_remainder[26]),
        .I1(partial_remainder[27]),
        .O(rezultat1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__2_i_4
       (.I0(partial_remainder[24]),
        .I1(partial_remainder[25]),
        .O(rezultat1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__2_i_5
       (.I0(partial_remainder[31]),
        .I1(partial_remainder[30]),
        .O(rezultat1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__2_i_6
       (.I0(partial_remainder[29]),
        .I1(partial_remainder[28]),
        .O(rezultat1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__2_i_7
       (.I0(partial_remainder[27]),
        .I1(partial_remainder[26]),
        .O(rezultat1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__2_i_8
       (.I0(partial_remainder[25]),
        .I1(partial_remainder[24]),
        .O(rezultat1_carry__2_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rezultat1_carry__3
       (.CI(rezultat1_carry__2_n_0),
        .CO({rezultat1_carry__3_n_0,rezultat1_carry__3_n_1,rezultat1_carry__3_n_2,rezultat1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({rezultat1_carry__3_i_1_n_0,rezultat1_carry__3_i_2_n_0,rezultat1_carry__3_i_3_n_0,rezultat1_carry__3_i_4_n_0}),
        .O(NLW_rezultat1_carry__3_O_UNCONNECTED[3:0]),
        .S({rezultat1_carry__3_i_5_n_0,rezultat1_carry__3_i_6_n_0,rezultat1_carry__3_i_7_n_0,rezultat1_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__3_i_1
       (.I0(partial_remainder[38]),
        .I1(partial_remainder[39]),
        .O(rezultat1_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__3_i_2
       (.I0(partial_remainder[36]),
        .I1(partial_remainder[37]),
        .O(rezultat1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__3_i_3
       (.I0(partial_remainder[34]),
        .I1(partial_remainder[35]),
        .O(rezultat1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__3_i_4
       (.I0(partial_remainder[32]),
        .I1(partial_remainder[33]),
        .O(rezultat1_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__3_i_5
       (.I0(partial_remainder[39]),
        .I1(partial_remainder[38]),
        .O(rezultat1_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__3_i_6
       (.I0(partial_remainder[37]),
        .I1(partial_remainder[36]),
        .O(rezultat1_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__3_i_7
       (.I0(partial_remainder[35]),
        .I1(partial_remainder[34]),
        .O(rezultat1_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__3_i_8
       (.I0(partial_remainder[33]),
        .I1(partial_remainder[32]),
        .O(rezultat1_carry__3_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rezultat1_carry__4
       (.CI(rezultat1_carry__3_n_0),
        .CO({p_0_in,rezultat1_carry__4_n_1,rezultat1_carry__4_n_2,rezultat1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({rezultat1_carry__4_i_1_n_0,rezultat1_carry__4_i_2_n_0,rezultat1_carry__4_i_3_n_0,rezultat1_carry__4_i_4_n_0}),
        .O(NLW_rezultat1_carry__4_O_UNCONNECTED[3:0]),
        .S({rezultat1_carry__4_i_5_n_0,rezultat1_carry__4_i_6_n_0,rezultat1_carry__4_i_7_n_0,rezultat1_carry__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__4_i_1
       (.I0(partial_remainder[46]),
        .I1(partial_remainder[47]),
        .O(rezultat1_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__4_i_2
       (.I0(partial_remainder[44]),
        .I1(partial_remainder[45]),
        .O(rezultat1_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__4_i_3
       (.I0(partial_remainder[42]),
        .I1(partial_remainder[43]),
        .O(rezultat1_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rezultat1_carry__4_i_4
       (.I0(partial_remainder[40]),
        .I1(partial_remainder[41]),
        .O(rezultat1_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__4_i_5
       (.I0(partial_remainder[47]),
        .I1(partial_remainder[46]),
        .O(rezultat1_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__4_i_6
       (.I0(partial_remainder[45]),
        .I1(partial_remainder[44]),
        .O(rezultat1_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__4_i_7
       (.I0(partial_remainder[43]),
        .I1(partial_remainder[42]),
        .O(rezultat1_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rezultat1_carry__4_i_8
       (.I0(partial_remainder[41]),
        .I1(partial_remainder[40]),
        .O(rezultat1_carry__4_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry_i_1
       (.I0(partial_remainder[6]),
        .I1(B_extins[6]),
        .I2(B_extins[7]),
        .I3(partial_remainder[7]),
        .O(rezultat1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry_i_2
       (.I0(partial_remainder[4]),
        .I1(B_extins[4]),
        .I2(B_extins[5]),
        .I3(partial_remainder[5]),
        .O(rezultat1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry_i_3
       (.I0(partial_remainder[2]),
        .I1(B_extins[2]),
        .I2(B_extins[3]),
        .I3(partial_remainder[3]),
        .O(rezultat1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rezultat1_carry_i_4
       (.I0(partial_remainder[0]),
        .I1(B_extins[0]),
        .I2(B_extins[1]),
        .I3(partial_remainder[1]),
        .O(rezultat1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry_i_5
       (.I0(B_extins[7]),
        .I1(partial_remainder[7]),
        .I2(B_extins[6]),
        .I3(partial_remainder[6]),
        .O(rezultat1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry_i_6
       (.I0(B_extins[5]),
        .I1(partial_remainder[5]),
        .I2(B_extins[4]),
        .I3(partial_remainder[4]),
        .O(rezultat1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry_i_7
       (.I0(B_extins[3]),
        .I1(partial_remainder[3]),
        .I2(B_extins[2]),
        .I3(partial_remainder[2]),
        .O(rezultat1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rezultat1_carry_i_8
       (.I0(B_extins[1]),
        .I1(partial_remainder[1]),
        .I2(B_extins[0]),
        .I3(partial_remainder[0]),
        .O(rezultat1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[0]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[16]_i_2_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[0]),
        .O(\rezultat[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[10]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[18]_i_2_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[10]),
        .O(\rezultat[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[11]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[19]_i_2_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[11]),
        .O(\rezultat[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rezultat[12]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[20]_i_2_n_0 ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\rezultat[15]_i_2_n_0 ),
        .I4(B_extins_2),
        .I5(rezultat[12]),
        .O(\rezultat[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[13]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[21]_i_2_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[13]),
        .O(\rezultat[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[14]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[22]_i_2_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[14]),
        .O(\rezultat[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[15]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[23]_i_3_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[15]),
        .O(\rezultat[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rezultat[15]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[3] ),
        .I2(\contor_reg_n_0_[4] ),
        .O(\rezultat[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[16]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[16]_i_2_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[16]),
        .O(\rezultat[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rezultat[16]_i_2 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\rezultat[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[17]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[17]_i_2_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[17]),
        .O(\rezultat[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rezultat[17]_i_2 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[2] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\rezultat[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[18]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[18]_i_2_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[18]),
        .O(\rezultat[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rezultat[18]_i_2 
       (.I0(\contor_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[2] ),
        .I2(\contor_reg_n_0_[0] ),
        .O(\rezultat[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[19]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[19]_i_2_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[19]),
        .O(\rezultat[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \rezultat[19]_i_2 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\rezultat[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[1]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[17]_i_2_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[1]),
        .O(\rezultat[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rezultat[20]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[20]_i_2_n_0 ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\rezultat[23]_i_4_n_0 ),
        .I4(B_extins_2),
        .I5(rezultat[20]),
        .O(\rezultat[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rezultat[20]_i_2 
       (.I0(\contor_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .O(\rezultat[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[21]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[21]_i_2_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[21]),
        .O(\rezultat[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rezultat[21]_i_2 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\rezultat[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[22]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[22]_i_2_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[22]),
        .O(\rezultat[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rezultat[22]_i_2 
       (.I0(\contor_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\rezultat[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[23]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[23]_i_3_n_0 ),
        .I2(\rezultat[23]_i_4_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[23]),
        .O(\rezultat[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rezultat[23]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(p_0_in),
        .O(rezultat_1));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rezultat[23]_i_3 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\rezultat[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rezultat[23]_i_4 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[4] ),
        .I2(\contor_reg_n_0_[3] ),
        .O(\rezultat[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[2]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[18]_i_2_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[2]),
        .O(\rezultat[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[3]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[19]_i_2_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[3]),
        .O(\rezultat[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rezultat[4]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[20]_i_2_n_0 ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\rezultat[7]_i_2_n_0 ),
        .I4(B_extins_2),
        .I5(rezultat[4]),
        .O(\rezultat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[5]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[21]_i_2_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[5]),
        .O(\rezultat[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[6]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[22]_i_2_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[6]),
        .O(\rezultat[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[7]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[23]_i_3_n_0 ),
        .I2(\rezultat[7]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[7]),
        .O(\rezultat[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rezultat[7]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[4] ),
        .I2(\contor_reg_n_0_[3] ),
        .O(\rezultat[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[8]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[16]_i_2_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[8]),
        .O(\rezultat[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFEFEFAA202020)) 
    \rezultat[9]_i_1 
       (.I0(rezultat_1),
        .I1(\rezultat[17]_i_2_n_0 ),
        .I2(\rezultat[15]_i_2_n_0 ),
        .I3(\A_extins_reg[23]_0 ),
        .I4(\FSM_onehot_stare_reg_n_0_[0] ),
        .I5(rezultat[9]),
        .O(\rezultat[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[0]_i_1_n_0 ),
        .Q(rezultat[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[10]_i_1_n_0 ),
        .Q(rezultat[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[11]_i_1_n_0 ),
        .Q(rezultat[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[12]_i_1_n_0 ),
        .Q(rezultat[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[13]_i_1_n_0 ),
        .Q(rezultat[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[14]_i_1_n_0 ),
        .Q(rezultat[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[15]_i_1_n_0 ),
        .Q(rezultat[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[16]_i_1_n_0 ),
        .Q(rezultat[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[17]_i_1_n_0 ),
        .Q(rezultat[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[18]_i_1_n_0 ),
        .Q(rezultat[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[19]_i_1_n_0 ),
        .Q(rezultat[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[1]_i_1_n_0 ),
        .Q(rezultat[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[20]_i_1_n_0 ),
        .Q(rezultat[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[21]_i_1_n_0 ),
        .Q(rezultat[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[22]_i_1_n_0 ),
        .Q(rezultat[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[23]_i_1_n_0 ),
        .Q(rezultat[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[2]_i_1_n_0 ),
        .Q(rezultat[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[3]_i_1_n_0 ),
        .Q(rezultat[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[4]_i_1_n_0 ),
        .Q(rezultat[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[5]_i_1_n_0 ),
        .Q(rezultat[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[6]_i_1_n_0 ),
        .Q(rezultat[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[7]_i_1_n_0 ),
        .Q(rezultat[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[8]_i_1_n_0 ),
        .Q(rezultat[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\rezultat[9]_i_1_n_0 ),
        .Q(rezultat[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFF70004)) 
    start_div_i_1
       (.I0(done_div),
        .I1(stare[0]),
        .I2(stare[1]),
        .I3(stare[2]),
        .I4(\A_extins_reg[23]_0 ),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'h7755775523002200)) 
    zero_i_1__2
       (.I0(E),
        .I1(zero_i_2__1_n_0),
        .I2(stare[2]),
        .I3(stare[1]),
        .I4(stare[0]),
        .I5(zero4),
        .O(\FSM_sequential_stare_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    zero_i_2__1
       (.I0(zero_i_3__1_n_0),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(zero_i_4__1_n_0),
        .O(zero_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_i_3__1
       (.I0(Q[15]),
        .I1(Q[16]),
        .I2(Q[2]),
        .I3(Q[10]),
        .O(zero_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    zero_i_4__1
       (.I0(zero_i_5__0_n_0),
        .I1(Q[18]),
        .I2(Q[14]),
        .I3(Q[17]),
        .I4(Q[9]),
        .I5(zero_i_6__0_n_0),
        .O(zero_i_4__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_i_5__0
       (.I0(Q[20]),
        .I1(Q[19]),
        .I2(\result_reg_n_0_[22] ),
        .I3(Q[1]),
        .O(zero_i_5__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    zero_i_6__0
       (.I0(\result_reg_n_0_[23] ),
        .I1(Q[21]),
        .I2(Q[8]),
        .I3(Q[11]),
        .I4(zero_i_7__0_n_0),
        .O(zero_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_i_7__0
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[0]),
        .O(zero_i_7__0_n_0));
endmodule

(* ORIG_REF_NAME = "mul" *) 
module design_1_ALU_0_0_mul
   (overflow3,
    zero3,
    result3,
    B,
    clk,
    A,
    \FSM_sequential_stare_reg[2]_0 ,
    \FSM_sequential_stare_reg[2]_1 ,
    \FSM_sequential_stare[2]_i_2_0 ,
    \FSM_sequential_stare[2]_i_2_1 ,
    \FSM_sequential_stare[2]_i_2_2 ,
    \FSM_sequential_stare[2]_i_2_3 );
  output overflow3;
  output zero3;
  output [31:0]result3;
  input [31:0]B;
  input clk;
  input [31:0]A;
  input \FSM_sequential_stare_reg[2]_0 ;
  input \FSM_sequential_stare_reg[2]_1 ;
  input \FSM_sequential_stare[2]_i_2_0 ;
  input \FSM_sequential_stare[2]_i_2_1 ;
  input \FSM_sequential_stare[2]_i_2_2 ;
  input \FSM_sequential_stare[2]_i_2_3 ;

  wire [31:0]A;
  wire [31:0]B;
  wire \FSM_sequential_stare[2]_i_2_0 ;
  wire \FSM_sequential_stare[2]_i_2_1 ;
  wire \FSM_sequential_stare[2]_i_2_2 ;
  wire \FSM_sequential_stare[2]_i_2_3 ;
  wire \FSM_sequential_stare[2]_i_2_n_0 ;
  wire \FSM_sequential_stare[2]_i_3_n_0 ;
  wire \FSM_sequential_stare[2]_i_4__0_n_0 ;
  wire \FSM_sequential_stare[2]_i_5_n_0 ;
  wire \FSM_sequential_stare_reg[2]_0 ;
  wire \FSM_sequential_stare_reg[2]_1 ;
  wire [45:23]L;
  wire R;
  wire clk;
  wire \exp_A_reg_n_0_[0] ;
  wire \exp_A_reg_n_0_[1] ;
  wire \exp_A_reg_n_0_[2] ;
  wire \exp_A_reg_n_0_[3] ;
  wire \exp_A_reg_n_0_[4] ;
  wire \exp_A_reg_n_0_[5] ;
  wire \exp_A_reg_n_0_[6] ;
  wire \exp_A_reg_n_0_[7] ;
  wire [7:0]exp_B;
  wire exp_suma;
  wire exp_suma0_carry__0_i_5_n_0;
  wire exp_suma0_carry__0_i_6_n_0;
  wire exp_suma0_carry__0_i_7_n_0;
  wire exp_suma0_carry__0_i_8_n_0;
  wire exp_suma0_carry__0_n_0;
  wire exp_suma0_carry__0_n_1;
  wire exp_suma0_carry__0_n_2;
  wire exp_suma0_carry__0_n_3;
  wire exp_suma0_carry__1_i_1_n_0;
  wire exp_suma0_carry_i_5_n_0;
  wire exp_suma0_carry_i_6_n_0;
  wire exp_suma0_carry_i_7_n_0;
  wire exp_suma0_carry_i_8_n_0;
  wire exp_suma0_carry_n_0;
  wire exp_suma0_carry_n_1;
  wire exp_suma0_carry_n_2;
  wire exp_suma0_carry_n_3;
  wire [8:0]exp_suma0_in;
  wire \exp_suma_reg_n_0_[0] ;
  wire \exp_suma_reg_n_0_[1] ;
  wire \exp_suma_reg_n_0_[2] ;
  wire \exp_suma_reg_n_0_[3] ;
  wire \exp_suma_reg_n_0_[4] ;
  wire \exp_suma_reg_n_0_[5] ;
  wire \exp_suma_reg_n_0_[6] ;
  wire \exp_suma_reg_n_0_[7] ;
  wire \exp_suma_reg_n_0_[8] ;
  wire inmultitorNormal_n_1;
  wire inmultitorNormal_n_10;
  wire inmultitorNormal_n_11;
  wire inmultitorNormal_n_12;
  wire inmultitorNormal_n_13;
  wire inmultitorNormal_n_14;
  wire inmultitorNormal_n_15;
  wire inmultitorNormal_n_16;
  wire inmultitorNormal_n_17;
  wire inmultitorNormal_n_18;
  wire inmultitorNormal_n_19;
  wire inmultitorNormal_n_2;
  wire inmultitorNormal_n_20;
  wire inmultitorNormal_n_21;
  wire inmultitorNormal_n_22;
  wire inmultitorNormal_n_23;
  wire inmultitorNormal_n_24;
  wire inmultitorNormal_n_25;
  wire inmultitorNormal_n_26;
  wire inmultitorNormal_n_27;
  wire inmultitorNormal_n_28;
  wire inmultitorNormal_n_29;
  wire inmultitorNormal_n_3;
  wire inmultitorNormal_n_30;
  wire inmultitorNormal_n_4;
  wire inmultitorNormal_n_5;
  wire inmultitorNormal_n_6;
  wire inmultitorNormal_n_7;
  wire inmultitorNormal_n_8;
  wire inmultitorNormal_n_9;
  wire \mantisa_A_reg_n_0_[0] ;
  wire \mantisa_A_reg_n_0_[10] ;
  wire \mantisa_A_reg_n_0_[11] ;
  wire \mantisa_A_reg_n_0_[12] ;
  wire \mantisa_A_reg_n_0_[13] ;
  wire \mantisa_A_reg_n_0_[14] ;
  wire \mantisa_A_reg_n_0_[15] ;
  wire \mantisa_A_reg_n_0_[16] ;
  wire \mantisa_A_reg_n_0_[17] ;
  wire \mantisa_A_reg_n_0_[18] ;
  wire \mantisa_A_reg_n_0_[19] ;
  wire \mantisa_A_reg_n_0_[1] ;
  wire \mantisa_A_reg_n_0_[20] ;
  wire \mantisa_A_reg_n_0_[21] ;
  wire \mantisa_A_reg_n_0_[22] ;
  wire \mantisa_A_reg_n_0_[2] ;
  wire \mantisa_A_reg_n_0_[3] ;
  wire \mantisa_A_reg_n_0_[4] ;
  wire \mantisa_A_reg_n_0_[5] ;
  wire \mantisa_A_reg_n_0_[6] ;
  wire \mantisa_A_reg_n_0_[7] ;
  wire \mantisa_A_reg_n_0_[8] ;
  wire \mantisa_A_reg_n_0_[9] ;
  wire \mantisa_B_reg_n_0_[0] ;
  wire \mantisa_B_reg_n_0_[10] ;
  wire \mantisa_B_reg_n_0_[11] ;
  wire \mantisa_B_reg_n_0_[12] ;
  wire \mantisa_B_reg_n_0_[13] ;
  wire \mantisa_B_reg_n_0_[14] ;
  wire \mantisa_B_reg_n_0_[15] ;
  wire \mantisa_B_reg_n_0_[16] ;
  wire \mantisa_B_reg_n_0_[17] ;
  wire \mantisa_B_reg_n_0_[18] ;
  wire \mantisa_B_reg_n_0_[19] ;
  wire \mantisa_B_reg_n_0_[1] ;
  wire \mantisa_B_reg_n_0_[20] ;
  wire \mantisa_B_reg_n_0_[21] ;
  wire \mantisa_B_reg_n_0_[22] ;
  wire \mantisa_B_reg_n_0_[2] ;
  wire \mantisa_B_reg_n_0_[3] ;
  wire \mantisa_B_reg_n_0_[4] ;
  wire \mantisa_B_reg_n_0_[5] ;
  wire \mantisa_B_reg_n_0_[6] ;
  wire \mantisa_B_reg_n_0_[7] ;
  wire \mantisa_B_reg_n_0_[8] ;
  wire \mantisa_B_reg_n_0_[9] ;
  wire mantisa_normalizata;
  wire \mantisa_normalizata_reg_n_0_[46] ;
  wire \mantisa_normalizata_reg_n_0_[47] ;
  wire overflow3;
  wire overflow_i_1__1_n_0;
  wire [7:0]p_0_out;
  wire [45:23]plusOp;
  wire [46:24]plusOp0_in;
  wire [31:0]result3;
  wire \result[0]_i_1_n_0 ;
  wire \result[10]_i_1_n_0 ;
  wire \result[11]_i_1_n_0 ;
  wire \result[12]_i_1_n_0 ;
  wire \result[13]_i_1_n_0 ;
  wire \result[14]_i_1_n_0 ;
  wire \result[15]_i_1_n_0 ;
  wire \result[16]_i_1_n_0 ;
  wire \result[17]_i_1_n_0 ;
  wire \result[18]_i_1_n_0 ;
  wire \result[19]_i_1_n_0 ;
  wire \result[1]_i_1_n_0 ;
  wire \result[20]_i_1_n_0 ;
  wire \result[21]_i_1__0_n_0 ;
  wire \result[22]_i_1__0_n_0 ;
  wire \result[23]_i_1__1_n_0 ;
  wire \result[24]_i_1__0_n_0 ;
  wire \result[25]_i_1__0_n_0 ;
  wire \result[26]_i_1__0_n_0 ;
  wire \result[27]_i_1__0_n_0 ;
  wire \result[28]_i_1_n_0 ;
  wire \result[29]_i_1_n_0 ;
  wire \result[29]_i_2_n_0 ;
  wire \result[2]_i_1_n_0 ;
  wire \result[30]_i_1_n_0 ;
  wire \result[31]_i_1__2_n_0 ;
  wire \result[31]_i_2_n_0 ;
  wire \result[31]_i_3_n_0 ;
  wire \result[31]_i_4_n_0 ;
  wire \result[31]_i_5_n_0 ;
  wire \result[3]_i_1_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[4]_i_1_n_0 ;
  wire \result[5]_i_1_n_0 ;
  wire \result[6]_i_1_n_0 ;
  wire \result[7]_i_1_n_0 ;
  wire \result[8]_i_1_n_0 ;
  wire \result[9]_i_1_n_0 ;
  wire \result_reg[11]_i_2_n_0 ;
  wire \result_reg[11]_i_2_n_1 ;
  wire \result_reg[11]_i_2_n_2 ;
  wire \result_reg[11]_i_2_n_3 ;
  wire \result_reg[11]_i_3_n_0 ;
  wire \result_reg[11]_i_3_n_1 ;
  wire \result_reg[11]_i_3_n_2 ;
  wire \result_reg[11]_i_3_n_3 ;
  wire \result_reg[15]_i_2_n_0 ;
  wire \result_reg[15]_i_2_n_1 ;
  wire \result_reg[15]_i_2_n_2 ;
  wire \result_reg[15]_i_2_n_3 ;
  wire \result_reg[15]_i_3_n_0 ;
  wire \result_reg[15]_i_3_n_1 ;
  wire \result_reg[15]_i_3_n_2 ;
  wire \result_reg[15]_i_3_n_3 ;
  wire \result_reg[19]_i_2_n_0 ;
  wire \result_reg[19]_i_2_n_1 ;
  wire \result_reg[19]_i_2_n_2 ;
  wire \result_reg[19]_i_2_n_3 ;
  wire \result_reg[19]_i_3_n_0 ;
  wire \result_reg[19]_i_3_n_1 ;
  wire \result_reg[19]_i_3_n_2 ;
  wire \result_reg[19]_i_3_n_3 ;
  wire \result_reg[22]_i_2_n_2 ;
  wire \result_reg[22]_i_2_n_3 ;
  wire \result_reg[22]_i_3_n_2 ;
  wire \result_reg[22]_i_3_n_3 ;
  wire \result_reg[3]_i_2_n_0 ;
  wire \result_reg[3]_i_2_n_1 ;
  wire \result_reg[3]_i_2_n_2 ;
  wire \result_reg[3]_i_2_n_3 ;
  wire \result_reg[3]_i_3_n_0 ;
  wire \result_reg[3]_i_3_n_1 ;
  wire \result_reg[3]_i_3_n_2 ;
  wire \result_reg[3]_i_3_n_3 ;
  wire \result_reg[7]_i_2_n_0 ;
  wire \result_reg[7]_i_2_n_1 ;
  wire \result_reg[7]_i_2_n_2 ;
  wire \result_reg[7]_i_2_n_3 ;
  wire \result_reg[7]_i_3_n_0 ;
  wire \result_reg[7]_i_3_n_1 ;
  wire \result_reg[7]_i_3_n_2 ;
  wire \result_reg[7]_i_3_n_3 ;
  wire semn_A;
  wire semn_A_reg_n_0;
  wire semn_B;
  wire [2:0]stare;
  wire start_mul_reg_n_0;
  wire zero3;
  wire zero_i_1__1_n_0;
  wire [3:0]NLW_exp_suma0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_exp_suma0_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_result_reg[22]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[22]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_result_reg[22]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[22]_i_3_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_sequential_stare[2]_i_2 
       (.I0(\FSM_sequential_stare[2]_i_4__0_n_0 ),
        .I1(\FSM_sequential_stare_reg[2]_0 ),
        .I2(\FSM_sequential_stare[2]_i_5_n_0 ),
        .I3(\FSM_sequential_stare_reg[2]_1 ),
        .O(\FSM_sequential_stare[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \FSM_sequential_stare[2]_i_3 
       (.I0(\exp_suma_reg_n_0_[8] ),
        .I1(\result[31]_i_4_n_0 ),
        .I2(\exp_suma_reg_n_0_[7] ),
        .O(\FSM_sequential_stare[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_stare[2]_i_4__0 
       (.I0(\FSM_sequential_stare[2]_i_2_2 ),
        .I1(B[29]),
        .I2(B[28]),
        .I3(B[30]),
        .I4(B[31]),
        .I5(\FSM_sequential_stare[2]_i_2_3 ),
        .O(\FSM_sequential_stare[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_stare[2]_i_5 
       (.I0(\FSM_sequential_stare[2]_i_2_0 ),
        .I1(A[29]),
        .I2(A[28]),
        .I3(A[30]),
        .I4(A[31]),
        .I5(\FSM_sequential_stare[2]_i_2_1 ),
        .O(\FSM_sequential_stare[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "multiplicare:001,normalizarerezultat:100,adunareexponenti:010,corectiedepasire:011,terminare:101,initializare:000,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(inmultitorNormal_n_4),
        .Q(stare[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "multiplicare:001,normalizarerezultat:100,adunareexponenti:010,corectiedepasire:011,terminare:101,initializare:000,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inmultitorNormal_n_3),
        .Q(stare[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "multiplicare:001,normalizarerezultat:100,adunareexponenti:010,corectiedepasire:011,terminare:101,initializare:000,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inmultitorNormal_n_2),
        .Q(stare[2]),
        .R(1'b0));
  FDRE \exp_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(A[23]),
        .Q(\exp_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exp_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(A[24]),
        .Q(\exp_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \exp_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(A[25]),
        .Q(\exp_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \exp_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(A[26]),
        .Q(\exp_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \exp_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(A[27]),
        .Q(\exp_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \exp_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(A[28]),
        .Q(\exp_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \exp_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(A[29]),
        .Q(\exp_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \exp_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(A[30]),
        .Q(\exp_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \exp_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(B[23]),
        .Q(exp_B[0]),
        .R(1'b0));
  FDRE \exp_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(B[24]),
        .Q(exp_B[1]),
        .R(1'b0));
  FDRE \exp_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(B[25]),
        .Q(exp_B[2]),
        .R(1'b0));
  FDRE \exp_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(B[26]),
        .Q(exp_B[3]),
        .R(1'b0));
  FDRE \exp_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(B[27]),
        .Q(exp_B[4]),
        .R(1'b0));
  FDRE \exp_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(B[28]),
        .Q(exp_B[5]),
        .R(1'b0));
  FDRE \exp_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(B[29]),
        .Q(exp_B[6]),
        .R(1'b0));
  FDRE \exp_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(B[30]),
        .Q(exp_B[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 exp_suma0_carry
       (.CI(1'b0),
        .CO({exp_suma0_carry_n_0,exp_suma0_carry_n_1,exp_suma0_carry_n_2,exp_suma0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(p_0_out[3:0]),
        .O(exp_suma0_in[3:0]),
        .S({exp_suma0_carry_i_5_n_0,exp_suma0_carry_i_6_n_0,exp_suma0_carry_i_7_n_0,exp_suma0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 exp_suma0_carry__0
       (.CI(exp_suma0_carry_n_0),
        .CO({exp_suma0_carry__0_n_0,exp_suma0_carry__0_n_1,exp_suma0_carry__0_n_2,exp_suma0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p_0_out[7:4]),
        .O(exp_suma0_in[7:4]),
        .S({exp_suma0_carry__0_i_5_n_0,exp_suma0_carry__0_i_6_n_0,exp_suma0_carry__0_i_7_n_0,exp_suma0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    exp_suma0_carry__0_i_1
       (.I0(exp_B[7]),
        .I1(stare[0]),
        .O(p_0_out[7]));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry__0_i_2
       (.I0(exp_B[6]),
        .I1(stare[1]),
        .O(p_0_out[6]));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry__0_i_3
       (.I0(exp_B[5]),
        .I1(stare[1]),
        .O(p_0_out[5]));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry__0_i_4
       (.I0(exp_B[4]),
        .I1(stare[1]),
        .O(p_0_out[4]));
  LUT4 #(
    .INIT(16'h53A3)) 
    exp_suma0_carry__0_i_5
       (.I0(exp_B[7]),
        .I1(\exp_suma_reg_n_0_[7] ),
        .I2(stare[0]),
        .I3(\exp_A_reg_n_0_[7] ),
        .O(exp_suma0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    exp_suma0_carry__0_i_6
       (.I0(stare[1]),
        .I1(exp_B[6]),
        .I2(\exp_suma_reg_n_0_[6] ),
        .I3(stare[0]),
        .I4(\exp_A_reg_n_0_[6] ),
        .O(exp_suma0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    exp_suma0_carry__0_i_7
       (.I0(stare[1]),
        .I1(exp_B[5]),
        .I2(\exp_suma_reg_n_0_[5] ),
        .I3(stare[0]),
        .I4(\exp_A_reg_n_0_[5] ),
        .O(exp_suma0_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    exp_suma0_carry__0_i_8
       (.I0(stare[1]),
        .I1(exp_B[4]),
        .I2(\exp_suma_reg_n_0_[4] ),
        .I3(stare[0]),
        .I4(\exp_A_reg_n_0_[4] ),
        .O(exp_suma0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 exp_suma0_carry__1
       (.CI(exp_suma0_carry__0_n_0),
        .CO(NLW_exp_suma0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_exp_suma0_carry__1_O_UNCONNECTED[3:1],exp_suma0_in[8]}),
        .S({1'b0,1'b0,1'b0,exp_suma0_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry__1_i_1
       (.I0(stare[1]),
        .I1(\exp_suma_reg_n_0_[8] ),
        .O(exp_suma0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry_i_1
       (.I0(exp_B[3]),
        .I1(stare[1]),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry_i_2
       (.I0(exp_B[2]),
        .I1(stare[1]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h2)) 
    exp_suma0_carry_i_3
       (.I0(exp_B[1]),
        .I1(stare[1]),
        .O(p_0_out[1]));
  LUT2 #(
    .INIT(4'hB)) 
    exp_suma0_carry_i_4
       (.I0(exp_B[0]),
        .I1(stare[0]),
        .O(p_0_out[0]));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    exp_suma0_carry_i_5
       (.I0(stare[1]),
        .I1(exp_B[3]),
        .I2(\exp_suma_reg_n_0_[3] ),
        .I3(stare[0]),
        .I4(\exp_A_reg_n_0_[3] ),
        .O(exp_suma0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    exp_suma0_carry_i_6
       (.I0(stare[1]),
        .I1(exp_B[2]),
        .I2(\exp_suma_reg_n_0_[2] ),
        .I3(stare[0]),
        .I4(\exp_A_reg_n_0_[2] ),
        .O(exp_suma0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    exp_suma0_carry_i_7
       (.I0(stare[1]),
        .I1(exp_B[1]),
        .I2(\exp_suma_reg_n_0_[1] ),
        .I3(stare[0]),
        .I4(\exp_A_reg_n_0_[1] ),
        .O(exp_suma0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h53A3)) 
    exp_suma0_carry_i_8
       (.I0(exp_B[0]),
        .I1(\exp_suma_reg_n_0_[0] ),
        .I2(stare[0]),
        .I3(\exp_A_reg_n_0_[0] ),
        .O(exp_suma0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h00040304)) 
    \exp_suma[8]_i_1 
       (.I0(\FSM_sequential_stare[2]_i_2_n_0 ),
        .I1(stare[0]),
        .I2(stare[2]),
        .I3(stare[1]),
        .I4(\FSM_sequential_stare[2]_i_3_n_0 ),
        .O(exp_suma));
  FDRE \exp_suma_reg[0] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[0]),
        .Q(\exp_suma_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exp_suma_reg[1] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[1]),
        .Q(\exp_suma_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \exp_suma_reg[2] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[2]),
        .Q(\exp_suma_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \exp_suma_reg[3] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[3]),
        .Q(\exp_suma_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \exp_suma_reg[4] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[4]),
        .Q(\exp_suma_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \exp_suma_reg[5] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[5]),
        .Q(\exp_suma_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \exp_suma_reg[6] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[6]),
        .Q(\exp_suma_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \exp_suma_reg[7] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[7]),
        .Q(\exp_suma_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \exp_suma_reg[8] 
       (.C(clk),
        .CE(exp_suma),
        .D(exp_suma0_in[8]),
        .Q(\exp_suma_reg_n_0_[8] ),
        .R(1'b0));
  design_1_ALU_0_0_mulBinary inmultitorNormal
       (.\A_extins_reg[22]_0 ({\mantisa_A_reg_n_0_[22] ,\mantisa_A_reg_n_0_[21] ,\mantisa_A_reg_n_0_[20] ,\mantisa_A_reg_n_0_[19] ,\mantisa_A_reg_n_0_[18] ,\mantisa_A_reg_n_0_[17] ,\mantisa_A_reg_n_0_[16] ,\mantisa_A_reg_n_0_[15] ,\mantisa_A_reg_n_0_[14] ,\mantisa_A_reg_n_0_[13] ,\mantisa_A_reg_n_0_[12] ,\mantisa_A_reg_n_0_[11] ,\mantisa_A_reg_n_0_[10] ,\mantisa_A_reg_n_0_[9] ,\mantisa_A_reg_n_0_[8] ,\mantisa_A_reg_n_0_[7] ,\mantisa_A_reg_n_0_[6] ,\mantisa_A_reg_n_0_[5] ,\mantisa_A_reg_n_0_[4] ,\mantisa_A_reg_n_0_[3] ,\mantisa_A_reg_n_0_[2] ,\mantisa_A_reg_n_0_[1] ,\mantisa_A_reg_n_0_[0] }),
        .\B_extins_reg[22]_0 ({\mantisa_B_reg_n_0_[22] ,\mantisa_B_reg_n_0_[21] ,\mantisa_B_reg_n_0_[20] ,\mantisa_B_reg_n_0_[19] ,\mantisa_B_reg_n_0_[18] ,\mantisa_B_reg_n_0_[17] ,\mantisa_B_reg_n_0_[16] ,\mantisa_B_reg_n_0_[15] ,\mantisa_B_reg_n_0_[14] ,\mantisa_B_reg_n_0_[13] ,\mantisa_B_reg_n_0_[12] ,\mantisa_B_reg_n_0_[11] ,\mantisa_B_reg_n_0_[10] ,\mantisa_B_reg_n_0_[9] ,\mantisa_B_reg_n_0_[8] ,\mantisa_B_reg_n_0_[7] ,\mantisa_B_reg_n_0_[6] ,\mantisa_B_reg_n_0_[5] ,\mantisa_B_reg_n_0_[4] ,\mantisa_B_reg_n_0_[3] ,\mantisa_B_reg_n_0_[2] ,\mantisa_B_reg_n_0_[1] ,\mantisa_B_reg_n_0_[0] }),
        .E(mantisa_normalizata),
        .\FSM_sequential_stare_reg[1]_0 (start_mul_reg_n_0),
        .\FSM_sequential_stare_reg[2] (inmultitorNormal_n_2),
        .\FSM_sequential_stare_reg[2]_0 (inmultitorNormal_n_3),
        .\FSM_sequential_stare_reg[2]_1 (inmultitorNormal_n_4),
        .\FSM_sequential_stare_reg[2]_2 (\FSM_sequential_stare[2]_i_3_n_0 ),
        .\FSM_sequential_stare_reg[2]_3 (\FSM_sequential_stare[2]_i_2_n_0 ),
        .Q({inmultitorNormal_n_5,inmultitorNormal_n_6,inmultitorNormal_n_7,inmultitorNormal_n_8,inmultitorNormal_n_9,inmultitorNormal_n_10,inmultitorNormal_n_11,inmultitorNormal_n_12,inmultitorNormal_n_13,inmultitorNormal_n_14,inmultitorNormal_n_15,inmultitorNormal_n_16,inmultitorNormal_n_17,inmultitorNormal_n_18,inmultitorNormal_n_19,inmultitorNormal_n_20,inmultitorNormal_n_21,inmultitorNormal_n_22,inmultitorNormal_n_23,inmultitorNormal_n_24,inmultitorNormal_n_25,inmultitorNormal_n_26,inmultitorNormal_n_27,inmultitorNormal_n_28,inmultitorNormal_n_29,inmultitorNormal_n_30}),
        .clk(clk),
        .done_reg_0(inmultitorNormal_n_1),
        .stare(stare));
  FDRE \mantisa_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(A[0]),
        .Q(\mantisa_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(A[10]),
        .Q(\mantisa_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(A[11]),
        .Q(\mantisa_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(A[12]),
        .Q(\mantisa_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(A[13]),
        .Q(\mantisa_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(A[14]),
        .Q(\mantisa_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(A[15]),
        .Q(\mantisa_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(A[16]),
        .Q(\mantisa_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(A[17]),
        .Q(\mantisa_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(A[18]),
        .Q(\mantisa_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(A[19]),
        .Q(\mantisa_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(A[1]),
        .Q(\mantisa_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(A[20]),
        .Q(\mantisa_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(A[21]),
        .Q(\mantisa_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(A[22]),
        .Q(\mantisa_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(A[2]),
        .Q(\mantisa_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(A[3]),
        .Q(\mantisa_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(A[4]),
        .Q(\mantisa_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(A[5]),
        .Q(\mantisa_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(A[6]),
        .Q(\mantisa_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(A[7]),
        .Q(\mantisa_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(A[8]),
        .Q(\mantisa_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(A[9]),
        .Q(\mantisa_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \mantisa_B[22]_i_1__0 
       (.I0(stare[0]),
        .I1(stare[1]),
        .I2(stare[2]),
        .O(semn_A));
  FDRE \mantisa_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(B[0]),
        .Q(\mantisa_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(B[10]),
        .Q(\mantisa_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(B[11]),
        .Q(\mantisa_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(B[12]),
        .Q(\mantisa_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(B[13]),
        .Q(\mantisa_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(B[14]),
        .Q(\mantisa_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(B[15]),
        .Q(\mantisa_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(B[16]),
        .Q(\mantisa_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(B[17]),
        .Q(\mantisa_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(B[18]),
        .Q(\mantisa_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(B[19]),
        .Q(\mantisa_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(B[1]),
        .Q(\mantisa_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(B[20]),
        .Q(\mantisa_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(B[21]),
        .Q(\mantisa_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(B[22]),
        .Q(\mantisa_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(B[2]),
        .Q(\mantisa_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(B[3]),
        .Q(\mantisa_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(B[4]),
        .Q(\mantisa_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(B[5]),
        .Q(\mantisa_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(B[6]),
        .Q(\mantisa_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(B[7]),
        .Q(\mantisa_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(B[8]),
        .Q(\mantisa_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(B[9]),
        .Q(\mantisa_B_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[22] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_30),
        .Q(R),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[23] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_29),
        .Q(L[23]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[24] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_28),
        .Q(L[24]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[25] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_27),
        .Q(L[25]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[26] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_26),
        .Q(L[26]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[27] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_25),
        .Q(L[27]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[28] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_24),
        .Q(L[28]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[29] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_23),
        .Q(L[29]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[30] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_22),
        .Q(L[30]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[31] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_21),
        .Q(L[31]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[32] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_20),
        .Q(L[32]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[33] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_19),
        .Q(L[33]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[34] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_18),
        .Q(L[34]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[35] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_17),
        .Q(L[35]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[36] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_16),
        .Q(L[36]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[37] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_15),
        .Q(L[37]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[38] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_14),
        .Q(L[38]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[39] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_13),
        .Q(L[39]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[40] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_12),
        .Q(L[40]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[41] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_11),
        .Q(L[41]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[42] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_10),
        .Q(L[42]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[43] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_9),
        .Q(L[43]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[44] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_8),
        .Q(L[44]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[45] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_7),
        .Q(L[45]),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[46] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_6),
        .Q(\mantisa_normalizata_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \mantisa_normalizata_reg[47] 
       (.C(clk),
        .CE(mantisa_normalizata),
        .D(inmultitorNormal_n_5),
        .Q(\mantisa_normalizata_reg_n_0_[47] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    overflow_i_1__1
       (.I0(stare[2]),
        .I1(stare[1]),
        .I2(\FSM_sequential_stare[2]_i_3_n_0 ),
        .I3(stare[0]),
        .I4(overflow3),
        .O(overflow_i_1__1_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow_i_1__1_n_0),
        .Q(overflow3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[0]_i_1 
       (.I0(plusOp[23]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[24]),
        .I3(stare[2]),
        .O(\result[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[10]_i_1 
       (.I0(plusOp[33]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[34]),
        .I3(stare[2]),
        .O(\result[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[11]_i_1 
       (.I0(plusOp[34]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[35]),
        .I3(stare[2]),
        .O(\result[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[12]_i_1 
       (.I0(plusOp[35]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[36]),
        .I3(stare[2]),
        .O(\result[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[13]_i_1 
       (.I0(plusOp[36]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[37]),
        .I3(stare[2]),
        .O(\result[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[14]_i_1 
       (.I0(plusOp[37]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[38]),
        .I3(stare[2]),
        .O(\result[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[15]_i_1 
       (.I0(plusOp[38]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[39]),
        .I3(stare[2]),
        .O(\result[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[16]_i_1 
       (.I0(plusOp[39]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[40]),
        .I3(stare[2]),
        .O(\result[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[17]_i_1 
       (.I0(plusOp[40]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[41]),
        .I3(stare[2]),
        .O(\result[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[18]_i_1 
       (.I0(plusOp[41]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[42]),
        .I3(stare[2]),
        .O(\result[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[19]_i_1 
       (.I0(plusOp[42]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[43]),
        .I3(stare[2]),
        .O(\result[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[1]_i_1 
       (.I0(plusOp[24]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[25]),
        .I3(stare[2]),
        .O(\result[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[20]_i_1 
       (.I0(plusOp[43]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[44]),
        .I3(stare[2]),
        .O(\result[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[21]_i_1__0 
       (.I0(plusOp[44]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[45]),
        .I3(stare[2]),
        .O(\result[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \result[22]_i_1__0 
       (.I0(plusOp[45]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[46]),
        .I3(stare[2]),
        .O(\result[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \result[23]_i_1__1 
       (.I0(\mantisa_normalizata_reg_n_0_[47] ),
        .I1(\exp_suma_reg_n_0_[0] ),
        .I2(stare[2]),
        .O(\result[23]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \result[24]_i_1__0 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[1] ),
        .I2(\mantisa_normalizata_reg_n_0_[47] ),
        .I3(\exp_suma_reg_n_0_[0] ),
        .O(\result[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \result[25]_i_1__0 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[1] ),
        .I2(\mantisa_normalizata_reg_n_0_[47] ),
        .I3(\exp_suma_reg_n_0_[0] ),
        .I4(\exp_suma_reg_n_0_[2] ),
        .O(\result[25]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \result[26]_i_1__0 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[3] ),
        .I2(\exp_suma_reg_n_0_[1] ),
        .I3(\mantisa_normalizata_reg_n_0_[47] ),
        .I4(\exp_suma_reg_n_0_[0] ),
        .I5(\exp_suma_reg_n_0_[2] ),
        .O(\result[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \result[27]_i_1__0 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[4] ),
        .I2(\result[29]_i_2_n_0 ),
        .O(\result[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \result[28]_i_1 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[5] ),
        .I2(\exp_suma_reg_n_0_[4] ),
        .I3(\result[29]_i_2_n_0 ),
        .O(\result[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h82888888)) 
    \result[29]_i_1 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[6] ),
        .I2(\result[29]_i_2_n_0 ),
        .I3(\exp_suma_reg_n_0_[4] ),
        .I4(\exp_suma_reg_n_0_[5] ),
        .O(\result[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \result[29]_i_2 
       (.I0(\exp_suma_reg_n_0_[3] ),
        .I1(\exp_suma_reg_n_0_[1] ),
        .I2(\mantisa_normalizata_reg_n_0_[47] ),
        .I3(\exp_suma_reg_n_0_[0] ),
        .I4(\exp_suma_reg_n_0_[2] ),
        .O(\result[29]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[2]_i_1 
       (.I0(plusOp[25]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[26]),
        .I3(stare[2]),
        .O(\result[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \result[30]_i_1 
       (.I0(stare[2]),
        .I1(\exp_suma_reg_n_0_[7] ),
        .I2(\mantisa_normalizata_reg_n_0_[47] ),
        .I3(\result[31]_i_4_n_0 ),
        .O(\result[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    \result[31]_i_1__2 
       (.I0(\exp_suma_reg_n_0_[7] ),
        .I1(\result[31]_i_4_n_0 ),
        .I2(\exp_suma_reg_n_0_[8] ),
        .I3(stare[2]),
        .I4(stare[1]),
        .I5(stare[0]),
        .O(\result[31]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h03380308)) 
    \result[31]_i_2 
       (.I0(\FSM_sequential_stare[2]_i_2_n_0 ),
        .I1(stare[0]),
        .I2(stare[1]),
        .I3(stare[2]),
        .I4(\FSM_sequential_stare[2]_i_3_n_0 ),
        .O(\result[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \result[31]_i_3 
       (.I0(semn_B),
        .I1(semn_A_reg_n_0),
        .I2(stare[2]),
        .O(\result[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \result[31]_i_4 
       (.I0(\exp_suma_reg_n_0_[0] ),
        .I1(\exp_suma_reg_n_0_[1] ),
        .I2(\exp_suma_reg_n_0_[2] ),
        .I3(\exp_suma_reg_n_0_[3] ),
        .I4(\exp_suma_reg_n_0_[6] ),
        .I5(\result[31]_i_5_n_0 ),
        .O(\result[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \result[31]_i_5 
       (.I0(\exp_suma_reg_n_0_[4] ),
        .I1(\exp_suma_reg_n_0_[5] ),
        .O(\result[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[3]_i_1 
       (.I0(plusOp[26]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[27]),
        .I3(stare[2]),
        .O(\result[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_4 
       (.I0(L[23]),
        .I1(R),
        .O(\result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_5 
       (.I0(L[24]),
        .I1(L[23]),
        .O(\result[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[4]_i_1 
       (.I0(plusOp[27]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[28]),
        .I3(stare[2]),
        .O(\result[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[5]_i_1 
       (.I0(plusOp[28]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[29]),
        .I3(stare[2]),
        .O(\result[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[6]_i_1 
       (.I0(plusOp[29]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[30]),
        .I3(stare[2]),
        .O(\result[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[7]_i_1 
       (.I0(plusOp[30]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[31]),
        .I3(stare[2]),
        .O(\result[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[8]_i_1 
       (.I0(plusOp[31]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[32]),
        .I3(stare[2]),
        .O(\result[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \result[9]_i_1 
       (.I0(plusOp[32]),
        .I1(\mantisa_normalizata_reg_n_0_[47] ),
        .I2(plusOp0_in[33]),
        .I3(stare[2]),
        .O(\result[9]_i_1_n_0 ));
  FDSE \result_reg[0] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[0]_i_1_n_0 ),
        .Q(result3[0]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[10] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[10]_i_1_n_0 ),
        .Q(result3[10]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[11] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[11]_i_1_n_0 ),
        .Q(result3[11]),
        .S(\result[31]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[11]_i_2 
       (.CI(\result_reg[7]_i_2_n_0 ),
        .CO({\result_reg[11]_i_2_n_0 ,\result_reg[11]_i_2_n_1 ,\result_reg[11]_i_2_n_2 ,\result_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[34:31]),
        .S(L[34:31]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[11]_i_3 
       (.CI(\result_reg[7]_i_3_n_0 ),
        .CO({\result_reg[11]_i_3_n_0 ,\result_reg[11]_i_3_n_1 ,\result_reg[11]_i_3_n_2 ,\result_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[35:32]),
        .S(L[35:32]));
  FDSE \result_reg[12] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[12]_i_1_n_0 ),
        .Q(result3[12]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[13] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[13]_i_1_n_0 ),
        .Q(result3[13]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[14] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[14]_i_1_n_0 ),
        .Q(result3[14]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[15] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[15]_i_1_n_0 ),
        .Q(result3[15]),
        .S(\result[31]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[15]_i_2 
       (.CI(\result_reg[11]_i_2_n_0 ),
        .CO({\result_reg[15]_i_2_n_0 ,\result_reg[15]_i_2_n_1 ,\result_reg[15]_i_2_n_2 ,\result_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[38:35]),
        .S(L[38:35]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[15]_i_3 
       (.CI(\result_reg[11]_i_3_n_0 ),
        .CO({\result_reg[15]_i_3_n_0 ,\result_reg[15]_i_3_n_1 ,\result_reg[15]_i_3_n_2 ,\result_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[39:36]),
        .S(L[39:36]));
  FDSE \result_reg[16] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[16]_i_1_n_0 ),
        .Q(result3[16]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[17] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[17]_i_1_n_0 ),
        .Q(result3[17]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[18] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[18]_i_1_n_0 ),
        .Q(result3[18]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[19] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[19]_i_1_n_0 ),
        .Q(result3[19]),
        .S(\result[31]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[19]_i_2 
       (.CI(\result_reg[15]_i_2_n_0 ),
        .CO({\result_reg[19]_i_2_n_0 ,\result_reg[19]_i_2_n_1 ,\result_reg[19]_i_2_n_2 ,\result_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[42:39]),
        .S(L[42:39]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[19]_i_3 
       (.CI(\result_reg[15]_i_3_n_0 ),
        .CO({\result_reg[19]_i_3_n_0 ,\result_reg[19]_i_3_n_1 ,\result_reg[19]_i_3_n_2 ,\result_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[43:40]),
        .S(L[43:40]));
  FDSE \result_reg[1] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[1]_i_1_n_0 ),
        .Q(result3[1]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[20] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[20]_i_1_n_0 ),
        .Q(result3[20]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[21] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[21]_i_1__0_n_0 ),
        .Q(result3[21]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[22] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[22]_i_1__0_n_0 ),
        .Q(result3[22]),
        .S(\result[31]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[22]_i_2 
       (.CI(\result_reg[19]_i_2_n_0 ),
        .CO({\NLW_result_reg[22]_i_2_CO_UNCONNECTED [3:2],\result_reg[22]_i_2_n_2 ,\result_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[22]_i_2_O_UNCONNECTED [3],plusOp[45:43]}),
        .S({1'b0,L[45:43]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[22]_i_3 
       (.CI(\result_reg[19]_i_3_n_0 ),
        .CO({\NLW_result_reg[22]_i_3_CO_UNCONNECTED [3:2],\result_reg[22]_i_3_n_2 ,\result_reg[22]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[22]_i_3_O_UNCONNECTED [3],plusOp0_in[46:44]}),
        .S({1'b0,\mantisa_normalizata_reg_n_0_[46] ,L[45:44]}));
  FDSE \result_reg[23] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[23]_i_1__1_n_0 ),
        .Q(result3[23]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[24] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[24]_i_1__0_n_0 ),
        .Q(result3[24]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[25] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[25]_i_1__0_n_0 ),
        .Q(result3[25]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[26] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[26]_i_1__0_n_0 ),
        .Q(result3[26]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[27] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[27]_i_1__0_n_0 ),
        .Q(result3[27]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[28] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[28]_i_1_n_0 ),
        .Q(result3[28]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[29] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[29]_i_1_n_0 ),
        .Q(result3[29]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[2] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[2]_i_1_n_0 ),
        .Q(result3[2]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[30] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[30]_i_1_n_0 ),
        .Q(result3[30]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[31] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[31]_i_3_n_0 ),
        .Q(result3[31]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[3] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[3]_i_1_n_0 ),
        .Q(result3[3]),
        .S(\result[31]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_2_n_0 ,\result_reg[3]_i_2_n_1 ,\result_reg[3]_i_2_n_2 ,\result_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,L[23]}),
        .O(plusOp[26:23]),
        .S({L[26:24],\result[3]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_3_n_0 ,\result_reg[3]_i_3_n_1 ,\result_reg[3]_i_3_n_2 ,\result_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,L[24]}),
        .O(plusOp0_in[27:24]),
        .S({L[27:25],\result[3]_i_5_n_0 }));
  FDSE \result_reg[4] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[4]_i_1_n_0 ),
        .Q(result3[4]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[5] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[5]_i_1_n_0 ),
        .Q(result3[5]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[6] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[6]_i_1_n_0 ),
        .Q(result3[6]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[7] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[7]_i_1_n_0 ),
        .Q(result3[7]),
        .S(\result[31]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[7]_i_2 
       (.CI(\result_reg[3]_i_2_n_0 ),
        .CO({\result_reg[7]_i_2_n_0 ,\result_reg[7]_i_2_n_1 ,\result_reg[7]_i_2_n_2 ,\result_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[30:27]),
        .S(L[30:27]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \result_reg[7]_i_3 
       (.CI(\result_reg[3]_i_3_n_0 ),
        .CO({\result_reg[7]_i_3_n_0 ,\result_reg[7]_i_3_n_1 ,\result_reg[7]_i_3_n_2 ,\result_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[31:28]),
        .S(L[31:28]));
  FDSE \result_reg[8] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[8]_i_1_n_0 ),
        .Q(result3[8]),
        .S(\result[31]_i_1__2_n_0 ));
  FDSE \result_reg[9] 
       (.C(clk),
        .CE(\result[31]_i_2_n_0 ),
        .D(\result[9]_i_1_n_0 ),
        .Q(result3[9]),
        .S(\result[31]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    semn_A_reg
       (.C(clk),
        .CE(semn_A),
        .D(A[31]),
        .Q(semn_A_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    semn_B_reg
       (.C(clk),
        .CE(semn_A),
        .D(B[31]),
        .Q(semn_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_mul_reg
       (.C(clk),
        .CE(1'b1),
        .D(inmultitorNormal_n_1),
        .Q(start_mul_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    zero_i_1__1
       (.I0(stare[1]),
        .I1(stare[2]),
        .I2(\FSM_sequential_stare[2]_i_2_n_0 ),
        .I3(stare[0]),
        .I4(zero3),
        .O(zero_i_1__1_n_0));
  FDRE zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(zero_i_1__1_n_0),
        .Q(zero3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mulBinary" *) 
module design_1_ALU_0_0_mulBinary
   (E,
    done_reg_0,
    \FSM_sequential_stare_reg[2] ,
    \FSM_sequential_stare_reg[2]_0 ,
    \FSM_sequential_stare_reg[2]_1 ,
    Q,
    clk,
    \FSM_sequential_stare_reg[1]_0 ,
    stare,
    \FSM_sequential_stare_reg[2]_2 ,
    \FSM_sequential_stare_reg[2]_3 ,
    \B_extins_reg[22]_0 ,
    \A_extins_reg[22]_0 );
  output [0:0]E;
  output done_reg_0;
  output \FSM_sequential_stare_reg[2] ;
  output \FSM_sequential_stare_reg[2]_0 ;
  output \FSM_sequential_stare_reg[2]_1 ;
  output [25:0]Q;
  input clk;
  input \FSM_sequential_stare_reg[1]_0 ;
  input [2:0]stare;
  input \FSM_sequential_stare_reg[2]_2 ;
  input \FSM_sequential_stare_reg[2]_3 ;
  input [22:0]\B_extins_reg[22]_0 ;
  input [22:0]\A_extins_reg[22]_0 ;

  wire [22:0]A_extins;
  wire \A_extins[23]_i_1__0_n_0 ;
  wire [22:0]\A_extins_reg[22]_0 ;
  wire \A_extins_reg_n_0_[0] ;
  wire \A_extins_reg_n_0_[10] ;
  wire \A_extins_reg_n_0_[11] ;
  wire \A_extins_reg_n_0_[12] ;
  wire \A_extins_reg_n_0_[13] ;
  wire \A_extins_reg_n_0_[14] ;
  wire \A_extins_reg_n_0_[15] ;
  wire \A_extins_reg_n_0_[16] ;
  wire \A_extins_reg_n_0_[17] ;
  wire \A_extins_reg_n_0_[18] ;
  wire \A_extins_reg_n_0_[19] ;
  wire \A_extins_reg_n_0_[1] ;
  wire \A_extins_reg_n_0_[20] ;
  wire \A_extins_reg_n_0_[21] ;
  wire \A_extins_reg_n_0_[22] ;
  wire \A_extins_reg_n_0_[23] ;
  wire \A_extins_reg_n_0_[24] ;
  wire \A_extins_reg_n_0_[25] ;
  wire \A_extins_reg_n_0_[26] ;
  wire \A_extins_reg_n_0_[27] ;
  wire \A_extins_reg_n_0_[28] ;
  wire \A_extins_reg_n_0_[29] ;
  wire \A_extins_reg_n_0_[2] ;
  wire \A_extins_reg_n_0_[30] ;
  wire \A_extins_reg_n_0_[31] ;
  wire \A_extins_reg_n_0_[32] ;
  wire \A_extins_reg_n_0_[33] ;
  wire \A_extins_reg_n_0_[34] ;
  wire \A_extins_reg_n_0_[35] ;
  wire \A_extins_reg_n_0_[36] ;
  wire \A_extins_reg_n_0_[37] ;
  wire \A_extins_reg_n_0_[38] ;
  wire \A_extins_reg_n_0_[39] ;
  wire \A_extins_reg_n_0_[3] ;
  wire \A_extins_reg_n_0_[40] ;
  wire \A_extins_reg_n_0_[41] ;
  wire \A_extins_reg_n_0_[42] ;
  wire \A_extins_reg_n_0_[43] ;
  wire \A_extins_reg_n_0_[44] ;
  wire \A_extins_reg_n_0_[45] ;
  wire \A_extins_reg_n_0_[46] ;
  wire \A_extins_reg_n_0_[47] ;
  wire \A_extins_reg_n_0_[4] ;
  wire \A_extins_reg_n_0_[5] ;
  wire \A_extins_reg_n_0_[6] ;
  wire \A_extins_reg_n_0_[7] ;
  wire \A_extins_reg_n_0_[8] ;
  wire \A_extins_reg_n_0_[9] ;
  wire [23:0]B_extins;
  wire [22:0]\B_extins_reg[22]_0 ;
  wire \B_extins_reg_n_0_[0] ;
  wire \B_extins_reg_n_0_[10] ;
  wire \B_extins_reg_n_0_[11] ;
  wire \B_extins_reg_n_0_[12] ;
  wire \B_extins_reg_n_0_[13] ;
  wire \B_extins_reg_n_0_[14] ;
  wire \B_extins_reg_n_0_[15] ;
  wire \B_extins_reg_n_0_[16] ;
  wire \B_extins_reg_n_0_[17] ;
  wire \B_extins_reg_n_0_[18] ;
  wire \B_extins_reg_n_0_[19] ;
  wire \B_extins_reg_n_0_[1] ;
  wire \B_extins_reg_n_0_[20] ;
  wire \B_extins_reg_n_0_[21] ;
  wire \B_extins_reg_n_0_[22] ;
  wire \B_extins_reg_n_0_[23] ;
  wire \B_extins_reg_n_0_[2] ;
  wire \B_extins_reg_n_0_[3] ;
  wire \B_extins_reg_n_0_[4] ;
  wire \B_extins_reg_n_0_[5] ;
  wire \B_extins_reg_n_0_[6] ;
  wire \B_extins_reg_n_0_[7] ;
  wire \B_extins_reg_n_0_[8] ;
  wire \B_extins_reg_n_0_[9] ;
  wire [0:0]E;
  wire \FSM_sequential_stare[0]_i_1__2_n_0 ;
  wire \FSM_sequential_stare[1]_i_1__2_n_0 ;
  wire \FSM_sequential_stare[1]_i_2_n_0 ;
  wire \FSM_sequential_stare_reg[1]_0 ;
  wire \FSM_sequential_stare_reg[2] ;
  wire \FSM_sequential_stare_reg[2]_0 ;
  wire \FSM_sequential_stare_reg[2]_1 ;
  wire \FSM_sequential_stare_reg[2]_2 ;
  wire \FSM_sequential_stare_reg[2]_3 ;
  wire [25:0]Q;
  wire clk;
  wire \contor[0]_i_1__0_n_0 ;
  wire \contor[1]_i_1__0_n_0 ;
  wire \contor[2]_i_1__1_n_0 ;
  wire \contor[2]_i_2_n_0 ;
  wire \contor[3]_i_1__1_n_0 ;
  wire \contor[4]_i_1__0_n_0 ;
  wire \contor[4]_i_2__1_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire \contor_reg_n_0_[4] ;
  wire done_i_1__0_n_0;
  wire done_reg_0;
  wire final_mul;
  wire [47:0]in5;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__10_i_1_n_0;
  wire plusOp_carry__10_i_2_n_0;
  wire plusOp_carry__10_i_3_n_0;
  wire plusOp_carry__10_i_4_n_0;
  wire plusOp_carry__10_n_1;
  wire plusOp_carry__10_n_2;
  wire plusOp_carry__10_n_3;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_i_1_n_0;
  wire plusOp_carry__2_i_2_n_0;
  wire plusOp_carry__2_i_3_n_0;
  wire plusOp_carry__2_i_4_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_i_1_n_0;
  wire plusOp_carry__3_i_2_n_0;
  wire plusOp_carry__3_i_3_n_0;
  wire plusOp_carry__3_i_4_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_i_1_n_0;
  wire plusOp_carry__4_i_2_n_0;
  wire plusOp_carry__4_i_3_n_0;
  wire plusOp_carry__4_i_4_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_i_1_n_0;
  wire plusOp_carry__5_i_2_n_0;
  wire plusOp_carry__5_i_3_n_0;
  wire plusOp_carry__5_i_4_n_0;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_i_1_n_0;
  wire plusOp_carry__6_i_2_n_0;
  wire plusOp_carry__6_i_3_n_0;
  wire plusOp_carry__6_i_4_n_0;
  wire plusOp_carry__6_n_0;
  wire plusOp_carry__6_n_1;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry__7_i_1_n_0;
  wire plusOp_carry__7_i_2_n_0;
  wire plusOp_carry__7_i_3_n_0;
  wire plusOp_carry__7_i_4_n_0;
  wire plusOp_carry__7_n_0;
  wire plusOp_carry__7_n_1;
  wire plusOp_carry__7_n_2;
  wire plusOp_carry__7_n_3;
  wire plusOp_carry__8_i_1_n_0;
  wire plusOp_carry__8_i_2_n_0;
  wire plusOp_carry__8_i_3_n_0;
  wire plusOp_carry__8_i_4_n_0;
  wire plusOp_carry__8_n_0;
  wire plusOp_carry__8_n_1;
  wire plusOp_carry__8_n_2;
  wire plusOp_carry__8_n_3;
  wire plusOp_carry__9_i_1_n_0;
  wire plusOp_carry__9_i_2_n_0;
  wire plusOp_carry__9_i_3_n_0;
  wire plusOp_carry__9_i_4_n_0;
  wire plusOp_carry__9_n_0;
  wire plusOp_carry__9_n_1;
  wire plusOp_carry__9_n_2;
  wire plusOp_carry__9_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \result[47]_i_1_n_0 ;
  wire \rezultat[47]_i_1_n_0 ;
  wire \rezultat[47]_i_2_n_0 ;
  wire \rezultat_reg_n_0_[0] ;
  wire \rezultat_reg_n_0_[10] ;
  wire \rezultat_reg_n_0_[11] ;
  wire \rezultat_reg_n_0_[12] ;
  wire \rezultat_reg_n_0_[13] ;
  wire \rezultat_reg_n_0_[14] ;
  wire \rezultat_reg_n_0_[15] ;
  wire \rezultat_reg_n_0_[16] ;
  wire \rezultat_reg_n_0_[17] ;
  wire \rezultat_reg_n_0_[18] ;
  wire \rezultat_reg_n_0_[19] ;
  wire \rezultat_reg_n_0_[1] ;
  wire \rezultat_reg_n_0_[20] ;
  wire \rezultat_reg_n_0_[21] ;
  wire \rezultat_reg_n_0_[22] ;
  wire \rezultat_reg_n_0_[23] ;
  wire \rezultat_reg_n_0_[24] ;
  wire \rezultat_reg_n_0_[25] ;
  wire \rezultat_reg_n_0_[26] ;
  wire \rezultat_reg_n_0_[27] ;
  wire \rezultat_reg_n_0_[28] ;
  wire \rezultat_reg_n_0_[29] ;
  wire \rezultat_reg_n_0_[2] ;
  wire \rezultat_reg_n_0_[30] ;
  wire \rezultat_reg_n_0_[31] ;
  wire \rezultat_reg_n_0_[32] ;
  wire \rezultat_reg_n_0_[33] ;
  wire \rezultat_reg_n_0_[34] ;
  wire \rezultat_reg_n_0_[35] ;
  wire \rezultat_reg_n_0_[36] ;
  wire \rezultat_reg_n_0_[37] ;
  wire \rezultat_reg_n_0_[38] ;
  wire \rezultat_reg_n_0_[39] ;
  wire \rezultat_reg_n_0_[3] ;
  wire \rezultat_reg_n_0_[40] ;
  wire \rezultat_reg_n_0_[41] ;
  wire \rezultat_reg_n_0_[42] ;
  wire \rezultat_reg_n_0_[43] ;
  wire \rezultat_reg_n_0_[44] ;
  wire \rezultat_reg_n_0_[45] ;
  wire \rezultat_reg_n_0_[46] ;
  wire \rezultat_reg_n_0_[47] ;
  wire \rezultat_reg_n_0_[4] ;
  wire \rezultat_reg_n_0_[5] ;
  wire \rezultat_reg_n_0_[6] ;
  wire \rezultat_reg_n_0_[7] ;
  wire \rezultat_reg_n_0_[8] ;
  wire \rezultat_reg_n_0_[9] ;
  wire [2:0]stare;
  wire [1:0]stare_0;
  wire [3:3]NLW_plusOp_carry__10_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \A_extins[0]_i_1 
       (.I0(\A_extins_reg[22]_0 [0]),
        .I1(stare_0[0]),
        .O(A_extins[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[10]_i_1 
       (.I0(\A_extins_reg_n_0_[9] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [10]),
        .O(A_extins[10]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[11]_i_1 
       (.I0(\A_extins_reg_n_0_[10] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [11]),
        .O(A_extins[11]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[12]_i_1 
       (.I0(\A_extins_reg_n_0_[11] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [12]),
        .O(A_extins[12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[13]_i_1 
       (.I0(\A_extins_reg_n_0_[12] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [13]),
        .O(A_extins[13]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[14]_i_1 
       (.I0(\A_extins_reg_n_0_[13] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [14]),
        .O(A_extins[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[15]_i_1 
       (.I0(\A_extins_reg_n_0_[14] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [15]),
        .O(A_extins[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[16]_i_1 
       (.I0(\A_extins_reg_n_0_[15] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [16]),
        .O(A_extins[16]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[17]_i_1 
       (.I0(\A_extins_reg_n_0_[16] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [17]),
        .O(A_extins[17]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[18]_i_1 
       (.I0(\A_extins_reg_n_0_[17] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [18]),
        .O(A_extins[18]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[19]_i_1 
       (.I0(\A_extins_reg_n_0_[18] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [19]),
        .O(A_extins[19]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[1]_i_1 
       (.I0(\A_extins_reg_n_0_[0] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [1]),
        .O(A_extins[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[20]_i_1 
       (.I0(\A_extins_reg_n_0_[19] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [20]),
        .O(A_extins[20]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[21]_i_1 
       (.I0(\A_extins_reg_n_0_[20] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [21]),
        .O(A_extins[21]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[22]_i_1 
       (.I0(\A_extins_reg_n_0_[21] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [22]),
        .O(A_extins[22]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \A_extins[23]_i_1__0 
       (.I0(\A_extins_reg_n_0_[22] ),
        .I1(stare_0[0]),
        .O(\A_extins[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[2]_i_1 
       (.I0(\A_extins_reg_n_0_[1] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [2]),
        .O(A_extins[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[3]_i_1 
       (.I0(\A_extins_reg_n_0_[2] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [3]),
        .O(A_extins[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[4]_i_1 
       (.I0(\A_extins_reg_n_0_[3] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [4]),
        .O(A_extins[4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[5]_i_1 
       (.I0(\A_extins_reg_n_0_[4] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [5]),
        .O(A_extins[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[6]_i_1 
       (.I0(\A_extins_reg_n_0_[5] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [6]),
        .O(A_extins[6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[7]_i_1 
       (.I0(\A_extins_reg_n_0_[6] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [7]),
        .O(A_extins[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[8]_i_1 
       (.I0(\A_extins_reg_n_0_[7] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [8]),
        .O(A_extins[8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_extins[9]_i_1 
       (.I0(\A_extins_reg_n_0_[8] ),
        .I1(stare_0[0]),
        .I2(\A_extins_reg[22]_0 [9]),
        .O(A_extins[9]));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[0] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[0]),
        .Q(\A_extins_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[10] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[10]),
        .Q(\A_extins_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[11] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[11]),
        .Q(\A_extins_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[12] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[12]),
        .Q(\A_extins_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[13] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[13]),
        .Q(\A_extins_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[14] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[14]),
        .Q(\A_extins_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[15] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[15]),
        .Q(\A_extins_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[16] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[16]),
        .Q(\A_extins_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[17] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[17]),
        .Q(\A_extins_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[18] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[18]),
        .Q(\A_extins_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[19] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[19]),
        .Q(\A_extins_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[1] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[1]),
        .Q(\A_extins_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[20] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[20]),
        .Q(\A_extins_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[21] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[21]),
        .Q(\A_extins_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[22] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[22]),
        .Q(\A_extins_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[23] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins[23]_i_1__0_n_0 ),
        .Q(\A_extins_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[24] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[23] ),
        .Q(\A_extins_reg_n_0_[24] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[25] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[24] ),
        .Q(\A_extins_reg_n_0_[25] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[26] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[25] ),
        .Q(\A_extins_reg_n_0_[26] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[27] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[26] ),
        .Q(\A_extins_reg_n_0_[27] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[28] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[27] ),
        .Q(\A_extins_reg_n_0_[28] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[29] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[28] ),
        .Q(\A_extins_reg_n_0_[29] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[2] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[2]),
        .Q(\A_extins_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[30] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[29] ),
        .Q(\A_extins_reg_n_0_[30] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[31] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[30] ),
        .Q(\A_extins_reg_n_0_[31] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[32] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[31] ),
        .Q(\A_extins_reg_n_0_[32] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[33] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[32] ),
        .Q(\A_extins_reg_n_0_[33] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[34] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[33] ),
        .Q(\A_extins_reg_n_0_[34] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[35] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[34] ),
        .Q(\A_extins_reg_n_0_[35] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[36] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[35] ),
        .Q(\A_extins_reg_n_0_[36] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[37] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[36] ),
        .Q(\A_extins_reg_n_0_[37] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[38] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[37] ),
        .Q(\A_extins_reg_n_0_[38] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[39] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[38] ),
        .Q(\A_extins_reg_n_0_[39] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[3] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[3]),
        .Q(\A_extins_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[40] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[39] ),
        .Q(\A_extins_reg_n_0_[40] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[41] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[40] ),
        .Q(\A_extins_reg_n_0_[41] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[42] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[41] ),
        .Q(\A_extins_reg_n_0_[42] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[43] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[42] ),
        .Q(\A_extins_reg_n_0_[43] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[44] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[43] ),
        .Q(\A_extins_reg_n_0_[44] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[45] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[44] ),
        .Q(\A_extins_reg_n_0_[45] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[46] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[45] ),
        .Q(\A_extins_reg_n_0_[46] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[47] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\A_extins_reg_n_0_[46] ),
        .Q(\A_extins_reg_n_0_[47] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[4] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[4]),
        .Q(\A_extins_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[5] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[5]),
        .Q(\A_extins_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[6] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[6]),
        .Q(\A_extins_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[7] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[7]),
        .Q(\A_extins_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[8] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[8]),
        .Q(\A_extins_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[9] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(A_extins[9]),
        .Q(\A_extins_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[0]_i_1 
       (.I0(\B_extins_reg_n_0_[1] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [0]),
        .O(B_extins[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[10]_i_1 
       (.I0(\B_extins_reg_n_0_[11] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [10]),
        .O(B_extins[10]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[11]_i_1 
       (.I0(\B_extins_reg_n_0_[12] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [11]),
        .O(B_extins[11]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[12]_i_1 
       (.I0(\B_extins_reg_n_0_[13] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [12]),
        .O(B_extins[12]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[13]_i_1 
       (.I0(\B_extins_reg_n_0_[14] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [13]),
        .O(B_extins[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[14]_i_1 
       (.I0(\B_extins_reg_n_0_[15] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [14]),
        .O(B_extins[14]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[15]_i_1 
       (.I0(\B_extins_reg_n_0_[16] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [15]),
        .O(B_extins[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[16]_i_1 
       (.I0(\B_extins_reg_n_0_[17] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [16]),
        .O(B_extins[16]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[17]_i_1 
       (.I0(\B_extins_reg_n_0_[18] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [17]),
        .O(B_extins[17]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[18]_i_1 
       (.I0(\B_extins_reg_n_0_[19] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [18]),
        .O(B_extins[18]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[19]_i_1 
       (.I0(\B_extins_reg_n_0_[20] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [19]),
        .O(B_extins[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[1]_i_1 
       (.I0(\B_extins_reg_n_0_[2] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [1]),
        .O(B_extins[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[20]_i_1 
       (.I0(\B_extins_reg_n_0_[21] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [20]),
        .O(B_extins[20]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[21]_i_1 
       (.I0(\B_extins_reg_n_0_[22] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [21]),
        .O(B_extins[21]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[22]_i_1__0 
       (.I0(\B_extins_reg_n_0_[23] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [22]),
        .O(B_extins[22]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \B_extins[23]_i_1 
       (.I0(stare_0[0]),
        .O(B_extins[23]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[2]_i_1 
       (.I0(\B_extins_reg_n_0_[3] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [2]),
        .O(B_extins[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[3]_i_1 
       (.I0(\B_extins_reg_n_0_[4] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [3]),
        .O(B_extins[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[4]_i_1 
       (.I0(\B_extins_reg_n_0_[5] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [4]),
        .O(B_extins[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[5]_i_1 
       (.I0(\B_extins_reg_n_0_[6] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [5]),
        .O(B_extins[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[6]_i_1 
       (.I0(\B_extins_reg_n_0_[7] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [6]),
        .O(B_extins[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[7]_i_1 
       (.I0(\B_extins_reg_n_0_[8] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [7]),
        .O(B_extins[7]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[8]_i_1 
       (.I0(\B_extins_reg_n_0_[9] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [8]),
        .O(B_extins[8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_extins[9]_i_1 
       (.I0(\B_extins_reg_n_0_[10] ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg[22]_0 [9]),
        .O(B_extins[9]));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[0] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[0]),
        .Q(\B_extins_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[10] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[10]),
        .Q(\B_extins_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[11] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[11]),
        .Q(\B_extins_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[12] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[12]),
        .Q(\B_extins_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[13] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[13]),
        .Q(\B_extins_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[14] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[14]),
        .Q(\B_extins_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[15] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[15]),
        .Q(\B_extins_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[16] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[16]),
        .Q(\B_extins_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[17] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[17]),
        .Q(\B_extins_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[18] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[18]),
        .Q(\B_extins_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[19] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[19]),
        .Q(\B_extins_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[1] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[1]),
        .Q(\B_extins_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[20] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[20]),
        .Q(\B_extins_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[21] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[21]),
        .Q(\B_extins_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[22] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[22]),
        .Q(\B_extins_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[23] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[23]),
        .Q(\B_extins_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[2] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[2]),
        .Q(\B_extins_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[3] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[3]),
        .Q(\B_extins_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[4] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[4]),
        .Q(\B_extins_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[5] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[5]),
        .Q(\B_extins_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[6] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[6]),
        .Q(\B_extins_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[7] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[7]),
        .Q(\B_extins_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[8] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[8]),
        .Q(\B_extins_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[9] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(B_extins[9]),
        .Q(\B_extins_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD4)) 
    \FSM_sequential_stare[0]_i_1__2 
       (.I0(stare_0[0]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[1]),
        .O(\FSM_sequential_stare[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0E3E3F3F)) 
    \FSM_sequential_stare[0]_i_1__3 
       (.I0(\FSM_sequential_stare_reg[2]_3 ),
        .I1(stare[2]),
        .I2(stare[1]),
        .I3(final_mul),
        .I4(stare[0]),
        .O(\FSM_sequential_stare_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hE2EC)) 
    \FSM_sequential_stare[1]_i_1__2 
       (.I0(\FSM_sequential_stare[1]_i_2_n_0 ),
        .I1(stare_0[0]),
        .I2(\FSM_sequential_stare_reg[1]_0 ),
        .I3(stare_0[1]),
        .O(\FSM_sequential_stare[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00050F0503000300)) 
    \FSM_sequential_stare[1]_i_1__3 
       (.I0(\FSM_sequential_stare_reg[2]_3 ),
        .I1(\FSM_sequential_stare_reg[2]_2 ),
        .I2(stare[2]),
        .I3(stare[1]),
        .I4(final_mul),
        .I5(stare[0]),
        .O(\FSM_sequential_stare_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_stare[1]_i_2 
       (.I0(stare_0[1]),
        .I1(\contor_reg_n_0_[2] ),
        .I2(\contor_reg_n_0_[4] ),
        .I3(\contor_reg_n_0_[0] ),
        .I4(\contor_reg_n_0_[1] ),
        .I5(\contor_reg_n_0_[3] ),
        .O(\FSM_sequential_stare[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FFA00FA0CF00CF0)) 
    \FSM_sequential_stare[2]_i_1__1 
       (.I0(\FSM_sequential_stare_reg[2]_3 ),
        .I1(\FSM_sequential_stare_reg[2]_2 ),
        .I2(stare[2]),
        .I3(stare[1]),
        .I4(final_mul),
        .I5(stare[0]),
        .O(\FSM_sequential_stare_reg[2] ));
  (* FSM_ENCODED_STATES = "verificare:10,multiplicare:01,initializare:00,terminare:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[0]_i_1__2_n_0 ),
        .Q(stare_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "verificare:10,multiplicare:01,initializare:00,terminare:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[1]_i_1__2_n_0 ),
        .Q(stare_0[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \contor[0]_i_1__0 
       (.I0(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \contor[1]_i_1__0 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .O(\contor[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \contor[2]_i_1__1 
       (.I0(stare_0[1]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[0]),
        .O(\contor[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \contor[2]_i_2 
       (.I0(\contor_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[2] ),
        .O(\contor[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \contor[3]_i_1__1 
       (.I0(stare_0[0]),
        .I1(\contor_reg_n_0_[3] ),
        .I2(\contor_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[0] ),
        .I4(\contor_reg_n_0_[2] ),
        .O(\contor[3]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \contor[4]_i_1__0 
       (.I0(stare_0[0]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[1]),
        .O(\contor[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDD7)) 
    \contor[4]_i_2__1 
       (.I0(stare_0[0]),
        .I1(\contor_reg_n_0_[4] ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\contor_reg_n_0_[0] ),
        .I4(\contor_reg_n_0_[1] ),
        .I5(\contor_reg_n_0_[3] ),
        .O(\contor[4]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\contor[0]_i_1__0_n_0 ),
        .Q(\contor_reg_n_0_[0] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\contor[1]_i_1__0_n_0 ),
        .Q(\contor_reg_n_0_[1] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\contor[2]_i_2_n_0 ),
        .Q(\contor_reg_n_0_[2] ),
        .R(\contor[2]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\contor[3]_i_1__1_n_0 ),
        .Q(\contor_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \contor_reg[4] 
       (.C(clk),
        .CE(\contor[4]_i_1__0_n_0 ),
        .D(\contor[4]_i_2__1_n_0 ),
        .Q(\contor_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8180)) 
    done_i_1__0
       (.I0(stare_0[1]),
        .I1(stare_0[0]),
        .I2(\FSM_sequential_stare_reg[1]_0 ),
        .I3(final_mul),
        .O(done_i_1__0_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1__0_n_0),
        .Q(final_mul),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mantisa_normalizata[47]_i_1 
       (.I0(stare[0]),
        .I1(final_mul),
        .I2(stare[2]),
        .I3(stare[1]),
        .O(E));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[3] ,\rezultat_reg_n_0_[2] ,\rezultat_reg_n_0_[1] ,\rezultat_reg_n_0_[0] }),
        .O(in5[3:0]),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[7] ,\rezultat_reg_n_0_[6] ,\rezultat_reg_n_0_[5] ,\rezultat_reg_n_0_[4] }),
        .O(in5[7:4]),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_1
       (.I0(\rezultat_reg_n_0_[7] ),
        .I1(\A_extins_reg_n_0_[7] ),
        .O(plusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_2
       (.I0(\rezultat_reg_n_0_[6] ),
        .I1(\A_extins_reg_n_0_[6] ),
        .O(plusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_3
       (.I0(\rezultat_reg_n_0_[5] ),
        .I1(\A_extins_reg_n_0_[5] ),
        .O(plusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_4
       (.I0(\rezultat_reg_n_0_[4] ),
        .I1(\A_extins_reg_n_0_[4] ),
        .O(plusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[11] ,\rezultat_reg_n_0_[10] ,\rezultat_reg_n_0_[9] ,\rezultat_reg_n_0_[8] }),
        .O(in5[11:8]),
        .S({plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__10
       (.CI(plusOp_carry__9_n_0),
        .CO({NLW_plusOp_carry__10_CO_UNCONNECTED[3],plusOp_carry__10_n_1,plusOp_carry__10_n_2,plusOp_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\rezultat_reg_n_0_[46] ,\rezultat_reg_n_0_[45] ,\rezultat_reg_n_0_[44] }),
        .O(in5[47:44]),
        .S({plusOp_carry__10_i_1_n_0,plusOp_carry__10_i_2_n_0,plusOp_carry__10_i_3_n_0,plusOp_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__10_i_1
       (.I0(\rezultat_reg_n_0_[47] ),
        .I1(\A_extins_reg_n_0_[47] ),
        .O(plusOp_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__10_i_2
       (.I0(\rezultat_reg_n_0_[46] ),
        .I1(\A_extins_reg_n_0_[46] ),
        .O(plusOp_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__10_i_3
       (.I0(\rezultat_reg_n_0_[45] ),
        .I1(\A_extins_reg_n_0_[45] ),
        .O(plusOp_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__10_i_4
       (.I0(\rezultat_reg_n_0_[44] ),
        .I1(\A_extins_reg_n_0_[44] ),
        .O(plusOp_carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_1
       (.I0(\rezultat_reg_n_0_[11] ),
        .I1(\A_extins_reg_n_0_[11] ),
        .O(plusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_2
       (.I0(\rezultat_reg_n_0_[10] ),
        .I1(\A_extins_reg_n_0_[10] ),
        .O(plusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_3
       (.I0(\rezultat_reg_n_0_[9] ),
        .I1(\A_extins_reg_n_0_[9] ),
        .O(plusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_4
       (.I0(\rezultat_reg_n_0_[8] ),
        .I1(\A_extins_reg_n_0_[8] ),
        .O(plusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[15] ,\rezultat_reg_n_0_[14] ,\rezultat_reg_n_0_[13] ,\rezultat_reg_n_0_[12] }),
        .O(in5[15:12]),
        .S({plusOp_carry__2_i_1_n_0,plusOp_carry__2_i_2_n_0,plusOp_carry__2_i_3_n_0,plusOp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_1
       (.I0(\rezultat_reg_n_0_[15] ),
        .I1(\A_extins_reg_n_0_[15] ),
        .O(plusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_2
       (.I0(\rezultat_reg_n_0_[14] ),
        .I1(\A_extins_reg_n_0_[14] ),
        .O(plusOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_3
       (.I0(\rezultat_reg_n_0_[13] ),
        .I1(\A_extins_reg_n_0_[13] ),
        .O(plusOp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_4
       (.I0(\rezultat_reg_n_0_[12] ),
        .I1(\A_extins_reg_n_0_[12] ),
        .O(plusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[19] ,\rezultat_reg_n_0_[18] ,\rezultat_reg_n_0_[17] ,\rezultat_reg_n_0_[16] }),
        .O(in5[19:16]),
        .S({plusOp_carry__3_i_1_n_0,plusOp_carry__3_i_2_n_0,plusOp_carry__3_i_3_n_0,plusOp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_1
       (.I0(\rezultat_reg_n_0_[19] ),
        .I1(\A_extins_reg_n_0_[19] ),
        .O(plusOp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_2
       (.I0(\rezultat_reg_n_0_[18] ),
        .I1(\A_extins_reg_n_0_[18] ),
        .O(plusOp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_3
       (.I0(\rezultat_reg_n_0_[17] ),
        .I1(\A_extins_reg_n_0_[17] ),
        .O(plusOp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_4
       (.I0(\rezultat_reg_n_0_[16] ),
        .I1(\A_extins_reg_n_0_[16] ),
        .O(plusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[23] ,\rezultat_reg_n_0_[22] ,\rezultat_reg_n_0_[21] ,\rezultat_reg_n_0_[20] }),
        .O(in5[23:20]),
        .S({plusOp_carry__4_i_1_n_0,plusOp_carry__4_i_2_n_0,plusOp_carry__4_i_3_n_0,plusOp_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_1
       (.I0(\rezultat_reg_n_0_[23] ),
        .I1(\A_extins_reg_n_0_[23] ),
        .O(plusOp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_2
       (.I0(\rezultat_reg_n_0_[22] ),
        .I1(\A_extins_reg_n_0_[22] ),
        .O(plusOp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_3
       (.I0(\rezultat_reg_n_0_[21] ),
        .I1(\A_extins_reg_n_0_[21] ),
        .O(plusOp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_4
       (.I0(\rezultat_reg_n_0_[20] ),
        .I1(\A_extins_reg_n_0_[20] ),
        .O(plusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[27] ,\rezultat_reg_n_0_[26] ,\rezultat_reg_n_0_[25] ,\rezultat_reg_n_0_[24] }),
        .O(in5[27:24]),
        .S({plusOp_carry__5_i_1_n_0,plusOp_carry__5_i_2_n_0,plusOp_carry__5_i_3_n_0,plusOp_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_1
       (.I0(\rezultat_reg_n_0_[27] ),
        .I1(\A_extins_reg_n_0_[27] ),
        .O(plusOp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_2
       (.I0(\rezultat_reg_n_0_[26] ),
        .I1(\A_extins_reg_n_0_[26] ),
        .O(plusOp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_3
       (.I0(\rezultat_reg_n_0_[25] ),
        .I1(\A_extins_reg_n_0_[25] ),
        .O(plusOp_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_4
       (.I0(\rezultat_reg_n_0_[24] ),
        .I1(\A_extins_reg_n_0_[24] ),
        .O(plusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({plusOp_carry__6_n_0,plusOp_carry__6_n_1,plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[31] ,\rezultat_reg_n_0_[30] ,\rezultat_reg_n_0_[29] ,\rezultat_reg_n_0_[28] }),
        .O(in5[31:28]),
        .S({plusOp_carry__6_i_1_n_0,plusOp_carry__6_i_2_n_0,plusOp_carry__6_i_3_n_0,plusOp_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_1
       (.I0(\rezultat_reg_n_0_[31] ),
        .I1(\A_extins_reg_n_0_[31] ),
        .O(plusOp_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_2
       (.I0(\rezultat_reg_n_0_[30] ),
        .I1(\A_extins_reg_n_0_[30] ),
        .O(plusOp_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_3
       (.I0(\rezultat_reg_n_0_[29] ),
        .I1(\A_extins_reg_n_0_[29] ),
        .O(plusOp_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_4
       (.I0(\rezultat_reg_n_0_[28] ),
        .I1(\A_extins_reg_n_0_[28] ),
        .O(plusOp_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__7
       (.CI(plusOp_carry__6_n_0),
        .CO({plusOp_carry__7_n_0,plusOp_carry__7_n_1,plusOp_carry__7_n_2,plusOp_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[35] ,\rezultat_reg_n_0_[34] ,\rezultat_reg_n_0_[33] ,\rezultat_reg_n_0_[32] }),
        .O(in5[35:32]),
        .S({plusOp_carry__7_i_1_n_0,plusOp_carry__7_i_2_n_0,plusOp_carry__7_i_3_n_0,plusOp_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__7_i_1
       (.I0(\rezultat_reg_n_0_[35] ),
        .I1(\A_extins_reg_n_0_[35] ),
        .O(plusOp_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__7_i_2
       (.I0(\rezultat_reg_n_0_[34] ),
        .I1(\A_extins_reg_n_0_[34] ),
        .O(plusOp_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__7_i_3
       (.I0(\rezultat_reg_n_0_[33] ),
        .I1(\A_extins_reg_n_0_[33] ),
        .O(plusOp_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__7_i_4
       (.I0(\rezultat_reg_n_0_[32] ),
        .I1(\A_extins_reg_n_0_[32] ),
        .O(plusOp_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__8
       (.CI(plusOp_carry__7_n_0),
        .CO({plusOp_carry__8_n_0,plusOp_carry__8_n_1,plusOp_carry__8_n_2,plusOp_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[39] ,\rezultat_reg_n_0_[38] ,\rezultat_reg_n_0_[37] ,\rezultat_reg_n_0_[36] }),
        .O(in5[39:36]),
        .S({plusOp_carry__8_i_1_n_0,plusOp_carry__8_i_2_n_0,plusOp_carry__8_i_3_n_0,plusOp_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__8_i_1
       (.I0(\rezultat_reg_n_0_[39] ),
        .I1(\A_extins_reg_n_0_[39] ),
        .O(plusOp_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__8_i_2
       (.I0(\rezultat_reg_n_0_[38] ),
        .I1(\A_extins_reg_n_0_[38] ),
        .O(plusOp_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__8_i_3
       (.I0(\rezultat_reg_n_0_[37] ),
        .I1(\A_extins_reg_n_0_[37] ),
        .O(plusOp_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__8_i_4
       (.I0(\rezultat_reg_n_0_[36] ),
        .I1(\A_extins_reg_n_0_[36] ),
        .O(plusOp_carry__8_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__9
       (.CI(plusOp_carry__8_n_0),
        .CO({plusOp_carry__9_n_0,plusOp_carry__9_n_1,plusOp_carry__9_n_2,plusOp_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({\rezultat_reg_n_0_[43] ,\rezultat_reg_n_0_[42] ,\rezultat_reg_n_0_[41] ,\rezultat_reg_n_0_[40] }),
        .O(in5[43:40]),
        .S({plusOp_carry__9_i_1_n_0,plusOp_carry__9_i_2_n_0,plusOp_carry__9_i_3_n_0,plusOp_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__9_i_1
       (.I0(\rezultat_reg_n_0_[43] ),
        .I1(\A_extins_reg_n_0_[43] ),
        .O(plusOp_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__9_i_2
       (.I0(\rezultat_reg_n_0_[42] ),
        .I1(\A_extins_reg_n_0_[42] ),
        .O(plusOp_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__9_i_3
       (.I0(\rezultat_reg_n_0_[41] ),
        .I1(\A_extins_reg_n_0_[41] ),
        .O(plusOp_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__9_i_4
       (.I0(\rezultat_reg_n_0_[40] ),
        .I1(\A_extins_reg_n_0_[40] ),
        .O(plusOp_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_1
       (.I0(\rezultat_reg_n_0_[3] ),
        .I1(\A_extins_reg_n_0_[3] ),
        .O(plusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_2
       (.I0(\rezultat_reg_n_0_[2] ),
        .I1(\A_extins_reg_n_0_[2] ),
        .O(plusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_3
       (.I0(\rezultat_reg_n_0_[1] ),
        .I1(\A_extins_reg_n_0_[1] ),
        .O(plusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4
       (.I0(\rezultat_reg_n_0_[0] ),
        .I1(\A_extins_reg_n_0_[0] ),
        .O(plusOp_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \result[47]_i_1 
       (.I0(stare_0[1]),
        .I1(stare_0[0]),
        .I2(\FSM_sequential_stare_reg[1]_0 ),
        .O(\result[47]_i_1_n_0 ));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[22] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[23] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[24] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[25] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[26] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[27] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[28] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[29] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[30] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[31] ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \result_reg[32] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[32] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \result_reg[33] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[33] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \result_reg[34] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[34] ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \result_reg[35] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[35] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \result_reg[36] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[36] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \result_reg[37] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[37] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \result_reg[38] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[38] ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \result_reg[39] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[39] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \result_reg[40] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[40] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \result_reg[41] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[41] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \result_reg[42] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[42] ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \result_reg[43] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[43] ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \result_reg[44] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[44] ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \result_reg[45] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[45] ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \result_reg[46] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[46] ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \result_reg[47] 
       (.C(clk),
        .CE(\result[47]_i_1_n_0 ),
        .D(\rezultat_reg_n_0_[47] ),
        .Q(Q[25]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \rezultat[47]_i_1 
       (.I0(stare_0[1]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[0]),
        .O(\rezultat[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rezultat[47]_i_2 
       (.I0(\FSM_sequential_stare_reg[1]_0 ),
        .I1(stare_0[0]),
        .I2(\B_extins_reg_n_0_[0] ),
        .I3(stare_0[1]),
        .O(\rezultat[47]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[0] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[0]),
        .Q(\rezultat_reg_n_0_[0] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[10] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[10]),
        .Q(\rezultat_reg_n_0_[10] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[11] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[11]),
        .Q(\rezultat_reg_n_0_[11] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[12] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[12]),
        .Q(\rezultat_reg_n_0_[12] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[13] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[13]),
        .Q(\rezultat_reg_n_0_[13] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[14] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[14]),
        .Q(\rezultat_reg_n_0_[14] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[15] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[15]),
        .Q(\rezultat_reg_n_0_[15] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[16] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[16]),
        .Q(\rezultat_reg_n_0_[16] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[17] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[17]),
        .Q(\rezultat_reg_n_0_[17] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[18] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[18]),
        .Q(\rezultat_reg_n_0_[18] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[19] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[19]),
        .Q(\rezultat_reg_n_0_[19] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[1] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[1]),
        .Q(\rezultat_reg_n_0_[1] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[20] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[20]),
        .Q(\rezultat_reg_n_0_[20] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[21] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[21]),
        .Q(\rezultat_reg_n_0_[21] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[22] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[22]),
        .Q(\rezultat_reg_n_0_[22] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[23] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[23]),
        .Q(\rezultat_reg_n_0_[23] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[24] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[24]),
        .Q(\rezultat_reg_n_0_[24] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[25] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[25]),
        .Q(\rezultat_reg_n_0_[25] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[26] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[26]),
        .Q(\rezultat_reg_n_0_[26] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[27] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[27]),
        .Q(\rezultat_reg_n_0_[27] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[28] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[28]),
        .Q(\rezultat_reg_n_0_[28] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[29] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[29]),
        .Q(\rezultat_reg_n_0_[29] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[2] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[2]),
        .Q(\rezultat_reg_n_0_[2] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[30] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[30]),
        .Q(\rezultat_reg_n_0_[30] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[31] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[31]),
        .Q(\rezultat_reg_n_0_[31] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[32] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[32]),
        .Q(\rezultat_reg_n_0_[32] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[33] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[33]),
        .Q(\rezultat_reg_n_0_[33] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[34] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[34]),
        .Q(\rezultat_reg_n_0_[34] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[35] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[35]),
        .Q(\rezultat_reg_n_0_[35] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[36] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[36]),
        .Q(\rezultat_reg_n_0_[36] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[37] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[37]),
        .Q(\rezultat_reg_n_0_[37] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[38] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[38]),
        .Q(\rezultat_reg_n_0_[38] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[39] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[39]),
        .Q(\rezultat_reg_n_0_[39] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[3] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[3]),
        .Q(\rezultat_reg_n_0_[3] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[40] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[40]),
        .Q(\rezultat_reg_n_0_[40] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[41] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[41]),
        .Q(\rezultat_reg_n_0_[41] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[42] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[42]),
        .Q(\rezultat_reg_n_0_[42] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[43] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[43]),
        .Q(\rezultat_reg_n_0_[43] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[44] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[44]),
        .Q(\rezultat_reg_n_0_[44] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[45] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[45]),
        .Q(\rezultat_reg_n_0_[45] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[46] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[46]),
        .Q(\rezultat_reg_n_0_[46] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[47] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[47]),
        .Q(\rezultat_reg_n_0_[47] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[4] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[4]),
        .Q(\rezultat_reg_n_0_[4] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[5] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[5]),
        .Q(\rezultat_reg_n_0_[5] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[6] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[6]),
        .Q(\rezultat_reg_n_0_[6] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[7] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[7]),
        .Q(\rezultat_reg_n_0_[7] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[8] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[8]),
        .Q(\rezultat_reg_n_0_[8] ),
        .R(\rezultat[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rezultat_reg[9] 
       (.C(clk),
        .CE(\rezultat[47]_i_2_n_0 ),
        .D(in5[9]),
        .Q(\rezultat_reg_n_0_[9] ),
        .R(\rezultat[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFFFFF10100030)) 
    start_mul_i_1
       (.I0(final_mul),
        .I1(stare[2]),
        .I2(stare[1]),
        .I3(\FSM_sequential_stare_reg[2]_2 ),
        .I4(stare[0]),
        .I5(\FSM_sequential_stare_reg[1]_0 ),
        .O(done_reg_0));
endmodule

(* ORIG_REF_NAME = "sub" *) 
module design_1_ALU_0_0_sub
   (overflow2,
    zero2,
    D,
    B_28_sp_1,
    \A[29] ,
    Q,
    B,
    clk,
    A,
    \exp_A_reg[6]_0 ,
    \exp_B_reg[6]_0 ,
    \exp_A_reg[8]_0 );
  output overflow2;
  output zero2;
  output [1:0]D;
  output B_28_sp_1;
  output [6:0]\A[29] ;
  output [31:0]Q;
  input [31:0]B;
  input clk;
  input [30:0]A;
  input \exp_A_reg[6]_0 ;
  input [6:0]\exp_B_reg[6]_0 ;
  input [1:0]\exp_A_reg[8]_0 ;

  wire [30:0]A;
  wire [6:0]\A[29] ;
  wire [31:0]B;
  wire B_28_sn_1;
  wire [1:0]D;
  wire \FSM_sequential_stare[1]_i_1__1_n_0 ;
  wire \FSM_sequential_stare[2]_i_1__0_n_0 ;
  wire [31:0]Q;
  wire [22:0]SHIFT_RIGHT;
  wire clk;
  wire done_sub;
  wire [8:0]exp_A__0;
  wire \exp_A_reg[6]_0 ;
  wire [1:0]\exp_A_reg[8]_0 ;
  wire [8:0]exp_B;
  wire [6:0]\exp_B_reg[6]_0 ;
  wire exp_result;
  wire \exp_result[1]_i_1__0_n_0 ;
  wire \exp_result[8]_i_2_n_0 ;
  wire [7:0]exp_result_reg;
  wire [8:8]exp_result_reg__0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_8__1_n_0;
  wire \mantisa_A_reg_n_0_[0] ;
  wire \mantisa_A_reg_n_0_[10] ;
  wire \mantisa_A_reg_n_0_[11] ;
  wire \mantisa_A_reg_n_0_[12] ;
  wire \mantisa_A_reg_n_0_[13] ;
  wire \mantisa_A_reg_n_0_[14] ;
  wire \mantisa_A_reg_n_0_[15] ;
  wire \mantisa_A_reg_n_0_[16] ;
  wire \mantisa_A_reg_n_0_[17] ;
  wire \mantisa_A_reg_n_0_[18] ;
  wire \mantisa_A_reg_n_0_[19] ;
  wire \mantisa_A_reg_n_0_[1] ;
  wire \mantisa_A_reg_n_0_[20] ;
  wire \mantisa_A_reg_n_0_[21] ;
  wire \mantisa_A_reg_n_0_[22] ;
  wire \mantisa_A_reg_n_0_[2] ;
  wire \mantisa_A_reg_n_0_[3] ;
  wire \mantisa_A_reg_n_0_[4] ;
  wire \mantisa_A_reg_n_0_[5] ;
  wire \mantisa_A_reg_n_0_[6] ;
  wire \mantisa_A_reg_n_0_[7] ;
  wire \mantisa_A_reg_n_0_[8] ;
  wire \mantisa_A_reg_n_0_[9] ;
  wire \mantisa_B_reg_n_0_[0] ;
  wire \mantisa_B_reg_n_0_[10] ;
  wire \mantisa_B_reg_n_0_[11] ;
  wire \mantisa_B_reg_n_0_[12] ;
  wire \mantisa_B_reg_n_0_[13] ;
  wire \mantisa_B_reg_n_0_[14] ;
  wire \mantisa_B_reg_n_0_[15] ;
  wire \mantisa_B_reg_n_0_[16] ;
  wire \mantisa_B_reg_n_0_[17] ;
  wire \mantisa_B_reg_n_0_[18] ;
  wire \mantisa_B_reg_n_0_[19] ;
  wire \mantisa_B_reg_n_0_[1] ;
  wire \mantisa_B_reg_n_0_[20] ;
  wire \mantisa_B_reg_n_0_[21] ;
  wire \mantisa_B_reg_n_0_[22] ;
  wire \mantisa_B_reg_n_0_[2] ;
  wire \mantisa_B_reg_n_0_[3] ;
  wire \mantisa_B_reg_n_0_[4] ;
  wire \mantisa_B_reg_n_0_[5] ;
  wire \mantisa_B_reg_n_0_[6] ;
  wire \mantisa_B_reg_n_0_[7] ;
  wire \mantisa_B_reg_n_0_[8] ;
  wire \mantisa_B_reg_n_0_[9] ;
  wire mantisa_result;
  wire \mantisa_result_reg_n_0_[0] ;
  wire \mantisa_result_reg_n_0_[10] ;
  wire \mantisa_result_reg_n_0_[11] ;
  wire \mantisa_result_reg_n_0_[12] ;
  wire \mantisa_result_reg_n_0_[13] ;
  wire \mantisa_result_reg_n_0_[14] ;
  wire \mantisa_result_reg_n_0_[15] ;
  wire \mantisa_result_reg_n_0_[16] ;
  wire \mantisa_result_reg_n_0_[17] ;
  wire \mantisa_result_reg_n_0_[18] ;
  wire \mantisa_result_reg_n_0_[19] ;
  wire \mantisa_result_reg_n_0_[1] ;
  wire \mantisa_result_reg_n_0_[20] ;
  wire \mantisa_result_reg_n_0_[21] ;
  wire \mantisa_result_reg_n_0_[22] ;
  wire \mantisa_result_reg_n_0_[2] ;
  wire \mantisa_result_reg_n_0_[3] ;
  wire \mantisa_result_reg_n_0_[4] ;
  wire \mantisa_result_reg_n_0_[5] ;
  wire \mantisa_result_reg_n_0_[6] ;
  wire \mantisa_result_reg_n_0_[7] ;
  wire \mantisa_result_reg_n_0_[8] ;
  wire \mantisa_result_reg_n_0_[9] ;
  wire overflow2;
  wire overflow_i_1__0_n_0;
  wire [8:0]plusOp;
  wire scazatorNormal_n_2;
  wire scazatorNormal_n_3;
  wire semn_A;
  wire semn_A_reg_n_0;
  wire semn_B;
  wire semn_result;
  wire semn_result1;
  wire semn_result1_carry__0_i_1__0_n_0;
  wire semn_result1_carry__0_i_2__0_n_0;
  wire semn_result1_carry__0_n_3;
  wire semn_result1_carry_i_1__0_n_0;
  wire semn_result1_carry_i_2__0_n_0;
  wire semn_result1_carry_i_3__0_n_0;
  wire semn_result1_carry_i_4__0_n_0;
  wire semn_result1_carry_i_5_n_0;
  wire semn_result1_carry_i_6_n_0;
  wire semn_result1_carry_i_7_n_0;
  wire semn_result1_carry_i_8_n_0;
  wire semn_result1_carry_n_0;
  wire semn_result1_carry_n_1;
  wire semn_result1_carry_n_2;
  wire semn_result1_carry_n_3;
  wire \semn_result1_inferred__0/i__carry__0_n_0 ;
  wire \semn_result1_inferred__0/i__carry__0_n_1 ;
  wire \semn_result1_inferred__0/i__carry__0_n_2 ;
  wire \semn_result1_inferred__0/i__carry__0_n_3 ;
  wire \semn_result1_inferred__0/i__carry__1_n_1 ;
  wire \semn_result1_inferred__0/i__carry__1_n_2 ;
  wire \semn_result1_inferred__0/i__carry__1_n_3 ;
  wire \semn_result1_inferred__0/i__carry_n_0 ;
  wire \semn_result1_inferred__0/i__carry_n_1 ;
  wire \semn_result1_inferred__0/i__carry_n_2 ;
  wire \semn_result1_inferred__0/i__carry_n_3 ;
  wire semn_result__0;
  wire semn_result_i_1__0_n_0;
  wire [2:0]stare;
  wire start_sub_reg_n_0;
  wire zero2;
  wire zero_i_1__0_n_0;
  wire zero_i_2__0_n_0;
  wire zero_i_3__0_n_0;
  wire zero_i_4__0_n_0;
  wire zero_i_5_n_0;
  wire zero_i_6_n_0;
  wire zero_i_7_n_0;
  wire zero_i_8_n_0;
  wire [3:0]NLW_semn_result1_carry_O_UNCONNECTED;
  wire [3:1]NLW_semn_result1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_semn_result1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED ;

  assign B_28_sp_1 = B_28_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_stare[1]_i_1__1 
       (.I0(stare[0]),
        .I1(stare[1]),
        .I2(stare[2]),
        .O(\FSM_sequential_stare[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \FSM_sequential_stare[2]_i_1__0 
       (.I0(stare[0]),
        .I1(stare[1]),
        .I2(stare[2]),
        .O(\FSM_sequential_stare[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "aliniereexponenti:001,scaderemantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(scazatorNormal_n_3),
        .Q(stare[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "aliniereexponenti:001,scaderemantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[1]_i_1__1_n_0 ),
        .Q(stare[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "aliniereexponenti:001,scaderemantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[2]_i_1__0_n_0 ),
        .Q(stare[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \exp_A[0]_i_1 
       (.I0(A[23]),
        .O(\A[29] [0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \exp_A[1]_i_1 
       (.I0(A[23]),
        .I1(A[24]),
        .O(\A[29] [1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \exp_A[2]_i_1 
       (.I0(A[25]),
        .I1(A[23]),
        .I2(A[24]),
        .O(\A[29] [2]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \exp_A[3]_i_1 
       (.I0(A[26]),
        .I1(A[24]),
        .I2(A[23]),
        .I3(A[25]),
        .O(\A[29] [3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \exp_A[4]_i_1 
       (.I0(A[27]),
        .I1(A[25]),
        .I2(A[23]),
        .I3(A[24]),
        .I4(A[26]),
        .O(\A[29] [4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \exp_A[5]_i_1 
       (.I0(A[26]),
        .I1(A[24]),
        .I2(A[23]),
        .I3(A[25]),
        .I4(A[27]),
        .I5(A[28]),
        .O(\A[29] [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \exp_A[6]_i_1 
       (.I0(A[29]),
        .I1(\exp_A_reg[6]_0 ),
        .O(\A[29] [6]));
  FDRE \exp_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [0]),
        .Q(exp_A__0[0]),
        .R(1'b0));
  FDRE \exp_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [1]),
        .Q(exp_A__0[1]),
        .R(1'b0));
  FDRE \exp_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [2]),
        .Q(exp_A__0[2]),
        .R(1'b0));
  FDRE \exp_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [3]),
        .Q(exp_A__0[3]),
        .R(1'b0));
  FDRE \exp_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [4]),
        .Q(exp_A__0[4]),
        .R(1'b0));
  FDRE \exp_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [5]),
        .Q(exp_A__0[5]),
        .R(1'b0));
  FDRE \exp_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(\A[29] [6]),
        .Q(exp_A__0[6]),
        .R(1'b0));
  FDRE \exp_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [0]),
        .Q(exp_A__0[7]),
        .R(1'b0));
  FDRE \exp_A_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_A_reg[8]_0 [1]),
        .Q(exp_A__0[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \exp_B[7]_i_1 
       (.I0(B[30]),
        .I1(B_28_sn_1),
        .I2(B[29]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \exp_B[8]_i_1__0 
       (.I0(B[30]),
        .I1(B_28_sn_1),
        .I2(B[29]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \exp_B[8]_i_2__0 
       (.I0(B[28]),
        .I1(B[27]),
        .I2(B[25]),
        .I3(B[23]),
        .I4(B[24]),
        .I5(B[26]),
        .O(B_28_sn_1));
  FDRE \exp_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [0]),
        .Q(exp_B[0]),
        .R(1'b0));
  FDRE \exp_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [1]),
        .Q(exp_B[1]),
        .R(1'b0));
  FDRE \exp_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [2]),
        .Q(exp_B[2]),
        .R(1'b0));
  FDRE \exp_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [3]),
        .Q(exp_B[3]),
        .R(1'b0));
  FDRE \exp_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [4]),
        .Q(exp_B[4]),
        .R(1'b0));
  FDRE \exp_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [5]),
        .Q(exp_B[5]),
        .R(1'b0));
  FDRE \exp_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(\exp_B_reg[6]_0 [6]),
        .Q(exp_B[6]),
        .R(1'b0));
  FDRE \exp_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(D[0]),
        .Q(exp_B[7]),
        .R(1'b0));
  FDRE \exp_B_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(D[1]),
        .Q(exp_B[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \exp_result[0]_i_1 
       (.I0(exp_result_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \exp_result[1]_i_1__0 
       (.I0(exp_result_reg[0]),
        .I1(exp_result_reg[1]),
        .O(\exp_result[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \exp_result[2]_i_1 
       (.I0(exp_result_reg[0]),
        .I1(exp_result_reg[1]),
        .I2(exp_result_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \exp_result[3]_i_1 
       (.I0(exp_result_reg[2]),
        .I1(exp_result_reg[1]),
        .I2(exp_result_reg[0]),
        .I3(exp_result_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \exp_result[4]_i_1__0 
       (.I0(exp_result_reg[4]),
        .I1(exp_result_reg[2]),
        .I2(exp_result_reg[1]),
        .I3(exp_result_reg[0]),
        .I4(exp_result_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \exp_result[5]_i_1 
       (.I0(exp_result_reg[4]),
        .I1(exp_result_reg[2]),
        .I2(exp_result_reg[1]),
        .I3(exp_result_reg[0]),
        .I4(exp_result_reg[3]),
        .I5(exp_result_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \exp_result[6]_i_1 
       (.I0(\exp_result[8]_i_2_n_0 ),
        .I1(exp_result_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \exp_result[7]_i_1 
       (.I0(exp_result_reg[7]),
        .I1(exp_result_reg[6]),
        .I2(\exp_result[8]_i_2_n_0 ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \exp_result[8]_i_1 
       (.I0(exp_result_reg__0),
        .I1(exp_result_reg[6]),
        .I2(\exp_result[8]_i_2_n_0 ),
        .I3(exp_result_reg[7]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \exp_result[8]_i_2 
       (.I0(exp_result_reg[5]),
        .I1(exp_result_reg[3]),
        .I2(exp_result_reg[0]),
        .I3(exp_result_reg[1]),
        .I4(exp_result_reg[2]),
        .I5(exp_result_reg[4]),
        .O(\exp_result[8]_i_2_n_0 ));
  FDRE \exp_result_reg[0] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[0]),
        .Q(exp_result_reg[0]),
        .R(1'b0));
  FDRE \exp_result_reg[1] 
       (.C(clk),
        .CE(exp_result),
        .D(\exp_result[1]_i_1__0_n_0 ),
        .Q(exp_result_reg[1]),
        .R(1'b0));
  FDRE \exp_result_reg[2] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[2]),
        .Q(exp_result_reg[2]),
        .R(1'b0));
  FDRE \exp_result_reg[3] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[3]),
        .Q(exp_result_reg[3]),
        .R(1'b0));
  FDRE \exp_result_reg[4] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[4]),
        .Q(exp_result_reg[4]),
        .R(1'b0));
  FDRE \exp_result_reg[5] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[5]),
        .Q(exp_result_reg[5]),
        .R(1'b0));
  FDRE \exp_result_reg[6] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[6]),
        .Q(exp_result_reg[6]),
        .R(1'b0));
  FDRE \exp_result_reg[7] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[7]),
        .Q(exp_result_reg[7]),
        .R(1'b0));
  FDRE \exp_result_reg[8] 
       (.C(clk),
        .CE(exp_result),
        .D(plusOp[8]),
        .Q(exp_result_reg__0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__1
       (.I0(\mantisa_A_reg_n_0_[15] ),
        .I1(\mantisa_B_reg_n_0_[15] ),
        .I2(\mantisa_A_reg_n_0_[14] ),
        .I3(\mantisa_B_reg_n_0_[14] ),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__0
       (.I0(\mantisa_A_reg_n_0_[13] ),
        .I1(\mantisa_B_reg_n_0_[13] ),
        .I2(\mantisa_A_reg_n_0_[12] ),
        .I3(\mantisa_B_reg_n_0_[12] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__0
       (.I0(\mantisa_A_reg_n_0_[11] ),
        .I1(\mantisa_B_reg_n_0_[11] ),
        .I2(\mantisa_A_reg_n_0_[10] ),
        .I3(\mantisa_B_reg_n_0_[10] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__0
       (.I0(\mantisa_A_reg_n_0_[9] ),
        .I1(\mantisa_B_reg_n_0_[9] ),
        .I2(\mantisa_A_reg_n_0_[8] ),
        .I3(\mantisa_B_reg_n_0_[8] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(\mantisa_B_reg_n_0_[15] ),
        .I1(\mantisa_A_reg_n_0_[15] ),
        .I2(\mantisa_B_reg_n_0_[14] ),
        .I3(\mantisa_A_reg_n_0_[14] ),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(\mantisa_B_reg_n_0_[13] ),
        .I1(\mantisa_A_reg_n_0_[13] ),
        .I2(\mantisa_B_reg_n_0_[12] ),
        .I3(\mantisa_A_reg_n_0_[12] ),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(\mantisa_B_reg_n_0_[11] ),
        .I1(\mantisa_A_reg_n_0_[11] ),
        .I2(\mantisa_B_reg_n_0_[10] ),
        .I3(\mantisa_A_reg_n_0_[10] ),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(\mantisa_B_reg_n_0_[9] ),
        .I1(\mantisa_A_reg_n_0_[9] ),
        .I2(\mantisa_B_reg_n_0_[8] ),
        .I3(\mantisa_A_reg_n_0_[8] ),
        .O(i__carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(\mantisa_A_reg_n_0_[22] ),
        .I1(\mantisa_B_reg_n_0_[22] ),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2__0
       (.I0(\mantisa_A_reg_n_0_[21] ),
        .I1(\mantisa_B_reg_n_0_[21] ),
        .I2(\mantisa_A_reg_n_0_[20] ),
        .I3(\mantisa_B_reg_n_0_[20] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3__0
       (.I0(\mantisa_A_reg_n_0_[19] ),
        .I1(\mantisa_B_reg_n_0_[19] ),
        .I2(\mantisa_A_reg_n_0_[18] ),
        .I3(\mantisa_B_reg_n_0_[18] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4__0
       (.I0(\mantisa_A_reg_n_0_[17] ),
        .I1(\mantisa_B_reg_n_0_[17] ),
        .I2(\mantisa_A_reg_n_0_[16] ),
        .I3(\mantisa_B_reg_n_0_[16] ),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_5__0
       (.I0(\mantisa_B_reg_n_0_[22] ),
        .I1(\mantisa_A_reg_n_0_[22] ),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(\mantisa_B_reg_n_0_[21] ),
        .I1(\mantisa_A_reg_n_0_[21] ),
        .I2(\mantisa_B_reg_n_0_[20] ),
        .I3(\mantisa_A_reg_n_0_[20] ),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(\mantisa_B_reg_n_0_[19] ),
        .I1(\mantisa_A_reg_n_0_[19] ),
        .I2(\mantisa_B_reg_n_0_[18] ),
        .I3(\mantisa_A_reg_n_0_[18] ),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(\mantisa_B_reg_n_0_[17] ),
        .I1(\mantisa_A_reg_n_0_[17] ),
        .I2(\mantisa_B_reg_n_0_[16] ),
        .I3(\mantisa_A_reg_n_0_[16] ),
        .O(i__carry__1_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__1
       (.I0(\mantisa_A_reg_n_0_[7] ),
        .I1(\mantisa_B_reg_n_0_[7] ),
        .I2(\mantisa_A_reg_n_0_[6] ),
        .I3(\mantisa_B_reg_n_0_[6] ),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__1
       (.I0(\mantisa_A_reg_n_0_[5] ),
        .I1(\mantisa_B_reg_n_0_[5] ),
        .I2(\mantisa_A_reg_n_0_[4] ),
        .I3(\mantisa_B_reg_n_0_[4] ),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(\mantisa_A_reg_n_0_[3] ),
        .I1(\mantisa_B_reg_n_0_[3] ),
        .I2(\mantisa_A_reg_n_0_[2] ),
        .I3(\mantisa_B_reg_n_0_[2] ),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__1
       (.I0(\mantisa_A_reg_n_0_[1] ),
        .I1(\mantisa_B_reg_n_0_[1] ),
        .I2(\mantisa_A_reg_n_0_[0] ),
        .I3(\mantisa_B_reg_n_0_[0] ),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(\mantisa_B_reg_n_0_[7] ),
        .I1(\mantisa_A_reg_n_0_[7] ),
        .I2(\mantisa_B_reg_n_0_[6] ),
        .I3(\mantisa_A_reg_n_0_[6] ),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(\mantisa_B_reg_n_0_[5] ),
        .I1(\mantisa_A_reg_n_0_[5] ),
        .I2(\mantisa_B_reg_n_0_[4] ),
        .I3(\mantisa_A_reg_n_0_[4] ),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(\mantisa_B_reg_n_0_[3] ),
        .I1(\mantisa_A_reg_n_0_[3] ),
        .I2(\mantisa_B_reg_n_0_[2] ),
        .I3(\mantisa_A_reg_n_0_[2] ),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(\mantisa_B_reg_n_0_[1] ),
        .I1(\mantisa_A_reg_n_0_[1] ),
        .I2(\mantisa_B_reg_n_0_[0] ),
        .I3(\mantisa_A_reg_n_0_[0] ),
        .O(i__carry_i_8__1_n_0));
  FDRE \mantisa_A_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(A[0]),
        .Q(\mantisa_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(A[10]),
        .Q(\mantisa_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(A[11]),
        .Q(\mantisa_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(A[12]),
        .Q(\mantisa_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(A[13]),
        .Q(\mantisa_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(A[14]),
        .Q(\mantisa_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(A[15]),
        .Q(\mantisa_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(A[16]),
        .Q(\mantisa_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(A[17]),
        .Q(\mantisa_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(A[18]),
        .Q(\mantisa_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(A[19]),
        .Q(\mantisa_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(A[1]),
        .Q(\mantisa_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(A[20]),
        .Q(\mantisa_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(A[21]),
        .Q(\mantisa_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(A[22]),
        .Q(\mantisa_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(A[2]),
        .Q(\mantisa_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(A[3]),
        .Q(\mantisa_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(A[4]),
        .Q(\mantisa_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(A[5]),
        .Q(\mantisa_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(A[6]),
        .Q(\mantisa_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(A[7]),
        .Q(\mantisa_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(A[8]),
        .Q(\mantisa_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_A_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(A[9]),
        .Q(\mantisa_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \mantisa_B[22]_i_1 
       (.I0(stare[2]),
        .I1(stare[0]),
        .I2(stare[1]),
        .O(semn_A));
  FDRE \mantisa_B_reg[0] 
       (.C(clk),
        .CE(semn_A),
        .D(B[0]),
        .Q(\mantisa_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[10] 
       (.C(clk),
        .CE(semn_A),
        .D(B[10]),
        .Q(\mantisa_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[11] 
       (.C(clk),
        .CE(semn_A),
        .D(B[11]),
        .Q(\mantisa_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[12] 
       (.C(clk),
        .CE(semn_A),
        .D(B[12]),
        .Q(\mantisa_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[13] 
       (.C(clk),
        .CE(semn_A),
        .D(B[13]),
        .Q(\mantisa_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[14] 
       (.C(clk),
        .CE(semn_A),
        .D(B[14]),
        .Q(\mantisa_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[15] 
       (.C(clk),
        .CE(semn_A),
        .D(B[15]),
        .Q(\mantisa_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[16] 
       (.C(clk),
        .CE(semn_A),
        .D(B[16]),
        .Q(\mantisa_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[17] 
       (.C(clk),
        .CE(semn_A),
        .D(B[17]),
        .Q(\mantisa_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[18] 
       (.C(clk),
        .CE(semn_A),
        .D(B[18]),
        .Q(\mantisa_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[19] 
       (.C(clk),
        .CE(semn_A),
        .D(B[19]),
        .Q(\mantisa_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[1] 
       (.C(clk),
        .CE(semn_A),
        .D(B[1]),
        .Q(\mantisa_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[20] 
       (.C(clk),
        .CE(semn_A),
        .D(B[20]),
        .Q(\mantisa_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[21] 
       (.C(clk),
        .CE(semn_A),
        .D(B[21]),
        .Q(\mantisa_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[22] 
       (.C(clk),
        .CE(semn_A),
        .D(B[22]),
        .Q(\mantisa_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[2] 
       (.C(clk),
        .CE(semn_A),
        .D(B[2]),
        .Q(\mantisa_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[3] 
       (.C(clk),
        .CE(semn_A),
        .D(B[3]),
        .Q(\mantisa_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[4] 
       (.C(clk),
        .CE(semn_A),
        .D(B[4]),
        .Q(\mantisa_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[5] 
       (.C(clk),
        .CE(semn_A),
        .D(B[5]),
        .Q(\mantisa_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[6] 
       (.C(clk),
        .CE(semn_A),
        .D(B[6]),
        .Q(\mantisa_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[7] 
       (.C(clk),
        .CE(semn_A),
        .D(B[7]),
        .Q(\mantisa_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[8] 
       (.C(clk),
        .CE(semn_A),
        .D(B[8]),
        .Q(\mantisa_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_B_reg[9] 
       (.C(clk),
        .CE(semn_A),
        .D(B[9]),
        .Q(\mantisa_B_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[0] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[0]),
        .Q(\mantisa_result_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[10] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[10]),
        .Q(\mantisa_result_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[11] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[11]),
        .Q(\mantisa_result_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[12] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[12]),
        .Q(\mantisa_result_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[13] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[13]),
        .Q(\mantisa_result_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[14] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[14]),
        .Q(\mantisa_result_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[15] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[15]),
        .Q(\mantisa_result_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[16] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[16]),
        .Q(\mantisa_result_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[17] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[17]),
        .Q(\mantisa_result_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[18] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[18]),
        .Q(\mantisa_result_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[19] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[19]),
        .Q(\mantisa_result_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[1] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[1]),
        .Q(\mantisa_result_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[20] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[20]),
        .Q(\mantisa_result_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[21] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[21]),
        .Q(\mantisa_result_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[22] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[22]),
        .Q(\mantisa_result_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[2] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[2]),
        .Q(\mantisa_result_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[3] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[3]),
        .Q(\mantisa_result_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[4] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[4]),
        .Q(\mantisa_result_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[5] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[5]),
        .Q(\mantisa_result_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[6] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[6]),
        .Q(\mantisa_result_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[7] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[7]),
        .Q(\mantisa_result_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[8] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[8]),
        .Q(\mantisa_result_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mantisa_result_reg[9] 
       (.C(clk),
        .CE(mantisa_result),
        .D(SHIFT_RIGHT[9]),
        .Q(\mantisa_result_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF00000E000)) 
    overflow_i_1__0
       (.I0(exp_result_reg[7]),
        .I1(exp_result_reg__0),
        .I2(stare[0]),
        .I3(stare[1]),
        .I4(stare[2]),
        .I5(overflow2),
        .O(overflow_i_1__0_n_0));
  FDRE overflow_reg
       (.C(clk),
        .CE(1'b1),
        .D(overflow_i_1__0_n_0),
        .Q(overflow2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \result[31]_i_1 
       (.I0(stare[0]),
        .I1(stare[1]),
        .I2(stare[2]),
        .O(exp_result));
  FDRE \result_reg[0] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[16] ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[17] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[18] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[19] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[20] ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[21] ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[22] ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[0]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[1]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \result_reg[25] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[2]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \result_reg[26] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[3]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \result_reg[27] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[4]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \result_reg[28] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[5]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \result_reg[29] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[6]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \result_reg[30] 
       (.C(clk),
        .CE(exp_result),
        .D(exp_result_reg[7]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \result_reg[31] 
       (.C(clk),
        .CE(exp_result),
        .D(semn_result__0),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(exp_result),
        .D(\mantisa_result_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(1'b0));
  design_1_ALU_0_0_subBinary scazatorNormal
       (.\A_extins_reg[22]_0 ({\mantisa_A_reg_n_0_[22] ,\mantisa_A_reg_n_0_[21] ,\mantisa_A_reg_n_0_[20] ,\mantisa_A_reg_n_0_[19] ,\mantisa_A_reg_n_0_[18] ,\mantisa_A_reg_n_0_[17] ,\mantisa_A_reg_n_0_[16] ,\mantisa_A_reg_n_0_[15] ,\mantisa_A_reg_n_0_[14] ,\mantisa_A_reg_n_0_[13] ,\mantisa_A_reg_n_0_[12] ,\mantisa_A_reg_n_0_[11] ,\mantisa_A_reg_n_0_[10] ,\mantisa_A_reg_n_0_[9] ,\mantisa_A_reg_n_0_[8] ,\mantisa_A_reg_n_0_[7] ,\mantisa_A_reg_n_0_[6] ,\mantisa_A_reg_n_0_[5] ,\mantisa_A_reg_n_0_[4] ,\mantisa_A_reg_n_0_[3] ,\mantisa_A_reg_n_0_[2] ,\mantisa_A_reg_n_0_[1] ,\mantisa_A_reg_n_0_[0] }),
        .E(mantisa_result),
        .\FSM_sequential_stare_reg[0]_0 (scazatorNormal_n_3),
        .\FSM_sequential_stare_reg[1]_0 (start_sub_reg_n_0),
        .Q({\mantisa_B_reg_n_0_[22] ,\mantisa_B_reg_n_0_[21] ,\mantisa_B_reg_n_0_[20] ,\mantisa_B_reg_n_0_[19] ,\mantisa_B_reg_n_0_[18] ,\mantisa_B_reg_n_0_[17] ,\mantisa_B_reg_n_0_[16] ,\mantisa_B_reg_n_0_[15] ,\mantisa_B_reg_n_0_[14] ,\mantisa_B_reg_n_0_[13] ,\mantisa_B_reg_n_0_[12] ,\mantisa_B_reg_n_0_[11] ,\mantisa_B_reg_n_0_[10] ,\mantisa_B_reg_n_0_[9] ,\mantisa_B_reg_n_0_[8] ,\mantisa_B_reg_n_0_[7] ,\mantisa_B_reg_n_0_[6] ,\mantisa_B_reg_n_0_[5] ,\mantisa_B_reg_n_0_[4] ,\mantisa_B_reg_n_0_[3] ,\mantisa_B_reg_n_0_[2] ,\mantisa_B_reg_n_0_[1] ,\mantisa_B_reg_n_0_[0] }),
        .clk(clk),
        .done_reg_0(scazatorNormal_n_2),
        .done_sub(done_sub),
        .\result_reg[23]_0 (SHIFT_RIGHT),
        .stare(stare));
  FDRE #(
    .INIT(1'b0)) 
    semn_A_reg
       (.C(clk),
        .CE(semn_A),
        .D(A[30]),
        .Q(semn_A_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    semn_B_reg
       (.C(clk),
        .CE(semn_A),
        .D(B[31]),
        .Q(semn_B),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 semn_result1_carry
       (.CI(1'b0),
        .CO({semn_result1_carry_n_0,semn_result1_carry_n_1,semn_result1_carry_n_2,semn_result1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({semn_result1_carry_i_1__0_n_0,semn_result1_carry_i_2__0_n_0,semn_result1_carry_i_3__0_n_0,semn_result1_carry_i_4__0_n_0}),
        .O(NLW_semn_result1_carry_O_UNCONNECTED[3:0]),
        .S({semn_result1_carry_i_5_n_0,semn_result1_carry_i_6_n_0,semn_result1_carry_i_7_n_0,semn_result1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 semn_result1_carry__0
       (.CI(semn_result1_carry_n_0),
        .CO({NLW_semn_result1_carry__0_CO_UNCONNECTED[3:1],semn_result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,semn_result1_carry__0_i_1__0_n_0}),
        .O(NLW_semn_result1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,semn_result1_carry__0_i_2__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    semn_result1_carry__0_i_1__0
       (.I0(exp_A__0[8]),
        .I1(exp_B[8]),
        .O(semn_result1_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    semn_result1_carry__0_i_2__0
       (.I0(exp_B[8]),
        .I1(exp_A__0[8]),
        .O(semn_result1_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    semn_result1_carry_i_1__0
       (.I0(exp_A__0[7]),
        .I1(exp_B[7]),
        .I2(exp_A__0[6]),
        .I3(exp_B[6]),
        .O(semn_result1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    semn_result1_carry_i_2__0
       (.I0(exp_A__0[5]),
        .I1(exp_B[5]),
        .I2(exp_A__0[4]),
        .I3(exp_B[4]),
        .O(semn_result1_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    semn_result1_carry_i_3__0
       (.I0(exp_A__0[3]),
        .I1(exp_B[3]),
        .I2(exp_A__0[2]),
        .I3(exp_B[2]),
        .O(semn_result1_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    semn_result1_carry_i_4__0
       (.I0(exp_A__0[1]),
        .I1(exp_B[1]),
        .I2(exp_A__0[0]),
        .I3(exp_B[0]),
        .O(semn_result1_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    semn_result1_carry_i_5
       (.I0(exp_B[7]),
        .I1(exp_A__0[7]),
        .I2(exp_B[6]),
        .I3(exp_A__0[6]),
        .O(semn_result1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    semn_result1_carry_i_6
       (.I0(exp_B[5]),
        .I1(exp_A__0[5]),
        .I2(exp_B[4]),
        .I3(exp_A__0[4]),
        .O(semn_result1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    semn_result1_carry_i_7
       (.I0(exp_B[3]),
        .I1(exp_A__0[3]),
        .I2(exp_B[2]),
        .I3(exp_A__0[2]),
        .O(semn_result1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    semn_result1_carry_i_8
       (.I0(exp_B[1]),
        .I1(exp_A__0[1]),
        .I2(exp_B[0]),
        .I3(exp_A__0[0]),
        .O(semn_result1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \semn_result1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\semn_result1_inferred__0/i__carry_n_0 ,\semn_result1_inferred__0/i__carry_n_1 ,\semn_result1_inferred__0/i__carry_n_2 ,\semn_result1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \semn_result1_inferred__0/i__carry__0 
       (.CI(\semn_result1_inferred__0/i__carry_n_0 ),
        .CO({\semn_result1_inferred__0/i__carry__0_n_0 ,\semn_result1_inferred__0/i__carry__0_n_1 ,\semn_result1_inferred__0/i__carry__0_n_2 ,\semn_result1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \semn_result1_inferred__0/i__carry__1 
       (.CI(\semn_result1_inferred__0/i__carry__0_n_0 ),
        .CO({semn_result1,\semn_result1_inferred__0/i__carry__1_n_1 ,\semn_result1_inferred__0/i__carry__1_n_2 ,\semn_result1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFBAF000008A0)) 
    semn_result_i_1__0
       (.I0(semn_result),
        .I1(done_sub),
        .I2(stare[0]),
        .I3(stare[1]),
        .I4(stare[2]),
        .I5(semn_result__0),
        .O(semn_result_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFB40CB43)) 
    semn_result_i_2__0
       (.I0(semn_result1_carry__0_n_3),
        .I1(stare[0]),
        .I2(semn_B),
        .I3(semn_A_reg_n_0),
        .I4(semn_result1),
        .O(semn_result));
  FDRE #(
    .INIT(1'b0)) 
    semn_result_reg
       (.C(clk),
        .CE(1'b1),
        .D(semn_result_i_1__0_n_0),
        .Q(semn_result__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_sub_reg
       (.C(clk),
        .CE(1'b1),
        .D(scazatorNormal_n_2),
        .Q(start_sub_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFEFE0800)) 
    zero_i_1__0
       (.I0(stare[0]),
        .I1(stare[1]),
        .I2(stare[2]),
        .I3(zero_i_2__0_n_0),
        .I4(zero2),
        .O(zero_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    zero_i_2__0
       (.I0(zero_i_3__0_n_0),
        .I1(zero_i_4__0_n_0),
        .I2(\mantisa_result_reg_n_0_[11] ),
        .I3(\mantisa_result_reg_n_0_[15] ),
        .I4(\mantisa_result_reg_n_0_[6] ),
        .I5(zero_i_5_n_0),
        .O(zero_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h1)) 
    zero_i_3__0
       (.I0(exp_result_reg[6]),
        .I1(\exp_result[8]_i_2_n_0 ),
        .O(zero_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    zero_i_4__0
       (.I0(zero_i_6_n_0),
        .I1(zero_i_7_n_0),
        .I2(\mantisa_result_reg_n_0_[13] ),
        .I3(\mantisa_result_reg_n_0_[5] ),
        .I4(\mantisa_result_reg_n_0_[19] ),
        .I5(\mantisa_result_reg_n_0_[9] ),
        .O(zero_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    zero_i_5
       (.I0(\mantisa_result_reg_n_0_[0] ),
        .I1(\mantisa_result_reg_n_0_[17] ),
        .I2(\mantisa_result_reg_n_0_[7] ),
        .I3(\mantisa_result_reg_n_0_[16] ),
        .I4(zero_i_8_n_0),
        .O(zero_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    zero_i_6
       (.I0(exp_result_reg__0),
        .I1(exp_result_reg[7]),
        .I2(\mantisa_result_reg_n_0_[12] ),
        .I3(\mantisa_result_reg_n_0_[21] ),
        .I4(\mantisa_result_reg_n_0_[3] ),
        .I5(\mantisa_result_reg_n_0_[4] ),
        .O(zero_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_i_7
       (.I0(\mantisa_result_reg_n_0_[14] ),
        .I1(\mantisa_result_reg_n_0_[1] ),
        .I2(\mantisa_result_reg_n_0_[10] ),
        .I3(\mantisa_result_reg_n_0_[8] ),
        .O(zero_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_i_8
       (.I0(\mantisa_result_reg_n_0_[20] ),
        .I1(\mantisa_result_reg_n_0_[2] ),
        .I2(\mantisa_result_reg_n_0_[22] ),
        .I3(\mantisa_result_reg_n_0_[18] ),
        .O(zero_i_8_n_0));
  FDRE zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(zero_i_1__0_n_0),
        .Q(zero2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "subBinary" *) 
module design_1_ALU_0_0_subBinary
   (done_sub,
    E,
    done_reg_0,
    \FSM_sequential_stare_reg[0]_0 ,
    \result_reg[23]_0 ,
    clk,
    \FSM_sequential_stare_reg[1]_0 ,
    stare,
    Q,
    \A_extins_reg[22]_0 );
  output done_sub;
  output [0:0]E;
  output done_reg_0;
  output \FSM_sequential_stare_reg[0]_0 ;
  output [22:0]\result_reg[23]_0 ;
  input clk;
  input \FSM_sequential_stare_reg[1]_0 ;
  input [2:0]stare;
  input [22:0]Q;
  input [22:0]\A_extins_reg[22]_0 ;

  wire [23:0]A_extins;
  wire A_extins_1;
  wire [22:0]\A_extins_reg[22]_0 ;
  wire [22:0]B_extins;
  wire [0:0]E;
  wire \FSM_sequential_stare[0]_i_1__0_n_0 ;
  wire \FSM_sequential_stare[1]_i_1__0_n_0 ;
  wire \FSM_sequential_stare[1]_i_2__0_n_0 ;
  wire \FSM_sequential_stare_reg[0]_0 ;
  wire \FSM_sequential_stare_reg[1]_0 ;
  wire [22:0]Q;
  wire borrow_i_10_n_0;
  wire borrow_i_11_n_0;
  wire borrow_i_12_n_0;
  wire borrow_i_13_n_0;
  wire borrow_i_14_n_0;
  wire borrow_i_15_n_0;
  wire borrow_i_16_n_0;
  wire borrow_i_17_n_0;
  wire borrow_i_18_n_0;
  wire borrow_i_19_n_0;
  wire borrow_i_1_n_0;
  wire borrow_i_20_n_0;
  wire borrow_i_21_n_0;
  wire borrow_i_2_n_0;
  wire borrow_i_3_n_0;
  wire borrow_reg_i_4_n_0;
  wire borrow_reg_i_5_n_0;
  wire borrow_reg_i_6_n_0;
  wire borrow_reg_i_7_n_0;
  wire borrow_reg_i_8_n_0;
  wire borrow_reg_i_9_n_0;
  wire borrow_reg_n_0;
  wire clk;
  wire \contor[0]_i_1_n_0 ;
  wire \contor[1]_i_1_n_0 ;
  wire \contor[2]_i_1__0_n_0 ;
  wire \contor[3]_i_1__0_n_0 ;
  wire \contor[4]_i_1_n_0 ;
  wire \contor[4]_i_2__0_n_0 ;
  wire \contor[4]_i_3_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire \contor_reg_n_0_[4] ;
  wire [24:24]diferenta0_in;
  wire \diferenta[10]_i_1_n_0 ;
  wire \diferenta[11]_i_1_n_0 ;
  wire \diferenta[12]_i_1_n_0 ;
  wire \diferenta[13]_i_1_n_0 ;
  wire \diferenta[14]_i_1_n_0 ;
  wire \diferenta[15]_i_1_n_0 ;
  wire \diferenta[15]_i_2_n_0 ;
  wire \diferenta[16]_i_1_n_0 ;
  wire \diferenta[17]_i_1_n_0 ;
  wire \diferenta[17]_i_2_n_0 ;
  wire \diferenta[18]_i_1_n_0 ;
  wire \diferenta[18]_i_2_n_0 ;
  wire \diferenta[19]_i_1_n_0 ;
  wire \diferenta[19]_i_2_n_0 ;
  wire \diferenta[1]_i_1_n_0 ;
  wire \diferenta[20]_i_1_n_0 ;
  wire \diferenta[20]_i_2_n_0 ;
  wire \diferenta[21]_i_1_n_0 ;
  wire \diferenta[21]_i_2_n_0 ;
  wire \diferenta[22]_i_1_n_0 ;
  wire \diferenta[22]_i_2_n_0 ;
  wire \diferenta[23]_i_1_n_0 ;
  wire \diferenta[23]_i_2_n_0 ;
  wire \diferenta[23]_i_3_n_0 ;
  wire \diferenta[24]_i_1_n_0 ;
  wire \diferenta[24]_i_3_n_0 ;
  wire \diferenta[2]_i_1_n_0 ;
  wire \diferenta[3]_i_1_n_0 ;
  wire \diferenta[4]_i_1_n_0 ;
  wire \diferenta[5]_i_1_n_0 ;
  wire \diferenta[6]_i_1_n_0 ;
  wire \diferenta[7]_i_1_n_0 ;
  wire \diferenta[7]_i_2_n_0 ;
  wire \diferenta[8]_i_1_n_0 ;
  wire \diferenta[9]_i_1_n_0 ;
  wire \diferenta_reg_n_0_[10] ;
  wire \diferenta_reg_n_0_[11] ;
  wire \diferenta_reg_n_0_[12] ;
  wire \diferenta_reg_n_0_[13] ;
  wire \diferenta_reg_n_0_[14] ;
  wire \diferenta_reg_n_0_[15] ;
  wire \diferenta_reg_n_0_[16] ;
  wire \diferenta_reg_n_0_[17] ;
  wire \diferenta_reg_n_0_[18] ;
  wire \diferenta_reg_n_0_[19] ;
  wire \diferenta_reg_n_0_[1] ;
  wire \diferenta_reg_n_0_[20] ;
  wire \diferenta_reg_n_0_[21] ;
  wire \diferenta_reg_n_0_[22] ;
  wire \diferenta_reg_n_0_[23] ;
  wire \diferenta_reg_n_0_[24] ;
  wire \diferenta_reg_n_0_[2] ;
  wire \diferenta_reg_n_0_[3] ;
  wire \diferenta_reg_n_0_[4] ;
  wire \diferenta_reg_n_0_[5] ;
  wire \diferenta_reg_n_0_[6] ;
  wire \diferenta_reg_n_0_[7] ;
  wire \diferenta_reg_n_0_[8] ;
  wire \diferenta_reg_n_0_[9] ;
  wire done_i_1_n_0;
  wire done_reg_0;
  wire done_sub;
  wire [24:24]mantisa_result_internal;
  wire \result[24]_i_1__1_n_0 ;
  wire [22:0]\result_reg[23]_0 ;
  wire [2:0]stare;
  wire [1:0]stare_0;

  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[0] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [0]),
        .Q(A_extins[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[10] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [10]),
        .Q(A_extins[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[11] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [11]),
        .Q(A_extins[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[12] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [12]),
        .Q(A_extins[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[13] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [13]),
        .Q(A_extins[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[14] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [14]),
        .Q(A_extins[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[15] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [15]),
        .Q(A_extins[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[16] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [16]),
        .Q(A_extins[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[17] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [17]),
        .Q(A_extins[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[18] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [18]),
        .Q(A_extins[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[19] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [19]),
        .Q(A_extins[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[1] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [1]),
        .Q(A_extins[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[20] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [20]),
        .Q(A_extins[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[21] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [21]),
        .Q(A_extins[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[22] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [22]),
        .Q(A_extins[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[23] 
       (.C(clk),
        .CE(A_extins_1),
        .D(1'b1),
        .Q(A_extins[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[2] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [2]),
        .Q(A_extins[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[3] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [3]),
        .Q(A_extins[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[4] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [4]),
        .Q(A_extins[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[5] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [5]),
        .Q(A_extins[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[6] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [6]),
        .Q(A_extins[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[7] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [7]),
        .Q(A_extins[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[8] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [8]),
        .Q(A_extins[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A_extins_reg[9] 
       (.C(clk),
        .CE(A_extins_1),
        .D(\A_extins_reg[22]_0 [9]),
        .Q(A_extins[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \B_extins[22]_i_1 
       (.I0(stare_0[0]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[1]),
        .O(A_extins_1));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[0] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[0]),
        .Q(B_extins[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[10] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[10]),
        .Q(B_extins[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[11] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[11]),
        .Q(B_extins[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[12] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[12]),
        .Q(B_extins[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[13] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[13]),
        .Q(B_extins[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[14] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[14]),
        .Q(B_extins[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[15] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[15]),
        .Q(B_extins[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[16] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[16]),
        .Q(B_extins[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[17] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[17]),
        .Q(B_extins[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[18] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[18]),
        .Q(B_extins[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[19] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[19]),
        .Q(B_extins[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[1] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[1]),
        .Q(B_extins[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[20] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[20]),
        .Q(B_extins[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[21] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[21]),
        .Q(B_extins[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[22] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[22]),
        .Q(B_extins[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[2] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[2]),
        .Q(B_extins[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[3] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[3]),
        .Q(B_extins[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[4] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[4]),
        .Q(B_extins[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[5] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[5]),
        .Q(B_extins[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[6] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[6]),
        .Q(B_extins[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[7] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[7]),
        .Q(B_extins[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[8] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[8]),
        .Q(B_extins[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_extins_reg[9] 
       (.C(clk),
        .CE(A_extins_1),
        .D(Q[9]),
        .Q(B_extins[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000007F7FFF00)) 
    \FSM_sequential_stare[0]_i_1__0 
       (.I0(\FSM_sequential_stare[1]_i_2__0_n_0 ),
        .I1(\contor_reg_n_0_[4] ),
        .I2(\contor_reg_n_0_[3] ),
        .I3(\FSM_sequential_stare_reg[1]_0 ),
        .I4(stare_0[0]),
        .I5(stare_0[1]),
        .O(\FSM_sequential_stare[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    \FSM_sequential_stare[0]_i_1__1 
       (.I0(stare[0]),
        .I1(done_sub),
        .I2(stare[1]),
        .I3(stare[2]),
        .O(\FSM_sequential_stare_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000FF0080800000)) 
    \FSM_sequential_stare[1]_i_1__0 
       (.I0(\FSM_sequential_stare[1]_i_2__0_n_0 ),
        .I1(\contor_reg_n_0_[4] ),
        .I2(\contor_reg_n_0_[3] ),
        .I3(\FSM_sequential_stare_reg[1]_0 ),
        .I4(stare_0[0]),
        .I5(stare_0[1]),
        .O(\FSM_sequential_stare[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_stare[1]_i_2__0 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\FSM_sequential_stare[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "scadere:01,terminare:10,initializare:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[0]_i_1__0_n_0 ),
        .Q(stare_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "scadere:01,terminare:10,initializare:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_stare[1]_i_1__0_n_0 ),
        .Q(stare_0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7F7F0FF01010000)) 
    borrow_i_1
       (.I0(borrow_i_2_n_0),
        .I1(borrow_i_3_n_0),
        .I2(stare_0[1]),
        .I3(\FSM_sequential_stare_reg[1]_0 ),
        .I4(stare_0[0]),
        .I5(borrow_reg_n_0),
        .O(borrow_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_10
       (.I0(B_extins[19]),
        .I1(B_extins[18]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(B_extins[17]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(B_extins[16]),
        .O(borrow_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_11
       (.I0(A_extins[23]),
        .I1(B_extins[22]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(B_extins[21]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(B_extins[20]),
        .O(borrow_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_12
       (.I0(B_extins[11]),
        .I1(B_extins[10]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(B_extins[9]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(B_extins[8]),
        .O(borrow_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_13
       (.I0(B_extins[15]),
        .I1(B_extins[14]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(B_extins[13]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(B_extins[12]),
        .O(borrow_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_14
       (.I0(B_extins[3]),
        .I1(B_extins[2]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(B_extins[1]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(B_extins[0]),
        .O(borrow_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_15
       (.I0(B_extins[7]),
        .I1(B_extins[6]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(B_extins[5]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(B_extins[4]),
        .O(borrow_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_16
       (.I0(A_extins[19]),
        .I1(A_extins[18]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(A_extins[17]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(A_extins[16]),
        .O(borrow_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_17
       (.I0(A_extins[23]),
        .I1(A_extins[22]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(A_extins[21]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(A_extins[20]),
        .O(borrow_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_18
       (.I0(A_extins[11]),
        .I1(A_extins[10]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(A_extins[9]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(A_extins[8]),
        .O(borrow_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_19
       (.I0(A_extins[15]),
        .I1(A_extins[14]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(A_extins[13]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(A_extins[12]),
        .O(borrow_i_19_n_0));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    borrow_i_2
       (.I0(borrow_reg_i_4_n_0),
        .I1(\contor_reg_n_0_[4] ),
        .I2(borrow_reg_i_5_n_0),
        .I3(\contor_reg_n_0_[3] ),
        .I4(borrow_reg_i_6_n_0),
        .O(borrow_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_20
       (.I0(A_extins[3]),
        .I1(A_extins[2]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(A_extins[1]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(A_extins[0]),
        .O(borrow_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    borrow_i_21
       (.I0(A_extins[7]),
        .I1(A_extins[6]),
        .I2(\contor_reg_n_0_[1] ),
        .I3(A_extins[5]),
        .I4(\contor_reg_n_0_[0] ),
        .I5(A_extins[4]),
        .O(borrow_i_21_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    borrow_i_3
       (.I0(borrow_reg_i_7_n_0),
        .I1(\contor_reg_n_0_[4] ),
        .I2(borrow_reg_i_8_n_0),
        .I3(\contor_reg_n_0_[3] ),
        .I4(borrow_reg_i_9_n_0),
        .O(borrow_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    borrow_reg
       (.C(clk),
        .CE(1'b1),
        .D(borrow_i_1_n_0),
        .Q(borrow_reg_n_0),
        .R(1'b0));
  MUXF7 borrow_reg_i_4
       (.I0(borrow_i_10_n_0),
        .I1(borrow_i_11_n_0),
        .O(borrow_reg_i_4_n_0),
        .S(\contor_reg_n_0_[2] ));
  MUXF7 borrow_reg_i_5
       (.I0(borrow_i_12_n_0),
        .I1(borrow_i_13_n_0),
        .O(borrow_reg_i_5_n_0),
        .S(\contor_reg_n_0_[2] ));
  MUXF7 borrow_reg_i_6
       (.I0(borrow_i_14_n_0),
        .I1(borrow_i_15_n_0),
        .O(borrow_reg_i_6_n_0),
        .S(\contor_reg_n_0_[2] ));
  MUXF7 borrow_reg_i_7
       (.I0(borrow_i_16_n_0),
        .I1(borrow_i_17_n_0),
        .O(borrow_reg_i_7_n_0),
        .S(\contor_reg_n_0_[2] ));
  MUXF7 borrow_reg_i_8
       (.I0(borrow_i_18_n_0),
        .I1(borrow_i_19_n_0),
        .O(borrow_reg_i_8_n_0),
        .S(\contor_reg_n_0_[2] ));
  MUXF7 borrow_reg_i_9
       (.I0(borrow_i_20_n_0),
        .I1(borrow_i_21_n_0),
        .O(borrow_reg_i_9_n_0),
        .S(\contor_reg_n_0_[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \contor[0]_i_1 
       (.I0(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDCF2200)) 
    \contor[1]_i_1 
       (.I0(\contor_reg_n_0_[0] ),
        .I1(stare_0[1]),
        .I2(\FSM_sequential_stare_reg[1]_0 ),
        .I3(stare_0[0]),
        .I4(\contor_reg_n_0_[1] ),
        .O(\contor[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \contor[2]_i_1__0 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\contor[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \contor[3]_i_1__0 
       (.I0(\contor_reg_n_0_[3] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[2] ),
        .O(\contor[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \contor[4]_i_1 
       (.I0(\FSM_sequential_stare_reg[1]_0 ),
        .I1(stare_0[1]),
        .I2(stare_0[0]),
        .O(\contor[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \contor[4]_i_2__0 
       (.I0(stare_0[1]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[0]),
        .O(\contor[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \contor[4]_i_3 
       (.I0(\contor_reg_n_0_[4] ),
        .I1(\contor_reg_n_0_[3] ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\contor_reg_n_0_[0] ),
        .I4(\contor_reg_n_0_[1] ),
        .O(\contor[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\contor[4]_i_2__0_n_0 ),
        .D(\contor[0]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[0] ),
        .R(\contor[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\contor[1]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\contor[4]_i_2__0_n_0 ),
        .D(\contor[2]_i_1__0_n_0 ),
        .Q(\contor_reg_n_0_[2] ),
        .R(\contor[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\contor[4]_i_2__0_n_0 ),
        .D(\contor[3]_i_1__0_n_0 ),
        .Q(\contor_reg_n_0_[3] ),
        .R(\contor[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contor_reg[4] 
       (.C(clk),
        .CE(\contor[4]_i_2__0_n_0 ),
        .D(\contor[4]_i_3_n_0 ),
        .Q(\contor_reg_n_0_[4] ),
        .R(\contor[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[10]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[18]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[10] ),
        .O(\diferenta[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[11]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[19]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[11] ),
        .O(\diferenta[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[12]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[20]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[12] ),
        .O(\diferenta[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[13]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[21]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[13] ),
        .O(\diferenta[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[14]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[22]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[14] ),
        .O(\diferenta[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[15]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[23]_i_3_n_0 ),
        .I4(\diferenta_reg_n_0_[15] ),
        .O(\diferenta[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \diferenta[15]_i_2 
       (.I0(stare_0[1]),
        .I1(stare_0[0]),
        .I2(\contor_reg_n_0_[4] ),
        .I3(\contor_reg_n_0_[3] ),
        .O(\diferenta[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[16]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[23]_i_2_n_0 ),
        .I3(\FSM_sequential_stare[1]_i_2__0_n_0 ),
        .I4(\diferenta_reg_n_0_[16] ),
        .O(\diferenta[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[17]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[17]_i_2_n_0 ),
        .I3(\diferenta[23]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[17] ),
        .O(\diferenta[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diferenta[17]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\diferenta[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[18]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[18]_i_2_n_0 ),
        .I3(\diferenta[23]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[18] ),
        .O(\diferenta[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \diferenta[18]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .O(\diferenta[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[19]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[23]_i_2_n_0 ),
        .I3(\diferenta[19]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[19] ),
        .O(\diferenta[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \diferenta[19]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\diferenta[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[1]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[17]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[1] ),
        .O(\diferenta[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[20]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[20]_i_2_n_0 ),
        .I3(\diferenta[23]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[20] ),
        .O(\diferenta[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \diferenta[20]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\diferenta[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[21]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[21]_i_2_n_0 ),
        .I3(\diferenta[23]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[21] ),
        .O(\diferenta[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \diferenta[21]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\diferenta[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[22]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[22]_i_2_n_0 ),
        .I3(\diferenta[23]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[22] ),
        .O(\diferenta[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \diferenta[22]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .O(\diferenta[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \diferenta[23]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[23]_i_2_n_0 ),
        .I3(\diferenta[23]_i_3_n_0 ),
        .I4(\diferenta_reg_n_0_[23] ),
        .O(\diferenta[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \diferenta[23]_i_2 
       (.I0(\contor_reg_n_0_[3] ),
        .I1(\contor_reg_n_0_[4] ),
        .I2(stare_0[1]),
        .I3(stare_0[0]),
        .O(\diferenta[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \diferenta[23]_i_3 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(\diferenta[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFAFB00080A08)) 
    \diferenta[24]_i_1 
       (.I0(diferenta0_in),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[1]),
        .I3(stare_0[0]),
        .I4(\diferenta[24]_i_3_n_0 ),
        .I5(\diferenta_reg_n_0_[24] ),
        .O(\diferenta[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2882)) 
    \diferenta[24]_i_2 
       (.I0(stare_0[0]),
        .I1(borrow_reg_n_0),
        .I2(borrow_i_3_n_0),
        .I3(borrow_i_2_n_0),
        .O(diferenta0_in));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \diferenta[24]_i_3 
       (.I0(\contor_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[2] ),
        .I3(\contor_reg_n_0_[4] ),
        .I4(\contor_reg_n_0_[3] ),
        .O(\diferenta[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[2]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[18]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[2] ),
        .O(\diferenta[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[3]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[19]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[3] ),
        .O(\diferenta[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[4]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[20]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[4] ),
        .O(\diferenta[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[5]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[21]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[5] ),
        .O(\diferenta[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[6]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[22]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[6] ),
        .O(\diferenta[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[7]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[7]_i_2_n_0 ),
        .I3(\diferenta[23]_i_3_n_0 ),
        .I4(\diferenta_reg_n_0_[7] ),
        .O(\diferenta[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \diferenta[7]_i_2 
       (.I0(\contor_reg_n_0_[4] ),
        .I1(\contor_reg_n_0_[3] ),
        .I2(stare_0[1]),
        .I3(stare_0[0]),
        .O(\diferenta[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[8]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\FSM_sequential_stare[1]_i_2__0_n_0 ),
        .I4(\diferenta_reg_n_0_[8] ),
        .O(\diferenta[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \diferenta[9]_i_1 
       (.I0(diferenta0_in),
        .I1(A_extins_1),
        .I2(\diferenta[15]_i_2_n_0 ),
        .I3(\diferenta[17]_i_2_n_0 ),
        .I4(\diferenta_reg_n_0_[9] ),
        .O(\diferenta[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[10]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[11]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[12]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[13]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[14]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[15]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[16]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[17]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[18]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[19]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[1]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[20]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[21]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[22]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[23]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[24]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[2]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[3]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[4]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[5]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[6]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[7]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[8]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diferenta_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\diferenta[9]_i_1_n_0 ),
        .Q(\diferenta_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEB40)) 
    done_i_1
       (.I0(stare_0[0]),
        .I1(stare_0[1]),
        .I2(\FSM_sequential_stare_reg[1]_0 ),
        .I3(done_sub),
        .O(done_i_1_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done_sub),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \mantisa_result[22]_i_1__0 
       (.I0(mantisa_result_internal),
        .I1(stare[2]),
        .I2(stare[1]),
        .I3(stare[0]),
        .O(E));
  LUT3 #(
    .INIT(8'h40)) 
    \result[24]_i_1__1 
       (.I0(stare_0[0]),
        .I1(\FSM_sequential_stare_reg[1]_0 ),
        .I2(stare_0[1]),
        .O(\result[24]_i_1__1_n_0 ));
  FDRE \result_reg[10] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[10] ),
        .Q(\result_reg[23]_0 [9]),
        .R(1'b0));
  FDRE \result_reg[11] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[11] ),
        .Q(\result_reg[23]_0 [10]),
        .R(1'b0));
  FDRE \result_reg[12] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[12] ),
        .Q(\result_reg[23]_0 [11]),
        .R(1'b0));
  FDRE \result_reg[13] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[13] ),
        .Q(\result_reg[23]_0 [12]),
        .R(1'b0));
  FDRE \result_reg[14] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[14] ),
        .Q(\result_reg[23]_0 [13]),
        .R(1'b0));
  FDRE \result_reg[15] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[15] ),
        .Q(\result_reg[23]_0 [14]),
        .R(1'b0));
  FDRE \result_reg[16] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[16] ),
        .Q(\result_reg[23]_0 [15]),
        .R(1'b0));
  FDRE \result_reg[17] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[17] ),
        .Q(\result_reg[23]_0 [16]),
        .R(1'b0));
  FDRE \result_reg[18] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[18] ),
        .Q(\result_reg[23]_0 [17]),
        .R(1'b0));
  FDRE \result_reg[19] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[19] ),
        .Q(\result_reg[23]_0 [18]),
        .R(1'b0));
  FDRE \result_reg[1] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[1] ),
        .Q(\result_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \result_reg[20] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[20] ),
        .Q(\result_reg[23]_0 [19]),
        .R(1'b0));
  FDRE \result_reg[21] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[21] ),
        .Q(\result_reg[23]_0 [20]),
        .R(1'b0));
  FDRE \result_reg[22] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[22] ),
        .Q(\result_reg[23]_0 [21]),
        .R(1'b0));
  FDRE \result_reg[23] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[23] ),
        .Q(\result_reg[23]_0 [22]),
        .R(1'b0));
  FDRE \result_reg[24] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[24] ),
        .Q(mantisa_result_internal),
        .R(1'b0));
  FDRE \result_reg[2] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[2] ),
        .Q(\result_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \result_reg[3] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[3] ),
        .Q(\result_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \result_reg[4] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[4] ),
        .Q(\result_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \result_reg[5] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[5] ),
        .Q(\result_reg[23]_0 [4]),
        .R(1'b0));
  FDRE \result_reg[6] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[6] ),
        .Q(\result_reg[23]_0 [5]),
        .R(1'b0));
  FDRE \result_reg[7] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[7] ),
        .Q(\result_reg[23]_0 [6]),
        .R(1'b0));
  FDRE \result_reg[8] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[8] ),
        .Q(\result_reg[23]_0 [7]),
        .R(1'b0));
  FDRE \result_reg[9] 
       (.C(clk),
        .CE(\result[24]_i_1__1_n_0 ),
        .D(\diferenta_reg_n_0_[9] ),
        .Q(\result_reg[23]_0 [8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hFDFF0100)) 
    start_sub_i_1
       (.I0(done_sub),
        .I1(stare[2]),
        .I2(stare[0]),
        .I3(stare[1]),
        .I4(\FSM_sequential_stare_reg[1]_0 ),
        .O(done_reg_0));
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
