// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 23 13:21:09 2024
// Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_stub.v
// Design      : design_1_ALU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ALU,Vivado 2024.1" *)
module design_1_ALU_0_0(A, B, result, operation, overflow, zero, clk)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],result[31:0],operation[1:0],overflow,zero" */
/* synthesis syn_force_seq_prim="clk" */;
  input [31:0]A;
  input [31:0]B;
  output [31:0]result;
  input [1:0]operation;
  output overflow;
  output zero;
  input clk /* synthesis syn_isclock = 1 */;
endmodule
