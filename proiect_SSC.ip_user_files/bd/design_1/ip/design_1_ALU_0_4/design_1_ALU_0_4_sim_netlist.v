// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Dec 15 20:12:23 2024
// Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_4/design_1_ALU_0_4_sim_netlist.v
// Design      : design_1_ALU_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ALU_0_4,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ALU_0_4
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
  design_1_ALU_0_4_ALU U0
       (.A(A),
        .B(B),
        .operation(operation),
        .result(\^result ));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module design_1_ALU_0_4_ALU
   (result,
    B,
    A,
    operation);
  output [15:0]result;
  input [15:0]B;
  input [15:0]A;
  input [1:0]operation;

  wire [15:0]A;
  wire [15:0]B;
  wire [1:0]operation;
  wire [15:0]result;

  design_1_ALU_0_4_add ADD
       (.A(A),
        .B(B),
        .operation(operation),
        .result(result));
endmodule

(* ORIG_REF_NAME = "add" *) 
module design_1_ALU_0_4_add
   (result,
    B,
    A,
    operation);
  output [15:0]result;
  input [15:0]B;
  input [15:0]A;
  input [1:0]operation;

  wire [15:0]A;
  wire [15:0]B;
  wire \_inferred__2/i__carry__0_n_0 ;
  wire \_inferred__2/i__carry__0_n_1 ;
  wire \_inferred__2/i__carry__0_n_2 ;
  wire \_inferred__2/i__carry__0_n_3 ;
  wire \_inferred__2/i__carry__1_n_1 ;
  wire \_inferred__2/i__carry__1_n_2 ;
  wire \_inferred__2/i__carry__1_n_3 ;
  wire \_inferred__2/i__carry_n_0 ;
  wire \_inferred__2/i__carry_n_1 ;
  wire \_inferred__2/i__carry_n_2 ;
  wire \_inferred__2/i__carry_n_3 ;
  wire [4:2]exp_aux;
  wire \exp_result_reg[3]_i_3_n_0 ;
  wire \exp_result_reg[3]_i_4_n_0 ;
  wire \exp_result_reg[3]_i_5_n_0 ;
  wire \exp_result_reg[4]_i_3_n_0 ;
  wire \exp_result_reg_n_0_[0] ;
  wire \exp_result_reg_n_0_[1] ;
  wire \exp_result_reg_n_0_[2] ;
  wire \exp_result_reg_n_0_[3] ;
  wire \exp_result_reg_n_0_[4] ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9__0_n_0;
  wire [11:1]mantisa_aux;
  wire \mantisa_aux1_inferred__0/i__carry__0_n_3 ;
  wire \mantisa_aux1_inferred__0/i__carry_n_0 ;
  wire \mantisa_aux1_inferred__0/i__carry_n_1 ;
  wire \mantisa_aux1_inferred__0/i__carry_n_2 ;
  wire \mantisa_aux1_inferred__0/i__carry_n_3 ;
  wire [9:0]mantisa_result;
  wire [1:0]operation;
  wire [8:0]p_0_in;
  wire p_0_in1_in;
  wire [10:10]p_0_in__0;
  wire p_1_in;
  wire [10:0]p_2_in;
  wire [4:0]plusOp;
  wire [15:0]result;
  wire [0:0]\NLW__inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__2/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_mantisa_aux1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_mantisa_aux1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_mantisa_aux1_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\_inferred__2/i__carry_n_1 ,\_inferred__2/i__carry_n_2 ,\_inferred__2/i__carry_n_3 }),
        .CYINIT(i__carry_i_1_n_0),
        .DI(p_2_in[3:0]),
        .O({mantisa_aux[3:1],\NLW__inferred__2/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0,i__carry_i_9__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\_inferred__2/i__carry__0_n_0 ,\_inferred__2/i__carry__0_n_1 ,\_inferred__2/i__carry__0_n_2 ,\_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[7:4]),
        .O(mantisa_aux[7:4]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__2/i__carry__1 
       (.CI(\_inferred__2/i__carry__0_n_0 ),
        .CO({\NLW__inferred__2/i__carry__1_CO_UNCONNECTED [3],\_inferred__2/i__carry__1_n_1 ,\_inferred__2/i__carry__1_n_2 ,\_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_2_in[10:8]}),
        .O(mantisa_aux[11:8]),
        .S({i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_result_reg[0] 
       (.CLR(1'b0),
        .D(plusOp[0]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(\exp_result_reg_n_0_[0] ));
  LUT4 #(
    .INIT(16'h551D)) 
    \exp_result_reg[0]_i_1 
       (.I0(A[10]),
        .I1(\exp_result_reg[3]_i_3_n_0 ),
        .I2(B[10]),
        .I3(p_1_in),
        .O(plusOp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_result_reg[1] 
       (.CLR(1'b0),
        .D(plusOp[1]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(\exp_result_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h5A5A5A5A335ACC5A)) 
    \exp_result_reg[1]_i_1 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(A[11]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[11]),
        .I5(p_1_in),
        .O(plusOp[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_result_reg[2] 
       (.CLR(1'b0),
        .D(plusOp[2]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(\exp_result_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h666656A6)) 
    \exp_result_reg[2]_i_1 
       (.I0(\exp_result_reg[4]_i_3_n_0 ),
        .I1(A[12]),
        .I2(\exp_result_reg[3]_i_3_n_0 ),
        .I3(B[12]),
        .I4(p_1_in),
        .O(plusOp[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_result_reg[3] 
       (.CLR(1'b0),
        .D(plusOp[3]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(\exp_result_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h5755DFFFA8AA2000)) 
    \exp_result_reg[3]_i_1 
       (.I0(\exp_result_reg[4]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(B[12]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(A[12]),
        .I5(exp_aux[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \exp_result_reg[3]_i_2 
       (.I0(\exp_result_reg[3]_i_4_n_0 ),
        .I1(B[13]),
        .I2(A[13]),
        .I3(B[14]),
        .I4(A[14]),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \exp_result_reg[3]_i_3 
       (.I0(\exp_result_reg[3]_i_5_n_0 ),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[14]),
        .I4(B[14]),
        .O(\exp_result_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \exp_result_reg[3]_i_4 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(B[11]),
        .I3(A[11]),
        .I4(B[12]),
        .I5(A[12]),
        .O(\exp_result_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \exp_result_reg[3]_i_5 
       (.I0(B[10]),
        .I1(A[10]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(A[12]),
        .I5(B[12]),
        .O(\exp_result_reg[3]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \exp_result_reg[4] 
       (.CLR(1'b0),
        .D(plusOp[4]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(\exp_result_reg_n_0_[4] ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \exp_result_reg[4]_i_1 
       (.I0(exp_aux[2]),
        .I1(\exp_result_reg[4]_i_3_n_0 ),
        .I2(exp_aux[3]),
        .I3(exp_aux[4]),
        .O(plusOp[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \exp_result_reg[4]_i_2 
       (.I0(p_1_in),
        .I1(B[12]),
        .I2(\exp_result_reg[3]_i_3_n_0 ),
        .I3(A[12]),
        .O(exp_aux[2]));
  LUT6 #(
    .INIT(64'hA0A0A0A0CCA000A0)) 
    \exp_result_reg[4]_i_3 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(A[10]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[10]),
        .I5(p_1_in),
        .O(\exp_result_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exp_result_reg[4]_i_4 
       (.I0(p_1_in),
        .I1(B[13]),
        .I2(\exp_result_reg[3]_i_3_n_0 ),
        .I3(A[13]),
        .O(exp_aux[3]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \exp_result_reg[4]_i_5 
       (.I0(p_1_in),
        .I1(B[14]),
        .I2(\exp_result_reg[3]_i_3_n_0 ),
        .I3(A[14]),
        .O(exp_aux[4]));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry__0_i_1
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[7]),
        .O(p_2_in[7]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(p_1_in),
        .I1(\exp_result_reg[3]_i_3_n_0 ),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry__0_i_2
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'h00A002AF00000002)) 
    i__carry__0_i_2__0
       (.I0(A[8]),
        .I1(B[8]),
        .I2(p_1_in),
        .I3(B[9]),
        .I4(\exp_result_reg[3]_i_3_n_0 ),
        .I5(A[9]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry__0_i_3
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[5]),
        .O(p_2_in[5]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__0
       (.I0(\exp_result_reg[3]_i_3_n_0 ),
        .I1(p_1_in),
        .O(p_0_in__0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry__0_i_4
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hA0A050A0A0905009)) 
    i__carry__0_i_4__0
       (.I0(A[8]),
        .I1(B[8]),
        .I2(A[9]),
        .I3(p_1_in),
        .I4(B[9]),
        .I5(\exp_result_reg[3]_i_3_n_0 ),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry__0_i_5
       (.I0(p_0_in[7]),
        .I1(A[7]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry__0_i_6
       (.I0(p_0_in[6]),
        .I1(A[6]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry__0_i_7
       (.I0(p_0_in[5]),
        .I1(A[5]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry__0_i_8
       (.I0(p_0_in[4]),
        .I1(A[4]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h6060609F)) 
    i__carry__1_i_1
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_1_in),
        .I4(\exp_result_reg[3]_i_3_n_0 ),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'h9F9F9F9F9F9F9F60)) 
    i__carry__1_i_2
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[9]),
        .I5(p_1_in),
        .O(p_2_in[9]));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry__1_i_3
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[8]),
        .O(p_2_in[8]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(B[15]),
        .I1(A[15]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    i__carry__1_i_5
       (.I0(\exp_result_reg[3]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(B[15]),
        .I3(A[15]),
        .O(i__carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6666666999999996)) 
    i__carry__1_i_6
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_1_in),
        .I3(B[9]),
        .I4(\exp_result_reg[3]_i_3_n_0 ),
        .I5(A[9]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry__1_i_7
       (.I0(p_0_in[8]),
        .I1(A[8]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__1_i_8
       (.I0(B[9]),
        .I1(p_1_in),
        .I2(A[9]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[8]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(A[15]),
        .I1(B[15]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_10
       (.I0(B[8]),
        .I1(p_1_in),
        .I2(A[8]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_11
       (.I0(B[5]),
        .I1(p_1_in),
        .I2(A[5]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_12
       (.I0(B[6]),
        .I1(p_1_in),
        .I2(A[6]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_13
       (.I0(B[3]),
        .I1(p_1_in),
        .I2(A[3]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_14
       (.I0(B[4]),
        .I1(p_1_in),
        .I2(A[4]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_15
       (.I0(B[1]),
        .I1(p_1_in),
        .I2(A[1]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_16
       (.I0(B[2]),
        .I1(p_1_in),
        .I2(A[2]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(A[6]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .I3(A[7]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry_i_2
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[3]),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(A[4]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(A[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry_i_3
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[2]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(A[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(A[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry_i_4
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[1]),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(A[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(A[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9F60)) 
    i__carry_i_5
       (.I0(B[15]),
        .I1(A[15]),
        .I2(p_0_in1_in),
        .I3(p_0_in[0]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(A[6]),
        .I1(p_0_in[6]),
        .I2(A[7]),
        .I3(p_0_in[7]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(A[4]),
        .I1(p_0_in[4]),
        .I2(A[5]),
        .I3(p_0_in[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry_i_6__0
       (.I0(p_0_in[3]),
        .I1(A[3]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(A[2]),
        .I1(p_0_in[2]),
        .I2(A[3]),
        .I3(p_0_in[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry_i_7__0
       (.I0(p_0_in[2]),
        .I1(A[2]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(A[0]),
        .I1(p_0_in[0]),
        .I2(A[1]),
        .I3(p_0_in[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry_i_8__0
       (.I0(p_0_in[1]),
        .I1(A[1]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_9
       (.I0(B[7]),
        .I1(p_1_in),
        .I2(A[7]),
        .I3(\exp_result_reg[3]_i_3_n_0 ),
        .I4(B[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry_i_9__0
       (.I0(p_0_in[0]),
        .I1(A[0]),
        .I2(A[15]),
        .I3(B[15]),
        .O(i__carry_i_9__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mantisa_aux1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mantisa_aux1_inferred__0/i__carry_n_0 ,\mantisa_aux1_inferred__0/i__carry_n_1 ,\mantisa_aux1_inferred__0/i__carry_n_2 ,\mantisa_aux1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_mantisa_aux1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \mantisa_aux1_inferred__0/i__carry__0 
       (.CI(\mantisa_aux1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_mantisa_aux1_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],p_0_in1_in,\mantisa_aux1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0}),
        .O(\NLW_mantisa_aux1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,p_0_in__0,i__carry__0_i_4__0_n_0}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[0] 
       (.CLR(1'b0),
        .D(mantisa_aux[1]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[1] 
       (.CLR(1'b0),
        .D(mantisa_aux[2]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[2] 
       (.CLR(1'b0),
        .D(mantisa_aux[3]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[3] 
       (.CLR(1'b0),
        .D(mantisa_aux[4]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[4] 
       (.CLR(1'b0),
        .D(mantisa_aux[5]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[5] 
       (.CLR(1'b0),
        .D(mantisa_aux[6]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[6] 
       (.CLR(1'b0),
        .D(mantisa_aux[7]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[7] 
       (.CLR(1'b0),
        .D(mantisa_aux[8]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[8] 
       (.CLR(1'b0),
        .D(mantisa_aux[9]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mantisa_result_reg[9] 
       (.CLR(1'b0),
        .D(mantisa_aux[10]),
        .G(mantisa_aux[11]),
        .GE(1'b1),
        .Q(mantisa_result[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[0]_INST_0 
       (.I0(mantisa_result[0]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[10]_INST_0 
       (.I0(\exp_result_reg_n_0_[0] ),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[11]_INST_0 
       (.I0(\exp_result_reg_n_0_[1] ),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[12]_INST_0 
       (.I0(\exp_result_reg_n_0_[2] ),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[13]_INST_0 
       (.I0(\exp_result_reg_n_0_[3] ),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[13]));
  LUT3 #(
    .INIT(8'h02)) 
    \result[14]_INST_0 
       (.I0(\exp_result_reg_n_0_[4] ),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[14]));
  LUT5 #(
    .INIT(32'h000000D8)) 
    \result[15]_INST_0 
       (.I0(p_0_in1_in),
        .I1(A[15]),
        .I2(B[15]),
        .I3(operation[0]),
        .I4(operation[1]),
        .O(result[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[1]_INST_0 
       (.I0(mantisa_result[1]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[2]_INST_0 
       (.I0(mantisa_result[2]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[3]_INST_0 
       (.I0(mantisa_result[3]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[4]_INST_0 
       (.I0(mantisa_result[4]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[5]_INST_0 
       (.I0(mantisa_result[5]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[6]_INST_0 
       (.I0(mantisa_result[6]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[7]_INST_0 
       (.I0(mantisa_result[7]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[8]_INST_0 
       (.I0(mantisa_result[8]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[9]_INST_0 
       (.I0(mantisa_result[9]),
        .I1(operation[0]),
        .I2(operation[1]),
        .O(result[9]));
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
