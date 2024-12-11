// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Dec 11 15:08:44 2024
// Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_2/design_1_ALU_0_2_sim_netlist.v
// Design      : design_1_ALU_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ALU_0_2,ALU,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ALU,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ALU_0_2
   (A,
    B,
    operation,
    result,
    overflow,
    zero);
  input [15:0]A;
  input [15:0]B;
  input [1:0]operation;
  output [31:0]result;
  output overflow;
  output zero;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire [1:0]operation;
  wire [15:0]\^result ;

  assign overflow = \<const0> ;
  assign result[31] = \<const0> ;
  assign result[30] = \<const0> ;
  assign result[29] = \<const0> ;
  assign result[28] = \<const0> ;
  assign result[27] = \<const0> ;
  assign result[26] = \<const0> ;
  assign result[25] = \<const0> ;
  assign result[24] = \<const0> ;
  assign result[23] = \<const0> ;
  assign result[22] = \<const0> ;
  assign result[21] = \<const0> ;
  assign result[20] = \<const0> ;
  assign result[19] = \<const0> ;
  assign result[18] = \<const0> ;
  assign result[17] = \<const0> ;
  assign result[16] = \<const0> ;
  assign result[15:0] = \^result [15:0];
  assign zero = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_ALU_0_2_ALU inst
       (.A(A),
        .B(B),
        .operation(operation),
        .result(\^result ));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module design_1_ALU_0_2_ALU
   (result,
    operation,
    A,
    B);
  output [15:0]result;
  input [1:0]operation;
  input [15:0]A;
  input [15:0]B;

  wire [15:0]A;
  wire ADD_n_17;
  wire ADD_n_20;
  wire ADD_n_21;
  wire ADD_n_22;
  wire ADD_n_23;
  wire [15:0]B;
  wire MUL_n_0;
  wire SUB_n_0;
  wire SUB_n_1;
  wire SUB_n_10;
  wire SUB_n_11;
  wire SUB_n_12;
  wire SUB_n_13;
  wire SUB_n_14;
  wire SUB_n_16;
  wire SUB_n_2;
  wire SUB_n_3;
  wire SUB_n_4;
  wire SUB_n_6;
  wire SUB_n_7;
  wire SUB_n_8;
  wire SUB_n_9;
  wire [3:1]dif;
  wire [3:0]exp_final;
  wire [3:0]exp_temp;
  wire [2:0]mantisa_aux;
  wire [1:0]operation;
  wire [15:0]result;
  wire [10:10]rez_aux;
  wire rez_aux1;

  design_1_ALU_0_2_add ADD
       (.A(A),
        .\A[12]_0 (ADD_n_23),
        .A_12_sp_1(ADD_n_21),
        .A_13_sp_1(ADD_n_20),
        .B(B),
        .B_1_sp_1(ADD_n_22),
        .B_2_sp_1(ADD_n_17),
        .DI({SUB_n_0,SUB_n_1}),
        .Q(exp_temp),
        .S({SUB_n_2,SUB_n_3,SUB_n_4}),
        .\_inferred__5/i__carry__0_0 (SUB_n_14),
        .dif(dif[3:2]),
        .i__carry__0_i_7_0(dif[1]),
        .i__carry__0_i_8_0(SUB_n_11),
        .i__carry__0_i_8_1(SUB_n_10),
        .i__carry__0_i_8_2(SUB_n_9),
        .i__carry__0_i_8_3(mantisa_aux[0]),
        .i__carry__0_i_8_4(SUB_n_16),
        .i__carry__1_i_13(SUB_n_8),
        .i__carry__1_i_16(SUB_n_7),
        .i__carry__1_i_19(SUB_n_12),
        .i__carry__1_i_24(SUB_n_13),
        .i__carry_i_5_0(SUB_n_6),
        .mantisa_aux(mantisa_aux[2:1]),
        .operation(operation),
        .result(result),
        .\result[14] (exp_final),
        .result_15_sp_1(MUL_n_0),
        .rez_aux(rez_aux),
        .rez_aux1(rez_aux1));
  design_1_ALU_0_2_mul MUL
       (.A(A[14:11]),
        .B(B[14:11]),
        .E(MUL_n_0),
        .Q(exp_final));
  design_1_ALU_0_2_sub SUB
       (.A({A[14:3],A[0]}),
        .\A[11]_0 (SUB_n_8),
        .\A[11]_1 (SUB_n_9),
        .\A[11]_2 (SUB_n_11),
        .\A[12]_0 (SUB_n_13),
        .\A[14] (SUB_n_10),
        .A_11_sp_1(SUB_n_6),
        .A_12_sp_1(SUB_n_12),
        .A_7_sp_1(SUB_n_14),
        .B({B[14:3],B[0]}),
        .\B[0] (mantisa_aux[0]),
        .\B[12] (dif[1]),
        .B_4_sp_1(SUB_n_16),
        .B_5_sp_1(SUB_n_7),
        .DI({SUB_n_0,SUB_n_1}),
        .E(rez_aux),
        .Q(exp_temp),
        .S({SUB_n_2,SUB_n_3,SUB_n_4}),
        .\_inferred__5/i__carry__1 (ADD_n_23),
        .i__carry__1_i_3_0(ADD_n_20),
        .i__carry__1_i_3_1(ADD_n_21),
        .i__carry__1_i_4_0(dif[3:2]),
        .i__carry__1_i_5_0(ADD_n_22),
        .i__carry__1_i_5_1(ADD_n_17),
        .mantisa_aux(mantisa_aux[2:1]),
        .rez_aux1(rez_aux1));
endmodule

(* ORIG_REF_NAME = "add" *) 
module design_1_ALU_0_2_add
   (result,
    rez_aux1,
    B_2_sp_1,
    mantisa_aux,
    A_13_sp_1,
    A_12_sp_1,
    B_1_sp_1,
    \A[12]_0 ,
    dif,
    rez_aux,
    DI,
    S,
    operation,
    result_15_sp_1,
    A,
    B,
    Q,
    \result[14] ,
    i__carry__0_i_8_0,
    i__carry__0_i_8_1,
    i__carry__0_i_8_2,
    i__carry__1_i_13,
    i__carry__1_i_19,
    i__carry__1_i_24,
    i__carry__1_i_16,
    i__carry__0_i_8_3,
    i__carry_i_5_0,
    i__carry__0_i_8_4,
    i__carry__0_i_7_0,
    \_inferred__5/i__carry__0_0 );
  output [15:0]result;
  output rez_aux1;
  output B_2_sp_1;
  output [1:0]mantisa_aux;
  output A_13_sp_1;
  output A_12_sp_1;
  output B_1_sp_1;
  output \A[12]_0 ;
  output [1:0]dif;
  output [0:0]rez_aux;
  input [1:0]DI;
  input [2:0]S;
  input [1:0]operation;
  input result_15_sp_1;
  input [15:0]A;
  input [15:0]B;
  input [3:0]Q;
  input [3:0]\result[14] ;
  input i__carry__0_i_8_0;
  input i__carry__0_i_8_1;
  input i__carry__0_i_8_2;
  input i__carry__1_i_13;
  input i__carry__1_i_19;
  input i__carry__1_i_24;
  input i__carry__1_i_16;
  input [0:0]i__carry__0_i_8_3;
  input i__carry_i_5_0;
  input i__carry__0_i_8_4;
  input [0:0]i__carry__0_i_7_0;
  input \_inferred__5/i__carry__0_0 ;

  wire [15:0]A;
  wire \A[12]_0 ;
  wire A_12_sn_1;
  wire A_13_sn_1;
  wire [15:0]B;
  wire B_1_sn_1;
  wire B_2_sn_1;
  wire [1:0]DI;
  wire [3:0]Q;
  wire [2:0]S;
  wire \_inferred__5/i__carry__0_0 ;
  wire \_inferred__5/i__carry__0_n_0 ;
  wire \_inferred__5/i__carry__0_n_1 ;
  wire \_inferred__5/i__carry__0_n_2 ;
  wire \_inferred__5/i__carry__0_n_3 ;
  wire \_inferred__5/i__carry__1_n_2 ;
  wire \_inferred__5/i__carry__1_n_3 ;
  wire \_inferred__5/i__carry_n_0 ;
  wire \_inferred__5/i__carry_n_1 ;
  wire \_inferred__5/i__carry_n_2 ;
  wire \_inferred__5/i__carry_n_3 ;
  wire [1:0]dif;
  wire [3:0]exp_temp;
  wire final_aux1;
  wire final_aux1_carry__0_i_1_n_0;
  wire final_aux1_carry__0_i_2_n_0;
  wire final_aux1_carry__0_i_3_n_0;
  wire final_aux1_carry__0_i_4_n_0;
  wire final_aux1_carry__0_i_5_n_0;
  wire final_aux1_carry__0_i_6_n_0;
  wire final_aux1_carry__0_i_7_n_0;
  wire final_aux1_carry__0_i_8_n_0;
  wire final_aux1_carry__0_n_1;
  wire final_aux1_carry__0_n_2;
  wire final_aux1_carry__0_n_3;
  wire final_aux1_carry_i_1_n_0;
  wire final_aux1_carry_i_2_n_0;
  wire final_aux1_carry_i_3_n_0;
  wire final_aux1_carry_i_4_n_0;
  wire final_aux1_carry_i_5_n_0;
  wire final_aux1_carry_i_6_n_0;
  wire final_aux1_carry_i_7_n_0;
  wire final_aux1_carry_i_8_n_0;
  wire final_aux1_carry_n_0;
  wire final_aux1_carry_n_1;
  wire final_aux1_carry_n_2;
  wire final_aux1_carry_n_3;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_17_n_0;
  wire i__carry__0_i_18_n_0;
  wire i__carry__0_i_19_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_20_n_0;
  wire i__carry__0_i_21_n_0;
  wire i__carry__0_i_25_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire [0:0]i__carry__0_i_7_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_0;
  wire i__carry__0_i_8_1;
  wire i__carry__0_i_8_2;
  wire [0:0]i__carry__0_i_8_3;
  wire i__carry__0_i_8_4;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_13;
  wire i__carry__1_i_16;
  wire i__carry__1_i_19;
  wire i__carry__1_i_24;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [1:0]mantisa_aux;
  wire [1:0]operation;
  wire p_1_in;
  wire [3:0]plusOp;
  wire [15:0]result;
  wire [3:0]\result[14] ;
  wire result_15_sn_1;
  wire [0:0]rez_aux;
  wire [10:0]rez_aux0_in;
  wire rez_aux1;
  wire [3:2]\NLW__inferred__5/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__5/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_final_aux1_carry_O_UNCONNECTED;
  wire [3:0]NLW_final_aux1_carry__0_O_UNCONNECTED;

  assign A_12_sp_1 = A_12_sn_1;
  assign A_13_sp_1 = A_13_sn_1;
  assign B_1_sp_1 = B_1_sn_1;
  assign B_2_sp_1 = B_2_sn_1;
  assign result_15_sn_1 = result_15_sp_1;
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__5/i__carry_n_0 ,\_inferred__5/i__carry_n_1 ,\_inferred__5/i__carry_n_2 ,\_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(rez_aux0_in[3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__0 
       (.CI(\_inferred__5/i__carry_n_0 ),
        .CO({\_inferred__5/i__carry__0_n_0 ,\_inferred__5/i__carry__0_n_1 ,\_inferred__5/i__carry__0_n_2 ,\_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(rez_aux0_in[7:4]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__1 
       (.CI(\_inferred__5/i__carry__0_n_0 ),
        .CO({\NLW__inferred__5/i__carry__1_CO_UNCONNECTED [3:2],\_inferred__5/i__carry__1_n_2 ,\_inferred__5/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,DI}),
        .O({\NLW__inferred__5/i__carry__1_O_UNCONNECTED [3],rez_aux0_in[10:8]}),
        .S({1'b0,S}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[0] 
       (.CLR(1'b0),
        .D(plusOp[0]),
        .G(p_1_in),
        .GE(1'b1),
        .Q(exp_temp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \exp_temp_reg[0]_i_1 
       (.I0(exp_temp[0]),
        .O(plusOp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[1] 
       (.CLR(1'b0),
        .D(plusOp[1]),
        .G(p_1_in),
        .GE(1'b1),
        .Q(exp_temp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \exp_temp_reg[1]_i_1 
       (.I0(exp_temp[0]),
        .I1(exp_temp[1]),
        .O(plusOp[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[2] 
       (.CLR(1'b0),
        .D(plusOp[2]),
        .G(p_1_in),
        .GE(1'b1),
        .Q(exp_temp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \exp_temp_reg[2]_i_1 
       (.I0(exp_temp[0]),
        .I1(exp_temp[1]),
        .I2(exp_temp[2]),
        .O(plusOp[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[3] 
       (.CLR(1'b0),
        .D(plusOp[3]),
        .G(p_1_in),
        .GE(1'b1),
        .Q(exp_temp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \exp_temp_reg[3]_i_1 
       (.I0(exp_temp[2]),
        .I1(exp_temp[1]),
        .I2(exp_temp[0]),
        .I3(exp_temp[3]),
        .O(plusOp[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 final_aux1_carry
       (.CI(1'b0),
        .CO({final_aux1_carry_n_0,final_aux1_carry_n_1,final_aux1_carry_n_2,final_aux1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({final_aux1_carry_i_1_n_0,final_aux1_carry_i_2_n_0,final_aux1_carry_i_3_n_0,final_aux1_carry_i_4_n_0}),
        .O(NLW_final_aux1_carry_O_UNCONNECTED[3:0]),
        .S({final_aux1_carry_i_5_n_0,final_aux1_carry_i_6_n_0,final_aux1_carry_i_7_n_0,final_aux1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 final_aux1_carry__0
       (.CI(final_aux1_carry_n_0),
        .CO({final_aux1,final_aux1_carry__0_n_1,final_aux1_carry__0_n_2,final_aux1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({final_aux1_carry__0_i_1_n_0,final_aux1_carry__0_i_2_n_0,final_aux1_carry__0_i_3_n_0,final_aux1_carry__0_i_4_n_0}),
        .O(NLW_final_aux1_carry__0_O_UNCONNECTED[3:0]),
        .S({final_aux1_carry__0_i_5_n_0,final_aux1_carry__0_i_6_n_0,final_aux1_carry__0_i_7_n_0,final_aux1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_aux1_carry__0_i_1
       (.I0(A[15]),
        .I1(B[15]),
        .I2(A[14]),
        .I3(B[14]),
        .O(final_aux1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    final_aux1_carry__0_i_2
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(final_aux1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    final_aux1_carry__0_i_3
       (.I0(A[10]),
        .I1(B[10]),
        .I2(B[11]),
        .I3(A[11]),
        .O(final_aux1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_aux1_carry__0_i_4
       (.I0(A[9]),
        .I1(B[9]),
        .I2(A[8]),
        .I3(B[8]),
        .O(final_aux1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry__0_i_5
       (.I0(A[15]),
        .I1(B[15]),
        .I2(A[14]),
        .I3(B[14]),
        .O(final_aux1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry__0_i_6
       (.I0(B[12]),
        .I1(A[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(final_aux1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry__0_i_7
       (.I0(A[11]),
        .I1(B[11]),
        .I2(A[10]),
        .I3(B[10]),
        .O(final_aux1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry__0_i_8
       (.I0(A[8]),
        .I1(B[8]),
        .I2(A[9]),
        .I3(B[9]),
        .O(final_aux1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_aux1_carry_i_1
       (.I0(A[7]),
        .I1(B[7]),
        .I2(A[6]),
        .I3(B[6]),
        .O(final_aux1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_aux1_carry_i_2
       (.I0(A[5]),
        .I1(B[5]),
        .I2(A[4]),
        .I3(B[4]),
        .O(final_aux1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_aux1_carry_i_3
       (.I0(A[3]),
        .I1(B[3]),
        .I2(A[2]),
        .I3(B[2]),
        .O(final_aux1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    final_aux1_carry_i_4
       (.I0(A[1]),
        .I1(B[1]),
        .I2(A[0]),
        .I3(B[0]),
        .O(final_aux1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry_i_5
       (.I0(A[7]),
        .I1(B[7]),
        .I2(A[6]),
        .I3(B[6]),
        .O(final_aux1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry_i_6
       (.I0(A[4]),
        .I1(B[4]),
        .I2(A[5]),
        .I3(B[5]),
        .O(final_aux1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry_i_7
       (.I0(A[2]),
        .I1(B[2]),
        .I2(A[3]),
        .I3(B[3]),
        .O(final_aux1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    final_aux1_carry_i_8
       (.I0(A[0]),
        .I1(B[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(final_aux1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_1
       (.I0(A[7]),
        .I1(rez_aux1),
        .I2(B[7]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    i__carry__0_i_12
       (.I0(i__carry__0_i_15_n_0),
        .I1(i__carry__0_i_18_n_0),
        .I2(B_1_sn_1),
        .I3(A_12_sn_1),
        .O(i__carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'h0000CAAC)) 
    i__carry__0_i_13
       (.I0(B_1_sn_1),
        .I1(B_2_sn_1),
        .I2(A[11]),
        .I3(B[11]),
        .I4(i__carry__0_i_7_0),
        .O(i__carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h0404050000000000)) 
    i__carry__0_i_14
       (.I0(dif[0]),
        .I1(B[3]),
        .I2(dif[1]),
        .I3(A[3]),
        .I4(rez_aux1),
        .I5(i__carry__0_i_18_n_0),
        .O(i__carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hB0C2C20B80020208)) 
    i__carry__0_i_15
       (.I0(i__carry__0_i_8_3),
        .I1(i__carry__0_i_8_0),
        .I2(i__carry__0_i_8_1),
        .I3(i__carry__0_i_8_2),
        .I4(i__carry__1_i_13),
        .I5(i__carry__0_i_8_4),
        .O(i__carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry__0_i_16
       (.I0(A[12]),
        .I1(B[12]),
        .I2(A[11]),
        .I3(B[11]),
        .O(A_12_sn_1));
  LUT5 #(
    .INIT(32'h0000CAAC)) 
    i__carry__0_i_17
       (.I0(i__carry__0_i_15_n_0),
        .I1(B_1_sn_1),
        .I2(A[11]),
        .I3(B[11]),
        .I4(i__carry__0_i_7_0),
        .O(i__carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00966900)) 
    i__carry__0_i_18
       (.I0(rez_aux1),
        .I1(A[12]),
        .I2(B[12]),
        .I3(A[11]),
        .I4(B[11]),
        .O(i__carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0404050000000000)) 
    i__carry__0_i_19
       (.I0(dif[0]),
        .I1(B[3]),
        .I2(dif[1]),
        .I3(A[3]),
        .I4(rez_aux1),
        .I5(A_12_sn_1),
        .O(i__carry__0_i_19_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_2
       (.I0(A[6]),
        .I1(rez_aux1),
        .I2(B[6]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0404050000000000)) 
    i__carry__0_i_20
       (.I0(dif[0]),
        .I1(B[3]),
        .I2(dif[1]),
        .I3(A[3]),
        .I4(rez_aux1),
        .I5(\A[12]_0 ),
        .O(i__carry__0_i_20_n_0));
  LUT5 #(
    .INIT(32'hF0808080)) 
    i__carry__0_i_21
       (.I0(i__carry__0_i_18_n_0),
        .I1(mantisa_aux[0]),
        .I2(A_13_sn_1),
        .I3(A_12_sn_1),
        .I4(mantisa_aux[1]),
        .O(i__carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry__0_i_25
       (.I0(B[6]),
        .I1(i__carry__1_i_19),
        .I2(B[11]),
        .I3(A[11]),
        .I4(i__carry__1_i_24),
        .I5(A[6]),
        .O(i__carry__0_i_25_n_0));
  LUT6 #(
    .INIT(64'hB0C2C20B80020208)) 
    i__carry__0_i_27
       (.I0(mantisa_aux[0]),
        .I1(i__carry__0_i_8_0),
        .I2(i__carry__0_i_8_1),
        .I3(i__carry__0_i_8_2),
        .I4(i__carry__1_i_13),
        .I5(i__carry__1_i_16),
        .O(B_1_sn_1));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_3
       (.I0(A[5]),
        .I1(rez_aux1),
        .I2(B[5]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__0_i_4
       (.I0(A[4]),
        .I1(rez_aux1),
        .I2(B[4]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h55555555556A6A6A)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_1_n_0),
        .I1(B_2_sn_1),
        .I2(\A[12]_0 ),
        .I3(\_inferred__5/i__carry__0_0 ),
        .I4(i__carry_i_5_0),
        .I5(i__carry__0_i_12_n_0),
        .O(i__carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h55565656)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_2_n_0),
        .I1(i__carry__0_i_13_n_0),
        .I2(i__carry__0_i_14_n_0),
        .I3(i__carry__0_i_15_n_0),
        .I4(A_12_sn_1),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h5555555556666666)) 
    i__carry__0_i_7
       (.I0(i__carry__0_i_3_n_0),
        .I1(i__carry__0_i_17_n_0),
        .I2(A_13_sn_1),
        .I3(i__carry__0_i_18_n_0),
        .I4(mantisa_aux[1]),
        .I5(i__carry__0_i_19_n_0),
        .O(i__carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h55555666)) 
    i__carry__0_i_8
       (.I0(i__carry__0_i_4_n_0),
        .I1(i__carry__0_i_20_n_0),
        .I2(i__carry__0_i_15_n_0),
        .I3(i__carry_i_5_0),
        .I4(i__carry__0_i_21_n_0),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hB0C2C20B80020208)) 
    i__carry__0_i_9
       (.I0(mantisa_aux[1]),
        .I1(i__carry__0_i_8_0),
        .I2(i__carry__0_i_8_1),
        .I3(i__carry__0_i_8_2),
        .I4(i__carry__1_i_13),
        .I5(i__carry__0_i_25_n_0),
        .O(B_2_sn_1));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry_i_1
       (.I0(A[3]),
        .I1(rez_aux1),
        .I2(B[3]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8282414114418228)) 
    i__carry_i_10
       (.I0(A[13]),
        .I1(B[14]),
        .I2(A[14]),
        .I3(rez_aux1),
        .I4(B[13]),
        .I5(i__carry__1_i_13),
        .O(A_13_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00699600)) 
    i__carry_i_11
       (.I0(rez_aux1),
        .I1(A[12]),
        .I2(B[12]),
        .I3(A[11]),
        .I4(B[11]),
        .O(\A[12]_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry_i_12
       (.I0(B[2]),
        .I1(i__carry__1_i_19),
        .I2(B[11]),
        .I3(A[11]),
        .I4(i__carry__1_i_24),
        .I5(A[2]),
        .O(mantisa_aux[1]));
  LUT6 #(
    .INIT(64'h0404050000000000)) 
    i__carry_i_13
       (.I0(dif[0]),
        .I1(B[3]),
        .I2(dif[1]),
        .I3(A[3]),
        .I4(rez_aux1),
        .I5(i__carry_i_5_0),
        .O(i__carry_i_13_n_0));
  LUT5 #(
    .INIT(32'hF0808080)) 
    i__carry_i_14
       (.I0(i__carry__0_i_18_n_0),
        .I1(i__carry__0_i_8_3),
        .I2(A_13_sn_1),
        .I3(A_12_sn_1),
        .I4(mantisa_aux[0]),
        .O(i__carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hB8000000)) 
    i__carry_i_15
       (.I0(B[0]),
        .I1(rez_aux1),
        .I2(A[0]),
        .I3(A_12_sn_1),
        .I4(A_13_sn_1),
        .O(i__carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hB8000000)) 
    i__carry_i_16
       (.I0(B[1]),
        .I1(rez_aux1),
        .I2(A[1]),
        .I3(\A[12]_0 ),
        .I4(A_13_sn_1),
        .O(i__carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h90090000)) 
    i__carry_i_17
       (.I0(B[11]),
        .I1(A[11]),
        .I2(B[12]),
        .I3(A[12]),
        .I4(A_13_sn_1),
        .O(i__carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hB8000000)) 
    i__carry_i_18
       (.I0(B[0]),
        .I1(rez_aux1),
        .I2(A[0]),
        .I3(\A[12]_0 ),
        .I4(A_13_sn_1),
        .O(i__carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_19
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(i__carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry_i_2
       (.I0(A[2]),
        .I1(rez_aux1),
        .I2(B[2]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h4DB2B24D718E8E71)) 
    i__carry_i_23
       (.I0(i__carry_i_27_n_0),
        .I1(B[12]),
        .I2(A[12]),
        .I3(B[13]),
        .I4(A[13]),
        .I5(rez_aux1),
        .O(dif[0]));
  LUT6 #(
    .INIT(64'h47B8B847D12E2ED1)) 
    i__carry_i_24
       (.I0(i__carry__1_i_13),
        .I1(B[13]),
        .I2(rez_aux1),
        .I3(A[14]),
        .I4(B[14]),
        .I5(A[13]),
        .O(dif[1]));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry_i_26
       (.I0(B[1]),
        .I1(i__carry__1_i_19),
        .I2(B[11]),
        .I3(A[11]),
        .I4(i__carry__1_i_24),
        .I5(A[1]),
        .O(mantisa_aux[0]));
  LUT6 #(
    .INIT(64'hBAFBFFFFBAFBDF5D)) 
    i__carry_i_27
       (.I0(A[11]),
        .I1(A[14]),
        .I2(B[14]),
        .I3(i__carry_i_19_n_0),
        .I4(B[11]),
        .I5(i__carry__1_i_24),
        .O(i__carry_i_27_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry_i_3
       (.I0(A[1]),
        .I1(rez_aux1),
        .I2(B[1]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry_i_4
       (.I0(A[0]),
        .I1(rez_aux1),
        .I2(B[0]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555555555556AAA)) 
    i__carry_i_5
       (.I0(i__carry_i_1_n_0),
        .I1(A_13_sn_1),
        .I2(\A[12]_0 ),
        .I3(mantisa_aux[1]),
        .I4(i__carry_i_13_n_0),
        .I5(i__carry_i_14_n_0),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFEF001E1EEE111E1)) 
    i__carry_i_6
       (.I0(i__carry_i_15_n_0),
        .I1(i__carry_i_16_n_0),
        .I2(B[2]),
        .I3(rez_aux1),
        .I4(A[2]),
        .I5(i__carry_i_17_n_0),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hCFC09837)) 
    i__carry_i_7
       (.I0(i__carry_i_17_n_0),
        .I1(A[1]),
        .I2(rez_aux1),
        .I3(B[1]),
        .I4(i__carry_i_18_n_0),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hA51D)) 
    i__carry_i_8
       (.I0(B[0]),
        .I1(rez_aux1),
        .I2(A[0]),
        .I3(i__carry_i_17_n_0),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFB2FFB2B2B2B2)) 
    i__carry_i_9
       (.I0(A[14]),
        .I1(B[14]),
        .I2(i__carry_i_19_n_0),
        .I3(B[11]),
        .I4(A[11]),
        .I5(i__carry__1_i_24),
        .O(rez_aux1));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[0]_INST_0 
       (.I0(rez_aux0_in[0]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[0]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \result[10]_INST_0 
       (.I0(operation[1]),
        .I1(rez_aux0_in[10]),
        .I2(p_1_in),
        .I3(operation[0]),
        .I4(rez_aux),
        .O(result[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \result[10]_INST_0_i_1 
       (.I0(rez_aux0_in[10]),
        .I1(p_1_in),
        .O(p_1_in));
  LUT2 #(
    .INIT(4'h2)) 
    \result[10]_INST_0_i_2 
       (.I0(rez_aux0_in[10]),
        .I1(rez_aux),
        .O(rez_aux));
  LUT6 #(
    .INIT(64'h7362514033221100)) 
    \result[11]_INST_0 
       (.I0(operation[0]),
        .I1(operation[1]),
        .I2(result_15_sn_1),
        .I3(exp_temp[0]),
        .I4(Q[0]),
        .I5(\result[14] [0]),
        .O(result[11]));
  LUT6 #(
    .INIT(64'h7362514033221100)) 
    \result[12]_INST_0 
       (.I0(operation[0]),
        .I1(operation[1]),
        .I2(result_15_sn_1),
        .I3(exp_temp[1]),
        .I4(Q[1]),
        .I5(\result[14] [1]),
        .O(result[12]));
  LUT6 #(
    .INIT(64'h7362514033221100)) 
    \result[13]_INST_0 
       (.I0(operation[0]),
        .I1(operation[1]),
        .I2(result_15_sn_1),
        .I3(exp_temp[2]),
        .I4(Q[2]),
        .I5(\result[14] [2]),
        .O(result[13]));
  LUT6 #(
    .INIT(64'h7362514033221100)) 
    \result[14]_INST_0 
       (.I0(operation[0]),
        .I1(operation[1]),
        .I2(result_15_sn_1),
        .I3(exp_temp[3]),
        .I4(Q[3]),
        .I5(\result[14] [3]),
        .O(result[14]));
  LUT6 #(
    .INIT(64'h3362337373006200)) 
    \result[15]_INST_0 
       (.I0(operation[0]),
        .I1(operation[1]),
        .I2(result_15_sn_1),
        .I3(A[15]),
        .I4(final_aux1),
        .I5(B[15]),
        .O(result[15]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[1]_INST_0 
       (.I0(rez_aux0_in[1]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[1]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[2]_INST_0 
       (.I0(rez_aux0_in[2]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[3]_INST_0 
       (.I0(rez_aux0_in[3]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[3]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[4]_INST_0 
       (.I0(rez_aux0_in[4]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[4]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[5]_INST_0 
       (.I0(rez_aux0_in[5]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[6]_INST_0 
       (.I0(rez_aux0_in[6]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[6]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[7]_INST_0 
       (.I0(rez_aux0_in[7]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[7]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[8]_INST_0 
       (.I0(rez_aux0_in[8]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[8]));
  LUT6 #(
    .INIT(64'h00000000EFEAAAAA)) 
    \result[9]_INST_0 
       (.I0(rez_aux0_in[9]),
        .I1(rez_aux),
        .I2(operation[0]),
        .I3(p_1_in),
        .I4(rez_aux0_in[10]),
        .I5(operation[1]),
        .O(result[9]));
endmodule

(* ORIG_REF_NAME = "mul" *) 
module design_1_ALU_0_2_mul
   (E,
    Q,
    A,
    B);
  output [0:0]E;
  output [3:0]Q;
  input [3:0]A;
  input [3:0]B;

  wire [3:0]A;
  wire [3:0]B;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]exp_suma;
  wire \result[15]_INST_0_i_2_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_final_reg[0] 
       (.CLR(1'b0),
        .D(exp_suma[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \exp_final_reg[0]_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(exp_suma[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_final_reg[1] 
       (.CLR(1'b0),
        .D(exp_suma[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \exp_final_reg[1]_i_1 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(exp_suma[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_final_reg[2] 
       (.CLR(1'b0),
        .D(exp_suma[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \exp_final_reg[2]_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .I2(A[0]),
        .I3(B[0]),
        .I4(B[2]),
        .I5(A[2]),
        .O(exp_suma[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_final_reg[3] 
       (.CLR(1'b0),
        .D(exp_suma[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \exp_final_reg[3]_i_1 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(\result[15]_INST_0_i_2_n_0 ),
        .O(exp_suma[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \result[15]_INST_0_i_1 
       (.I0(A[3]),
        .I1(\result[15]_INST_0_i_2_n_0 ),
        .I2(B[3]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \result[15]_INST_0_i_2 
       (.I0(B[0]),
        .I1(A[0]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(B[2]),
        .I5(A[2]),
        .O(\result[15]_INST_0_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "sub" *) 
module design_1_ALU_0_2_sub
   (DI,
    S,
    \B[12] ,
    A_11_sp_1,
    B_5_sp_1,
    \A[11]_0 ,
    \A[11]_1 ,
    \A[14] ,
    \A[11]_2 ,
    A_12_sp_1,
    \A[12]_0 ,
    A_7_sp_1,
    \B[0] ,
    B_4_sp_1,
    Q,
    A,
    rez_aux1,
    B,
    i__carry__1_i_4_0,
    mantisa_aux,
    i__carry__1_i_5_0,
    i__carry__1_i_3_0,
    i__carry__1_i_3_1,
    i__carry__1_i_5_1,
    \_inferred__5/i__carry__1 ,
    E);
  output [1:0]DI;
  output [2:0]S;
  output [0:0]\B[12] ;
  output A_11_sp_1;
  output B_5_sp_1;
  output \A[11]_0 ;
  output \A[11]_1 ;
  output \A[14] ;
  output \A[11]_2 ;
  output A_12_sp_1;
  output \A[12]_0 ;
  output A_7_sp_1;
  output [0:0]\B[0] ;
  output B_4_sp_1;
  output [3:0]Q;
  input [12:0]A;
  input rez_aux1;
  input [12:0]B;
  input [1:0]i__carry__1_i_4_0;
  input [1:0]mantisa_aux;
  input i__carry__1_i_5_0;
  input i__carry__1_i_3_0;
  input i__carry__1_i_3_1;
  input i__carry__1_i_5_1;
  input \_inferred__5/i__carry__1 ;
  input [0:0]E;

  wire [12:0]A;
  wire \A[11]_0 ;
  wire \A[11]_1 ;
  wire \A[11]_2 ;
  wire \A[12]_0 ;
  wire \A[14] ;
  wire A_11_sn_1;
  wire A_12_sn_1;
  wire A_7_sn_1;
  wire [12:0]B;
  wire [0:0]\B[0] ;
  wire [0:0]\B[12] ;
  wire B_4_sn_1;
  wire B_5_sn_1;
  wire [1:0]DI;
  wire [0:0]E;
  wire [3:0]Q;
  wire [2:0]S;
  wire \_inferred__5/i__carry__1 ;
  wire [0:0]dif;
  wire i__carry__0_i_26_n_0;
  wire i__carry__0_i_29_n_0;
  wire i__carry__0_i_30_n_0;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_13_n_0;
  wire i__carry__1_i_14_n_0;
  wire i__carry__1_i_15_n_0;
  wire i__carry__1_i_16_n_0;
  wire i__carry__1_i_17_n_0;
  wire i__carry__1_i_18_n_0;
  wire i__carry__1_i_19_n_0;
  wire i__carry__1_i_20_n_0;
  wire i__carry__1_i_21_n_0;
  wire i__carry__1_i_22_n_0;
  wire i__carry__1_i_23_n_0;
  wire i__carry__1_i_24_n_0;
  wire i__carry__1_i_25_n_0;
  wire i__carry__1_i_26_n_0;
  wire i__carry__1_i_27_n_0;
  wire i__carry__1_i_28_n_0;
  wire i__carry__1_i_3_0;
  wire i__carry__1_i_3_1;
  wire [1:0]i__carry__1_i_4_0;
  wire i__carry__1_i_5_0;
  wire i__carry__1_i_5_1;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__1_i_9_n_0;
  wire [1:0]mantisa_aux;
  wire [3:0]plusOp;
  wire rez_aux1;

  assign A_11_sp_1 = A_11_sn_1;
  assign A_12_sp_1 = A_12_sn_1;
  assign A_7_sp_1 = A_7_sn_1;
  assign B_4_sp_1 = B_4_sn_1;
  assign B_5_sp_1 = B_5_sn_1;
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[0] 
       (.CLR(1'b0),
        .D(plusOp[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \exp_temp_reg[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[1] 
       (.CLR(1'b0),
        .D(plusOp[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \exp_temp_reg[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[2] 
       (.CLR(1'b0),
        .D(plusOp[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \exp_temp_reg[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_temp_reg[3] 
       (.CLR(1'b0),
        .D(plusOp[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \exp_temp_reg[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(plusOp[3]));
  LUT6 #(
    .INIT(64'hFFFFE040E040E040)) 
    i__carry__0_i_10
       (.I0(rez_aux1),
        .I1(A[5]),
        .I2(i__carry__1_i_3_0),
        .I3(B[5]),
        .I4(i__carry__1_i_4_0[0]),
        .I5(i__carry__0_i_26_n_0),
        .O(A_7_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_11
       (.I0(A[9]),
        .I1(B[9]),
        .I2(A[10]),
        .I3(B[10]),
        .O(A_11_sn_1));
  LUT5 #(
    .INIT(32'hFF8A0075)) 
    i__carry__0_i_22
       (.I0(\A[12]_0 ),
        .I1(A[9]),
        .I2(B[9]),
        .I3(A_12_sn_1),
        .I4(A[11]),
        .O(\A[11]_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_23
       (.I0(A[12]),
        .I1(B[12]),
        .O(\A[14] ));
  LUT5 #(
    .INIT(32'h0075FF8A)) 
    i__carry__0_i_24
       (.I0(\A[12]_0 ),
        .I1(A[9]),
        .I2(B[9]),
        .I3(A_12_sn_1),
        .I4(B[11]),
        .O(\A[11]_1 ));
  LUT6 #(
    .INIT(64'hFC03C03FA802802A)) 
    i__carry__0_i_26
       (.I0(i__carry__0_i_29_n_0),
        .I1(\A[11]_0 ),
        .I2(\A[11]_1 ),
        .I3(\A[14] ),
        .I4(\A[11]_2 ),
        .I5(i__carry__0_i_30_n_0),
        .O(i__carry__0_i_26_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry__0_i_28
       (.I0(B[2]),
        .I1(A_12_sn_1),
        .I2(B[9]),
        .I3(A[9]),
        .I4(\A[12]_0 ),
        .I5(A[2]),
        .O(B_4_sn_1));
  LUT5 #(
    .INIT(32'hFF8A0000)) 
    i__carry__0_i_29
       (.I0(\A[12]_0 ),
        .I1(A[9]),
        .I2(B[9]),
        .I3(A_12_sn_1),
        .I4(B[1]),
        .O(i__carry__0_i_29_n_0));
  LUT5 #(
    .INIT(32'h00002A22)) 
    i__carry__0_i_30
       (.I0(A[1]),
        .I1(\A[12]_0 ),
        .I2(A[9]),
        .I3(B[9]),
        .I4(A_12_sn_1),
        .O(i__carry__0_i_30_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry__0_i_31
       (.I0(B[3]),
        .I1(A_12_sn_1),
        .I2(B[9]),
        .I3(A[9]),
        .I4(\A[12]_0 ),
        .I5(A[3]),
        .O(B_5_sn_1));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__1_i_1
       (.I0(A[7]),
        .I1(rez_aux1),
        .I2(B[7]),
        .O(DI[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_10
       (.I0(A[9]),
        .I1(B[9]),
        .O(dif));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    i__carry__1_i_11
       (.I0(i__carry__1_i_19_n_0),
        .I1(i__carry__1_i_20_n_0),
        .I2(i__carry__1_i_21_n_0),
        .I3(\B[12] ),
        .I4(i__carry__1_i_22_n_0),
        .I5(i__carry__1_i_23_n_0),
        .O(i__carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h6666966666699666)) 
    i__carry__1_i_12
       (.I0(B[10]),
        .I1(A[10]),
        .I2(A_12_sn_1),
        .I3(B[9]),
        .I4(A[9]),
        .I5(\A[12]_0 ),
        .O(\B[12] ));
  LUT6 #(
    .INIT(64'h00CCAAFF00CCAAF0)) 
    i__carry__1_i_13
       (.I0(\B[0] ),
        .I1(B_4_sn_1),
        .I2(i__carry__1_i_24_n_0),
        .I3(i__carry__1_i_4_0[1]),
        .I4(i__carry__1_i_4_0[0]),
        .I5(i__carry__1_i_25_n_0),
        .O(i__carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h09900000)) 
    i__carry__1_i_14
       (.I0(B[9]),
        .I1(A[9]),
        .I2(B[10]),
        .I3(A[10]),
        .I4(i__carry__1_i_5_1),
        .O(i__carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA8080A000)) 
    i__carry__1_i_15
       (.I0(A_11_sn_1),
        .I1(B[6]),
        .I2(i__carry__1_i_3_0),
        .I3(A[6]),
        .I4(rez_aux1),
        .I5(i__carry__1_i_17_n_0),
        .O(i__carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h2442422400000000)) 
    i__carry__1_i_16
       (.I0(B[9]),
        .I1(A[9]),
        .I2(B[10]),
        .I3(A[10]),
        .I4(rez_aux1),
        .I5(i__carry__1_i_5_0),
        .O(i__carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h803E03E880020028)) 
    i__carry__1_i_17
       (.I0(B_4_sn_1),
        .I1(\A[11]_0 ),
        .I2(\A[11]_1 ),
        .I3(\A[14] ),
        .I4(\A[11]_2 ),
        .I5(\B[0] ),
        .O(i__carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    i__carry__1_i_18
       (.I0(A_11_sn_1),
        .I1(A[4]),
        .I2(rez_aux1),
        .I3(B[4]),
        .O(i__carry__1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0002002000200200)) 
    i__carry__1_i_19
       (.I0(mantisa_aux[0]),
        .I1(\B[12] ),
        .I2(\A[11]_2 ),
        .I3(\A[14] ),
        .I4(\A[11]_1 ),
        .I5(\A[11]_0 ),
        .O(i__carry__1_i_19_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__1_i_2
       (.I0(A[6]),
        .I1(rez_aux1),
        .I2(B[6]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h4000000400000440)) 
    i__carry__1_i_20
       (.I0(\B[12] ),
        .I1(B_5_sn_1),
        .I2(\A[11]_0 ),
        .I3(\A[11]_1 ),
        .I4(\A[14] ),
        .I5(\A[11]_2 ),
        .O(i__carry__1_i_20_n_0));
  LUT6 #(
    .INIT(64'h0440000040000004)) 
    i__carry__1_i_21
       (.I0(\B[12] ),
        .I1(i__carry__1_i_26_n_0),
        .I2(\A[11]_0 ),
        .I3(\A[11]_1 ),
        .I4(\A[14] ),
        .I5(\A[11]_2 ),
        .O(i__carry__1_i_21_n_0));
  LUT6 #(
    .INIT(64'h30C0C00320808002)) 
    i__carry__1_i_22
       (.I0(i__carry__1_i_27_n_0),
        .I1(\A[11]_2 ),
        .I2(\A[14] ),
        .I3(\A[11]_1 ),
        .I4(\A[11]_0 ),
        .I5(i__carry__1_i_28_n_0),
        .O(i__carry__1_i_22_n_0));
  LUT6 #(
    .INIT(64'hC800003200323200)) 
    i__carry__1_i_23
       (.I0(i__carry__0_i_30_n_0),
        .I1(\A[14] ),
        .I2(i__carry__0_i_29_n_0),
        .I3(\A[11]_2 ),
        .I4(\A[11]_1 ),
        .I5(\A[11]_0 ),
        .O(i__carry__1_i_23_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_24
       (.I0(A[6]),
        .I1(rez_aux1),
        .O(i__carry__1_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_25
       (.I0(rez_aux1),
        .I1(B[6]),
        .O(i__carry__1_i_25_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry__1_i_26
       (.I0(B[7]),
        .I1(A_12_sn_1),
        .I2(B[9]),
        .I3(A[9]),
        .I4(\A[12]_0 ),
        .I5(A[7]),
        .O(i__carry__1_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF8A0000)) 
    i__carry__1_i_27
       (.I0(\A[12]_0 ),
        .I1(A[9]),
        .I2(B[9]),
        .I3(A_12_sn_1),
        .I4(B[5]),
        .O(i__carry__1_i_27_n_0));
  LUT5 #(
    .INIT(32'h00002A22)) 
    i__carry__1_i_28
       (.I0(A[5]),
        .I1(\A[12]_0 ),
        .I2(A[9]),
        .I3(B[9]),
        .I4(A_12_sn_1),
        .O(i__carry__1_i_28_n_0));
  LUT6 #(
    .INIT(64'h5555555655565556)) 
    i__carry__1_i_3
       (.I0(i__carry__1_i_6_n_0),
        .I1(i__carry__1_i_7_n_0),
        .I2(i__carry__1_i_8_n_0),
        .I3(i__carry__1_i_9_n_0),
        .I4(dif),
        .I5(i__carry__1_i_11_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h559565A55A9A6AAA)) 
    i__carry__1_i_4
       (.I0(DI[1]),
        .I1(\B[12] ),
        .I2(dif),
        .I3(i__carry__1_i_5_1),
        .I4(i__carry__1_i_13_n_0),
        .I5(i__carry__1_i_11_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h5555555655565556)) 
    i__carry__1_i_5
       (.I0(DI[0]),
        .I1(i__carry__1_i_14_n_0),
        .I2(i__carry__1_i_15_n_0),
        .I3(i__carry__1_i_16_n_0),
        .I4(A_7_sn_1),
        .I5(\_inferred__5/i__carry__1 ),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h47)) 
    i__carry__1_i_6
       (.I0(A[8]),
        .I1(rez_aux1),
        .I2(B[8]),
        .O(i__carry__1_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h8080C000)) 
    i__carry__1_i_7
       (.I0(B[8]),
        .I1(A_11_sn_1),
        .I2(i__carry__1_i_3_0),
        .I3(A[8]),
        .I4(rez_aux1),
        .O(i__carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA8080A000)) 
    i__carry__1_i_8
       (.I0(i__carry__1_i_3_1),
        .I1(B[6]),
        .I2(i__carry__1_i_3_0),
        .I3(A[6]),
        .I4(rez_aux1),
        .I5(i__carry__1_i_17_n_0),
        .O(i__carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h2C202020)) 
    i__carry__1_i_9
       (.I0(i__carry__1_i_18_n_0),
        .I1(i__carry__1_i_4_0[1]),
        .I2(i__carry__1_i_4_0[0]),
        .I3(mantisa_aux[1]),
        .I4(A_11_sn_1),
        .O(i__carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_20
       (.I0(A[10]),
        .I1(B[10]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(A[12]),
        .I5(B[12]),
        .O(\A[12]_0 ));
  LUT6 #(
    .INIT(64'hCFFBFF8A0075CFFB)) 
    i__carry_i_21
       (.I0(\A[12]_0 ),
        .I1(A[9]),
        .I2(B[9]),
        .I3(A_12_sn_1),
        .I4(B[10]),
        .I5(A[10]),
        .O(\A[11]_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    i__carry_i_22
       (.I0(A[10]),
        .I1(B[10]),
        .I2(B[11]),
        .I3(A[11]),
        .I4(B[12]),
        .I5(A[12]),
        .O(A_12_sn_1));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    i__carry_i_25
       (.I0(B[0]),
        .I1(A_12_sn_1),
        .I2(B[9]),
        .I3(A[9]),
        .I4(\A[12]_0 ),
        .I5(A[0]),
        .O(\B[0] ));
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
