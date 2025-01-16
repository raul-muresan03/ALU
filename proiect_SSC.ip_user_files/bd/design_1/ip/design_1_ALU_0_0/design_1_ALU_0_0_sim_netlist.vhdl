-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Dec 23 13:21:09 2024
-- Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_sim_netlist.vhdl
-- Design      : design_1_ALU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_add is
  port (
    overflow1 : out STD_LOGIC;
    zero1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 23 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \exp_A_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_add : entity is "add";
end design_1_ALU_0_0_add;

architecture STRUCTURE of design_1_ALU_0_0_add is
  signal \FSM_sequential_stare[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_1_n_0\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[0]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[3]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[8]\ : STD_LOGIC;
  signal exp_B : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \exp_result[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp_result[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[4]_i_1_n_0\ : STD_LOGIC;
  signal \exp_result[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_3_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_4_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_5_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_6_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_7_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_8_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_9_n_0\ : STD_LOGIC;
  signal exp_result_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \exp_result_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal mantisa_a : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal mantisa_b : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal mantisa_result : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal mantisa_result0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \mantisa_result0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_n_1\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_n_2\ : STD_LOGIC;
  signal \mantisa_result0_carry__0_n_3\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_n_1\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_n_2\ : STD_LOGIC;
  signal \mantisa_result0_carry__1_n_3\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_n_1\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_n_2\ : STD_LOGIC;
  signal \mantisa_result0_carry__2_n_3\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_n_1\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_n_2\ : STD_LOGIC;
  signal \mantisa_result0_carry__3_n_3\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_n_0\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_n_1\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_n_2\ : STD_LOGIC;
  signal \mantisa_result0_carry__4_n_3\ : STD_LOGIC;
  signal mantisa_result0_carry_i_1_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_2_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_3_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_4_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_5_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_6_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_7_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_i_8_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_n_0 : STD_LOGIC;
  signal mantisa_result0_carry_n_1 : STD_LOGIC;
  signal mantisa_result0_carry_n_2 : STD_LOGIC;
  signal mantisa_result0_carry_n_3 : STD_LOGIC;
  signal \mantisa_result[0]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[10]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[11]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[11]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result[11]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result[11]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result[11]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result[12]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[13]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[14]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[15]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[15]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result[15]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result[15]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result[15]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result[16]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[17]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[18]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[19]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[19]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result[19]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result[19]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result[19]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result[1]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[20]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[21]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[22]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[23]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[23]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result[23]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result[23]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result[23]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result[23]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_result[24]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[24]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result[2]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[3]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[3]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result[3]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result[3]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result[3]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result[4]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[5]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[6]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[7]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[7]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result[7]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_result[7]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_result[7]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_result[8]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result[9]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_result__0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \mantisa_result_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \mantisa_result_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \mantisa_result_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \mantisa_result_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \mantisa_result_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \mantisa_result_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \mantisa_result_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \mantisa_result_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \mantisa_result_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \mantisa_result_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_result_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \mantisa_result_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \mantisa_result_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \mantisa_result_reg[24]_i_4_n_3\ : STD_LOGIC;
  signal \mantisa_result_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \mantisa_result_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \mantisa_result_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \mantisa_result_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_result_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \mantisa_result_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \mantisa_result_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal mantisa_shifted : STD_LOGIC;
  signal \mantisa_shifted1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted1_carry__0_n_3\ : STD_LOGIC;
  signal mantisa_shifted1_carry_i_1_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_2_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_3_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_4_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_5_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_6_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_7_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_i_8_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_n_0 : STD_LOGIC;
  signal mantisa_shifted1_carry_n_1 : STD_LOGIC;
  signal mantisa_shifted1_carry_n_2 : STD_LOGIC;
  signal mantisa_shifted1_carry_n_3 : STD_LOGIC;
  signal \mantisa_shifted1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \mantisa_shifted1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \mantisa_shifted1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \mantisa_shifted1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \mantisa_shifted1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[0]_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[10]_i_9_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[11]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[11]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[11]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[11]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[11]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[12]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[12]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[12]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[12]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[12]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[12]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[13]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[13]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[13]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[13]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[13]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[13]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[14]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[14]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[14]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[14]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[14]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[14]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[15]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[15]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[15]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[15]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[15]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[15]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[16]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[16]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[16]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[16]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[16]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[17]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[17]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[17]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[17]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[17]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[17]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[18]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[18]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[18]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[18]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[18]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[19]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[19]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[19]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[19]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[19]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[19]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[1]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[1]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[1]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[1]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[1]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[1]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[20]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[20]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[20]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[20]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[21]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[21]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[21]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[21]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[21]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[21]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[22]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[22]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[22]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[23]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[23]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[23]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[23]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[2]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[2]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[2]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[2]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[2]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[2]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[3]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[3]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[3]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[3]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[3]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[3]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[4]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[4]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[4]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[4]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[4]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[4]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[5]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[5]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[5]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[5]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[5]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[5]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[6]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[6]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[6]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[6]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[6]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[6]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[7]_i_9_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[8]_i_9_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_3_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_4_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_5_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_6_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_7_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_8_n_0\ : STD_LOGIC;
  signal \mantisa_shifted[9]_i_9_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[23]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_shifted_reg_n_0_[9]\ : STD_LOGIC;
  signal minusOp0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal minusOp2_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \minusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \^overflow1\ : STD_LOGIC;
  signal overflow_i_1_n_0 : STD_LOGIC;
  signal \result[31]_i_1__0_n_0\ : STD_LOGIC;
  signal semn_A : STD_LOGIC;
  signal semn_A_reg_n_0 : STD_LOGIC;
  signal semn_B : STD_LOGIC;
  signal semn_result : STD_LOGIC;
  signal \semn_result1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_n_1\ : STD_LOGIC;
  signal \semn_result1_carry__0_n_2\ : STD_LOGIC;
  signal \semn_result1_carry__0_n_3\ : STD_LOGIC;
  signal semn_result1_carry_i_1_n_0 : STD_LOGIC;
  signal semn_result1_carry_i_2_n_0 : STD_LOGIC;
  signal semn_result1_carry_i_3_n_0 : STD_LOGIC;
  signal semn_result1_carry_i_4_n_0 : STD_LOGIC;
  signal semn_result1_carry_n_0 : STD_LOGIC;
  signal semn_result1_carry_n_1 : STD_LOGIC;
  signal semn_result1_carry_n_2 : STD_LOGIC;
  signal semn_result1_carry_n_3 : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal semn_result_i_1_n_0 : STD_LOGIC;
  signal semn_result_i_3_n_0 : STD_LOGIC;
  signal semn_result_reg_n_0 : STD_LOGIC;
  signal stare : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^zero1\ : STD_LOGIC;
  signal zero_i_1_n_0 : STD_LOGIC;
  signal zero_i_2_n_0 : STD_LOGIC;
  signal zero_i_3_n_0 : STD_LOGIC;
  signal zero_i_4_n_0 : STD_LOGIC;
  signal \NLW_mantisa_result_reg[24]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mantisa_result_reg[24]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mantisa_result_reg[24]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mantisa_result_reg[24]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mantisa_shifted1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mantisa_shifted1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mantisa_shifted1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mantisa_shifted1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mantisa_shifted1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mantisa_shifted1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_inferred__2/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_semn_result1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_1\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "aliniereexponenti:001,adunaremantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "aliniereexponenti:001,adunaremantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[2]\ : label is "aliniereexponenti:001,adunaremantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101";
  attribute SOFT_HLUTNM of \exp_result[0]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \exp_result[1]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \exp_result[2]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \exp_result[3]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \exp_result[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \exp_result[7]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \exp_result[8]_i_2__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \exp_result[8]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \exp_result[8]_i_6\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mantisa_result0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \mantisa_result[23]_i_2\ : label is "soft_lutpair25";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result_reg[11]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result_reg[15]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result_reg[19]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result_reg[23]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \mantisa_result_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of mantisa_shifted1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \mantisa_shifted1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \mantisa_shifted1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \mantisa_shifted1_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \mantisa_shifted[0]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mantisa_shifted[0]_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mantisa_shifted[0]_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mantisa_shifted[0]_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mantisa_shifted[10]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mantisa_shifted[10]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mantisa_shifted[10]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mantisa_shifted[10]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mantisa_shifted[11]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mantisa_shifted[12]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mantisa_shifted[12]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mantisa_shifted[14]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mantisa_shifted[15]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mantisa_shifted[15]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mantisa_shifted[16]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mantisa_shifted[16]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mantisa_shifted[17]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mantisa_shifted[17]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mantisa_shifted[18]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mantisa_shifted[1]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mantisa_shifted[1]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mantisa_shifted[20]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mantisa_shifted[21]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mantisa_shifted[22]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mantisa_shifted[23]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mantisa_shifted[2]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mantisa_shifted[2]_i_7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mantisa_shifted[3]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mantisa_shifted[3]_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mantisa_shifted[4]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mantisa_shifted[4]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mantisa_shifted[5]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mantisa_shifted[5]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mantisa_shifted[6]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mantisa_shifted[6]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mantisa_shifted[7]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mantisa_shifted[7]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mantisa_shifted[7]_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mantisa_shifted[8]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mantisa_shifted[8]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mantisa_shifted[8]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mantisa_shifted[8]_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mantisa_shifted[9]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mantisa_shifted[9]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mantisa_shifted[9]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mantisa_shifted[9]_i_9\ : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__2/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__2/i__carry__1\ : label is 35;
  attribute SOFT_HLUTNM of overflow_i_1 : label is "soft_lutpair22";
  attribute COMPARATOR_THRESHOLD of \semn_result1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \semn_result1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \semn_result1_inferred__0/i__carry__1\ : label is 11;
  attribute SOFT_HLUTNM of semn_result_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of zero_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of zero_i_4 : label is "soft_lutpair3";
begin
  overflow1 <= \^overflow1\;
  zero1 <= \^zero1\;
\FSM_sequential_stare[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      O => \FSM_sequential_stare[0]_i_1_n_0\
    );
\FSM_sequential_stare[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => stare(0),
      I1 => stare(2),
      I2 => stare(1),
      O => \FSM_sequential_stare[1]_i_1_n_0\
    );
\FSM_sequential_stare[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      O => \FSM_sequential_stare[2]_i_1_n_0\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[0]_i_1_n_0\,
      Q => stare(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[1]_i_1_n_0\,
      Q => stare(1),
      R => '0'
    );
\FSM_sequential_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[2]_i_1_n_0\,
      Q => stare(2),
      R => '0'
    );
\exp_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(0),
      Q => \exp_A_reg_n_0_[0]\,
      R => '0'
    );
\exp_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(1),
      Q => \exp_A_reg_n_0_[1]\,
      R => '0'
    );
\exp_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(2),
      Q => \exp_A_reg_n_0_[2]\,
      R => '0'
    );
\exp_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(3),
      Q => \exp_A_reg_n_0_[3]\,
      R => '0'
    );
\exp_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(4),
      Q => \exp_A_reg_n_0_[4]\,
      R => '0'
    );
\exp_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(5),
      Q => \exp_A_reg_n_0_[5]\,
      R => '0'
    );
\exp_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(6),
      Q => \exp_A_reg_n_0_[6]\,
      R => '0'
    );
\exp_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(7),
      Q => \exp_A_reg_n_0_[7]\,
      R => '0'
    );
\exp_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(8),
      Q => \exp_A_reg_n_0_[8]\,
      R => '0'
    );
\exp_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(0),
      Q => exp_B(0),
      R => '0'
    );
\exp_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(1),
      Q => exp_B(1),
      R => '0'
    );
\exp_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(2),
      Q => exp_B(2),
      R => '0'
    );
\exp_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(3),
      Q => exp_B(3),
      R => '0'
    );
\exp_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(4),
      Q => exp_B(4),
      R => '0'
    );
\exp_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(5),
      Q => exp_B(5),
      R => '0'
    );
\exp_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(6),
      Q => exp_B(6),
      R => '0'
    );
\exp_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(7),
      Q => exp_B(7),
      R => '0'
    );
\exp_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => D(8),
      Q => exp_B(8),
      R => '0'
    );
\exp_result[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \exp_result_reg__0\(0),
      O => \exp_result[0]_i_1__0_n_0\
    );
\exp_result[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_result_reg__0\(0),
      I1 => \exp_result_reg__0\(1),
      O => \exp_result[1]_i_1__1_n_0\
    );
\exp_result[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \exp_result_reg__0\(2),
      I1 => \exp_result_reg__0\(1),
      I2 => \exp_result_reg__0\(0),
      O => \exp_result[2]_i_1__1_n_0\
    );
\exp_result[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \exp_result_reg__0\(3),
      I1 => \exp_result_reg__0\(0),
      I2 => \exp_result_reg__0\(1),
      I3 => \exp_result_reg__0\(2),
      O => \exp_result[3]_i_1__1_n_0\
    );
\exp_result[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \exp_result_reg__0\(4),
      I1 => \exp_result_reg__0\(2),
      I2 => \exp_result_reg__0\(1),
      I3 => \exp_result_reg__0\(0),
      I4 => \exp_result_reg__0\(3),
      O => \exp_result[4]_i_1_n_0\
    );
\exp_result[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \exp_result_reg__0\(5),
      I1 => \exp_result_reg__0\(4),
      I2 => \exp_result_reg__0\(3),
      I3 => \exp_result_reg__0\(0),
      I4 => \exp_result_reg__0\(1),
      I5 => \exp_result_reg__0\(2),
      O => \exp_result[5]_i_1__1_n_0\
    );
\exp_result[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \exp_result_reg__0\(6),
      I1 => \exp_result[8]_i_6_n_0\,
      I2 => \exp_result_reg__0\(5),
      O => \exp_result[6]_i_1__1_n_0\
    );
\exp_result[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => \exp_result_reg__0\(7),
      I1 => \exp_result_reg__0\(5),
      I2 => \exp_result[8]_i_6_n_0\,
      I3 => \exp_result_reg__0\(6),
      O => \exp_result[7]_i_1__1_n_0\
    );
\exp_result[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => stare(2),
      I3 => \exp_result[8]_i_3_n_0\,
      I4 => \exp_result[8]_i_4_n_0\,
      I5 => \exp_result[8]_i_5_n_0\,
      O => \exp_result[8]_i_1__1_n_0\
    );
\exp_result[8]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666A66"
    )
        port map (
      I0 => exp_result_reg(8),
      I1 => \exp_result_reg__0\(7),
      I2 => \exp_result_reg__0\(6),
      I3 => \exp_result[8]_i_6_n_0\,
      I4 => \exp_result_reg__0\(5),
      O => \exp_result[8]_i_2__1_n_0\
    );
\exp_result[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \exp_result[8]_i_7_n_0\,
      I1 => mantisa_result(5),
      I2 => mantisa_result(4),
      I3 => mantisa_result(6),
      O => \exp_result[8]_i_3_n_0\
    );
\exp_result[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mantisa_result(24),
      I1 => mantisa_result(22),
      I2 => mantisa_result(23),
      I3 => mantisa_result(12),
      I4 => mantisa_result(7),
      O => \exp_result[8]_i_4_n_0\
    );
\exp_result[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \exp_result[8]_i_8_n_0\,
      I1 => \exp_result[8]_i_9_n_0\,
      I2 => mantisa_result(21),
      I3 => mantisa_result(19),
      I4 => mantisa_result(18),
      O => \exp_result[8]_i_5_n_0\
    );
\exp_result[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \exp_result_reg__0\(2),
      I1 => \exp_result_reg__0\(1),
      I2 => \exp_result_reg__0\(0),
      I3 => \exp_result_reg__0\(3),
      I4 => \exp_result_reg__0\(4),
      O => \exp_result[8]_i_6_n_0\
    );
\exp_result[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mantisa_result(2),
      I1 => mantisa_result(3),
      I2 => mantisa_result(0),
      I3 => mantisa_result(1),
      O => \exp_result[8]_i_7_n_0\
    );
\exp_result[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => mantisa_result(16),
      I1 => mantisa_result(20),
      I2 => mantisa_result(10),
      I3 => mantisa_result(17),
      I4 => mantisa_result(14),
      I5 => mantisa_result(15),
      O => \exp_result[8]_i_8_n_0\
    );
\exp_result[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mantisa_result(9),
      I1 => mantisa_result(8),
      I2 => mantisa_result(13),
      I3 => mantisa_result(11),
      O => \exp_result[8]_i_9_n_0\
    );
\exp_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[0]_i_1__0_n_0\,
      Q => \exp_result_reg__0\(0),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[1]_i_1__1_n_0\,
      Q => \exp_result_reg__0\(1),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[2]_i_1__1_n_0\,
      Q => \exp_result_reg__0\(2),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[3]_i_1__1_n_0\,
      Q => \exp_result_reg__0\(3),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[4]_i_1_n_0\,
      Q => \exp_result_reg__0\(4),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[5]_i_1__1_n_0\,
      Q => \exp_result_reg__0\(5),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[6]_i_1__1_n_0\,
      Q => \exp_result_reg__0\(6),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[7]_i_1__1_n_0\,
      Q => \exp_result_reg__0\(7),
      R => \exp_result[8]_i_1__1_n_0\
    );
\exp_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result[8]_i_2__1_n_0\,
      Q => exp_result_reg(8),
      R => \exp_result[8]_i_1__1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \exp_A_reg_n_0_[8]\,
      I1 => exp_B(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(15),
      I1 => \mantisa_shifted_reg_n_0_[15]\,
      I2 => mantisa_a(14),
      I3 => \mantisa_shifted_reg_n_0_[14]\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(7),
      I1 => \exp_A_reg_n_0_[7]\,
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[7]\,
      I1 => exp_B(7),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(13),
      I1 => \mantisa_shifted_reg_n_0_[13]\,
      I2 => mantisa_a(12),
      I3 => \mantisa_shifted_reg_n_0_[12]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(8),
      I1 => \exp_A_reg_n_0_[8]\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(6),
      I1 => \exp_A_reg_n_0_[6]\,
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[6]\,
      I1 => exp_B(6),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(11),
      I1 => \mantisa_shifted_reg_n_0_[11]\,
      I2 => mantisa_a(10),
      I3 => \mantisa_shifted_reg_n_0_[10]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(5),
      I1 => \exp_A_reg_n_0_[5]\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[5]\,
      I1 => exp_B(5),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(9),
      I1 => \mantisa_shifted_reg_n_0_[9]\,
      I2 => mantisa_a(8),
      I3 => \mantisa_shifted_reg_n_0_[8]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(4),
      I1 => \exp_A_reg_n_0_[4]\,
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[4]\,
      I1 => exp_B(4),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[14]\,
      I1 => mantisa_a(14),
      I2 => \mantisa_shifted_reg_n_0_[15]\,
      I3 => mantisa_a(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[12]\,
      I1 => mantisa_a(12),
      I2 => \mantisa_shifted_reg_n_0_[13]\,
      I3 => mantisa_a(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[11]\,
      I1 => mantisa_a(11),
      I2 => \mantisa_shifted_reg_n_0_[10]\,
      I3 => mantisa_a(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[8]\,
      I1 => mantisa_a(8),
      I2 => \mantisa_shifted_reg_n_0_[9]\,
      I3 => mantisa_a(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(8),
      I1 => \exp_A_reg_n_0_[8]\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(8),
      I1 => \exp_A_reg_n_0_[8]\,
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[22]\,
      I1 => mantisa_a(22),
      I2 => \mantisa_shifted_reg_n_0_[23]\,
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(21),
      I1 => \mantisa_shifted_reg_n_0_[21]\,
      I2 => mantisa_a(20),
      I3 => \mantisa_shifted_reg_n_0_[20]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => \mantisa_shifted_reg_n_0_[19]\,
      I2 => mantisa_a(18),
      I3 => \mantisa_shifted_reg_n_0_[18]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(17),
      I1 => \mantisa_shifted_reg_n_0_[17]\,
      I2 => mantisa_a(16),
      I3 => \mantisa_shifted_reg_n_0_[16]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[23]\,
      I1 => \mantisa_shifted_reg_n_0_[22]\,
      I2 => mantisa_a(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[20]\,
      I1 => mantisa_a(20),
      I2 => \mantisa_shifted_reg_n_0_[21]\,
      I3 => mantisa_a(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[18]\,
      I1 => mantisa_a(18),
      I2 => \mantisa_shifted_reg_n_0_[19]\,
      I3 => mantisa_a(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[17]\,
      I1 => mantisa_a(17),
      I2 => \mantisa_shifted_reg_n_0_[16]\,
      I3 => mantisa_a(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \exp_A_reg_n_0_[6]\,
      I1 => exp_B(6),
      I2 => exp_B(7),
      I3 => \exp_A_reg_n_0_[7]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(7),
      I1 => \mantisa_shifted_reg_n_0_[7]\,
      I2 => mantisa_a(6),
      I3 => \mantisa_shifted_reg_n_0_[6]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(3),
      I1 => \exp_A_reg_n_0_[3]\,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[3]\,
      I1 => exp_B(3),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \exp_A_reg_n_0_[4]\,
      I1 => exp_B(4),
      I2 => exp_B(5),
      I3 => \exp_A_reg_n_0_[5]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(5),
      I1 => \mantisa_shifted_reg_n_0_[5]\,
      I2 => mantisa_a(4),
      I3 => \mantisa_shifted_reg_n_0_[4]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(2),
      I1 => \exp_A_reg_n_0_[2]\,
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[2]\,
      I1 => exp_B(2),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \exp_A_reg_n_0_[2]\,
      I1 => exp_B(2),
      I2 => exp_B(3),
      I3 => \exp_A_reg_n_0_[3]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(3),
      I1 => \mantisa_shifted_reg_n_0_[3]\,
      I2 => mantisa_a(2),
      I3 => \mantisa_shifted_reg_n_0_[2]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(1),
      I1 => \exp_A_reg_n_0_[1]\,
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[1]\,
      I1 => exp_B(1),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \exp_A_reg_n_0_[0]\,
      I1 => exp_B(0),
      I2 => exp_B(1),
      I3 => \exp_A_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mantisa_a(1),
      I1 => \mantisa_shifted_reg_n_0_[1]\,
      I2 => mantisa_a(0),
      I3 => \mantisa_shifted_reg_n_0_[0]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(0),
      I1 => \exp_A_reg_n_0_[0]\,
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[0]\,
      I1 => exp_B(0),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[6]\,
      I1 => exp_B(6),
      I2 => exp_B(7),
      I3 => \exp_A_reg_n_0_[7]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[6]\,
      I1 => mantisa_a(6),
      I2 => \mantisa_shifted_reg_n_0_[7]\,
      I3 => mantisa_a(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[4]\,
      I1 => exp_B(4),
      I2 => exp_B(5),
      I3 => \exp_A_reg_n_0_[5]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[5]\,
      I1 => mantisa_a(5),
      I2 => \mantisa_shifted_reg_n_0_[4]\,
      I3 => mantisa_a(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[2]\,
      I1 => exp_B(2),
      I2 => exp_B(3),
      I3 => \exp_A_reg_n_0_[3]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[2]\,
      I1 => mantisa_a(2),
      I2 => \mantisa_shifted_reg_n_0_[3]\,
      I3 => mantisa_a(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[0]\,
      I1 => exp_B(0),
      I2 => exp_B(1),
      I3 => \exp_A_reg_n_0_[1]\,
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[0]\,
      I1 => mantisa_a(0),
      I2 => \mantisa_shifted_reg_n_0_[1]\,
      I3 => mantisa_a(1),
      O => \i__carry_i_8__0_n_0\
    );
\mantisa_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(0),
      Q => mantisa_a(0),
      R => '0'
    );
\mantisa_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(10),
      Q => mantisa_a(10),
      R => '0'
    );
\mantisa_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(11),
      Q => mantisa_a(11),
      R => '0'
    );
\mantisa_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(12),
      Q => mantisa_a(12),
      R => '0'
    );
\mantisa_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(13),
      Q => mantisa_a(13),
      R => '0'
    );
\mantisa_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(14),
      Q => mantisa_a(14),
      R => '0'
    );
\mantisa_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(15),
      Q => mantisa_a(15),
      R => '0'
    );
\mantisa_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(16),
      Q => mantisa_a(16),
      R => '0'
    );
\mantisa_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(17),
      Q => mantisa_a(17),
      R => '0'
    );
\mantisa_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(18),
      Q => mantisa_a(18),
      R => '0'
    );
\mantisa_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(19),
      Q => mantisa_a(19),
      R => '0'
    );
\mantisa_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(1),
      Q => mantisa_a(1),
      R => '0'
    );
\mantisa_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(20),
      Q => mantisa_a(20),
      R => '0'
    );
\mantisa_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(21),
      Q => mantisa_a(21),
      R => '0'
    );
\mantisa_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(22),
      Q => mantisa_a(22),
      R => '0'
    );
\mantisa_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(2),
      Q => mantisa_a(2),
      R => '0'
    );
\mantisa_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(3),
      Q => mantisa_a(3),
      R => '0'
    );
\mantisa_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(4),
      Q => mantisa_a(4),
      R => '0'
    );
\mantisa_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(5),
      Q => mantisa_a(5),
      R => '0'
    );
\mantisa_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(6),
      Q => mantisa_a(6),
      R => '0'
    );
\mantisa_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(7),
      Q => mantisa_a(7),
      R => '0'
    );
\mantisa_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(8),
      Q => mantisa_a(8),
      R => '0'
    );
\mantisa_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(9),
      Q => mantisa_a(9),
      R => '0'
    );
\mantisa_b[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      O => semn_A
    );
\mantisa_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(0),
      Q => mantisa_b(0),
      R => '0'
    );
\mantisa_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(10),
      Q => mantisa_b(10),
      R => '0'
    );
\mantisa_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(11),
      Q => mantisa_b(11),
      R => '0'
    );
\mantisa_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(12),
      Q => mantisa_b(12),
      R => '0'
    );
\mantisa_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(13),
      Q => mantisa_b(13),
      R => '0'
    );
\mantisa_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(14),
      Q => mantisa_b(14),
      R => '0'
    );
\mantisa_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(15),
      Q => mantisa_b(15),
      R => '0'
    );
\mantisa_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(16),
      Q => mantisa_b(16),
      R => '0'
    );
\mantisa_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(17),
      Q => mantisa_b(17),
      R => '0'
    );
\mantisa_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(18),
      Q => mantisa_b(18),
      R => '0'
    );
\mantisa_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(19),
      Q => mantisa_b(19),
      R => '0'
    );
\mantisa_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(1),
      Q => mantisa_b(1),
      R => '0'
    );
\mantisa_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(20),
      Q => mantisa_b(20),
      R => '0'
    );
\mantisa_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(21),
      Q => mantisa_b(21),
      R => '0'
    );
\mantisa_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(22),
      Q => mantisa_b(22),
      R => '0'
    );
\mantisa_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(2),
      Q => mantisa_b(2),
      R => '0'
    );
\mantisa_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(3),
      Q => mantisa_b(3),
      R => '0'
    );
\mantisa_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(4),
      Q => mantisa_b(4),
      R => '0'
    );
\mantisa_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(5),
      Q => mantisa_b(5),
      R => '0'
    );
\mantisa_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(6),
      Q => mantisa_b(6),
      R => '0'
    );
\mantisa_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(7),
      Q => mantisa_b(7),
      R => '0'
    );
\mantisa_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(8),
      Q => mantisa_b(8),
      R => '0'
    );
\mantisa_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(9),
      Q => mantisa_b(9),
      R => '0'
    );
mantisa_result0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mantisa_result0_carry_n_0,
      CO(2) => mantisa_result0_carry_n_1,
      CO(1) => mantisa_result0_carry_n_2,
      CO(0) => mantisa_result0_carry_n_3,
      CYINIT => '1',
      DI(3) => mantisa_result0_carry_i_1_n_0,
      DI(2) => mantisa_result0_carry_i_2_n_0,
      DI(1) => mantisa_result0_carry_i_3_n_0,
      DI(0) => mantisa_result0_carry_i_4_n_0,
      O(3 downto 0) => \mantisa_result__0\(3 downto 0),
      S(3) => mantisa_result0_carry_i_5_n_0,
      S(2) => mantisa_result0_carry_i_6_n_0,
      S(1) => mantisa_result0_carry_i_7_n_0,
      S(0) => mantisa_result0_carry_i_8_n_0
    );
\mantisa_result0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => mantisa_result0_carry_n_0,
      CO(3) => \mantisa_result0_carry__0_n_0\,
      CO(2) => \mantisa_result0_carry__0_n_1\,
      CO(1) => \mantisa_result0_carry__0_n_2\,
      CO(0) => \mantisa_result0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mantisa_result0_carry__0_i_1_n_0\,
      DI(2) => \mantisa_result0_carry__0_i_2_n_0\,
      DI(1) => \mantisa_result0_carry__0_i_3_n_0\,
      DI(0) => \mantisa_result0_carry__0_i_4_n_0\,
      O(3 downto 0) => \mantisa_result__0\(7 downto 4),
      S(3) => \mantisa_result0_carry__0_i_5_n_0\,
      S(2) => \mantisa_result0_carry__0_i_6_n_0\,
      S(1) => \mantisa_result0_carry__0_i_7_n_0\,
      S(0) => \mantisa_result0_carry__0_i_8_n_0\
    );
\mantisa_result0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(7),
      O => \mantisa_result0_carry__0_i_1_n_0\
    );
\mantisa_result0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(6),
      O => \mantisa_result0_carry__0_i_2_n_0\
    );
\mantisa_result0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(5),
      O => \mantisa_result0_carry__0_i_3_n_0\
    );
\mantisa_result0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(4),
      O => \mantisa_result0_carry__0_i_4_n_0\
    );
\mantisa_result0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(7),
      I1 => \mantisa_shifted_reg_n_0_[7]\,
      O => \mantisa_result0_carry__0_i_5_n_0\
    );
\mantisa_result0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(6),
      I1 => \mantisa_shifted_reg_n_0_[6]\,
      O => \mantisa_result0_carry__0_i_6_n_0\
    );
\mantisa_result0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(5),
      I1 => \mantisa_shifted_reg_n_0_[5]\,
      O => \mantisa_result0_carry__0_i_7_n_0\
    );
\mantisa_result0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(4),
      I1 => \mantisa_shifted_reg_n_0_[4]\,
      O => \mantisa_result0_carry__0_i_8_n_0\
    );
\mantisa_result0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result0_carry__0_n_0\,
      CO(3) => \mantisa_result0_carry__1_n_0\,
      CO(2) => \mantisa_result0_carry__1_n_1\,
      CO(1) => \mantisa_result0_carry__1_n_2\,
      CO(0) => \mantisa_result0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \mantisa_result0_carry__1_i_1_n_0\,
      DI(2) => \mantisa_result0_carry__1_i_2_n_0\,
      DI(1) => \mantisa_result0_carry__1_i_3_n_0\,
      DI(0) => \mantisa_result0_carry__1_i_4_n_0\,
      O(3 downto 0) => \mantisa_result__0\(11 downto 8),
      S(3) => \mantisa_result0_carry__1_i_5_n_0\,
      S(2) => \mantisa_result0_carry__1_i_6_n_0\,
      S(1) => \mantisa_result0_carry__1_i_7_n_0\,
      S(0) => \mantisa_result0_carry__1_i_8_n_0\
    );
\mantisa_result0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(11),
      O => \mantisa_result0_carry__1_i_1_n_0\
    );
\mantisa_result0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(10),
      O => \mantisa_result0_carry__1_i_2_n_0\
    );
\mantisa_result0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(9),
      O => \mantisa_result0_carry__1_i_3_n_0\
    );
\mantisa_result0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(8),
      O => \mantisa_result0_carry__1_i_4_n_0\
    );
\mantisa_result0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(11),
      I1 => \mantisa_shifted_reg_n_0_[11]\,
      O => \mantisa_result0_carry__1_i_5_n_0\
    );
\mantisa_result0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(10),
      I1 => \mantisa_shifted_reg_n_0_[10]\,
      O => \mantisa_result0_carry__1_i_6_n_0\
    );
\mantisa_result0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(9),
      I1 => \mantisa_shifted_reg_n_0_[9]\,
      O => \mantisa_result0_carry__1_i_7_n_0\
    );
\mantisa_result0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(8),
      I1 => \mantisa_shifted_reg_n_0_[8]\,
      O => \mantisa_result0_carry__1_i_8_n_0\
    );
\mantisa_result0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result0_carry__1_n_0\,
      CO(3) => \mantisa_result0_carry__2_n_0\,
      CO(2) => \mantisa_result0_carry__2_n_1\,
      CO(1) => \mantisa_result0_carry__2_n_2\,
      CO(0) => \mantisa_result0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \mantisa_result0_carry__2_i_1_n_0\,
      DI(2) => \mantisa_result0_carry__2_i_2_n_0\,
      DI(1) => \mantisa_result0_carry__2_i_3_n_0\,
      DI(0) => \mantisa_result0_carry__2_i_4_n_0\,
      O(3 downto 0) => \mantisa_result__0\(15 downto 12),
      S(3) => \mantisa_result0_carry__2_i_5_n_0\,
      S(2) => \mantisa_result0_carry__2_i_6_n_0\,
      S(1) => \mantisa_result0_carry__2_i_7_n_0\,
      S(0) => \mantisa_result0_carry__2_i_8_n_0\
    );
\mantisa_result0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(15),
      O => \mantisa_result0_carry__2_i_1_n_0\
    );
\mantisa_result0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(14),
      O => \mantisa_result0_carry__2_i_2_n_0\
    );
\mantisa_result0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(13),
      O => \mantisa_result0_carry__2_i_3_n_0\
    );
\mantisa_result0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(12),
      O => \mantisa_result0_carry__2_i_4_n_0\
    );
\mantisa_result0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(15),
      I1 => \mantisa_shifted_reg_n_0_[15]\,
      O => \mantisa_result0_carry__2_i_5_n_0\
    );
\mantisa_result0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(14),
      I1 => \mantisa_shifted_reg_n_0_[14]\,
      O => \mantisa_result0_carry__2_i_6_n_0\
    );
\mantisa_result0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(13),
      I1 => \mantisa_shifted_reg_n_0_[13]\,
      O => \mantisa_result0_carry__2_i_7_n_0\
    );
\mantisa_result0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(12),
      I1 => \mantisa_shifted_reg_n_0_[12]\,
      O => \mantisa_result0_carry__2_i_8_n_0\
    );
\mantisa_result0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result0_carry__2_n_0\,
      CO(3) => \mantisa_result0_carry__3_n_0\,
      CO(2) => \mantisa_result0_carry__3_n_1\,
      CO(1) => \mantisa_result0_carry__3_n_2\,
      CO(0) => \mantisa_result0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \mantisa_result0_carry__3_i_1_n_0\,
      DI(2) => \mantisa_result0_carry__3_i_2_n_0\,
      DI(1) => \mantisa_result0_carry__3_i_3_n_0\,
      DI(0) => \mantisa_result0_carry__3_i_4_n_0\,
      O(3 downto 0) => \mantisa_result__0\(19 downto 16),
      S(3) => \mantisa_result0_carry__3_i_5_n_0\,
      S(2) => \mantisa_result0_carry__3_i_6_n_0\,
      S(1) => \mantisa_result0_carry__3_i_7_n_0\,
      S(0) => \mantisa_result0_carry__3_i_8_n_0\
    );
\mantisa_result0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(19),
      O => \mantisa_result0_carry__3_i_1_n_0\
    );
\mantisa_result0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(18),
      O => \mantisa_result0_carry__3_i_2_n_0\
    );
\mantisa_result0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(17),
      O => \mantisa_result0_carry__3_i_3_n_0\
    );
\mantisa_result0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(16),
      O => \mantisa_result0_carry__3_i_4_n_0\
    );
\mantisa_result0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => \mantisa_shifted_reg_n_0_[19]\,
      O => \mantisa_result0_carry__3_i_5_n_0\
    );
\mantisa_result0_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(18),
      I1 => \mantisa_shifted_reg_n_0_[18]\,
      O => \mantisa_result0_carry__3_i_6_n_0\
    );
\mantisa_result0_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(17),
      I1 => \mantisa_shifted_reg_n_0_[17]\,
      O => \mantisa_result0_carry__3_i_7_n_0\
    );
\mantisa_result0_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(16),
      I1 => \mantisa_shifted_reg_n_0_[16]\,
      O => \mantisa_result0_carry__3_i_8_n_0\
    );
\mantisa_result0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result0_carry__3_n_0\,
      CO(3) => \mantisa_result0_carry__4_n_0\,
      CO(2) => \mantisa_result0_carry__4_n_1\,
      CO(1) => \mantisa_result0_carry__4_n_2\,
      CO(0) => \mantisa_result0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \semn_result1_inferred__0/i__carry__1_n_0\,
      DI(2) => \mantisa_result0_carry__4_i_1_n_0\,
      DI(1) => \mantisa_result0_carry__4_i_2_n_0\,
      DI(0) => \mantisa_result0_carry__4_i_3_n_0\,
      O(3 downto 0) => \mantisa_result__0\(23 downto 20),
      S(3) => \mantisa_result0_carry__4_i_4_n_0\,
      S(2) => \mantisa_result0_carry__4_i_5_n_0\,
      S(1) => \mantisa_result0_carry__4_i_6_n_0\,
      S(0) => \mantisa_result0_carry__4_i_7_n_0\
    );
\mantisa_result0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(22),
      O => \mantisa_result0_carry__4_i_1_n_0\
    );
\mantisa_result0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(21),
      O => \mantisa_result0_carry__4_i_2_n_0\
    );
\mantisa_result0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(20),
      O => \mantisa_result0_carry__4_i_3_n_0\
    );
\mantisa_result0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[23]\,
      O => \mantisa_result0_carry__4_i_4_n_0\
    );
\mantisa_result0_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(22),
      I1 => \mantisa_shifted_reg_n_0_[22]\,
      O => \mantisa_result0_carry__4_i_5_n_0\
    );
\mantisa_result0_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(21),
      I1 => \mantisa_shifted_reg_n_0_[21]\,
      O => \mantisa_result0_carry__4_i_6_n_0\
    );
\mantisa_result0_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(20),
      I1 => \mantisa_shifted_reg_n_0_[20]\,
      O => \mantisa_result0_carry__4_i_7_n_0\
    );
mantisa_result0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(3),
      O => mantisa_result0_carry_i_1_n_0
    );
mantisa_result0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(2),
      O => mantisa_result0_carry_i_2_n_0
    );
mantisa_result0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(1),
      O => mantisa_result0_carry_i_3_n_0
    );
mantisa_result0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I1 => mantisa_a(0),
      O => mantisa_result0_carry_i_4_n_0
    );
mantisa_result0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(3),
      I1 => \mantisa_shifted_reg_n_0_[3]\,
      O => mantisa_result0_carry_i_5_n_0
    );
mantisa_result0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(2),
      I1 => \mantisa_shifted_reg_n_0_[2]\,
      O => mantisa_result0_carry_i_6_n_0
    );
mantisa_result0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(1),
      I1 => \mantisa_shifted_reg_n_0_[1]\,
      O => mantisa_result0_carry_i_7_n_0
    );
mantisa_result0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mantisa_a(0),
      I1 => \mantisa_shifted_reg_n_0_[0]\,
      O => mantisa_result0_carry_i_8_n_0
    );
\mantisa_result[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(1),
      I1 => stare(0),
      I2 => \mantisa_result__0\(0),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(0),
      O => \mantisa_result[0]_i_1_n_0\
    );
\mantisa_result[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(11),
      I1 => stare(0),
      I2 => \mantisa_result__0\(10),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(10),
      O => \mantisa_result[10]_i_1_n_0\
    );
\mantisa_result[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(12),
      I1 => stare(0),
      I2 => \mantisa_result__0\(11),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(11),
      O => \mantisa_result[11]_i_1_n_0\
    );
\mantisa_result[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(11),
      I1 => \mantisa_shifted_reg_n_0_[11]\,
      O => \mantisa_result[11]_i_3_n_0\
    );
\mantisa_result[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(10),
      I1 => \mantisa_shifted_reg_n_0_[10]\,
      O => \mantisa_result[11]_i_4_n_0\
    );
\mantisa_result[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(9),
      I1 => \mantisa_shifted_reg_n_0_[9]\,
      O => \mantisa_result[11]_i_5_n_0\
    );
\mantisa_result[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(8),
      I1 => \mantisa_shifted_reg_n_0_[8]\,
      O => \mantisa_result[11]_i_6_n_0\
    );
\mantisa_result[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(13),
      I1 => stare(0),
      I2 => \mantisa_result__0\(12),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(12),
      O => \mantisa_result[12]_i_1_n_0\
    );
\mantisa_result[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(14),
      I1 => stare(0),
      I2 => \mantisa_result__0\(13),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(13),
      O => \mantisa_result[13]_i_1_n_0\
    );
\mantisa_result[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(15),
      I1 => stare(0),
      I2 => \mantisa_result__0\(14),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(14),
      O => \mantisa_result[14]_i_1_n_0\
    );
\mantisa_result[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(16),
      I1 => stare(0),
      I2 => \mantisa_result__0\(15),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(15),
      O => \mantisa_result[15]_i_1_n_0\
    );
\mantisa_result[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(15),
      I1 => \mantisa_shifted_reg_n_0_[15]\,
      O => \mantisa_result[15]_i_3_n_0\
    );
\mantisa_result[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(14),
      I1 => \mantisa_shifted_reg_n_0_[14]\,
      O => \mantisa_result[15]_i_4_n_0\
    );
\mantisa_result[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(13),
      I1 => \mantisa_shifted_reg_n_0_[13]\,
      O => \mantisa_result[15]_i_5_n_0\
    );
\mantisa_result[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(12),
      I1 => \mantisa_shifted_reg_n_0_[12]\,
      O => \mantisa_result[15]_i_6_n_0\
    );
\mantisa_result[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(17),
      I1 => stare(0),
      I2 => \mantisa_result__0\(16),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(16),
      O => \mantisa_result[16]_i_1_n_0\
    );
\mantisa_result[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(18),
      I1 => stare(0),
      I2 => \mantisa_result__0\(17),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(17),
      O => \mantisa_result[17]_i_1_n_0\
    );
\mantisa_result[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(19),
      I1 => stare(0),
      I2 => \mantisa_result__0\(18),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(18),
      O => \mantisa_result[18]_i_1_n_0\
    );
\mantisa_result[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(20),
      I1 => stare(0),
      I2 => \mantisa_result__0\(19),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(19),
      O => \mantisa_result[19]_i_1_n_0\
    );
\mantisa_result[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => \mantisa_shifted_reg_n_0_[19]\,
      O => \mantisa_result[19]_i_3_n_0\
    );
\mantisa_result[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(18),
      I1 => \mantisa_shifted_reg_n_0_[18]\,
      O => \mantisa_result[19]_i_4_n_0\
    );
\mantisa_result[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(17),
      I1 => \mantisa_shifted_reg_n_0_[17]\,
      O => \mantisa_result[19]_i_5_n_0\
    );
\mantisa_result[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(16),
      I1 => \mantisa_shifted_reg_n_0_[16]\,
      O => \mantisa_result[19]_i_6_n_0\
    );
\mantisa_result[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(2),
      I1 => stare(0),
      I2 => \mantisa_result__0\(1),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(1),
      O => \mantisa_result[1]_i_1_n_0\
    );
\mantisa_result[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(21),
      I1 => stare(0),
      I2 => \mantisa_result__0\(20),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(20),
      O => \mantisa_result[20]_i_1_n_0\
    );
\mantisa_result[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(22),
      I1 => stare(0),
      I2 => \mantisa_result__0\(21),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(21),
      O => \mantisa_result[21]_i_1_n_0\
    );
\mantisa_result[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(23),
      I1 => stare(0),
      I2 => \mantisa_result__0\(22),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(22),
      O => \mantisa_result[22]_i_1_n_0\
    );
\mantisa_result[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(24),
      I1 => stare(0),
      I2 => \mantisa_result__0\(23),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(23),
      O => \mantisa_result[23]_i_1_n_0\
    );
\mantisa_result[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => semn_B,
      I1 => semn_A_reg_n_0,
      O => \mantisa_result[23]_i_2_n_0\
    );
\mantisa_result[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mantisa_shifted_reg_n_0_[23]\,
      O => \mantisa_result[23]_i_4_n_0\
    );
\mantisa_result[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(22),
      I1 => \mantisa_shifted_reg_n_0_[22]\,
      O => \mantisa_result[23]_i_5_n_0\
    );
\mantisa_result[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(21),
      I1 => \mantisa_shifted_reg_n_0_[21]\,
      O => \mantisa_result[23]_i_6_n_0\
    );
\mantisa_result[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(20),
      I1 => \mantisa_shifted_reg_n_0_[20]\,
      O => \mantisa_result[23]_i_7_n_0\
    );
\mantisa_result[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => mantisa_result(24),
      I3 => stare(0),
      O => \mantisa_result[24]_i_1_n_0\
    );
\mantisa_result[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004400440044554"
    )
        port map (
      I0 => stare(0),
      I1 => mantisa_result0(24),
      I2 => semn_A_reg_n_0,
      I3 => semn_B,
      I4 => \mantisa_result_reg[24]_i_4_n_3\,
      I5 => \semn_result1_carry__0_n_0\,
      O => \mantisa_result[24]_i_2_n_0\
    );
\mantisa_result[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(3),
      I1 => stare(0),
      I2 => \mantisa_result__0\(2),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(2),
      O => \mantisa_result[2]_i_1_n_0\
    );
\mantisa_result[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(4),
      I1 => stare(0),
      I2 => \mantisa_result__0\(3),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(3),
      O => \mantisa_result[3]_i_1_n_0\
    );
\mantisa_result[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(3),
      I1 => \mantisa_shifted_reg_n_0_[3]\,
      O => \mantisa_result[3]_i_3_n_0\
    );
\mantisa_result[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(2),
      I1 => \mantisa_shifted_reg_n_0_[2]\,
      O => \mantisa_result[3]_i_4_n_0\
    );
\mantisa_result[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(1),
      I1 => \mantisa_shifted_reg_n_0_[1]\,
      O => \mantisa_result[3]_i_5_n_0\
    );
\mantisa_result[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(0),
      I1 => \mantisa_shifted_reg_n_0_[0]\,
      O => \mantisa_result[3]_i_6_n_0\
    );
\mantisa_result[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(5),
      I1 => stare(0),
      I2 => \mantisa_result__0\(4),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(4),
      O => \mantisa_result[4]_i_1_n_0\
    );
\mantisa_result[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(6),
      I1 => stare(0),
      I2 => \mantisa_result__0\(5),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(5),
      O => \mantisa_result[5]_i_1_n_0\
    );
\mantisa_result[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(7),
      I1 => stare(0),
      I2 => \mantisa_result__0\(6),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(6),
      O => \mantisa_result[6]_i_1_n_0\
    );
\mantisa_result[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(8),
      I1 => stare(0),
      I2 => \mantisa_result__0\(7),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(7),
      O => \mantisa_result[7]_i_1_n_0\
    );
\mantisa_result[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(7),
      I1 => \mantisa_shifted_reg_n_0_[7]\,
      O => \mantisa_result[7]_i_3_n_0\
    );
\mantisa_result[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(6),
      I1 => \mantisa_shifted_reg_n_0_[6]\,
      O => \mantisa_result[7]_i_4_n_0\
    );
\mantisa_result[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(5),
      I1 => \mantisa_shifted_reg_n_0_[5]\,
      O => \mantisa_result[7]_i_5_n_0\
    );
\mantisa_result[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mantisa_a(4),
      I1 => \mantisa_shifted_reg_n_0_[4]\,
      O => \mantisa_result[7]_i_6_n_0\
    );
\mantisa_result[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(9),
      I1 => stare(0),
      I2 => \mantisa_result__0\(8),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(8),
      O => \mantisa_result[8]_i_1_n_0\
    );
\mantisa_result[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => mantisa_result(10),
      I1 => stare(0),
      I2 => \mantisa_result__0\(9),
      I3 => \semn_result1_carry__0_n_0\,
      I4 => \mantisa_result[23]_i_2_n_0\,
      I5 => mantisa_result0(9),
      O => \mantisa_result[9]_i_1_n_0\
    );
\mantisa_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[0]_i_1_n_0\,
      Q => mantisa_result(0),
      R => '0'
    );
\mantisa_result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[10]_i_1_n_0\,
      Q => mantisa_result(10),
      R => '0'
    );
\mantisa_result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[11]_i_1_n_0\,
      Q => mantisa_result(11),
      R => '0'
    );
\mantisa_result_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result_reg[7]_i_2_n_0\,
      CO(3) => \mantisa_result_reg[11]_i_2_n_0\,
      CO(2) => \mantisa_result_reg[11]_i_2_n_1\,
      CO(1) => \mantisa_result_reg[11]_i_2_n_2\,
      CO(0) => \mantisa_result_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mantisa_a(11 downto 8),
      O(3 downto 0) => mantisa_result0(11 downto 8),
      S(3) => \mantisa_result[11]_i_3_n_0\,
      S(2) => \mantisa_result[11]_i_4_n_0\,
      S(1) => \mantisa_result[11]_i_5_n_0\,
      S(0) => \mantisa_result[11]_i_6_n_0\
    );
\mantisa_result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[12]_i_1_n_0\,
      Q => mantisa_result(12),
      R => '0'
    );
\mantisa_result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[13]_i_1_n_0\,
      Q => mantisa_result(13),
      R => '0'
    );
\mantisa_result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[14]_i_1_n_0\,
      Q => mantisa_result(14),
      R => '0'
    );
\mantisa_result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[15]_i_1_n_0\,
      Q => mantisa_result(15),
      R => '0'
    );
\mantisa_result_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result_reg[11]_i_2_n_0\,
      CO(3) => \mantisa_result_reg[15]_i_2_n_0\,
      CO(2) => \mantisa_result_reg[15]_i_2_n_1\,
      CO(1) => \mantisa_result_reg[15]_i_2_n_2\,
      CO(0) => \mantisa_result_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mantisa_a(15 downto 12),
      O(3 downto 0) => mantisa_result0(15 downto 12),
      S(3) => \mantisa_result[15]_i_3_n_0\,
      S(2) => \mantisa_result[15]_i_4_n_0\,
      S(1) => \mantisa_result[15]_i_5_n_0\,
      S(0) => \mantisa_result[15]_i_6_n_0\
    );
\mantisa_result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[16]_i_1_n_0\,
      Q => mantisa_result(16),
      R => '0'
    );
\mantisa_result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[17]_i_1_n_0\,
      Q => mantisa_result(17),
      R => '0'
    );
\mantisa_result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[18]_i_1_n_0\,
      Q => mantisa_result(18),
      R => '0'
    );
\mantisa_result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[19]_i_1_n_0\,
      Q => mantisa_result(19),
      R => '0'
    );
\mantisa_result_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result_reg[15]_i_2_n_0\,
      CO(3) => \mantisa_result_reg[19]_i_2_n_0\,
      CO(2) => \mantisa_result_reg[19]_i_2_n_1\,
      CO(1) => \mantisa_result_reg[19]_i_2_n_2\,
      CO(0) => \mantisa_result_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mantisa_a(19 downto 16),
      O(3 downto 0) => mantisa_result0(19 downto 16),
      S(3) => \mantisa_result[19]_i_3_n_0\,
      S(2) => \mantisa_result[19]_i_4_n_0\,
      S(1) => \mantisa_result[19]_i_5_n_0\,
      S(0) => \mantisa_result[19]_i_6_n_0\
    );
\mantisa_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[1]_i_1_n_0\,
      Q => mantisa_result(1),
      R => '0'
    );
\mantisa_result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[20]_i_1_n_0\,
      Q => mantisa_result(20),
      R => '0'
    );
\mantisa_result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[21]_i_1_n_0\,
      Q => mantisa_result(21),
      R => '0'
    );
\mantisa_result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[22]_i_1_n_0\,
      Q => mantisa_result(22),
      R => '0'
    );
\mantisa_result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[23]_i_1_n_0\,
      Q => mantisa_result(23),
      R => '0'
    );
\mantisa_result_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result_reg[19]_i_2_n_0\,
      CO(3) => \mantisa_result_reg[23]_i_3_n_0\,
      CO(2) => \mantisa_result_reg[23]_i_3_n_1\,
      CO(1) => \mantisa_result_reg[23]_i_3_n_2\,
      CO(0) => \mantisa_result_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2 downto 0) => mantisa_a(22 downto 20),
      O(3 downto 0) => mantisa_result0(23 downto 20),
      S(3) => \mantisa_result[23]_i_4_n_0\,
      S(2) => \mantisa_result[23]_i_5_n_0\,
      S(1) => \mantisa_result[23]_i_6_n_0\,
      S(0) => \mantisa_result[23]_i_7_n_0\
    );
\mantisa_result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[24]_i_2_n_0\,
      Q => mantisa_result(24),
      R => '0'
    );
\mantisa_result_reg[24]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result_reg[23]_i_3_n_0\,
      CO(3 downto 1) => \NLW_mantisa_result_reg[24]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => mantisa_result0(24),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_mantisa_result_reg[24]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\mantisa_result_reg[24]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_mantisa_result_reg[24]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mantisa_result_reg[24]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_mantisa_result_reg[24]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\mantisa_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[2]_i_1_n_0\,
      Q => mantisa_result(2),
      R => '0'
    );
\mantisa_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[3]_i_1_n_0\,
      Q => mantisa_result(3),
      R => '0'
    );
\mantisa_result_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mantisa_result_reg[3]_i_2_n_0\,
      CO(2) => \mantisa_result_reg[3]_i_2_n_1\,
      CO(1) => \mantisa_result_reg[3]_i_2_n_2\,
      CO(0) => \mantisa_result_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mantisa_a(3 downto 0),
      O(3 downto 0) => mantisa_result0(3 downto 0),
      S(3) => \mantisa_result[3]_i_3_n_0\,
      S(2) => \mantisa_result[3]_i_4_n_0\,
      S(1) => \mantisa_result[3]_i_5_n_0\,
      S(0) => \mantisa_result[3]_i_6_n_0\
    );
\mantisa_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[4]_i_1_n_0\,
      Q => mantisa_result(4),
      R => '0'
    );
\mantisa_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[5]_i_1_n_0\,
      Q => mantisa_result(5),
      R => '0'
    );
\mantisa_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[6]_i_1_n_0\,
      Q => mantisa_result(6),
      R => '0'
    );
\mantisa_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[7]_i_1_n_0\,
      Q => mantisa_result(7),
      R => '0'
    );
\mantisa_result_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_result_reg[3]_i_2_n_0\,
      CO(3) => \mantisa_result_reg[7]_i_2_n_0\,
      CO(2) => \mantisa_result_reg[7]_i_2_n_1\,
      CO(1) => \mantisa_result_reg[7]_i_2_n_2\,
      CO(0) => \mantisa_result_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mantisa_a(7 downto 4),
      O(3 downto 0) => mantisa_result0(7 downto 4),
      S(3) => \mantisa_result[7]_i_3_n_0\,
      S(2) => \mantisa_result[7]_i_4_n_0\,
      S(1) => \mantisa_result[7]_i_5_n_0\,
      S(0) => \mantisa_result[7]_i_6_n_0\
    );
\mantisa_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[8]_i_1_n_0\,
      Q => mantisa_result(8),
      R => '0'
    );
\mantisa_result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mantisa_result[24]_i_1_n_0\,
      D => \mantisa_result[9]_i_1_n_0\,
      Q => mantisa_result(9),
      R => '0'
    );
mantisa_shifted1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mantisa_shifted1_carry_n_0,
      CO(2) => mantisa_shifted1_carry_n_1,
      CO(1) => mantisa_shifted1_carry_n_2,
      CO(0) => mantisa_shifted1_carry_n_3,
      CYINIT => '0',
      DI(3) => mantisa_shifted1_carry_i_1_n_0,
      DI(2) => mantisa_shifted1_carry_i_2_n_0,
      DI(1) => mantisa_shifted1_carry_i_3_n_0,
      DI(0) => mantisa_shifted1_carry_i_4_n_0,
      O(3 downto 0) => NLW_mantisa_shifted1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => mantisa_shifted1_carry_i_5_n_0,
      S(2) => mantisa_shifted1_carry_i_6_n_0,
      S(1) => mantisa_shifted1_carry_i_7_n_0,
      S(0) => mantisa_shifted1_carry_i_8_n_0
    );
\mantisa_shifted1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => mantisa_shifted1_carry_n_0,
      CO(3 downto 1) => \NLW_mantisa_shifted1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mantisa_shifted1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mantisa_shifted1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_mantisa_shifted1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \mantisa_shifted1_carry__0_i_2_n_0\
    );
\mantisa_shifted1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(8),
      I1 => \exp_A_reg_n_0_[8]\,
      O => \mantisa_shifted1_carry__0_i_1_n_0\
    );
\mantisa_shifted1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[8]\,
      I1 => exp_B(8),
      O => \mantisa_shifted1_carry__0_i_2_n_0\
    );
mantisa_shifted1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_B(6),
      I1 => \exp_A_reg_n_0_[6]\,
      I2 => \exp_A_reg_n_0_[7]\,
      I3 => exp_B(7),
      O => mantisa_shifted1_carry_i_1_n_0
    );
mantisa_shifted1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_B(4),
      I1 => \exp_A_reg_n_0_[4]\,
      I2 => \exp_A_reg_n_0_[5]\,
      I3 => exp_B(5),
      O => mantisa_shifted1_carry_i_2_n_0
    );
mantisa_shifted1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_B(2),
      I1 => \exp_A_reg_n_0_[2]\,
      I2 => \exp_A_reg_n_0_[3]\,
      I3 => exp_B(3),
      O => mantisa_shifted1_carry_i_3_n_0
    );
mantisa_shifted1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_B(0),
      I1 => \exp_A_reg_n_0_[0]\,
      I2 => \exp_A_reg_n_0_[1]\,
      I3 => exp_B(1),
      O => mantisa_shifted1_carry_i_4_n_0
    );
mantisa_shifted1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[6]\,
      I1 => exp_B(6),
      I2 => exp_B(7),
      I3 => \exp_A_reg_n_0_[7]\,
      O => mantisa_shifted1_carry_i_5_n_0
    );
mantisa_shifted1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[4]\,
      I1 => exp_B(4),
      I2 => exp_B(5),
      I3 => \exp_A_reg_n_0_[5]\,
      O => mantisa_shifted1_carry_i_6_n_0
    );
mantisa_shifted1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[2]\,
      I1 => exp_B(2),
      I2 => exp_B(3),
      I3 => \exp_A_reg_n_0_[3]\,
      O => mantisa_shifted1_carry_i_7_n_0
    );
mantisa_shifted1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \exp_A_reg_n_0_[0]\,
      I1 => exp_B(0),
      I2 => exp_B(1),
      I3 => \exp_A_reg_n_0_[1]\,
      O => mantisa_shifted1_carry_i_8_n_0
    );
\mantisa_shifted1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mantisa_shifted1_inferred__0/i__carry_n_0\,
      CO(2) => \mantisa_shifted1_inferred__0/i__carry_n_1\,
      CO(1) => \mantisa_shifted1_inferred__0/i__carry_n_2\,
      CO(0) => \mantisa_shifted1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_mantisa_shifted1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\mantisa_shifted1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_shifted1_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_mantisa_shifted1_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mantisa_shifted1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_mantisa_shifted1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__1_n_0\
    );
\mantisa_shifted[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[0]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[1]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(0),
      O => \mantisa_shifted[0]_i_2_n_0\
    );
\mantisa_shifted[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \mantisa_shifted[0]_i_5_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[0]_i_6_n_0\,
      I3 => minusOp2_out(0),
      I4 => \mantisa_shifted[1]_i_5_n_0\,
      I5 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[0]_i_3_n_0\
    );
\mantisa_shifted[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[6]_i_6_n_0\,
      I1 => \mantisa_shifted[2]_i_6_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[4]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[0]_i_7_n_0\,
      O => \mantisa_shifted[0]_i_4_n_0\
    );
\mantisa_shifted[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mantisa_shifted[4]_i_7_n_0\,
      I1 => minusOp2_out(2),
      I2 => \mantisa_shifted[0]_i_8_n_0\,
      O => \mantisa_shifted[0]_i_5_n_0\
    );
\mantisa_shifted[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mantisa_shifted[6]_i_7_n_0\,
      I1 => minusOp2_out(2),
      I2 => \mantisa_shifted[2]_i_7_n_0\,
      O => \mantisa_shifted[0]_i_6_n_0\
    );
\mantisa_shifted[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(8),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(16),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(0),
      O => \mantisa_shifted[0]_i_7_n_0\
    );
\mantisa_shifted[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(8),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(16),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(0),
      O => \mantisa_shifted[0]_i_8_n_0\
    );
\mantisa_shifted[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[10]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[11]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(10),
      O => \mantisa_shifted[10]_i_2_n_0\
    );
\mantisa_shifted[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047000000FF00"
    )
        port map (
      I0 => \mantisa_shifted[13]_i_6_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[11]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      I4 => \mantisa_shifted[10]_i_5_n_0\,
      I5 => minusOp2_out(0),
      O => \mantisa_shifted[10]_i_3_n_0\
    );
\mantisa_shifted[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB888B8B"
    )
        port map (
      I0 => \mantisa_shifted[12]_i_6_n_0\,
      I1 => minusOp0_out(1),
      I2 => \mantisa_shifted[10]_i_6_n_0\,
      I3 => \mantisa_shifted[10]_i_7_n_0\,
      I4 => minusOp0_out(2),
      O => \mantisa_shifted[10]_i_4_n_0\
    );
\mantisa_shifted[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \mantisa_shifted[12]_i_7_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[10]_i_8_n_0\,
      I3 => minusOp2_out(2),
      I4 => \mantisa_shifted[10]_i_9_n_0\,
      O => \mantisa_shifted[10]_i_5_n_0\
    );
\mantisa_shifted[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_a(18),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(10),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[10]_i_6_n_0\
    );
\mantisa_shifted[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => mantisa_a(22),
      I1 => minusOp0_out(3),
      I2 => minusOp0_out(4),
      I3 => mantisa_a(14),
      O => \mantisa_shifted[10]_i_7_n_0\
    );
\mantisa_shifted[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => mantisa_b(22),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(4),
      I3 => mantisa_b(14),
      O => \mantisa_shifted[10]_i_8_n_0\
    );
\mantisa_shifted[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCDF"
    )
        port map (
      I0 => mantisa_b(18),
      I1 => minusOp2_out(4),
      I2 => minusOp2_out(3),
      I3 => mantisa_b(10),
      O => \mantisa_shifted[10]_i_9_n_0\
    );
\mantisa_shifted[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[11]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[12]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(11),
      O => \mantisa_shifted[11]_i_2_n_0\
    );
\mantisa_shifted[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004700FF004700"
    )
        port map (
      I0 => \mantisa_shifted[13]_i_6_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[11]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      I4 => minusOp2_out(0),
      I5 => \mantisa_shifted[12]_i_5_n_0\,
      O => \mantisa_shifted[11]_i_3_n_0\
    );
\mantisa_shifted[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mantisa_shifted[13]_i_7_n_0\,
      I1 => minusOp0_out(1),
      I2 => \mantisa_shifted[11]_i_6_n_0\,
      O => \mantisa_shifted[11]_i_4_n_0\
    );
\mantisa_shifted[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0FFF53FF53"
    )
        port map (
      I0 => mantisa_b(19),
      I1 => mantisa_b(11),
      I2 => minusOp2_out(3),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(15),
      I5 => minusOp2_out(2),
      O => \mantisa_shifted[11]_i_5_n_0\
    );
\mantisa_shifted[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0FFF53FF53"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => mantisa_a(11),
      I2 => minusOp0_out(3),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(15),
      I5 => minusOp0_out(2),
      O => \mantisa_shifted[11]_i_6_n_0\
    );
\mantisa_shifted[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[12]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[13]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(12),
      O => \mantisa_shifted[12]_i_2_n_0\
    );
\mantisa_shifted[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047000000FF00"
    )
        port map (
      I0 => \mantisa_shifted[13]_i_5_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[13]_i_6_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      I4 => \mantisa_shifted[12]_i_5_n_0\,
      I5 => minusOp2_out(0),
      O => \mantisa_shifted[12]_i_3_n_0\
    );
\mantisa_shifted[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mantisa_shifted[14]_i_6_n_0\,
      I1 => minusOp0_out(1),
      I2 => \mantisa_shifted[12]_i_6_n_0\,
      O => \mantisa_shifted[12]_i_4_n_0\
    );
\mantisa_shifted[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mantisa_shifted[14]_i_7_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[12]_i_7_n_0\,
      O => \mantisa_shifted[12]_i_5_n_0\
    );
\mantisa_shifted[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCF44CF77"
    )
        port map (
      I0 => mantisa_a(16),
      I1 => minusOp0_out(2),
      I2 => mantisa_a(20),
      I3 => minusOp0_out(3),
      I4 => mantisa_a(12),
      I5 => minusOp0_out(4),
      O => \mantisa_shifted[12]_i_6_n_0\
    );
\mantisa_shifted[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => mantisa_b(16),
      I1 => minusOp2_out(2),
      I2 => mantisa_b(20),
      I3 => minusOp2_out(3),
      I4 => minusOp2_out(4),
      I5 => mantisa_b(12),
      O => \mantisa_shifted[12]_i_7_n_0\
    );
\mantisa_shifted[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[13]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[14]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(13),
      O => \mantisa_shifted[13]_i_2_n_0\
    );
\mantisa_shifted[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004700FF004700"
    )
        port map (
      I0 => \mantisa_shifted[13]_i_5_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[13]_i_6_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      I4 => minusOp2_out(0),
      I5 => \mantisa_shifted[14]_i_5_n_0\,
      O => \mantisa_shifted[13]_i_3_n_0\
    );
\mantisa_shifted[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \mantisa_shifted[17]_i_6_n_0\,
      I1 => mantisa_a(19),
      I2 => minusOp0_out(2),
      I3 => \mantisa_shifted[15]_i_7_n_0\,
      I4 => minusOp0_out(1),
      I5 => \mantisa_shifted[13]_i_7_n_0\,
      O => \mantisa_shifted[13]_i_4_n_0\
    );
\mantisa_shifted[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3FF05"
    )
        port map (
      I0 => mantisa_b(15),
      I1 => mantisa_b(19),
      I2 => minusOp2_out(3),
      I3 => minusOp2_out(4),
      I4 => minusOp2_out(2),
      O => \mantisa_shifted[13]_i_5_n_0\
    );
\mantisa_shifted[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCF44CF77"
    )
        port map (
      I0 => mantisa_b(17),
      I1 => minusOp2_out(2),
      I2 => mantisa_b(21),
      I3 => minusOp2_out(3),
      I4 => mantisa_b(13),
      I5 => minusOp2_out(4),
      O => \mantisa_shifted[13]_i_6_n_0\
    );
\mantisa_shifted[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCF44CF77"
    )
        port map (
      I0 => mantisa_a(17),
      I1 => minusOp0_out(2),
      I2 => mantisa_a(21),
      I3 => minusOp0_out(3),
      I4 => mantisa_a(13),
      I5 => minusOp0_out(4),
      O => \mantisa_shifted[13]_i_7_n_0\
    );
\mantisa_shifted[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40454045FFFF0000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[15]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[14]_i_4_n_0\,
      I4 => mantisa_b(14),
      I5 => \mantisa_shifted1_carry__0_n_3\,
      O => \mantisa_shifted[14]_i_2_n_0\
    );
\mantisa_shifted[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[14]_i_5_n_0\,
      I2 => minusOp2_out(0),
      I3 => \mantisa_shifted[15]_i_5_n_0\,
      O => \mantisa_shifted[14]_i_3_n_0\
    );
\mantisa_shifted[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDFDFFFFCDFD0000"
    )
        port map (
      I0 => mantisa_a(16),
      I1 => \mantisa_shifted[17]_i_6_n_0\,
      I2 => minusOp0_out(2),
      I3 => mantisa_a(20),
      I4 => minusOp0_out(1),
      I5 => \mantisa_shifted[14]_i_6_n_0\,
      O => \mantisa_shifted[14]_i_4_n_0\
    );
\mantisa_shifted[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mantisa_shifted[16]_i_6_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[14]_i_7_n_0\,
      O => \mantisa_shifted[14]_i_5_n_0\
    );
\mantisa_shifted[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => mantisa_a(18),
      I1 => minusOp0_out(2),
      I2 => mantisa_a(22),
      I3 => minusOp0_out(3),
      I4 => minusOp0_out(4),
      I5 => mantisa_a(14),
      O => \mantisa_shifted[14]_i_6_n_0\
    );
\mantisa_shifted[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => mantisa_b(18),
      I1 => minusOp2_out(2),
      I2 => mantisa_b(22),
      I3 => minusOp2_out(3),
      I4 => minusOp2_out(4),
      I5 => mantisa_b(14),
      O => \mantisa_shifted[14]_i_7_n_0\
    );
\mantisa_shifted[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0454FFFF04540000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[15]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[16]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(15),
      O => \mantisa_shifted[15]_i_2_n_0\
    );
\mantisa_shifted[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047000000FF00"
    )
        port map (
      I0 => \mantisa_shifted[16]_i_5_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[16]_i_6_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      I4 => \mantisa_shifted[15]_i_5_n_0\,
      I5 => minusOp2_out(0),
      O => \mantisa_shifted[15]_i_3_n_0\
    );
\mantisa_shifted[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888B8BBBB"
    )
        port map (
      I0 => \mantisa_shifted[15]_i_6_n_0\,
      I1 => minusOp0_out(1),
      I2 => mantisa_a(19),
      I3 => \mantisa_shifted[17]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[15]_i_7_n_0\,
      O => \mantisa_shifted[15]_i_4_n_0\
    );
\mantisa_shifted[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDFDFFFFCDFD0000"
    )
        port map (
      I0 => mantisa_b(17),
      I1 => \mantisa_shifted[17]_i_7_n_0\,
      I2 => minusOp2_out(2),
      I3 => mantisa_b(21),
      I4 => minusOp2_out(1),
      I5 => \mantisa_shifted[13]_i_5_n_0\,
      O => \mantisa_shifted[15]_i_5_n_0\
    );
\mantisa_shifted[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => mantisa_a(17),
      I1 => minusOp0_out(3),
      I2 => minusOp0_out(4),
      I3 => minusOp0_out(2),
      I4 => mantisa_a(21),
      O => \mantisa_shifted[15]_i_6_n_0\
    );
\mantisa_shifted[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => minusOp0_out(3),
      I1 => minusOp0_out(4),
      I2 => mantisa_a(15),
      O => \mantisa_shifted[15]_i_7_n_0\
    );
\mantisa_shifted[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[16]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[17]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(16),
      O => \mantisa_shifted[16]_i_2_n_0\
    );
\mantisa_shifted[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004700FF004700"
    )
        port map (
      I0 => \mantisa_shifted[16]_i_5_n_0\,
      I1 => minusOp2_out(1),
      I2 => \mantisa_shifted[16]_i_6_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      I4 => minusOp2_out(0),
      I5 => \mantisa_shifted[17]_i_5_n_0\,
      O => \mantisa_shifted[16]_i_3_n_0\
    );
\mantisa_shifted[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBBBBBB8B"
    )
        port map (
      I0 => \mantisa_shifted[18]_i_6_n_0\,
      I1 => minusOp0_out(1),
      I2 => mantisa_a(16),
      I3 => \mantisa_shifted[17]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => mantisa_a(20),
      O => \mantisa_shifted[16]_i_4_n_0\
    );
\mantisa_shifted[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => mantisa_b(22),
      I1 => minusOp2_out(2),
      I2 => minusOp2_out(3),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(18),
      O => \mantisa_shifted[16]_i_5_n_0\
    );
\mantisa_shifted[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => mantisa_b(20),
      I1 => minusOp2_out(2),
      I2 => minusOp2_out(3),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(16),
      O => \mantisa_shifted[16]_i_6_n_0\
    );
\mantisa_shifted[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[17]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[18]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(17),
      O => \mantisa_shifted[17]_i_2_n_0\
    );
\mantisa_shifted[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[17]_i_5_n_0\,
      I2 => minusOp2_out(0),
      I3 => \mantisa_shifted[18]_i_5_n_0\,
      O => \mantisa_shifted[17]_i_3_n_0\
    );
\mantisa_shifted[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0344FFFF0377"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => minusOp0_out(1),
      I2 => mantisa_a(21),
      I3 => minusOp0_out(2),
      I4 => \mantisa_shifted[17]_i_6_n_0\,
      I5 => mantisa_a(17),
      O => \mantisa_shifted[17]_i_4_n_0\
    );
\mantisa_shifted[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF47FF33FF47"
    )
        port map (
      I0 => mantisa_b(19),
      I1 => minusOp2_out(1),
      I2 => mantisa_b(17),
      I3 => \mantisa_shifted[17]_i_7_n_0\,
      I4 => minusOp2_out(2),
      I5 => mantisa_b(21),
      O => \mantisa_shifted[17]_i_5_n_0\
    );
\mantisa_shifted[17]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => minusOp0_out(4),
      I1 => minusOp0_out(3),
      O => \mantisa_shifted[17]_i_6_n_0\
    );
\mantisa_shifted[17]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => minusOp2_out(4),
      I1 => minusOp2_out(3),
      O => \mantisa_shifted[17]_i_7_n_0\
    );
\mantisa_shifted[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40454045FFFF0000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[19]_i_6_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[18]_i_4_n_0\,
      I4 => mantisa_b(18),
      I5 => \mantisa_shifted1_carry__0_n_3\,
      O => \mantisa_shifted[18]_i_2_n_0\
    );
\mantisa_shifted[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B00"
    )
        port map (
      I0 => minusOp2_out(0),
      I1 => \mantisa_shifted[18]_i_5_n_0\,
      I2 => \mantisa_shifted[19]_i_3_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[18]_i_3_n_0\
    );
\mantisa_shifted[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFFFF0000"
    )
        port map (
      I0 => minusOp0_out(4),
      I1 => minusOp0_out(3),
      I2 => minusOp0_out(2),
      I3 => mantisa_a(20),
      I4 => \mantisa_shifted[18]_i_6_n_0\,
      I5 => minusOp0_out(1),
      O => \mantisa_shifted[18]_i_4_n_0\
    );
\mantisa_shifted[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFFFF0000"
    )
        port map (
      I0 => minusOp2_out(4),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(2),
      I3 => mantisa_b(20),
      I4 => \mantisa_shifted[16]_i_5_n_0\,
      I5 => minusOp2_out(1),
      O => \mantisa_shifted[18]_i_5_n_0\
    );
\mantisa_shifted[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => mantisa_a(22),
      I1 => minusOp0_out(2),
      I2 => minusOp0_out(3),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(18),
      O => \mantisa_shifted[18]_i_6_n_0\
    );
\mantisa_shifted[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A2FFFF02A20000"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[19]_i_3_n_0\,
      I2 => minusOp2_out(0),
      I3 => \mantisa_shifted[19]_i_4_n_0\,
      I4 => \mantisa_shifted1_inferred__0/i__carry__0_n_3\,
      I5 => \mantisa_shifted[19]_i_5_n_0\,
      O => \mantisa_shifted[19]_i_1_n_0\
    );
\mantisa_shifted[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => minusOp2_out(8),
      I1 => minusOp2_out(5),
      I2 => minusOp2_out(7),
      I3 => minusOp2_out(6),
      O => \mantisa_shifted[19]_i_2_n_0\
    );
\mantisa_shifted[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFCFDFFFFFCFD"
    )
        port map (
      I0 => mantisa_b(19),
      I1 => minusOp2_out(4),
      I2 => minusOp2_out(3),
      I3 => minusOp2_out(2),
      I4 => minusOp2_out(1),
      I5 => mantisa_b(21),
      O => \mantisa_shifted[19]_i_3_n_0\
    );
\mantisa_shifted[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFFFFFEFF"
    )
        port map (
      I0 => minusOp2_out(4),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(2),
      I3 => mantisa_b(20),
      I4 => minusOp2_out(1),
      I5 => mantisa_b(22),
      O => \mantisa_shifted[19]_i_4_n_0\
    );
\mantisa_shifted[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_6_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[20]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(19),
      O => \mantisa_shifted[19]_i_5_n_0\
    );
\mantisa_shifted[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003030200000302"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => minusOp0_out(4),
      I2 => minusOp0_out(3),
      I3 => minusOp0_out(2),
      I4 => minusOp0_out(1),
      I5 => mantisa_a(21),
      O => \mantisa_shifted[19]_i_6_n_0\
    );
\mantisa_shifted[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[1]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[2]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(1),
      O => \mantisa_shifted[1]_i_2_n_0\
    );
\mantisa_shifted[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \mantisa_shifted[1]_i_5_n_0\,
      I1 => minusOp2_out(0),
      I2 => \mantisa_shifted[2]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[1]_i_3_n_0\
    );
\mantisa_shifted[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[7]_i_7_n_0\,
      I1 => \mantisa_shifted[3]_i_6_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[5]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[1]_i_6_n_0\,
      O => \mantisa_shifted[1]_i_4_n_0\
    );
\mantisa_shifted[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[7]_i_9_n_0\,
      I1 => \mantisa_shifted[3]_i_7_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[5]_i_7_n_0\,
      I4 => minusOp2_out(2),
      I5 => \mantisa_shifted[1]_i_7_n_0\,
      O => \mantisa_shifted[1]_i_5_n_0\
    );
\mantisa_shifted[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(9),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(17),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(1),
      O => \mantisa_shifted[1]_i_6_n_0\
    );
\mantisa_shifted[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(9),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(17),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(1),
      O => \mantisa_shifted[1]_i_7_n_0\
    );
\mantisa_shifted[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222E2E2E222E2222"
    )
        port map (
      I0 => mantisa_b(20),
      I1 => \mantisa_shifted1_carry__0_n_3\,
      I2 => \mantisa_shifted[23]_i_5_n_0\,
      I3 => \mantisa_shifted[21]_i_5_n_0\,
      I4 => minusOp0_out(0),
      I5 => \mantisa_shifted[20]_i_4_n_0\,
      O => \mantisa_shifted[20]_i_2_n_0\
    );
\mantisa_shifted[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202A2A20202A202"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[19]_i_4_n_0\,
      I2 => minusOp2_out(0),
      I3 => mantisa_b(21),
      I4 => \mantisa_shifted[20]_i_5_n_0\,
      I5 => minusOp2_out(1),
      O => \mantisa_shifted[20]_i_3_n_0\
    );
\mantisa_shifted[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => mantisa_a(20),
      I1 => minusOp0_out(1),
      I2 => mantisa_a(22),
      I3 => minusOp0_out(4),
      I4 => minusOp0_out(3),
      I5 => minusOp0_out(2),
      O => \mantisa_shifted[20]_i_4_n_0\
    );
\mantisa_shifted[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => minusOp2_out(2),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(4),
      O => \mantisa_shifted[20]_i_5_n_0\
    );
\mantisa_shifted[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00470047FFFF0000"
    )
        port map (
      I0 => \mantisa_shifted[21]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[21]_i_5_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => mantisa_b(21),
      I5 => \mantisa_shifted1_carry__0_n_3\,
      O => \mantisa_shifted[21]_i_2_n_0\
    );
\mantisa_shifted[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202A2"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[21]_i_6_n_0\,
      I2 => minusOp2_out(0),
      I3 => minusOp2_out(2),
      I4 => \mantisa_shifted[21]_i_7_n_0\,
      I5 => minusOp2_out(1),
      O => \mantisa_shifted[21]_i_3_n_0\
    );
\mantisa_shifted[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => minusOp0_out(1),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(22),
      I3 => minusOp0_out(4),
      I4 => minusOp0_out(2),
      O => \mantisa_shifted[21]_i_4_n_0\
    );
\mantisa_shifted[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFCFFFD"
    )
        port map (
      I0 => minusOp0_out(1),
      I1 => minusOp0_out(2),
      I2 => minusOp0_out(3),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(21),
      O => \mantisa_shifted[21]_i_5_n_0\
    );
\mantisa_shifted[21]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFCFFFD"
    )
        port map (
      I0 => minusOp2_out(1),
      I1 => minusOp2_out(2),
      I2 => minusOp2_out(3),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(21),
      O => \mantisa_shifted[21]_i_6_n_0\
    );
\mantisa_shifted[21]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => minusOp2_out(3),
      I1 => mantisa_b(22),
      I2 => minusOp2_out(4),
      O => \mantisa_shifted[21]_i_7_n_0\
    );
\mantisa_shifted[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0DDCC0000DDCC"
    )
        port map (
      I0 => \mantisa_shifted1_carry__0_n_3\,
      I1 => \mantisa_shifted[22]_i_2_n_0\,
      I2 => minusOp2_out(0),
      I3 => mantisa_b(22),
      I4 => \mantisa_shifted1_inferred__0/i__carry__0_n_3\,
      I5 => \mantisa_shifted[22]_i_3_n_0\,
      O => \mantisa_shifted[22]_i_1_n_0\
    );
\mantisa_shifted[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001000000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_6_n_0\,
      I1 => minusOp0_out(1),
      I2 => \mantisa_shifted[23]_i_5_n_0\,
      I3 => \mantisa_shifted1_carry__0_n_3\,
      I4 => mantisa_a(22),
      I5 => minusOp0_out(0),
      O => \mantisa_shifted[22]_i_2_n_0\
    );
\mantisa_shifted[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => minusOp2_out(2),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(4),
      I3 => minusOp2_out(1),
      I4 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[22]_i_3_n_0\
    );
\mantisa_shifted[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      O => mantisa_shifted
    );
\mantisa_shifted[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => minusOp0_out(0),
      I1 => \mantisa_shifted[23]_i_5_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[23]_i_6_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      O => \mantisa_shifted[23]_i_3_n_0\
    );
\mantisa_shifted[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => minusOp2_out(1),
      I2 => minusOp2_out(4),
      I3 => minusOp2_out(3),
      I4 => minusOp2_out(2),
      I5 => minusOp2_out(0),
      O => \mantisa_shifted[23]_i_4_n_0\
    );
\mantisa_shifted[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => minusOp0_out(8),
      I1 => minusOp0_out(5),
      I2 => minusOp0_out(7),
      I3 => minusOp0_out(6),
      O => \mantisa_shifted[23]_i_5_n_0\
    );
\mantisa_shifted[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => minusOp0_out(2),
      I1 => minusOp0_out(3),
      I2 => minusOp0_out(4),
      O => \mantisa_shifted[23]_i_6_n_0\
    );
\mantisa_shifted[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[2]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[3]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(2),
      O => \mantisa_shifted[2]_i_2_n_0\
    );
\mantisa_shifted[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \mantisa_shifted[2]_i_5_n_0\,
      I1 => minusOp2_out(0),
      I2 => \mantisa_shifted[3]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[2]_i_3_n_0\
    );
\mantisa_shifted[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[8]_i_6_n_0\,
      I1 => \mantisa_shifted[4]_i_6_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[6]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[2]_i_6_n_0\,
      O => \mantisa_shifted[2]_i_4_n_0\
    );
\mantisa_shifted[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F30AFAF3F30A0A0"
    )
        port map (
      I0 => \mantisa_shifted[4]_i_7_n_0\,
      I1 => \mantisa_shifted[8]_i_9_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[6]_i_7_n_0\,
      I4 => minusOp2_out(2),
      I5 => \mantisa_shifted[2]_i_7_n_0\,
      O => \mantisa_shifted[2]_i_5_n_0\
    );
\mantisa_shifted[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(10),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(18),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(2),
      O => \mantisa_shifted[2]_i_6_n_0\
    );
\mantisa_shifted[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(10),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(18),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(2),
      O => \mantisa_shifted[2]_i_7_n_0\
    );
\mantisa_shifted[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[3]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[4]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(3),
      O => \mantisa_shifted[3]_i_2_n_0\
    );
\mantisa_shifted[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \mantisa_shifted[3]_i_5_n_0\,
      I1 => minusOp2_out(0),
      I2 => \mantisa_shifted[4]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[3]_i_3_n_0\
    );
\mantisa_shifted[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[9]_i_6_n_0\,
      I1 => \mantisa_shifted[5]_i_6_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[7]_i_7_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[3]_i_6_n_0\,
      O => \mantisa_shifted[3]_i_4_n_0\
    );
\mantisa_shifted[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[9]_i_9_n_0\,
      I1 => \mantisa_shifted[5]_i_7_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[7]_i_9_n_0\,
      I4 => minusOp2_out(2),
      I5 => \mantisa_shifted[3]_i_7_n_0\,
      O => \mantisa_shifted[3]_i_5_n_0\
    );
\mantisa_shifted[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(11),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(19),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(3),
      O => \mantisa_shifted[3]_i_6_n_0\
    );
\mantisa_shifted[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(11),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(19),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(3),
      O => \mantisa_shifted[3]_i_7_n_0\
    );
\mantisa_shifted[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[4]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[5]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(4),
      O => \mantisa_shifted[4]_i_2_n_0\
    );
\mantisa_shifted[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \mantisa_shifted[4]_i_5_n_0\,
      I1 => minusOp2_out(0),
      I2 => \mantisa_shifted[5]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[4]_i_3_n_0\
    );
\mantisa_shifted[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[10]_i_6_n_0\,
      I1 => \mantisa_shifted[6]_i_6_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[8]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[4]_i_6_n_0\,
      O => \mantisa_shifted[4]_i_4_n_0\
    );
\mantisa_shifted[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303F3FAFA0AFA0"
    )
        port map (
      I0 => \mantisa_shifted[6]_i_7_n_0\,
      I1 => \mantisa_shifted[10]_i_9_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[4]_i_7_n_0\,
      I4 => \mantisa_shifted[8]_i_9_n_0\,
      I5 => minusOp2_out(2),
      O => \mantisa_shifted[4]_i_5_n_0\
    );
\mantisa_shifted[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(12),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(20),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(4),
      O => \mantisa_shifted[4]_i_6_n_0\
    );
\mantisa_shifted[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(12),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(20),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(4),
      O => \mantisa_shifted[4]_i_7_n_0\
    );
\mantisa_shifted[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \mantisa_shifted[5]_i_4_n_0\,
      I1 => minusOp0_out(0),
      I2 => \mantisa_shifted[6]_i_4_n_0\,
      I3 => \mantisa_shifted[23]_i_5_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(5),
      O => \mantisa_shifted[5]_i_2_n_0\
    );
\mantisa_shifted[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \mantisa_shifted[5]_i_5_n_0\,
      I1 => minusOp2_out(0),
      I2 => \mantisa_shifted[6]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[5]_i_3_n_0\
    );
\mantisa_shifted[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[7]_i_6_n_0\,
      I1 => \mantisa_shifted[7]_i_7_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[9]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[5]_i_6_n_0\,
      O => \mantisa_shifted[5]_i_4_n_0\
    );
\mantisa_shifted[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[7]_i_8_n_0\,
      I1 => \mantisa_shifted[7]_i_9_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[9]_i_9_n_0\,
      I4 => minusOp2_out(2),
      I5 => \mantisa_shifted[5]_i_7_n_0\,
      O => \mantisa_shifted[5]_i_5_n_0\
    );
\mantisa_shifted[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(13),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(21),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(5),
      O => \mantisa_shifted[5]_i_6_n_0\
    );
\mantisa_shifted[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(13),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(21),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(5),
      O => \mantisa_shifted[5]_i_7_n_0\
    );
\mantisa_shifted[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15101510FFFF0000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[7]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[6]_i_4_n_0\,
      I4 => mantisa_b(6),
      I5 => \mantisa_shifted1_carry__0_n_3\,
      O => \mantisa_shifted[6]_i_2_n_0\
    );
\mantisa_shifted[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \mantisa_shifted[6]_i_5_n_0\,
      I1 => minusOp2_out(0),
      I2 => \mantisa_shifted[7]_i_5_n_0\,
      I3 => \mantisa_shifted[19]_i_2_n_0\,
      O => \mantisa_shifted[6]_i_3_n_0\
    );
\mantisa_shifted[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[8]_i_7_n_0\,
      I1 => \mantisa_shifted[8]_i_6_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[10]_i_6_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[6]_i_6_n_0\,
      O => \mantisa_shifted[6]_i_4_n_0\
    );
\mantisa_shifted[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303F3F5F505F50"
    )
        port map (
      I0 => \mantisa_shifted[8]_i_9_n_0\,
      I1 => \mantisa_shifted[8]_i_8_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[6]_i_7_n_0\,
      I4 => \mantisa_shifted[10]_i_9_n_0\,
      I5 => minusOp2_out(2),
      O => \mantisa_shifted[6]_i_5_n_0\
    );
\mantisa_shifted[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_a(14),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(22),
      I3 => minusOp0_out(4),
      I4 => mantisa_a(6),
      O => \mantisa_shifted[6]_i_6_n_0\
    );
\mantisa_shifted[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mantisa_b(14),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(22),
      I3 => minusOp2_out(4),
      I4 => mantisa_b(6),
      O => \mantisa_shifted[6]_i_7_n_0\
    );
\mantisa_shifted[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[7]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[8]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(7),
      O => \mantisa_shifted[7]_i_2_n_0\
    );
\mantisa_shifted[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[7]_i_5_n_0\,
      I2 => minusOp2_out(0),
      I3 => \mantisa_shifted[8]_i_5_n_0\,
      O => \mantisa_shifted[7]_i_3_n_0\
    );
\mantisa_shifted[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \mantisa_shifted[7]_i_6_n_0\,
      I1 => \mantisa_shifted[7]_i_7_n_0\,
      I2 => minusOp0_out(1),
      I3 => \mantisa_shifted[9]_i_7_n_0\,
      I4 => minusOp0_out(2),
      I5 => \mantisa_shifted[9]_i_6_n_0\,
      O => \mantisa_shifted[7]_i_4_n_0\
    );
\mantisa_shifted[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mantisa_shifted[9]_i_8_n_0\,
      I1 => \mantisa_shifted[9]_i_9_n_0\,
      I2 => minusOp2_out(1),
      I3 => \mantisa_shifted[7]_i_8_n_0\,
      I4 => minusOp2_out(2),
      I5 => \mantisa_shifted[7]_i_9_n_0\,
      O => \mantisa_shifted[7]_i_5_n_0\
    );
\mantisa_shifted[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(11),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[7]_i_6_n_0\
    );
\mantisa_shifted[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33B8"
    )
        port map (
      I0 => mantisa_a(15),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(7),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[7]_i_7_n_0\
    );
\mantisa_shifted[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => mantisa_b(19),
      I1 => minusOp2_out(4),
      I2 => minusOp2_out(3),
      I3 => mantisa_b(11),
      O => \mantisa_shifted[7]_i_8_n_0\
    );
\mantisa_shifted[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => mantisa_b(15),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(4),
      I3 => mantisa_b(7),
      O => \mantisa_shifted[7]_i_9_n_0\
    );
\mantisa_shifted[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[8]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[9]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(8),
      O => \mantisa_shifted[8]_i_2_n_0\
    );
\mantisa_shifted[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[8]_i_5_n_0\,
      I2 => minusOp2_out(0),
      I3 => \mantisa_shifted[9]_i_5_n_0\,
      O => \mantisa_shifted[8]_i_3_n_0\
    );
\mantisa_shifted[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C050C05FCF50CF5F"
    )
        port map (
      I0 => \mantisa_shifted[10]_i_6_n_0\,
      I1 => \mantisa_shifted[10]_i_7_n_0\,
      I2 => minusOp0_out(1),
      I3 => minusOp0_out(2),
      I4 => \mantisa_shifted[8]_i_6_n_0\,
      I5 => \mantisa_shifted[8]_i_7_n_0\,
      O => \mantisa_shifted[8]_i_4_n_0\
    );
\mantisa_shifted[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFC0A0C0"
    )
        port map (
      I0 => \mantisa_shifted[10]_i_8_n_0\,
      I1 => \mantisa_shifted[10]_i_9_n_0\,
      I2 => minusOp2_out(1),
      I3 => minusOp2_out(2),
      I4 => \mantisa_shifted[8]_i_8_n_0\,
      I5 => \mantisa_shifted[8]_i_9_n_0\,
      O => \mantisa_shifted[8]_i_5_n_0\
    );
\mantisa_shifted[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_a(16),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(8),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[8]_i_6_n_0\
    );
\mantisa_shifted[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_a(20),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(12),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[8]_i_7_n_0\
    );
\mantisa_shifted[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => mantisa_b(20),
      I1 => minusOp2_out(3),
      I2 => minusOp2_out(4),
      I3 => mantisa_b(12),
      O => \mantisa_shifted[8]_i_8_n_0\
    );
\mantisa_shifted[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCDF"
    )
        port map (
      I0 => mantisa_b(16),
      I1 => minusOp2_out(4),
      I2 => minusOp2_out(3),
      I3 => mantisa_b(8),
      O => \mantisa_shifted[8]_i_9_n_0\
    );
\mantisa_shifted[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \mantisa_shifted[23]_i_5_n_0\,
      I1 => \mantisa_shifted[9]_i_4_n_0\,
      I2 => minusOp0_out(0),
      I3 => \mantisa_shifted[10]_i_4_n_0\,
      I4 => \mantisa_shifted1_carry__0_n_3\,
      I5 => mantisa_b(9),
      O => \mantisa_shifted[9]_i_2_n_0\
    );
\mantisa_shifted[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \mantisa_shifted[19]_i_2_n_0\,
      I1 => \mantisa_shifted[9]_i_5_n_0\,
      I2 => minusOp2_out(0),
      I3 => \mantisa_shifted[10]_i_5_n_0\,
      O => \mantisa_shifted[9]_i_3_n_0\
    );
\mantisa_shifted[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BBB8B"
    )
        port map (
      I0 => \mantisa_shifted[11]_i_6_n_0\,
      I1 => minusOp0_out(1),
      I2 => \mantisa_shifted[9]_i_6_n_0\,
      I3 => minusOp0_out(2),
      I4 => \mantisa_shifted[9]_i_7_n_0\,
      O => \mantisa_shifted[9]_i_4_n_0\
    );
\mantisa_shifted[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF005353"
    )
        port map (
      I0 => \mantisa_shifted[9]_i_8_n_0\,
      I1 => \mantisa_shifted[9]_i_9_n_0\,
      I2 => minusOp2_out(2),
      I3 => \mantisa_shifted[11]_i_5_n_0\,
      I4 => minusOp2_out(1),
      O => \mantisa_shifted[9]_i_5_n_0\
    );
\mantisa_shifted[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_a(17),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(9),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[9]_i_6_n_0\
    );
\mantisa_shifted[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_a(21),
      I1 => minusOp0_out(3),
      I2 => mantisa_a(13),
      I3 => minusOp0_out(4),
      O => \mantisa_shifted[9]_i_7_n_0\
    );
\mantisa_shifted[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_b(21),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(13),
      I3 => minusOp2_out(4),
      O => \mantisa_shifted[9]_i_8_n_0\
    );
\mantisa_shifted[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => mantisa_b(17),
      I1 => minusOp2_out(3),
      I2 => mantisa_b(9),
      I3 => minusOp2_out(4),
      O => \mantisa_shifted[9]_i_9_n_0\
    );
\mantisa_shifted_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[0]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_shifted_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[0]_i_2_n_0\,
      I1 => \mantisa_shifted[0]_i_3_n_0\,
      O => \mantisa_shifted_reg[0]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[10]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_shifted_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[10]_i_2_n_0\,
      I1 => \mantisa_shifted[10]_i_3_n_0\,
      O => \mantisa_shifted_reg[10]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[11]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_shifted_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[11]_i_2_n_0\,
      I1 => \mantisa_shifted[11]_i_3_n_0\,
      O => \mantisa_shifted_reg[11]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[12]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_shifted_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[12]_i_2_n_0\,
      I1 => \mantisa_shifted[12]_i_3_n_0\,
      O => \mantisa_shifted_reg[12]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[13]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_shifted_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[13]_i_2_n_0\,
      I1 => \mantisa_shifted[13]_i_3_n_0\,
      O => \mantisa_shifted_reg[13]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[14]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_shifted_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[14]_i_2_n_0\,
      I1 => \mantisa_shifted[14]_i_3_n_0\,
      O => \mantisa_shifted_reg[14]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[15]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_shifted_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[15]_i_2_n_0\,
      I1 => \mantisa_shifted[15]_i_3_n_0\,
      O => \mantisa_shifted_reg[15]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[16]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_shifted_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[16]_i_2_n_0\,
      I1 => \mantisa_shifted[16]_i_3_n_0\,
      O => \mantisa_shifted_reg[16]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[17]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_shifted_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[17]_i_2_n_0\,
      I1 => \mantisa_shifted[17]_i_3_n_0\,
      O => \mantisa_shifted_reg[17]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[18]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_shifted_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[18]_i_2_n_0\,
      I1 => \mantisa_shifted[18]_i_3_n_0\,
      O => \mantisa_shifted_reg[18]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted[19]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_shifted_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[1]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_shifted_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[1]_i_2_n_0\,
      I1 => \mantisa_shifted[1]_i_3_n_0\,
      O => \mantisa_shifted_reg[1]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[20]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_shifted_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[20]_i_2_n_0\,
      I1 => \mantisa_shifted[20]_i_3_n_0\,
      O => \mantisa_shifted_reg[20]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[21]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_shifted_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[21]_i_2_n_0\,
      I1 => \mantisa_shifted[21]_i_3_n_0\,
      O => \mantisa_shifted_reg[21]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted[22]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_shifted_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[23]_i_2_n_0\,
      Q => \mantisa_shifted_reg_n_0_[23]\,
      R => '0'
    );
\mantisa_shifted_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[23]_i_3_n_0\,
      I1 => \mantisa_shifted[23]_i_4_n_0\,
      O => \mantisa_shifted_reg[23]_i_2_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[2]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_shifted_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[2]_i_2_n_0\,
      I1 => \mantisa_shifted[2]_i_3_n_0\,
      O => \mantisa_shifted_reg[2]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[3]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_shifted_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[3]_i_2_n_0\,
      I1 => \mantisa_shifted[3]_i_3_n_0\,
      O => \mantisa_shifted_reg[3]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[4]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_shifted_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[4]_i_2_n_0\,
      I1 => \mantisa_shifted[4]_i_3_n_0\,
      O => \mantisa_shifted_reg[4]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[5]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_shifted_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[5]_i_2_n_0\,
      I1 => \mantisa_shifted[5]_i_3_n_0\,
      O => \mantisa_shifted_reg[5]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[6]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_shifted_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[6]_i_2_n_0\,
      I1 => \mantisa_shifted[6]_i_3_n_0\,
      O => \mantisa_shifted_reg[6]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[7]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_shifted_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[7]_i_2_n_0\,
      I1 => \mantisa_shifted[7]_i_3_n_0\,
      O => \mantisa_shifted_reg[7]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[8]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_shifted_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[8]_i_2_n_0\,
      I1 => \mantisa_shifted[8]_i_3_n_0\,
      O => \mantisa_shifted_reg[8]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\mantisa_shifted_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_shifted,
      D => \mantisa_shifted_reg[9]_i_1_n_0\,
      Q => \mantisa_shifted_reg_n_0_[9]\,
      R => '0'
    );
\mantisa_shifted_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mantisa_shifted[9]_i_2_n_0\,
      I1 => \mantisa_shifted[9]_i_3_n_0\,
      O => \mantisa_shifted_reg[9]_i_1_n_0\,
      S => \mantisa_shifted1_inferred__0/i__carry__0_n_3\
    );
\minusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__1/i__carry_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => exp_B(3 downto 0),
      O(3 downto 0) => minusOp0_out(3 downto 0),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\minusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => exp_B(7 downto 4),
      O(3 downto 0) => minusOp0_out(7 downto 4),
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\minusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__0_n_0\,
      CO(3 downto 0) => \NLW_minusOp_inferred__1/i__carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_minusOp_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => minusOp0_out(8),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__1_i_1__1_n_0\
    );
\minusOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__2/i__carry_n_0\,
      CO(2) => \minusOp_inferred__2/i__carry_n_1\,
      CO(1) => \minusOp_inferred__2/i__carry_n_2\,
      CO(0) => \minusOp_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \exp_A_reg_n_0_[3]\,
      DI(2) => \exp_A_reg_n_0_[2]\,
      DI(1) => \exp_A_reg_n_0_[1]\,
      DI(0) => \exp_A_reg_n_0_[0]\,
      O(3 downto 0) => minusOp2_out(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\minusOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__2/i__carry_n_0\,
      CO(3) => \minusOp_inferred__2/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__2/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__2/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \exp_A_reg_n_0_[7]\,
      DI(2) => \exp_A_reg_n_0_[6]\,
      DI(1) => \exp_A_reg_n_0_[5]\,
      DI(0) => \exp_A_reg_n_0_[4]\,
      O(3 downto 0) => minusOp2_out(7 downto 4),
      S(3) => \i__carry__0_i_1__3_n_0\,
      S(2) => \i__carry__0_i_2__3_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\minusOp_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__2/i__carry__0_n_0\,
      CO(3 downto 0) => \NLW_minusOp_inferred__2/i__carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_minusOp_inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => minusOp2_out(8),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__1_i_1__0_n_0\
    );
overflow_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFE4000"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => stare(0),
      I3 => exp_result_reg(8),
      I4 => \^overflow1\,
      O => overflow_i_1_n_0
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => overflow_i_1_n_0,
      Q => \^overflow1\,
      R => '0'
    );
\result[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => stare(0),
      O => \result[31]_i_1__0_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(0),
      Q => Q(0),
      R => '0'
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(10),
      Q => Q(10),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(11),
      Q => Q(11),
      R => '0'
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(12),
      Q => Q(12),
      R => '0'
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(13),
      Q => Q(13),
      R => '0'
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(14),
      Q => Q(14),
      R => '0'
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(15),
      Q => Q(15),
      R => '0'
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(16),
      Q => Q(16),
      R => '0'
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(17),
      Q => Q(17),
      R => '0'
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(18),
      Q => Q(18),
      R => '0'
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(19),
      Q => Q(19),
      R => '0'
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(1),
      Q => Q(1),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(20),
      Q => Q(20),
      R => '0'
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(21),
      Q => Q(21),
      R => '0'
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(22),
      Q => Q(22),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(0),
      Q => Q(23),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(1),
      Q => Q(24),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(2),
      Q => Q(25),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(3),
      Q => Q(26),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(4),
      Q => Q(27),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(5),
      Q => Q(28),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(6),
      Q => Q(29),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(2),
      Q => Q(2),
      R => '0'
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => \exp_result_reg__0\(7),
      Q => Q(30),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => semn_result_reg_n_0,
      Q => Q(31),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(3),
      Q => Q(3),
      R => '0'
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(4),
      Q => Q(4),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(5),
      Q => Q(5),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(6),
      Q => Q(6),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(7),
      Q => Q(7),
      R => '0'
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(8),
      Q => Q(8),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__0_n_0\,
      D => mantisa_result(9),
      Q => Q(9),
      R => '0'
    );
semn_A_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => A(23),
      Q => semn_A_reg_n_0,
      R => '0'
    );
semn_B_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => B(23),
      Q => semn_B,
      R => '0'
    );
semn_result1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => semn_result1_carry_n_0,
      CO(2) => semn_result1_carry_n_1,
      CO(1) => semn_result1_carry_n_2,
      CO(0) => semn_result1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_semn_result1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => semn_result1_carry_i_1_n_0,
      S(2) => semn_result1_carry_i_2_n_0,
      S(1) => semn_result1_carry_i_3_n_0,
      S(0) => semn_result1_carry_i_4_n_0
    );
\semn_result1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => semn_result1_carry_n_0,
      CO(3) => \semn_result1_carry__0_n_0\,
      CO(2) => \semn_result1_carry__0_n_1\,
      CO(1) => \semn_result1_carry__0_n_2\,
      CO(0) => \semn_result1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_semn_result1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \semn_result1_carry__0_i_1_n_0\,
      S(2) => \semn_result1_carry__0_i_2_n_0\,
      S(1) => \semn_result1_carry__0_i_3_n_0\,
      S(0) => \semn_result1_carry__0_i_4_n_0\
    );
\semn_result1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => mantisa_a(22),
      I1 => \mantisa_shifted_reg_n_0_[22]\,
      I2 => \mantisa_shifted_reg_n_0_[23]\,
      I3 => \mantisa_shifted_reg_n_0_[21]\,
      I4 => mantisa_a(21),
      O => \semn_result1_carry__0_i_1_n_0\
    );
\semn_result1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(19),
      I1 => \mantisa_shifted_reg_n_0_[19]\,
      I2 => mantisa_a(18),
      I3 => \mantisa_shifted_reg_n_0_[18]\,
      I4 => \mantisa_shifted_reg_n_0_[20]\,
      I5 => mantisa_a(20),
      O => \semn_result1_carry__0_i_2_n_0\
    );
\semn_result1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(16),
      I1 => \mantisa_shifted_reg_n_0_[16]\,
      I2 => mantisa_a(17),
      I3 => \mantisa_shifted_reg_n_0_[17]\,
      I4 => \mantisa_shifted_reg_n_0_[15]\,
      I5 => mantisa_a(15),
      O => \semn_result1_carry__0_i_3_n_0\
    );
\semn_result1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(13),
      I1 => \mantisa_shifted_reg_n_0_[13]\,
      I2 => mantisa_a(12),
      I3 => \mantisa_shifted_reg_n_0_[12]\,
      I4 => \mantisa_shifted_reg_n_0_[14]\,
      I5 => mantisa_a(14),
      O => \semn_result1_carry__0_i_4_n_0\
    );
semn_result1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(10),
      I1 => \mantisa_shifted_reg_n_0_[10]\,
      I2 => mantisa_a(11),
      I3 => \mantisa_shifted_reg_n_0_[11]\,
      I4 => \mantisa_shifted_reg_n_0_[9]\,
      I5 => mantisa_a(9),
      O => semn_result1_carry_i_1_n_0
    );
semn_result1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(7),
      I1 => \mantisa_shifted_reg_n_0_[7]\,
      I2 => mantisa_a(6),
      I3 => \mantisa_shifted_reg_n_0_[6]\,
      I4 => \mantisa_shifted_reg_n_0_[8]\,
      I5 => mantisa_a(8),
      O => semn_result1_carry_i_2_n_0
    );
semn_result1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(4),
      I1 => \mantisa_shifted_reg_n_0_[4]\,
      I2 => mantisa_a(5),
      I3 => \mantisa_shifted_reg_n_0_[5]\,
      I4 => \mantisa_shifted_reg_n_0_[3]\,
      I5 => mantisa_a(3),
      O => semn_result1_carry_i_3_n_0
    );
semn_result1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mantisa_a(1),
      I1 => \mantisa_shifted_reg_n_0_[1]\,
      I2 => mantisa_a(0),
      I3 => \mantisa_shifted_reg_n_0_[0]\,
      I4 => \mantisa_shifted_reg_n_0_[2]\,
      I5 => mantisa_a(2),
      O => semn_result1_carry_i_4_n_0
    );
\semn_result1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \semn_result1_inferred__0/i__carry_n_0\,
      CO(2) => \semn_result1_inferred__0/i__carry_n_1\,
      CO(1) => \semn_result1_inferred__0/i__carry_n_2\,
      CO(0) => \semn_result1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\semn_result1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \semn_result1_inferred__0/i__carry_n_0\,
      CO(3) => \semn_result1_inferred__0/i__carry__0_n_0\,
      CO(2) => \semn_result1_inferred__0/i__carry__0_n_1\,
      CO(1) => \semn_result1_inferred__0/i__carry__0_n_2\,
      CO(0) => \semn_result1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\semn_result1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \semn_result1_inferred__0/i__carry__0_n_0\,
      CO(3) => \semn_result1_inferred__0/i__carry__1_n_0\,
      CO(2) => \semn_result1_inferred__0/i__carry__1_n_1\,
      CO(1) => \semn_result1_inferred__0/i__carry__1_n_2\,
      CO(0) => \semn_result1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__2_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
semn_result_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBAF000008A0"
    )
        port map (
      I0 => semn_result,
      I1 => \mantisa_result[23]_i_2_n_0\,
      I2 => stare(0),
      I3 => stare(1),
      I4 => stare(2),
      I5 => semn_result_reg_n_0,
      O => semn_result_i_1_n_0
    );
semn_result_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => \mantisa_shifted1_inferred__0/i__carry__0_n_3\,
      I1 => semn_B,
      I2 => \mantisa_shifted1_carry__0_n_3\,
      I3 => semn_A_reg_n_0,
      I4 => stare(0),
      I5 => semn_result_i_3_n_0,
      O => semn_result
    );
semn_result_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => semn_B,
      I1 => \semn_result1_inferred__0/i__carry__1_n_0\,
      I2 => semn_A_reg_n_0,
      I3 => \semn_result1_carry__0_n_0\,
      O => semn_result_i_3_n_0
    );
semn_result_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => semn_result_i_1_n_0,
      Q => semn_result_reg_n_0,
      R => '0'
    );
zero_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFE4000"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => stare(0),
      I3 => zero_i_2_n_0,
      I4 => \^zero1\,
      O => zero_i_1_n_0
    );
zero_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \exp_result[8]_i_5_n_0\,
      I1 => \exp_result[8]_i_6_n_0\,
      I2 => zero_i_3_n_0,
      I3 => \exp_result[8]_i_3_n_0\,
      O => zero_i_2_n_0
    );
zero_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \exp_result_reg__0\(5),
      I1 => \exp_result_reg__0\(7),
      I2 => exp_result_reg(8),
      I3 => \exp_result_reg__0\(6),
      I4 => mantisa_result(22),
      I5 => zero_i_4_n_0,
      O => zero_i_3_n_0
    );
zero_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mantisa_result(7),
      I1 => mantisa_result(12),
      O => zero_i_4_n_0
    );
zero_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => zero_i_1_n_0,
      Q => \^zero1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_divBinary is
  port (
    Q : out STD_LOGIC_VECTOR ( 21 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_reg_0 : out STD_LOGIC;
    \FSM_sequential_stare_reg[2]\ : out STD_LOGIC;
    done_reg_1 : out STD_LOGIC;
    done_reg_2 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \A_extins_reg[23]_0\ : in STD_LOGIC;
    stare : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_stare_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_stare_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    zero4 : in STD_LOGIC;
    \B_extins_reg[22]_0\ : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \A_extins_reg[22]_0\ : in STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_divBinary : entity is "divBinary";
end design_1_ALU_0_0_divBinary;

architecture STRUCTURE of design_1_ALU_0_0_divBinary is
  signal A_extins : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \A_extins[23]_i_1_n_0\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[23]\ : STD_LOGIC;
  signal B_extins : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal B_extins_2 : STD_LOGIC;
  signal \FSM_onehot_stare[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stare_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_stare_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_stare_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal contor : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \contor[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \contor[2]_i_1_n_0\ : STD_LOGIC;
  signal \contor[3]_i_1_n_0\ : STD_LOGIC;
  signal \contor[4]_i_1_n_0\ : STD_LOGIC;
  signal \contor[4]_i_2_n_0\ : STD_LOGIC;
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal \contor_reg_n_0_[4]\ : STD_LOGIC;
  signal done_div : STD_LOGIC;
  signal \done_i_1__1_n_0\ : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal partial_remainder : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal partial_remainder0 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \partial_remainder[11]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[11]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[11]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[11]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[15]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[15]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[15]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[15]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[19]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[19]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[19]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[19]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[23]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[23]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[23]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[23]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[27]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[27]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[27]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[27]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[31]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[31]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[31]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[31]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[35]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[35]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[35]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[35]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[39]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[39]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[39]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[39]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[3]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[3]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[3]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[3]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[43]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[43]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[43]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[43]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[47]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[47]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[47]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[47]_i_6_n_0\ : STD_LOGIC;
  signal \partial_remainder[7]_i_3_n_0\ : STD_LOGIC;
  signal \partial_remainder[7]_i_4_n_0\ : STD_LOGIC;
  signal \partial_remainder[7]_i_5_n_0\ : STD_LOGIC;
  signal \partial_remainder[7]_i_6_n_0\ : STD_LOGIC;
  signal partial_remainder_0 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \partial_remainder_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[35]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[35]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[35]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[35]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[39]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[39]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[39]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[39]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[43]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[43]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[43]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[43]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[47]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[47]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[47]_i_2_n_3\ : STD_LOGIC;
  signal \partial_remainder_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \partial_remainder_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \partial_remainder_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \partial_remainder_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \result[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \result_reg_n_0_[22]\ : STD_LOGIC;
  signal \result_reg_n_0_[23]\ : STD_LOGIC;
  signal rezultat : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rezultat1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__0_n_1\ : STD_LOGIC;
  signal \rezultat1_carry__0_n_2\ : STD_LOGIC;
  signal \rezultat1_carry__0_n_3\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__1_n_1\ : STD_LOGIC;
  signal \rezultat1_carry__1_n_2\ : STD_LOGIC;
  signal \rezultat1_carry__1_n_3\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__2_n_1\ : STD_LOGIC;
  signal \rezultat1_carry__2_n_2\ : STD_LOGIC;
  signal \rezultat1_carry__2_n_3\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__3_n_1\ : STD_LOGIC;
  signal \rezultat1_carry__3_n_2\ : STD_LOGIC;
  signal \rezultat1_carry__3_n_3\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \rezultat1_carry__4_n_1\ : STD_LOGIC;
  signal \rezultat1_carry__4_n_2\ : STD_LOGIC;
  signal \rezultat1_carry__4_n_3\ : STD_LOGIC;
  signal rezultat1_carry_i_1_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_2_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_3_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_4_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_5_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_6_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_7_n_0 : STD_LOGIC;
  signal rezultat1_carry_i_8_n_0 : STD_LOGIC;
  signal rezultat1_carry_n_0 : STD_LOGIC;
  signal rezultat1_carry_n_1 : STD_LOGIC;
  signal rezultat1_carry_n_2 : STD_LOGIC;
  signal rezultat1_carry_n_3 : STD_LOGIC;
  signal \rezultat[0]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[10]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[11]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[12]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[13]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[14]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[15]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[15]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[16]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[16]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[17]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[17]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[18]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[18]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[19]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[19]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[1]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[20]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[20]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[21]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[21]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[22]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[22]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[23]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[23]_i_3_n_0\ : STD_LOGIC;
  signal \rezultat[23]_i_4_n_0\ : STD_LOGIC;
  signal \rezultat[2]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[3]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[4]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[5]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[6]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[7]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[7]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat[8]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[9]_i_1_n_0\ : STD_LOGIC;
  signal rezultat_1 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal \zero_i_2__1_n_0\ : STD_LOGIC;
  signal \zero_i_3__1_n_0\ : STD_LOGIC;
  signal \zero_i_4__1_n_0\ : STD_LOGIC;
  signal \zero_i_5__0_n_0\ : STD_LOGIC;
  signal \zero_i_6__0_n_0\ : STD_LOGIC;
  signal \zero_i_7__0_n_0\ : STD_LOGIC;
  signal \NLW_partial_remainder_reg[47]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rezultat1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rezultat1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rezultat1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rezultat1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rezultat1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rezultat1_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_extins[0]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \A_extins[22]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \A_extins[23]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_onehot_stare[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_stare[1]_i_1\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_stare_reg[0]\ : label is "impartire:0010,terminare:0100,initializare:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stare_reg[1]\ : label is "impartire:0010,terminare:0100,initializare:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stare_reg[2]\ : label is "impartire:0010,terminare:0100,initializare:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_1__4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \contor[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \contor[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \contor[3]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \contor[4]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \partial_remainder[47]_i_1\ : label is "soft_lutpair35";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[19]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[23]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[27]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[35]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[39]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[43]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[47]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \partial_remainder_reg[7]_i_2\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rezultat1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rezultat1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rezultat1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rezultat1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rezultat1_carry__3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rezultat1_carry__4\ : label is 11;
  attribute SOFT_HLUTNM of \rezultat[15]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rezultat[16]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rezultat[17]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rezultat[18]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rezultat[19]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rezultat[20]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rezultat[21]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rezultat[22]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rezultat[23]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rezultat[23]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rezultat[23]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rezultat[7]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of start_div_i_1 : label is "soft_lutpair32";
begin
  Q(21 downto 0) <= \^q\(21 downto 0);
\A_extins[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \A_extins_reg[22]_0\(0),
      O => A_extins(0)
    );
\A_extins[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(10),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(10),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(10)
    );
\A_extins[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(11),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(11),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(11)
    );
\A_extins[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(12),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(12),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(12)
    );
\A_extins[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(13),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(13),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(13)
    );
\A_extins[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(14),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(14),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(14)
    );
\A_extins[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(15),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(15),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(15)
    );
\A_extins[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(16),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(16),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(16)
    );
\A_extins[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(17),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(17),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(17)
    );
\A_extins[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(18),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(18),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(18)
    );
\A_extins[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(19),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(19),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(19)
    );
\A_extins[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(1),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(1),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(1)
    );
\A_extins[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(20),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(20),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(20)
    );
\A_extins[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(21),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(21),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(21)
    );
\A_extins[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(22),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(22),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(22)
    );
\A_extins[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => in9(23),
      O => \A_extins[23]_i_1_n_0\
    );
\A_extins[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(2),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(2),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(2)
    );
\A_extins[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(3),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(3),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(3)
    );
\A_extins[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(4),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(4),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(4)
    );
\A_extins[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(5),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(5),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(5)
    );
\A_extins[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(6),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(6),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(6)
    );
\A_extins[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(7),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(7),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(7)
    );
\A_extins[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(8),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(8),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(8)
    );
\A_extins[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in9(9),
      I1 => \FSM_onehot_stare_reg_n_0_[1]\,
      I2 => \A_extins_reg[22]_0\(9),
      I3 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => A_extins(9)
    );
\A_extins_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(0),
      Q => in9(1),
      R => '0'
    );
\A_extins_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(10),
      Q => in9(11),
      R => '0'
    );
\A_extins_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(11),
      Q => in9(12),
      R => '0'
    );
\A_extins_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(12),
      Q => in9(13),
      R => '0'
    );
\A_extins_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(13),
      Q => in9(14),
      R => '0'
    );
\A_extins_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(14),
      Q => in9(15),
      R => '0'
    );
\A_extins_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(15),
      Q => in9(16),
      R => '0'
    );
\A_extins_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(16),
      Q => in9(17),
      R => '0'
    );
\A_extins_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(17),
      Q => in9(18),
      R => '0'
    );
\A_extins_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(18),
      Q => in9(19),
      R => '0'
    );
\A_extins_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(19),
      Q => in9(20),
      R => '0'
    );
\A_extins_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(1),
      Q => in9(2),
      R => '0'
    );
\A_extins_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(20),
      Q => in9(21),
      R => '0'
    );
\A_extins_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(21),
      Q => in9(22),
      R => '0'
    );
\A_extins_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(22),
      Q => in9(23),
      R => '0'
    );
\A_extins_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => \A_extins[23]_i_1_n_0\,
      Q => \A_extins_reg_n_0_[23]\,
      S => \contor[4]_i_1_n_0\
    );
\A_extins_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(2),
      Q => in9(3),
      R => '0'
    );
\A_extins_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(3),
      Q => in9(4),
      R => '0'
    );
\A_extins_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(4),
      Q => in9(5),
      R => '0'
    );
\A_extins_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(5),
      Q => in9(6),
      R => '0'
    );
\A_extins_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(6),
      Q => in9(7),
      R => '0'
    );
\A_extins_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(7),
      Q => in9(8),
      R => '0'
    );
\A_extins_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(8),
      Q => in9(9),
      R => '0'
    );
\A_extins_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => A_extins(9),
      Q => in9(10),
      R => '0'
    );
\B_extins[23]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \A_extins_reg[23]_0\,
      O => B_extins_2
    );
\B_extins_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(0),
      Q => B_extins(0),
      R => '0'
    );
\B_extins_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(10),
      Q => B_extins(10),
      R => '0'
    );
\B_extins_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(11),
      Q => B_extins(11),
      R => '0'
    );
\B_extins_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(12),
      Q => B_extins(12),
      R => '0'
    );
\B_extins_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(13),
      Q => B_extins(13),
      R => '0'
    );
\B_extins_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(14),
      Q => B_extins(14),
      R => '0'
    );
\B_extins_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(15),
      Q => B_extins(15),
      R => '0'
    );
\B_extins_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(16),
      Q => B_extins(16),
      R => '0'
    );
\B_extins_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(17),
      Q => B_extins(17),
      R => '0'
    );
\B_extins_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(18),
      Q => B_extins(18),
      R => '0'
    );
\B_extins_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(19),
      Q => B_extins(19),
      R => '0'
    );
\B_extins_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(1),
      Q => B_extins(1),
      R => '0'
    );
\B_extins_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(20),
      Q => B_extins(20),
      R => '0'
    );
\B_extins_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(21),
      Q => B_extins(21),
      R => '0'
    );
\B_extins_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(22),
      Q => B_extins(22),
      R => '0'
    );
\B_extins_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => '1',
      Q => B_extins(23),
      R => '0'
    );
\B_extins_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(2),
      Q => B_extins(2),
      R => '0'
    );
\B_extins_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(3),
      Q => B_extins(3),
      R => '0'
    );
\B_extins_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(4),
      Q => B_extins(4),
      R => '0'
    );
\B_extins_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(5),
      Q => B_extins(5),
      R => '0'
    );
\B_extins_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(6),
      Q => B_extins(6),
      R => '0'
    );
\B_extins_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(7),
      Q => B_extins(7),
      R => '0'
    );
\B_extins_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(8),
      Q => B_extins(8),
      R => '0'
    );
\B_extins_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => B_extins_2,
      D => \B_extins_reg[22]_0\(9),
      Q => B_extins(9),
      R => '0'
    );
\FSM_onehot_stare[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33053327"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \A_extins_reg[23]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => \FSM_onehot_stare_reg_n_0_[2]\,
      I4 => \FSM_onehot_stare[2]_i_2_n_0\,
      O => \FSM_onehot_stare[0]_i_1_n_0\
    );
\FSM_onehot_stare[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAF8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \A_extins_reg[23]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => \FSM_onehot_stare_reg_n_0_[2]\,
      I4 => \FSM_onehot_stare[2]_i_2_n_0\,
      O => \FSM_onehot_stare[1]_i_1_n_0\
    );
\FSM_onehot_stare[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F480"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \A_extins_reg[23]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => \FSM_onehot_stare_reg_n_0_[2]\,
      I4 => \FSM_onehot_stare[2]_i_2_n_0\,
      O => \FSM_onehot_stare[2]_i_1_n_0\
    );
\FSM_onehot_stare[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[4]\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \contor_reg_n_0_[3]\,
      I4 => \contor_reg_n_0_[0]\,
      I5 => \contor_reg_n_0_[1]\,
      O => \FSM_onehot_stare[2]_i_2_n_0\
    );
\FSM_onehot_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_stare[0]_i_1_n_0\,
      Q => \FSM_onehot_stare_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_stare[1]_i_1_n_0\,
      Q => \FSM_onehot_stare_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_stare[2]_i_1_n_0\,
      Q => \FSM_onehot_stare_reg_n_0_[2]\,
      R => '0'
    );
\FSM_sequential_stare[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF0F11"
    )
        port map (
      I0 => \FSM_sequential_stare_reg[0]_0\,
      I1 => \FSM_sequential_stare_reg[0]\,
      I2 => done_div,
      I3 => stare(0),
      I4 => stare(1),
      I5 => stare(2),
      O => done_reg_2
    );
\FSM_sequential_stare[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0038"
    )
        port map (
      I0 => done_div,
      I1 => stare(0),
      I2 => stare(1),
      I3 => stare(2),
      O => done_reg_1
    );
\contor[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      O => \contor[0]_i_1__1_n_0\
    );
\contor[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => contor(1)
    );
\contor[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \contor[2]_i_1_n_0\
    );
\contor[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \A_extins_reg[23]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      O => \contor[3]_i_1_n_0\
    );
\contor[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000100"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \FSM_onehot_stare_reg_n_0_[1]\,
      I4 => \contor_reg_n_0_[3]\,
      O => contor(3)
    );
\contor[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[0]\,
      I1 => \A_extins_reg[23]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      O => \contor[4]_i_1_n_0\
    );
\contor[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \contor_reg_n_0_[3]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      I3 => \contor_reg_n_0_[2]\,
      I4 => \contor_reg_n_0_[4]\,
      O => \contor[4]_i_2_n_0\
    );
\contor_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => \contor[0]_i_1__1_n_0\,
      Q => \contor_reg_n_0_[0]\,
      S => \contor[4]_i_1_n_0\
    );
\contor_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => contor(1),
      Q => \contor_reg_n_0_[1]\,
      R => '0'
    );
\contor_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => \contor[2]_i_1_n_0\,
      Q => \contor_reg_n_0_[2]\,
      S => \contor[4]_i_1_n_0\
    );
\contor_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => contor(3),
      Q => \contor_reg_n_0_[3]\,
      R => '0'
    );
\contor_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => \contor[4]_i_2_n_0\,
      Q => \contor_reg_n_0_[4]\,
      S => \contor[4]_i_1_n_0\
    );
\done_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9D88"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[2]\,
      I1 => \A_extins_reg[23]_0\,
      I2 => \FSM_onehot_stare_reg_n_0_[0]\,
      I3 => done_div,
      O => \done_i_1__1_n_0\
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \done_i_1__1_n_0\,
      Q => done_div,
      R => '0'
    );
\partial_remainder[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(0),
      I1 => \A_extins_reg_n_0_[23]\,
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(0)
    );
\partial_remainder[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(10),
      I1 => partial_remainder(9),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(10)
    );
\partial_remainder[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(11),
      I1 => partial_remainder(10),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(11)
    );
\partial_remainder[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(11),
      I1 => B_extins(11),
      O => \partial_remainder[11]_i_3_n_0\
    );
\partial_remainder[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(10),
      I1 => B_extins(10),
      O => \partial_remainder[11]_i_4_n_0\
    );
\partial_remainder[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(9),
      I1 => B_extins(9),
      O => \partial_remainder[11]_i_5_n_0\
    );
\partial_remainder[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(8),
      I1 => B_extins(8),
      O => \partial_remainder[11]_i_6_n_0\
    );
\partial_remainder[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(12),
      I1 => partial_remainder(11),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(12)
    );
\partial_remainder[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(13),
      I1 => partial_remainder(12),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(13)
    );
\partial_remainder[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(14),
      I1 => partial_remainder(13),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(14)
    );
\partial_remainder[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(15),
      I1 => partial_remainder(14),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(15)
    );
\partial_remainder[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(15),
      I1 => B_extins(15),
      O => \partial_remainder[15]_i_3_n_0\
    );
\partial_remainder[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(14),
      I1 => B_extins(14),
      O => \partial_remainder[15]_i_4_n_0\
    );
\partial_remainder[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(13),
      I1 => B_extins(13),
      O => \partial_remainder[15]_i_5_n_0\
    );
\partial_remainder[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(12),
      I1 => B_extins(12),
      O => \partial_remainder[15]_i_6_n_0\
    );
\partial_remainder[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(16),
      I1 => partial_remainder(15),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(16)
    );
\partial_remainder[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(17),
      I1 => partial_remainder(16),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(17)
    );
\partial_remainder[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(18),
      I1 => partial_remainder(17),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(18)
    );
\partial_remainder[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(19),
      I1 => partial_remainder(18),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(19)
    );
\partial_remainder[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(19),
      I1 => B_extins(19),
      O => \partial_remainder[19]_i_3_n_0\
    );
\partial_remainder[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(18),
      I1 => B_extins(18),
      O => \partial_remainder[19]_i_4_n_0\
    );
\partial_remainder[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(17),
      I1 => B_extins(17),
      O => \partial_remainder[19]_i_5_n_0\
    );
\partial_remainder[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(16),
      I1 => B_extins(16),
      O => \partial_remainder[19]_i_6_n_0\
    );
\partial_remainder[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(1),
      I1 => partial_remainder(0),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(1)
    );
\partial_remainder[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(20),
      I1 => partial_remainder(19),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(20)
    );
\partial_remainder[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(21),
      I1 => partial_remainder(20),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(21)
    );
\partial_remainder[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(22),
      I1 => partial_remainder(21),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(22)
    );
\partial_remainder[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(23),
      I1 => partial_remainder(22),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(23)
    );
\partial_remainder[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(23),
      I1 => B_extins(23),
      O => \partial_remainder[23]_i_3_n_0\
    );
\partial_remainder[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(22),
      I1 => B_extins(22),
      O => \partial_remainder[23]_i_4_n_0\
    );
\partial_remainder[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(21),
      I1 => B_extins(21),
      O => \partial_remainder[23]_i_5_n_0\
    );
\partial_remainder[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(20),
      I1 => B_extins(20),
      O => \partial_remainder[23]_i_6_n_0\
    );
\partial_remainder[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(24),
      I1 => partial_remainder(23),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(24)
    );
\partial_remainder[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(25),
      I1 => partial_remainder(24),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(25)
    );
\partial_remainder[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(26),
      I1 => partial_remainder(25),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(26)
    );
\partial_remainder[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(27),
      I1 => partial_remainder(26),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(27)
    );
\partial_remainder[27]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(27),
      O => \partial_remainder[27]_i_3_n_0\
    );
\partial_remainder[27]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(26),
      O => \partial_remainder[27]_i_4_n_0\
    );
\partial_remainder[27]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(25),
      O => \partial_remainder[27]_i_5_n_0\
    );
\partial_remainder[27]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(24),
      O => \partial_remainder[27]_i_6_n_0\
    );
\partial_remainder[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(28),
      I1 => partial_remainder(27),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(28)
    );
\partial_remainder[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(29),
      I1 => partial_remainder(28),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(29)
    );
\partial_remainder[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(2),
      I1 => partial_remainder(1),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(2)
    );
\partial_remainder[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(30),
      I1 => partial_remainder(29),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(30)
    );
\partial_remainder[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(31),
      I1 => partial_remainder(30),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(31)
    );
\partial_remainder[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(31),
      O => \partial_remainder[31]_i_3_n_0\
    );
\partial_remainder[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(30),
      O => \partial_remainder[31]_i_4_n_0\
    );
\partial_remainder[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(29),
      O => \partial_remainder[31]_i_5_n_0\
    );
\partial_remainder[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(28),
      O => \partial_remainder[31]_i_6_n_0\
    );
\partial_remainder[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(32),
      I1 => partial_remainder(31),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(32)
    );
\partial_remainder[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(33),
      I1 => partial_remainder(32),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(33)
    );
\partial_remainder[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(34),
      I1 => partial_remainder(33),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(34)
    );
\partial_remainder[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(35),
      I1 => partial_remainder(34),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(35)
    );
\partial_remainder[35]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(35),
      O => \partial_remainder[35]_i_3_n_0\
    );
\partial_remainder[35]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(34),
      O => \partial_remainder[35]_i_4_n_0\
    );
\partial_remainder[35]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(33),
      O => \partial_remainder[35]_i_5_n_0\
    );
\partial_remainder[35]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(32),
      O => \partial_remainder[35]_i_6_n_0\
    );
\partial_remainder[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(36),
      I1 => partial_remainder(35),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(36)
    );
\partial_remainder[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(37),
      I1 => partial_remainder(36),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(37)
    );
\partial_remainder[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(38),
      I1 => partial_remainder(37),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(38)
    );
\partial_remainder[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(39),
      I1 => partial_remainder(38),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(39)
    );
\partial_remainder[39]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(39),
      O => \partial_remainder[39]_i_3_n_0\
    );
\partial_remainder[39]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(38),
      O => \partial_remainder[39]_i_4_n_0\
    );
\partial_remainder[39]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(37),
      O => \partial_remainder[39]_i_5_n_0\
    );
\partial_remainder[39]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(36),
      O => \partial_remainder[39]_i_6_n_0\
    );
\partial_remainder[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(3),
      I1 => partial_remainder(2),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(3)
    );
\partial_remainder[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(3),
      I1 => B_extins(3),
      O => \partial_remainder[3]_i_3_n_0\
    );
\partial_remainder[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(2),
      I1 => B_extins(2),
      O => \partial_remainder[3]_i_4_n_0\
    );
\partial_remainder[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(1),
      I1 => B_extins(1),
      O => \partial_remainder[3]_i_5_n_0\
    );
\partial_remainder[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(0),
      I1 => B_extins(0),
      O => \partial_remainder[3]_i_6_n_0\
    );
\partial_remainder[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(40),
      I1 => partial_remainder(39),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(40)
    );
\partial_remainder[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(41),
      I1 => partial_remainder(40),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(41)
    );
\partial_remainder[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(42),
      I1 => partial_remainder(41),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(42)
    );
\partial_remainder[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(43),
      I1 => partial_remainder(42),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(43)
    );
\partial_remainder[43]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(43),
      O => \partial_remainder[43]_i_3_n_0\
    );
\partial_remainder[43]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(42),
      O => \partial_remainder[43]_i_4_n_0\
    );
\partial_remainder[43]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(41),
      O => \partial_remainder[43]_i_5_n_0\
    );
\partial_remainder[43]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(40),
      O => \partial_remainder[43]_i_6_n_0\
    );
\partial_remainder[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(44),
      I1 => partial_remainder(43),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(44)
    );
\partial_remainder[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(45),
      I1 => partial_remainder(44),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(45)
    );
\partial_remainder[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(46),
      I1 => partial_remainder(45),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(46)
    );
\partial_remainder[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(47),
      I1 => partial_remainder(46),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(47)
    );
\partial_remainder[47]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(47),
      O => \partial_remainder[47]_i_3_n_0\
    );
\partial_remainder[47]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(46),
      O => \partial_remainder[47]_i_4_n_0\
    );
\partial_remainder[47]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(45),
      O => \partial_remainder[47]_i_5_n_0\
    );
\partial_remainder[47]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(44),
      O => \partial_remainder[47]_i_6_n_0\
    );
\partial_remainder[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(4),
      I1 => partial_remainder(3),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(4)
    );
\partial_remainder[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(5),
      I1 => partial_remainder(4),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(5)
    );
\partial_remainder[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(6),
      I1 => partial_remainder(5),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(6)
    );
\partial_remainder[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(7),
      I1 => partial_remainder(6),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(7)
    );
\partial_remainder[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(7),
      I1 => B_extins(7),
      O => \partial_remainder[7]_i_3_n_0\
    );
\partial_remainder[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(6),
      I1 => B_extins(6),
      O => \partial_remainder[7]_i_4_n_0\
    );
\partial_remainder[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(5),
      I1 => B_extins(5),
      O => \partial_remainder[7]_i_5_n_0\
    );
\partial_remainder[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => partial_remainder(4),
      I1 => B_extins(4),
      O => \partial_remainder[7]_i_6_n_0\
    );
\partial_remainder[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(8),
      I1 => partial_remainder(7),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(8)
    );
\partial_remainder[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => partial_remainder0(9),
      I1 => partial_remainder(8),
      I2 => \FSM_onehot_stare_reg_n_0_[1]\,
      I3 => p_0_in,
      O => partial_remainder_0(9)
    );
\partial_remainder_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(0),
      Q => partial_remainder(0),
      R => '0'
    );
\partial_remainder_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(10),
      Q => partial_remainder(10),
      R => '0'
    );
\partial_remainder_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(11),
      Q => partial_remainder(11),
      R => '0'
    );
\partial_remainder_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[7]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[11]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[11]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[11]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(11 downto 8),
      O(3 downto 0) => partial_remainder0(11 downto 8),
      S(3) => \partial_remainder[11]_i_3_n_0\,
      S(2) => \partial_remainder[11]_i_4_n_0\,
      S(1) => \partial_remainder[11]_i_5_n_0\,
      S(0) => \partial_remainder[11]_i_6_n_0\
    );
\partial_remainder_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(12),
      Q => partial_remainder(12),
      R => '0'
    );
\partial_remainder_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(13),
      Q => partial_remainder(13),
      R => '0'
    );
\partial_remainder_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(14),
      Q => partial_remainder(14),
      R => '0'
    );
\partial_remainder_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(15),
      Q => partial_remainder(15),
      R => '0'
    );
\partial_remainder_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[11]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[15]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[15]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[15]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(15 downto 12),
      O(3 downto 0) => partial_remainder0(15 downto 12),
      S(3) => \partial_remainder[15]_i_3_n_0\,
      S(2) => \partial_remainder[15]_i_4_n_0\,
      S(1) => \partial_remainder[15]_i_5_n_0\,
      S(0) => \partial_remainder[15]_i_6_n_0\
    );
\partial_remainder_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(16),
      Q => partial_remainder(16),
      R => '0'
    );
\partial_remainder_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(17),
      Q => partial_remainder(17),
      R => '0'
    );
\partial_remainder_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(18),
      Q => partial_remainder(18),
      R => '0'
    );
\partial_remainder_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(19),
      Q => partial_remainder(19),
      R => '0'
    );
\partial_remainder_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[15]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[19]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[19]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[19]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(19 downto 16),
      O(3 downto 0) => partial_remainder0(19 downto 16),
      S(3) => \partial_remainder[19]_i_3_n_0\,
      S(2) => \partial_remainder[19]_i_4_n_0\,
      S(1) => \partial_remainder[19]_i_5_n_0\,
      S(0) => \partial_remainder[19]_i_6_n_0\
    );
\partial_remainder_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(1),
      Q => partial_remainder(1),
      R => '0'
    );
\partial_remainder_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(20),
      Q => partial_remainder(20),
      R => '0'
    );
\partial_remainder_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(21),
      Q => partial_remainder(21),
      R => '0'
    );
\partial_remainder_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(22),
      Q => partial_remainder(22),
      R => '0'
    );
\partial_remainder_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(23),
      Q => partial_remainder(23),
      R => '0'
    );
\partial_remainder_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[19]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[23]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[23]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[23]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(23 downto 20),
      O(3 downto 0) => partial_remainder0(23 downto 20),
      S(3) => \partial_remainder[23]_i_3_n_0\,
      S(2) => \partial_remainder[23]_i_4_n_0\,
      S(1) => \partial_remainder[23]_i_5_n_0\,
      S(0) => \partial_remainder[23]_i_6_n_0\
    );
\partial_remainder_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(24),
      Q => partial_remainder(24),
      R => '0'
    );
\partial_remainder_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(25),
      Q => partial_remainder(25),
      R => '0'
    );
\partial_remainder_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(26),
      Q => partial_remainder(26),
      R => '0'
    );
\partial_remainder_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(27),
      Q => partial_remainder(27),
      R => '0'
    );
\partial_remainder_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[23]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[27]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[27]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[27]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(27 downto 24),
      O(3 downto 0) => partial_remainder0(27 downto 24),
      S(3) => \partial_remainder[27]_i_3_n_0\,
      S(2) => \partial_remainder[27]_i_4_n_0\,
      S(1) => \partial_remainder[27]_i_5_n_0\,
      S(0) => \partial_remainder[27]_i_6_n_0\
    );
\partial_remainder_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(28),
      Q => partial_remainder(28),
      R => '0'
    );
\partial_remainder_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(29),
      Q => partial_remainder(29),
      R => '0'
    );
\partial_remainder_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(2),
      Q => partial_remainder(2),
      R => '0'
    );
\partial_remainder_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(30),
      Q => partial_remainder(30),
      R => '0'
    );
\partial_remainder_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(31),
      Q => partial_remainder(31),
      R => '0'
    );
\partial_remainder_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[27]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[31]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[31]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[31]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(31 downto 28),
      O(3 downto 0) => partial_remainder0(31 downto 28),
      S(3) => \partial_remainder[31]_i_3_n_0\,
      S(2) => \partial_remainder[31]_i_4_n_0\,
      S(1) => \partial_remainder[31]_i_5_n_0\,
      S(0) => \partial_remainder[31]_i_6_n_0\
    );
\partial_remainder_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(32),
      Q => partial_remainder(32),
      R => '0'
    );
\partial_remainder_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(33),
      Q => partial_remainder(33),
      R => '0'
    );
\partial_remainder_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(34),
      Q => partial_remainder(34),
      R => '0'
    );
\partial_remainder_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(35),
      Q => partial_remainder(35),
      R => '0'
    );
\partial_remainder_reg[35]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[31]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[35]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[35]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[35]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[35]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(35 downto 32),
      O(3 downto 0) => partial_remainder0(35 downto 32),
      S(3) => \partial_remainder[35]_i_3_n_0\,
      S(2) => \partial_remainder[35]_i_4_n_0\,
      S(1) => \partial_remainder[35]_i_5_n_0\,
      S(0) => \partial_remainder[35]_i_6_n_0\
    );
\partial_remainder_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(36),
      Q => partial_remainder(36),
      R => '0'
    );
\partial_remainder_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(37),
      Q => partial_remainder(37),
      R => '0'
    );
\partial_remainder_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(38),
      Q => partial_remainder(38),
      R => '0'
    );
\partial_remainder_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(39),
      Q => partial_remainder(39),
      R => '0'
    );
\partial_remainder_reg[39]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[35]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[39]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[39]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[39]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[39]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(39 downto 36),
      O(3 downto 0) => partial_remainder0(39 downto 36),
      S(3) => \partial_remainder[39]_i_3_n_0\,
      S(2) => \partial_remainder[39]_i_4_n_0\,
      S(1) => \partial_remainder[39]_i_5_n_0\,
      S(0) => \partial_remainder[39]_i_6_n_0\
    );
\partial_remainder_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(3),
      Q => partial_remainder(3),
      R => '0'
    );
\partial_remainder_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \partial_remainder_reg[3]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[3]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[3]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => partial_remainder(3 downto 0),
      O(3 downto 0) => partial_remainder0(3 downto 0),
      S(3) => \partial_remainder[3]_i_3_n_0\,
      S(2) => \partial_remainder[3]_i_4_n_0\,
      S(1) => \partial_remainder[3]_i_5_n_0\,
      S(0) => \partial_remainder[3]_i_6_n_0\
    );
\partial_remainder_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(40),
      Q => partial_remainder(40),
      R => '0'
    );
\partial_remainder_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(41),
      Q => partial_remainder(41),
      R => '0'
    );
\partial_remainder_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(42),
      Q => partial_remainder(42),
      R => '0'
    );
\partial_remainder_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(43),
      Q => partial_remainder(43),
      R => '0'
    );
\partial_remainder_reg[43]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[39]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[43]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[43]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[43]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[43]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(43 downto 40),
      O(3 downto 0) => partial_remainder0(43 downto 40),
      S(3) => \partial_remainder[43]_i_3_n_0\,
      S(2) => \partial_remainder[43]_i_4_n_0\,
      S(1) => \partial_remainder[43]_i_5_n_0\,
      S(0) => \partial_remainder[43]_i_6_n_0\
    );
\partial_remainder_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(44),
      Q => partial_remainder(44),
      R => '0'
    );
\partial_remainder_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(45),
      Q => partial_remainder(45),
      R => '0'
    );
\partial_remainder_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(46),
      Q => partial_remainder(46),
      R => '0'
    );
\partial_remainder_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(47),
      Q => partial_remainder(47),
      R => '0'
    );
\partial_remainder_reg[47]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[43]_i_2_n_0\,
      CO(3) => \NLW_partial_remainder_reg[47]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \partial_remainder_reg[47]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[47]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[47]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => partial_remainder(46 downto 44),
      O(3 downto 0) => partial_remainder0(47 downto 44),
      S(3) => \partial_remainder[47]_i_3_n_0\,
      S(2) => \partial_remainder[47]_i_4_n_0\,
      S(1) => \partial_remainder[47]_i_5_n_0\,
      S(0) => \partial_remainder[47]_i_6_n_0\
    );
\partial_remainder_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(4),
      Q => partial_remainder(4),
      R => '0'
    );
\partial_remainder_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(5),
      Q => partial_remainder(5),
      R => '0'
    );
\partial_remainder_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(6),
      Q => partial_remainder(6),
      R => '0'
    );
\partial_remainder_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(7),
      Q => partial_remainder(7),
      R => '0'
    );
\partial_remainder_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \partial_remainder_reg[3]_i_2_n_0\,
      CO(3) => \partial_remainder_reg[7]_i_2_n_0\,
      CO(2) => \partial_remainder_reg[7]_i_2_n_1\,
      CO(1) => \partial_remainder_reg[7]_i_2_n_2\,
      CO(0) => \partial_remainder_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => partial_remainder(7 downto 4),
      O(3 downto 0) => partial_remainder0(7 downto 4),
      S(3) => \partial_remainder[7]_i_3_n_0\,
      S(2) => \partial_remainder[7]_i_4_n_0\,
      S(1) => \partial_remainder[7]_i_5_n_0\,
      S(0) => \partial_remainder[7]_i_6_n_0\
    );
\partial_remainder_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(8),
      Q => partial_remainder(8),
      R => '0'
    );
\partial_remainder_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[3]_i_1_n_0\,
      D => partial_remainder_0(9),
      Q => partial_remainder(9),
      R => '0'
    );
\result[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \result_reg_n_0_[22]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare_reg[0]\,
      I3 => \FSM_sequential_stare_reg[0]_0\,
      O => D(0)
    );
\result[23]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[2]\,
      I1 => \A_extins_reg[23]_0\,
      O => \result[23]_i_1__0_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(0),
      Q => \^q\(0),
      R => '0'
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(10),
      Q => \^q\(10),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(11),
      Q => \^q\(11),
      R => '0'
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(12),
      Q => \^q\(12),
      R => '0'
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(13),
      Q => \^q\(13),
      R => '0'
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(14),
      Q => \^q\(14),
      R => '0'
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(15),
      Q => \^q\(15),
      R => '0'
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(16),
      Q => \^q\(16),
      R => '0'
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(17),
      Q => \^q\(17),
      R => '0'
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(18),
      Q => \^q\(18),
      R => '0'
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(19),
      Q => \^q\(19),
      R => '0'
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(1),
      Q => \^q\(1),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(20),
      Q => \^q\(20),
      R => '0'
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(21),
      Q => \^q\(21),
      R => '0'
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(22),
      Q => \result_reg_n_0_[22]\,
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(23),
      Q => \result_reg_n_0_[23]\,
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(2),
      Q => \^q\(2),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(3),
      Q => \^q\(3),
      R => '0'
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(4),
      Q => \^q\(4),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(5),
      Q => \^q\(5),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(6),
      Q => \^q\(6),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(7),
      Q => \^q\(7),
      R => '0'
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(8),
      Q => \^q\(8),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[23]_i_1__0_n_0\,
      D => rezultat(9),
      Q => \^q\(9),
      R => '0'
    );
rezultat1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rezultat1_carry_n_0,
      CO(2) => rezultat1_carry_n_1,
      CO(1) => rezultat1_carry_n_2,
      CO(0) => rezultat1_carry_n_3,
      CYINIT => '1',
      DI(3) => rezultat1_carry_i_1_n_0,
      DI(2) => rezultat1_carry_i_2_n_0,
      DI(1) => rezultat1_carry_i_3_n_0,
      DI(0) => rezultat1_carry_i_4_n_0,
      O(3 downto 0) => NLW_rezultat1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rezultat1_carry_i_5_n_0,
      S(2) => rezultat1_carry_i_6_n_0,
      S(1) => rezultat1_carry_i_7_n_0,
      S(0) => rezultat1_carry_i_8_n_0
    );
\rezultat1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rezultat1_carry_n_0,
      CO(3) => \rezultat1_carry__0_n_0\,
      CO(2) => \rezultat1_carry__0_n_1\,
      CO(1) => \rezultat1_carry__0_n_2\,
      CO(0) => \rezultat1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat1_carry__0_i_1_n_0\,
      DI(2) => \rezultat1_carry__0_i_2_n_0\,
      DI(1) => \rezultat1_carry__0_i_3_n_0\,
      DI(0) => \rezultat1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_rezultat1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rezultat1_carry__0_i_5_n_0\,
      S(2) => \rezultat1_carry__0_i_6_n_0\,
      S(1) => \rezultat1_carry__0_i_7_n_0\,
      S(0) => \rezultat1_carry__0_i_8_n_0\
    );
\rezultat1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(14),
      I1 => B_extins(14),
      I2 => B_extins(15),
      I3 => partial_remainder(15),
      O => \rezultat1_carry__0_i_1_n_0\
    );
\rezultat1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(12),
      I1 => B_extins(12),
      I2 => B_extins(13),
      I3 => partial_remainder(13),
      O => \rezultat1_carry__0_i_2_n_0\
    );
\rezultat1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(10),
      I1 => B_extins(10),
      I2 => B_extins(11),
      I3 => partial_remainder(11),
      O => \rezultat1_carry__0_i_3_n_0\
    );
\rezultat1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(8),
      I1 => B_extins(8),
      I2 => B_extins(9),
      I3 => partial_remainder(9),
      O => \rezultat1_carry__0_i_4_n_0\
    );
\rezultat1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(15),
      I1 => partial_remainder(15),
      I2 => B_extins(14),
      I3 => partial_remainder(14),
      O => \rezultat1_carry__0_i_5_n_0\
    );
\rezultat1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(13),
      I1 => partial_remainder(13),
      I2 => B_extins(12),
      I3 => partial_remainder(12),
      O => \rezultat1_carry__0_i_6_n_0\
    );
\rezultat1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(11),
      I1 => partial_remainder(11),
      I2 => B_extins(10),
      I3 => partial_remainder(10),
      O => \rezultat1_carry__0_i_7_n_0\
    );
\rezultat1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(9),
      I1 => partial_remainder(9),
      I2 => B_extins(8),
      I3 => partial_remainder(8),
      O => \rezultat1_carry__0_i_8_n_0\
    );
\rezultat1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rezultat1_carry__0_n_0\,
      CO(3) => \rezultat1_carry__1_n_0\,
      CO(2) => \rezultat1_carry__1_n_1\,
      CO(1) => \rezultat1_carry__1_n_2\,
      CO(0) => \rezultat1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat1_carry__1_i_1_n_0\,
      DI(2) => \rezultat1_carry__1_i_2_n_0\,
      DI(1) => \rezultat1_carry__1_i_3_n_0\,
      DI(0) => \rezultat1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_rezultat1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rezultat1_carry__1_i_5_n_0\,
      S(2) => \rezultat1_carry__1_i_6_n_0\,
      S(1) => \rezultat1_carry__1_i_7_n_0\,
      S(0) => \rezultat1_carry__1_i_8_n_0\
    );
\rezultat1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(22),
      I1 => B_extins(22),
      I2 => B_extins(23),
      I3 => partial_remainder(23),
      O => \rezultat1_carry__1_i_1_n_0\
    );
\rezultat1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(20),
      I1 => B_extins(20),
      I2 => B_extins(21),
      I3 => partial_remainder(21),
      O => \rezultat1_carry__1_i_2_n_0\
    );
\rezultat1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(18),
      I1 => B_extins(18),
      I2 => B_extins(19),
      I3 => partial_remainder(19),
      O => \rezultat1_carry__1_i_3_n_0\
    );
\rezultat1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(16),
      I1 => B_extins(16),
      I2 => B_extins(17),
      I3 => partial_remainder(17),
      O => \rezultat1_carry__1_i_4_n_0\
    );
\rezultat1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(23),
      I1 => partial_remainder(23),
      I2 => B_extins(22),
      I3 => partial_remainder(22),
      O => \rezultat1_carry__1_i_5_n_0\
    );
\rezultat1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(21),
      I1 => partial_remainder(21),
      I2 => B_extins(20),
      I3 => partial_remainder(20),
      O => \rezultat1_carry__1_i_6_n_0\
    );
\rezultat1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(19),
      I1 => partial_remainder(19),
      I2 => B_extins(18),
      I3 => partial_remainder(18),
      O => \rezultat1_carry__1_i_7_n_0\
    );
\rezultat1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(17),
      I1 => partial_remainder(17),
      I2 => B_extins(16),
      I3 => partial_remainder(16),
      O => \rezultat1_carry__1_i_8_n_0\
    );
\rezultat1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rezultat1_carry__1_n_0\,
      CO(3) => \rezultat1_carry__2_n_0\,
      CO(2) => \rezultat1_carry__2_n_1\,
      CO(1) => \rezultat1_carry__2_n_2\,
      CO(0) => \rezultat1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat1_carry__2_i_1_n_0\,
      DI(2) => \rezultat1_carry__2_i_2_n_0\,
      DI(1) => \rezultat1_carry__2_i_3_n_0\,
      DI(0) => \rezultat1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_rezultat1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rezultat1_carry__2_i_5_n_0\,
      S(2) => \rezultat1_carry__2_i_6_n_0\,
      S(1) => \rezultat1_carry__2_i_7_n_0\,
      S(0) => \rezultat1_carry__2_i_8_n_0\
    );
\rezultat1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(30),
      I1 => partial_remainder(31),
      O => \rezultat1_carry__2_i_1_n_0\
    );
\rezultat1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(28),
      I1 => partial_remainder(29),
      O => \rezultat1_carry__2_i_2_n_0\
    );
\rezultat1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(26),
      I1 => partial_remainder(27),
      O => \rezultat1_carry__2_i_3_n_0\
    );
\rezultat1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(24),
      I1 => partial_remainder(25),
      O => \rezultat1_carry__2_i_4_n_0\
    );
\rezultat1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(31),
      I1 => partial_remainder(30),
      O => \rezultat1_carry__2_i_5_n_0\
    );
\rezultat1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(29),
      I1 => partial_remainder(28),
      O => \rezultat1_carry__2_i_6_n_0\
    );
\rezultat1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(27),
      I1 => partial_remainder(26),
      O => \rezultat1_carry__2_i_7_n_0\
    );
\rezultat1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(25),
      I1 => partial_remainder(24),
      O => \rezultat1_carry__2_i_8_n_0\
    );
\rezultat1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rezultat1_carry__2_n_0\,
      CO(3) => \rezultat1_carry__3_n_0\,
      CO(2) => \rezultat1_carry__3_n_1\,
      CO(1) => \rezultat1_carry__3_n_2\,
      CO(0) => \rezultat1_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat1_carry__3_i_1_n_0\,
      DI(2) => \rezultat1_carry__3_i_2_n_0\,
      DI(1) => \rezultat1_carry__3_i_3_n_0\,
      DI(0) => \rezultat1_carry__3_i_4_n_0\,
      O(3 downto 0) => \NLW_rezultat1_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \rezultat1_carry__3_i_5_n_0\,
      S(2) => \rezultat1_carry__3_i_6_n_0\,
      S(1) => \rezultat1_carry__3_i_7_n_0\,
      S(0) => \rezultat1_carry__3_i_8_n_0\
    );
\rezultat1_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(38),
      I1 => partial_remainder(39),
      O => \rezultat1_carry__3_i_1_n_0\
    );
\rezultat1_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(36),
      I1 => partial_remainder(37),
      O => \rezultat1_carry__3_i_2_n_0\
    );
\rezultat1_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(34),
      I1 => partial_remainder(35),
      O => \rezultat1_carry__3_i_3_n_0\
    );
\rezultat1_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(32),
      I1 => partial_remainder(33),
      O => \rezultat1_carry__3_i_4_n_0\
    );
\rezultat1_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(39),
      I1 => partial_remainder(38),
      O => \rezultat1_carry__3_i_5_n_0\
    );
\rezultat1_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(37),
      I1 => partial_remainder(36),
      O => \rezultat1_carry__3_i_6_n_0\
    );
\rezultat1_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(35),
      I1 => partial_remainder(34),
      O => \rezultat1_carry__3_i_7_n_0\
    );
\rezultat1_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(33),
      I1 => partial_remainder(32),
      O => \rezultat1_carry__3_i_8_n_0\
    );
\rezultat1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rezultat1_carry__3_n_0\,
      CO(3) => p_0_in,
      CO(2) => \rezultat1_carry__4_n_1\,
      CO(1) => \rezultat1_carry__4_n_2\,
      CO(0) => \rezultat1_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat1_carry__4_i_1_n_0\,
      DI(2) => \rezultat1_carry__4_i_2_n_0\,
      DI(1) => \rezultat1_carry__4_i_3_n_0\,
      DI(0) => \rezultat1_carry__4_i_4_n_0\,
      O(3 downto 0) => \NLW_rezultat1_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \rezultat1_carry__4_i_5_n_0\,
      S(2) => \rezultat1_carry__4_i_6_n_0\,
      S(1) => \rezultat1_carry__4_i_7_n_0\,
      S(0) => \rezultat1_carry__4_i_8_n_0\
    );
\rezultat1_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(46),
      I1 => partial_remainder(47),
      O => \rezultat1_carry__4_i_1_n_0\
    );
\rezultat1_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(44),
      I1 => partial_remainder(45),
      O => \rezultat1_carry__4_i_2_n_0\
    );
\rezultat1_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(42),
      I1 => partial_remainder(43),
      O => \rezultat1_carry__4_i_3_n_0\
    );
\rezultat1_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => partial_remainder(40),
      I1 => partial_remainder(41),
      O => \rezultat1_carry__4_i_4_n_0\
    );
\rezultat1_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(47),
      I1 => partial_remainder(46),
      O => \rezultat1_carry__4_i_5_n_0\
    );
\rezultat1_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(45),
      I1 => partial_remainder(44),
      O => \rezultat1_carry__4_i_6_n_0\
    );
\rezultat1_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(43),
      I1 => partial_remainder(42),
      O => \rezultat1_carry__4_i_7_n_0\
    );
\rezultat1_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => partial_remainder(41),
      I1 => partial_remainder(40),
      O => \rezultat1_carry__4_i_8_n_0\
    );
rezultat1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(6),
      I1 => B_extins(6),
      I2 => B_extins(7),
      I3 => partial_remainder(7),
      O => rezultat1_carry_i_1_n_0
    );
rezultat1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(4),
      I1 => B_extins(4),
      I2 => B_extins(5),
      I3 => partial_remainder(5),
      O => rezultat1_carry_i_2_n_0
    );
rezultat1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(2),
      I1 => B_extins(2),
      I2 => B_extins(3),
      I3 => partial_remainder(3),
      O => rezultat1_carry_i_3_n_0
    );
rezultat1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => partial_remainder(0),
      I1 => B_extins(0),
      I2 => B_extins(1),
      I3 => partial_remainder(1),
      O => rezultat1_carry_i_4_n_0
    );
rezultat1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(7),
      I1 => partial_remainder(7),
      I2 => B_extins(6),
      I3 => partial_remainder(6),
      O => rezultat1_carry_i_5_n_0
    );
rezultat1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(5),
      I1 => partial_remainder(5),
      I2 => B_extins(4),
      I3 => partial_remainder(4),
      O => rezultat1_carry_i_6_n_0
    );
rezultat1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(3),
      I1 => partial_remainder(3),
      I2 => B_extins(2),
      I3 => partial_remainder(2),
      O => rezultat1_carry_i_7_n_0
    );
rezultat1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B_extins(1),
      I1 => partial_remainder(1),
      I2 => B_extins(0),
      I3 => partial_remainder(0),
      O => rezultat1_carry_i_8_n_0
    );
\rezultat[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[16]_i_2_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(0),
      O => \rezultat[0]_i_1_n_0\
    );
\rezultat[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[18]_i_2_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(10),
      O => \rezultat[10]_i_1_n_0\
    );
\rezultat[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[19]_i_2_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(11),
      O => \rezultat[11]_i_1_n_0\
    );
\rezultat[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFFFAAAA2000"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[20]_i_2_n_0\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \rezultat[15]_i_2_n_0\,
      I4 => B_extins_2,
      I5 => rezultat(12),
      O => \rezultat[12]_i_1_n_0\
    );
\rezultat[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[21]_i_2_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(13),
      O => \rezultat[13]_i_1_n_0\
    );
\rezultat[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[22]_i_2_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(14),
      O => \rezultat[14]_i_1_n_0\
    );
\rezultat[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[23]_i_3_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(15),
      O => \rezultat[15]_i_1_n_0\
    );
\rezultat[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[3]\,
      I2 => \contor_reg_n_0_[4]\,
      O => \rezultat[15]_i_2_n_0\
    );
\rezultat[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[16]_i_2_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(16),
      O => \rezultat[16]_i_1_n_0\
    );
\rezultat[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \rezultat[16]_i_2_n_0\
    );
\rezultat[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[17]_i_2_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(17),
      O => \rezultat[17]_i_1_n_0\
    );
\rezultat[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[2]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \rezultat[17]_i_2_n_0\
    );
\rezultat[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[18]_i_2_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(18),
      O => \rezultat[18]_i_1_n_0\
    );
\rezultat[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \contor_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[2]\,
      I2 => \contor_reg_n_0_[0]\,
      O => \rezultat[18]_i_2_n_0\
    );
\rezultat[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[19]_i_2_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(19),
      O => \rezultat[19]_i_1_n_0\
    );
\rezultat[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \rezultat[19]_i_2_n_0\
    );
\rezultat[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[17]_i_2_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(1),
      O => \rezultat[1]_i_1_n_0\
    );
\rezultat[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFFFAAAA2000"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[20]_i_2_n_0\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \rezultat[23]_i_4_n_0\,
      I4 => B_extins_2,
      I5 => rezultat(20),
      O => \rezultat[20]_i_1_n_0\
    );
\rezultat[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \contor_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      O => \rezultat[20]_i_2_n_0\
    );
\rezultat[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[21]_i_2_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(21),
      O => \rezultat[21]_i_1_n_0\
    );
\rezultat[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \rezultat[21]_i_2_n_0\
    );
\rezultat[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[22]_i_2_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(22),
      O => \rezultat[22]_i_1_n_0\
    );
\rezultat[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \contor_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \rezultat[22]_i_2_n_0\
    );
\rezultat[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[23]_i_3_n_0\,
      I2 => \rezultat[23]_i_4_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(23),
      O => \rezultat[23]_i_1_n_0\
    );
\rezultat[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => p_0_in,
      O => rezultat_1(22)
    );
\rezultat[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \rezultat[23]_i_3_n_0\
    );
\rezultat[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[4]\,
      I2 => \contor_reg_n_0_[3]\,
      O => \rezultat[23]_i_4_n_0\
    );
\rezultat[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[18]_i_2_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(2),
      O => \rezultat[2]_i_1_n_0\
    );
\rezultat[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[19]_i_2_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(3),
      O => \rezultat[3]_i_1_n_0\
    );
\rezultat[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFFFAAAA2000"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[20]_i_2_n_0\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \rezultat[7]_i_2_n_0\,
      I4 => B_extins_2,
      I5 => rezultat(4),
      O => \rezultat[4]_i_1_n_0\
    );
\rezultat[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[21]_i_2_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(5),
      O => \rezultat[5]_i_1_n_0\
    );
\rezultat[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[22]_i_2_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(6),
      O => \rezultat[6]_i_1_n_0\
    );
\rezultat[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[23]_i_3_n_0\,
      I2 => \rezultat[7]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(7),
      O => \rezultat[7]_i_1_n_0\
    );
\rezultat[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_stare_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[4]\,
      I2 => \contor_reg_n_0_[3]\,
      O => \rezultat[7]_i_2_n_0\
    );
\rezultat[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[16]_i_2_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(8),
      O => \rezultat[8]_i_1_n_0\
    );
\rezultat[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFEFEFAA202020"
    )
        port map (
      I0 => rezultat_1(22),
      I1 => \rezultat[17]_i_2_n_0\,
      I2 => \rezultat[15]_i_2_n_0\,
      I3 => \A_extins_reg[23]_0\,
      I4 => \FSM_onehot_stare_reg_n_0_[0]\,
      I5 => rezultat(9),
      O => \rezultat[9]_i_1_n_0\
    );
\rezultat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[0]_i_1_n_0\,
      Q => rezultat(0),
      R => '0'
    );
\rezultat_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[10]_i_1_n_0\,
      Q => rezultat(10),
      R => '0'
    );
\rezultat_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[11]_i_1_n_0\,
      Q => rezultat(11),
      R => '0'
    );
\rezultat_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[12]_i_1_n_0\,
      Q => rezultat(12),
      R => '0'
    );
\rezultat_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[13]_i_1_n_0\,
      Q => rezultat(13),
      R => '0'
    );
\rezultat_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[14]_i_1_n_0\,
      Q => rezultat(14),
      R => '0'
    );
\rezultat_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[15]_i_1_n_0\,
      Q => rezultat(15),
      R => '0'
    );
\rezultat_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[16]_i_1_n_0\,
      Q => rezultat(16),
      R => '0'
    );
\rezultat_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[17]_i_1_n_0\,
      Q => rezultat(17),
      R => '0'
    );
\rezultat_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[18]_i_1_n_0\,
      Q => rezultat(18),
      R => '0'
    );
\rezultat_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[19]_i_1_n_0\,
      Q => rezultat(19),
      R => '0'
    );
\rezultat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[1]_i_1_n_0\,
      Q => rezultat(1),
      R => '0'
    );
\rezultat_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[20]_i_1_n_0\,
      Q => rezultat(20),
      R => '0'
    );
\rezultat_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[21]_i_1_n_0\,
      Q => rezultat(21),
      R => '0'
    );
\rezultat_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[22]_i_1_n_0\,
      Q => rezultat(22),
      R => '0'
    );
\rezultat_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[23]_i_1_n_0\,
      Q => rezultat(23),
      R => '0'
    );
\rezultat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[2]_i_1_n_0\,
      Q => rezultat(2),
      R => '0'
    );
\rezultat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[3]_i_1_n_0\,
      Q => rezultat(3),
      R => '0'
    );
\rezultat_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[4]_i_1_n_0\,
      Q => rezultat(4),
      R => '0'
    );
\rezultat_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[5]_i_1_n_0\,
      Q => rezultat(5),
      R => '0'
    );
\rezultat_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[6]_i_1_n_0\,
      Q => rezultat(6),
      R => '0'
    );
\rezultat_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[7]_i_1_n_0\,
      Q => rezultat(7),
      R => '0'
    );
\rezultat_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[8]_i_1_n_0\,
      Q => rezultat(8),
      R => '0'
    );
\rezultat_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rezultat[9]_i_1_n_0\,
      Q => rezultat(9),
      R => '0'
    );
start_div_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70004"
    )
        port map (
      I0 => done_div,
      I1 => stare(0),
      I2 => stare(1),
      I3 => stare(2),
      I4 => \A_extins_reg[23]_0\,
      O => done_reg_0
    );
\zero_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7755775523002200"
    )
        port map (
      I0 => E(0),
      I1 => \zero_i_2__1_n_0\,
      I2 => stare(2),
      I3 => stare(1),
      I4 => stare(0),
      I5 => zero4,
      O => \FSM_sequential_stare_reg[2]\
    );
\zero_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \zero_i_3__1_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \zero_i_4__1_n_0\,
      O => \zero_i_2__1_n_0\
    );
\zero_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(16),
      I2 => \^q\(2),
      I3 => \^q\(10),
      O => \zero_i_3__1_n_0\
    );
\zero_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \zero_i_5__0_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(14),
      I3 => \^q\(17),
      I4 => \^q\(9),
      I5 => \zero_i_6__0_n_0\,
      O => \zero_i_4__1_n_0\
    );
\zero_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(19),
      I2 => \result_reg_n_0_[22]\,
      I3 => \^q\(1),
      O => \zero_i_5__0_n_0\
    );
\zero_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \result_reg_n_0_[23]\,
      I1 => \^q\(21),
      I2 => \^q\(8),
      I3 => \^q\(11),
      I4 => \zero_i_7__0_n_0\,
      O => \zero_i_6__0_n_0\
    );
\zero_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(0),
      O => \zero_i_7__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_mulBinary is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_reg_0 : out STD_LOGIC;
    \FSM_sequential_stare_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_stare_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_stare_reg[2]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clk : in STD_LOGIC;
    \FSM_sequential_stare_reg[1]_0\ : in STD_LOGIC;
    stare : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_stare_reg[2]_2\ : in STD_LOGIC;
    \FSM_sequential_stare_reg[2]_3\ : in STD_LOGIC;
    \B_extins_reg[22]_0\ : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \A_extins_reg[22]_0\ : in STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_mulBinary : entity is "mulBinary";
end design_1_ALU_0_0_mulBinary;

architecture STRUCTURE of design_1_ALU_0_0_mulBinary is
  signal A_extins : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \A_extins[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[0]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[10]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[11]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[12]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[13]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[14]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[15]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[16]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[17]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[18]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[19]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[1]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[20]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[21]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[22]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[23]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[24]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[25]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[26]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[27]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[28]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[29]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[2]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[30]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[31]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[32]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[33]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[34]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[35]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[36]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[37]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[38]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[39]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[3]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[40]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[41]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[42]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[43]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[44]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[45]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[46]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[47]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[4]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[5]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[6]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[7]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[8]\ : STD_LOGIC;
  signal \A_extins_reg_n_0_[9]\ : STD_LOGIC;
  signal B_extins : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \B_extins_reg_n_0_[0]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[10]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[11]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[12]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[13]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[14]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[15]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[16]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[17]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[18]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[19]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[1]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[20]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[21]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[22]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[23]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[2]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[3]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[4]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[5]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[6]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[7]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[8]\ : STD_LOGIC;
  signal \B_extins_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_stare[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[1]_i_2_n_0\ : STD_LOGIC;
  signal \contor[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \contor[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \contor[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \contor[2]_i_2_n_0\ : STD_LOGIC;
  signal \contor[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \contor[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \contor[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal \contor_reg_n_0_[4]\ : STD_LOGIC;
  signal \done_i_1__0_n_0\ : STD_LOGIC;
  signal final_mul : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__10_n_1\ : STD_LOGIC;
  signal \plusOp_carry__10_n_2\ : STD_LOGIC;
  signal \plusOp_carry__10_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_n_1\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__7_n_0\ : STD_LOGIC;
  signal \plusOp_carry__7_n_1\ : STD_LOGIC;
  signal \plusOp_carry__7_n_2\ : STD_LOGIC;
  signal \plusOp_carry__7_n_3\ : STD_LOGIC;
  signal \plusOp_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__8_n_0\ : STD_LOGIC;
  signal \plusOp_carry__8_n_1\ : STD_LOGIC;
  signal \plusOp_carry__8_n_2\ : STD_LOGIC;
  signal \plusOp_carry__8_n_3\ : STD_LOGIC;
  signal \plusOp_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__9_n_0\ : STD_LOGIC;
  signal \plusOp_carry__9_n_1\ : STD_LOGIC;
  signal \plusOp_carry__9_n_2\ : STD_LOGIC;
  signal \plusOp_carry__9_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \result[47]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[47]_i_1_n_0\ : STD_LOGIC;
  signal \rezultat[47]_i_2_n_0\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[0]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[10]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[11]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[12]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[13]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[14]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[15]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[16]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[17]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[18]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[19]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[1]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[20]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[21]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[22]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[23]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[24]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[25]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[26]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[27]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[28]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[29]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[2]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[30]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[31]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[32]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[33]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[34]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[35]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[36]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[37]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[38]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[39]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[3]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[40]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[41]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[42]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[43]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[44]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[45]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[46]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[47]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[4]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[5]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[6]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[7]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[8]\ : STD_LOGIC;
  signal \rezultat_reg_n_0_[9]\ : STD_LOGIC;
  signal stare_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_plusOp_carry__10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_extins[10]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \A_extins[11]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \A_extins[12]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \A_extins[13]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \A_extins[14]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \A_extins[15]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \A_extins[16]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \A_extins[17]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \A_extins[18]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \A_extins[19]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \A_extins[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \A_extins[20]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \A_extins[21]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \A_extins[22]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \A_extins[23]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \A_extins[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \A_extins[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \A_extins[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \A_extins[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \A_extins[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \A_extins[7]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \A_extins[8]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \A_extins[9]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \B_extins[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \B_extins[10]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \B_extins[11]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \B_extins[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \B_extins[13]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \B_extins[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \B_extins[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \B_extins[16]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \B_extins[17]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \B_extins[18]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \B_extins[19]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \B_extins[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \B_extins[20]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \B_extins[21]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \B_extins[22]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \B_extins[23]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \B_extins[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \B_extins[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \B_extins[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \B_extins[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \B_extins[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \B_extins[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \B_extins[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \B_extins[9]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[0]_i_1__3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_1__2\ : label is "soft_lutpair55";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "verificare:10,multiplicare:01,initializare:00,terminare:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "verificare:10,multiplicare:01,initializare:00,terminare:11";
  attribute SOFT_HLUTNM of \contor[1]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \contor[2]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \contor[3]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \done_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mantisa_normalizata[47]_i_1\ : label is "soft_lutpair54";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__10\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__9\ : label is 35;
begin
\A_extins[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \A_extins_reg[22]_0\(0),
      I1 => stare_0(0),
      O => A_extins(0)
    );
\A_extins[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[9]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(10),
      O => A_extins(10)
    );
\A_extins[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[10]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(11),
      O => A_extins(11)
    );
\A_extins[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[11]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(12),
      O => A_extins(12)
    );
\A_extins[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[12]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(13),
      O => A_extins(13)
    );
\A_extins[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[13]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(14),
      O => A_extins(14)
    );
\A_extins[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[14]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(15),
      O => A_extins(15)
    );
\A_extins[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[15]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(16),
      O => A_extins(16)
    );
\A_extins[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[16]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(17),
      O => A_extins(17)
    );
\A_extins[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[17]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(18),
      O => A_extins(18)
    );
\A_extins[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[18]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(19),
      O => A_extins(19)
    );
\A_extins[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[0]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(1),
      O => A_extins(1)
    );
\A_extins[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[19]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(20),
      O => A_extins(20)
    );
\A_extins[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[20]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(21),
      O => A_extins(21)
    );
\A_extins[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[21]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(22),
      O => A_extins(22)
    );
\A_extins[23]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \A_extins_reg_n_0_[22]\,
      I1 => stare_0(0),
      O => \A_extins[23]_i_1__0_n_0\
    );
\A_extins[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[1]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(2),
      O => A_extins(2)
    );
\A_extins[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[2]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(3),
      O => A_extins(3)
    );
\A_extins[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[3]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(4),
      O => A_extins(4)
    );
\A_extins[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[4]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(5),
      O => A_extins(5)
    );
\A_extins[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[5]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(6),
      O => A_extins(6)
    );
\A_extins[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[6]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(7),
      O => A_extins(7)
    );
\A_extins[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[7]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(8),
      O => A_extins(8)
    );
\A_extins[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_extins_reg_n_0_[8]\,
      I1 => stare_0(0),
      I2 => \A_extins_reg[22]_0\(9),
      O => A_extins(9)
    );
\A_extins_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(0),
      Q => \A_extins_reg_n_0_[0]\,
      R => '0'
    );
\A_extins_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(10),
      Q => \A_extins_reg_n_0_[10]\,
      R => '0'
    );
\A_extins_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(11),
      Q => \A_extins_reg_n_0_[11]\,
      R => '0'
    );
\A_extins_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(12),
      Q => \A_extins_reg_n_0_[12]\,
      R => '0'
    );
\A_extins_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(13),
      Q => \A_extins_reg_n_0_[13]\,
      R => '0'
    );
\A_extins_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(14),
      Q => \A_extins_reg_n_0_[14]\,
      R => '0'
    );
\A_extins_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(15),
      Q => \A_extins_reg_n_0_[15]\,
      R => '0'
    );
\A_extins_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(16),
      Q => \A_extins_reg_n_0_[16]\,
      R => '0'
    );
\A_extins_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(17),
      Q => \A_extins_reg_n_0_[17]\,
      R => '0'
    );
\A_extins_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(18),
      Q => \A_extins_reg_n_0_[18]\,
      R => '0'
    );
\A_extins_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(19),
      Q => \A_extins_reg_n_0_[19]\,
      R => '0'
    );
\A_extins_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(1),
      Q => \A_extins_reg_n_0_[1]\,
      R => '0'
    );
\A_extins_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(20),
      Q => \A_extins_reg_n_0_[20]\,
      R => '0'
    );
\A_extins_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(21),
      Q => \A_extins_reg_n_0_[21]\,
      R => '0'
    );
\A_extins_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(22),
      Q => \A_extins_reg_n_0_[22]\,
      R => '0'
    );
\A_extins_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins[23]_i_1__0_n_0\,
      Q => \A_extins_reg_n_0_[23]\,
      R => '0'
    );
\A_extins_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[23]\,
      Q => \A_extins_reg_n_0_[24]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[24]\,
      Q => \A_extins_reg_n_0_[25]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[25]\,
      Q => \A_extins_reg_n_0_[26]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[26]\,
      Q => \A_extins_reg_n_0_[27]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[27]\,
      Q => \A_extins_reg_n_0_[28]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[28]\,
      Q => \A_extins_reg_n_0_[29]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(2),
      Q => \A_extins_reg_n_0_[2]\,
      R => '0'
    );
\A_extins_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[29]\,
      Q => \A_extins_reg_n_0_[30]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[30]\,
      Q => \A_extins_reg_n_0_[31]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[31]\,
      Q => \A_extins_reg_n_0_[32]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[32]\,
      Q => \A_extins_reg_n_0_[33]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[33]\,
      Q => \A_extins_reg_n_0_[34]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[34]\,
      Q => \A_extins_reg_n_0_[35]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[35]\,
      Q => \A_extins_reg_n_0_[36]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[36]\,
      Q => \A_extins_reg_n_0_[37]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[37]\,
      Q => \A_extins_reg_n_0_[38]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[38]\,
      Q => \A_extins_reg_n_0_[39]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(3),
      Q => \A_extins_reg_n_0_[3]\,
      R => '0'
    );
\A_extins_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[39]\,
      Q => \A_extins_reg_n_0_[40]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[40]\,
      Q => \A_extins_reg_n_0_[41]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[41]\,
      Q => \A_extins_reg_n_0_[42]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[42]\,
      Q => \A_extins_reg_n_0_[43]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[43]\,
      Q => \A_extins_reg_n_0_[44]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[44]\,
      Q => \A_extins_reg_n_0_[45]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[45]\,
      Q => \A_extins_reg_n_0_[46]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \A_extins_reg_n_0_[46]\,
      Q => \A_extins_reg_n_0_[47]\,
      R => \contor[2]_i_1__1_n_0\
    );
\A_extins_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(4),
      Q => \A_extins_reg_n_0_[4]\,
      R => '0'
    );
\A_extins_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(5),
      Q => \A_extins_reg_n_0_[5]\,
      R => '0'
    );
\A_extins_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(6),
      Q => \A_extins_reg_n_0_[6]\,
      R => '0'
    );
\A_extins_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(7),
      Q => \A_extins_reg_n_0_[7]\,
      R => '0'
    );
\A_extins_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(8),
      Q => \A_extins_reg_n_0_[8]\,
      R => '0'
    );
\A_extins_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => A_extins(9),
      Q => \A_extins_reg_n_0_[9]\,
      R => '0'
    );
\B_extins[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[1]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(0),
      O => B_extins(0)
    );
\B_extins[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[11]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(10),
      O => B_extins(10)
    );
\B_extins[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[12]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(11),
      O => B_extins(11)
    );
\B_extins[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[13]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(12),
      O => B_extins(12)
    );
\B_extins[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[14]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(13),
      O => B_extins(13)
    );
\B_extins[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[15]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(14),
      O => B_extins(14)
    );
\B_extins[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[16]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(15),
      O => B_extins(15)
    );
\B_extins[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[17]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(16),
      O => B_extins(16)
    );
\B_extins[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[18]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(17),
      O => B_extins(17)
    );
\B_extins[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[19]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(18),
      O => B_extins(18)
    );
\B_extins[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[20]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(19),
      O => B_extins(19)
    );
\B_extins[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[2]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(1),
      O => B_extins(1)
    );
\B_extins[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[21]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(20),
      O => B_extins(20)
    );
\B_extins[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[22]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(21),
      O => B_extins(21)
    );
\B_extins[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[23]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(22),
      O => B_extins(22)
    );
\B_extins[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stare_0(0),
      O => B_extins(23)
    );
\B_extins[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[3]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(2),
      O => B_extins(2)
    );
\B_extins[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[4]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(3),
      O => B_extins(3)
    );
\B_extins[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[5]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(4),
      O => B_extins(4)
    );
\B_extins[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[6]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(5),
      O => B_extins(5)
    );
\B_extins[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[7]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(6),
      O => B_extins(6)
    );
\B_extins[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[8]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(7),
      O => B_extins(7)
    );
\B_extins[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[9]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(8),
      O => B_extins(8)
    );
\B_extins[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_extins_reg_n_0_[10]\,
      I1 => stare_0(0),
      I2 => \B_extins_reg[22]_0\(9),
      O => B_extins(9)
    );
\B_extins_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(0),
      Q => \B_extins_reg_n_0_[0]\,
      R => '0'
    );
\B_extins_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(10),
      Q => \B_extins_reg_n_0_[10]\,
      R => '0'
    );
\B_extins_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(11),
      Q => \B_extins_reg_n_0_[11]\,
      R => '0'
    );
\B_extins_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(12),
      Q => \B_extins_reg_n_0_[12]\,
      R => '0'
    );
\B_extins_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(13),
      Q => \B_extins_reg_n_0_[13]\,
      R => '0'
    );
\B_extins_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(14),
      Q => \B_extins_reg_n_0_[14]\,
      R => '0'
    );
\B_extins_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(15),
      Q => \B_extins_reg_n_0_[15]\,
      R => '0'
    );
\B_extins_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(16),
      Q => \B_extins_reg_n_0_[16]\,
      R => '0'
    );
\B_extins_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(17),
      Q => \B_extins_reg_n_0_[17]\,
      R => '0'
    );
\B_extins_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(18),
      Q => \B_extins_reg_n_0_[18]\,
      R => '0'
    );
\B_extins_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(19),
      Q => \B_extins_reg_n_0_[19]\,
      R => '0'
    );
\B_extins_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(1),
      Q => \B_extins_reg_n_0_[1]\,
      R => '0'
    );
\B_extins_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(20),
      Q => \B_extins_reg_n_0_[20]\,
      R => '0'
    );
\B_extins_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(21),
      Q => \B_extins_reg_n_0_[21]\,
      R => '0'
    );
\B_extins_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(22),
      Q => \B_extins_reg_n_0_[22]\,
      R => '0'
    );
\B_extins_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(23),
      Q => \B_extins_reg_n_0_[23]\,
      R => '0'
    );
\B_extins_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(2),
      Q => \B_extins_reg_n_0_[2]\,
      R => '0'
    );
\B_extins_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(3),
      Q => \B_extins_reg_n_0_[3]\,
      R => '0'
    );
\B_extins_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(4),
      Q => \B_extins_reg_n_0_[4]\,
      R => '0'
    );
\B_extins_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(5),
      Q => \B_extins_reg_n_0_[5]\,
      R => '0'
    );
\B_extins_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(6),
      Q => \B_extins_reg_n_0_[6]\,
      R => '0'
    );
\B_extins_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(7),
      Q => \B_extins_reg_n_0_[7]\,
      R => '0'
    );
\B_extins_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(8),
      Q => \B_extins_reg_n_0_[8]\,
      R => '0'
    );
\B_extins_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => B_extins(9),
      Q => \B_extins_reg_n_0_[9]\,
      R => '0'
    );
\FSM_sequential_stare[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => stare_0(0),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(1),
      O => \FSM_sequential_stare[0]_i_1__2_n_0\
    );
\FSM_sequential_stare[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E3E3F3F"
    )
        port map (
      I0 => \FSM_sequential_stare_reg[2]_3\,
      I1 => stare(2),
      I2 => stare(1),
      I3 => final_mul,
      I4 => stare(0),
      O => \FSM_sequential_stare_reg[2]_1\
    );
\FSM_sequential_stare[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2EC"
    )
        port map (
      I0 => \FSM_sequential_stare[1]_i_2_n_0\,
      I1 => stare_0(0),
      I2 => \FSM_sequential_stare_reg[1]_0\,
      I3 => stare_0(1),
      O => \FSM_sequential_stare[1]_i_1__2_n_0\
    );
\FSM_sequential_stare[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00050F0503000300"
    )
        port map (
      I0 => \FSM_sequential_stare_reg[2]_3\,
      I1 => \FSM_sequential_stare_reg[2]_2\,
      I2 => stare(2),
      I3 => stare(1),
      I4 => final_mul,
      I5 => stare(0),
      O => \FSM_sequential_stare_reg[2]_0\
    );
\FSM_sequential_stare[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => stare_0(1),
      I1 => \contor_reg_n_0_[2]\,
      I2 => \contor_reg_n_0_[4]\,
      I3 => \contor_reg_n_0_[0]\,
      I4 => \contor_reg_n_0_[1]\,
      I5 => \contor_reg_n_0_[3]\,
      O => \FSM_sequential_stare[1]_i_2_n_0\
    );
\FSM_sequential_stare[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFA00FA0CF00CF0"
    )
        port map (
      I0 => \FSM_sequential_stare_reg[2]_3\,
      I1 => \FSM_sequential_stare_reg[2]_2\,
      I2 => stare(2),
      I3 => stare(1),
      I4 => final_mul,
      I5 => stare(0),
      O => \FSM_sequential_stare_reg[2]\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[0]_i_1__2_n_0\,
      Q => stare_0(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[1]_i_1__2_n_0\,
      Q => stare_0(1),
      R => '0'
    );
\contor[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      O => \contor[0]_i_1__0_n_0\
    );
\contor[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      O => \contor[1]_i_1__0_n_0\
    );
\contor[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stare_0(1),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(0),
      O => \contor[2]_i_1__1_n_0\
    );
\contor[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \contor_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[2]\,
      O => \contor[2]_i_2_n_0\
    );
\contor[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => stare_0(0),
      I1 => \contor_reg_n_0_[3]\,
      I2 => \contor_reg_n_0_[1]\,
      I3 => \contor_reg_n_0_[0]\,
      I4 => \contor_reg_n_0_[2]\,
      O => \contor[3]_i_1__1_n_0\
    );
\contor[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => stare_0(0),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(1),
      O => \contor[4]_i_1__0_n_0\
    );
\contor[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDD7"
    )
        port map (
      I0 => stare_0(0),
      I1 => \contor_reg_n_0_[4]\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \contor_reg_n_0_[0]\,
      I4 => \contor_reg_n_0_[1]\,
      I5 => \contor_reg_n_0_[3]\,
      O => \contor[4]_i_2__1_n_0\
    );
\contor_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \contor[0]_i_1__0_n_0\,
      Q => \contor_reg_n_0_[0]\,
      R => \contor[2]_i_1__1_n_0\
    );
\contor_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \contor[1]_i_1__0_n_0\,
      Q => \contor_reg_n_0_[1]\,
      R => \contor[2]_i_1__1_n_0\
    );
\contor_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \contor[2]_i_2_n_0\,
      Q => \contor_reg_n_0_[2]\,
      R => \contor[2]_i_1__1_n_0\
    );
\contor_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \contor[3]_i_1__1_n_0\,
      Q => \contor_reg_n_0_[3]\,
      R => '0'
    );
\contor_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_1__0_n_0\,
      D => \contor[4]_i_2__1_n_0\,
      Q => \contor_reg_n_0_[4]\,
      R => '0'
    );
\done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8180"
    )
        port map (
      I0 => stare_0(1),
      I1 => stare_0(0),
      I2 => \FSM_sequential_stare_reg[1]_0\,
      I3 => final_mul,
      O => \done_i_1__0_n_0\
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \done_i_1__0_n_0\,
      Q => final_mul,
      R => '0'
    );
\mantisa_normalizata[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => stare(0),
      I1 => final_mul,
      I2 => stare(2),
      I3 => stare(1),
      O => E(0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[3]\,
      DI(2) => \rezultat_reg_n_0_[2]\,
      DI(1) => \rezultat_reg_n_0_[1]\,
      DI(0) => \rezultat_reg_n_0_[0]\,
      O(3 downto 0) => in5(3 downto 0),
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => plusOp_carry_i_4_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[7]\,
      DI(2) => \rezultat_reg_n_0_[6]\,
      DI(1) => \rezultat_reg_n_0_[5]\,
      DI(0) => \rezultat_reg_n_0_[4]\,
      O(3 downto 0) => in5(7 downto 4),
      S(3) => \plusOp_carry__0_i_1_n_0\,
      S(2) => \plusOp_carry__0_i_2_n_0\,
      S(1) => \plusOp_carry__0_i_3_n_0\,
      S(0) => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[7]\,
      I1 => \A_extins_reg_n_0_[7]\,
      O => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[6]\,
      I1 => \A_extins_reg_n_0_[6]\,
      O => \plusOp_carry__0_i_2_n_0\
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[5]\,
      I1 => \A_extins_reg_n_0_[5]\,
      O => \plusOp_carry__0_i_3_n_0\
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[4]\,
      I1 => \A_extins_reg_n_0_[4]\,
      O => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[11]\,
      DI(2) => \rezultat_reg_n_0_[10]\,
      DI(1) => \rezultat_reg_n_0_[9]\,
      DI(0) => \rezultat_reg_n_0_[8]\,
      O(3 downto 0) => in5(11 downto 8),
      S(3) => \plusOp_carry__1_i_1_n_0\,
      S(2) => \plusOp_carry__1_i_2_n_0\,
      S(1) => \plusOp_carry__1_i_3_n_0\,
      S(0) => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__9_n_0\,
      CO(3) => \NLW_plusOp_carry__10_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__10_n_1\,
      CO(1) => \plusOp_carry__10_n_2\,
      CO(0) => \plusOp_carry__10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rezultat_reg_n_0_[46]\,
      DI(1) => \rezultat_reg_n_0_[45]\,
      DI(0) => \rezultat_reg_n_0_[44]\,
      O(3 downto 0) => in5(47 downto 44),
      S(3) => \plusOp_carry__10_i_1_n_0\,
      S(2) => \plusOp_carry__10_i_2_n_0\,
      S(1) => \plusOp_carry__10_i_3_n_0\,
      S(0) => \plusOp_carry__10_i_4_n_0\
    );
\plusOp_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[47]\,
      I1 => \A_extins_reg_n_0_[47]\,
      O => \plusOp_carry__10_i_1_n_0\
    );
\plusOp_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[46]\,
      I1 => \A_extins_reg_n_0_[46]\,
      O => \plusOp_carry__10_i_2_n_0\
    );
\plusOp_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[45]\,
      I1 => \A_extins_reg_n_0_[45]\,
      O => \plusOp_carry__10_i_3_n_0\
    );
\plusOp_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[44]\,
      I1 => \A_extins_reg_n_0_[44]\,
      O => \plusOp_carry__10_i_4_n_0\
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[11]\,
      I1 => \A_extins_reg_n_0_[11]\,
      O => \plusOp_carry__1_i_1_n_0\
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[10]\,
      I1 => \A_extins_reg_n_0_[10]\,
      O => \plusOp_carry__1_i_2_n_0\
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[9]\,
      I1 => \A_extins_reg_n_0_[9]\,
      O => \plusOp_carry__1_i_3_n_0\
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[8]\,
      I1 => \A_extins_reg_n_0_[8]\,
      O => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[15]\,
      DI(2) => \rezultat_reg_n_0_[14]\,
      DI(1) => \rezultat_reg_n_0_[13]\,
      DI(0) => \rezultat_reg_n_0_[12]\,
      O(3 downto 0) => in5(15 downto 12),
      S(3) => \plusOp_carry__2_i_1_n_0\,
      S(2) => \plusOp_carry__2_i_2_n_0\,
      S(1) => \plusOp_carry__2_i_3_n_0\,
      S(0) => \plusOp_carry__2_i_4_n_0\
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[15]\,
      I1 => \A_extins_reg_n_0_[15]\,
      O => \plusOp_carry__2_i_1_n_0\
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[14]\,
      I1 => \A_extins_reg_n_0_[14]\,
      O => \plusOp_carry__2_i_2_n_0\
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[13]\,
      I1 => \A_extins_reg_n_0_[13]\,
      O => \plusOp_carry__2_i_3_n_0\
    );
\plusOp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[12]\,
      I1 => \A_extins_reg_n_0_[12]\,
      O => \plusOp_carry__2_i_4_n_0\
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[19]\,
      DI(2) => \rezultat_reg_n_0_[18]\,
      DI(1) => \rezultat_reg_n_0_[17]\,
      DI(0) => \rezultat_reg_n_0_[16]\,
      O(3 downto 0) => in5(19 downto 16),
      S(3) => \plusOp_carry__3_i_1_n_0\,
      S(2) => \plusOp_carry__3_i_2_n_0\,
      S(1) => \plusOp_carry__3_i_3_n_0\,
      S(0) => \plusOp_carry__3_i_4_n_0\
    );
\plusOp_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[19]\,
      I1 => \A_extins_reg_n_0_[19]\,
      O => \plusOp_carry__3_i_1_n_0\
    );
\plusOp_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[18]\,
      I1 => \A_extins_reg_n_0_[18]\,
      O => \plusOp_carry__3_i_2_n_0\
    );
\plusOp_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[17]\,
      I1 => \A_extins_reg_n_0_[17]\,
      O => \plusOp_carry__3_i_3_n_0\
    );
\plusOp_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[16]\,
      I1 => \A_extins_reg_n_0_[16]\,
      O => \plusOp_carry__3_i_4_n_0\
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[23]\,
      DI(2) => \rezultat_reg_n_0_[22]\,
      DI(1) => \rezultat_reg_n_0_[21]\,
      DI(0) => \rezultat_reg_n_0_[20]\,
      O(3 downto 0) => in5(23 downto 20),
      S(3) => \plusOp_carry__4_i_1_n_0\,
      S(2) => \plusOp_carry__4_i_2_n_0\,
      S(1) => \plusOp_carry__4_i_3_n_0\,
      S(0) => \plusOp_carry__4_i_4_n_0\
    );
\plusOp_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[23]\,
      I1 => \A_extins_reg_n_0_[23]\,
      O => \plusOp_carry__4_i_1_n_0\
    );
\plusOp_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[22]\,
      I1 => \A_extins_reg_n_0_[22]\,
      O => \plusOp_carry__4_i_2_n_0\
    );
\plusOp_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[21]\,
      I1 => \A_extins_reg_n_0_[21]\,
      O => \plusOp_carry__4_i_3_n_0\
    );
\plusOp_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[20]\,
      I1 => \A_extins_reg_n_0_[20]\,
      O => \plusOp_carry__4_i_4_n_0\
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[27]\,
      DI(2) => \rezultat_reg_n_0_[26]\,
      DI(1) => \rezultat_reg_n_0_[25]\,
      DI(0) => \rezultat_reg_n_0_[24]\,
      O(3 downto 0) => in5(27 downto 24),
      S(3) => \plusOp_carry__5_i_1_n_0\,
      S(2) => \plusOp_carry__5_i_2_n_0\,
      S(1) => \plusOp_carry__5_i_3_n_0\,
      S(0) => \plusOp_carry__5_i_4_n_0\
    );
\plusOp_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[27]\,
      I1 => \A_extins_reg_n_0_[27]\,
      O => \plusOp_carry__5_i_1_n_0\
    );
\plusOp_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[26]\,
      I1 => \A_extins_reg_n_0_[26]\,
      O => \plusOp_carry__5_i_2_n_0\
    );
\plusOp_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[25]\,
      I1 => \A_extins_reg_n_0_[25]\,
      O => \plusOp_carry__5_i_3_n_0\
    );
\plusOp_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[24]\,
      I1 => \A_extins_reg_n_0_[24]\,
      O => \plusOp_carry__5_i_4_n_0\
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3) => \plusOp_carry__6_n_0\,
      CO(2) => \plusOp_carry__6_n_1\,
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[31]\,
      DI(2) => \rezultat_reg_n_0_[30]\,
      DI(1) => \rezultat_reg_n_0_[29]\,
      DI(0) => \rezultat_reg_n_0_[28]\,
      O(3 downto 0) => in5(31 downto 28),
      S(3) => \plusOp_carry__6_i_1_n_0\,
      S(2) => \plusOp_carry__6_i_2_n_0\,
      S(1) => \plusOp_carry__6_i_3_n_0\,
      S(0) => \plusOp_carry__6_i_4_n_0\
    );
\plusOp_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[31]\,
      I1 => \A_extins_reg_n_0_[31]\,
      O => \plusOp_carry__6_i_1_n_0\
    );
\plusOp_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[30]\,
      I1 => \A_extins_reg_n_0_[30]\,
      O => \plusOp_carry__6_i_2_n_0\
    );
\plusOp_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[29]\,
      I1 => \A_extins_reg_n_0_[29]\,
      O => \plusOp_carry__6_i_3_n_0\
    );
\plusOp_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[28]\,
      I1 => \A_extins_reg_n_0_[28]\,
      O => \plusOp_carry__6_i_4_n_0\
    );
\plusOp_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__6_n_0\,
      CO(3) => \plusOp_carry__7_n_0\,
      CO(2) => \plusOp_carry__7_n_1\,
      CO(1) => \plusOp_carry__7_n_2\,
      CO(0) => \plusOp_carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[35]\,
      DI(2) => \rezultat_reg_n_0_[34]\,
      DI(1) => \rezultat_reg_n_0_[33]\,
      DI(0) => \rezultat_reg_n_0_[32]\,
      O(3 downto 0) => in5(35 downto 32),
      S(3) => \plusOp_carry__7_i_1_n_0\,
      S(2) => \plusOp_carry__7_i_2_n_0\,
      S(1) => \plusOp_carry__7_i_3_n_0\,
      S(0) => \plusOp_carry__7_i_4_n_0\
    );
\plusOp_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[35]\,
      I1 => \A_extins_reg_n_0_[35]\,
      O => \plusOp_carry__7_i_1_n_0\
    );
\plusOp_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[34]\,
      I1 => \A_extins_reg_n_0_[34]\,
      O => \plusOp_carry__7_i_2_n_0\
    );
\plusOp_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[33]\,
      I1 => \A_extins_reg_n_0_[33]\,
      O => \plusOp_carry__7_i_3_n_0\
    );
\plusOp_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[32]\,
      I1 => \A_extins_reg_n_0_[32]\,
      O => \plusOp_carry__7_i_4_n_0\
    );
\plusOp_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__7_n_0\,
      CO(3) => \plusOp_carry__8_n_0\,
      CO(2) => \plusOp_carry__8_n_1\,
      CO(1) => \plusOp_carry__8_n_2\,
      CO(0) => \plusOp_carry__8_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[39]\,
      DI(2) => \rezultat_reg_n_0_[38]\,
      DI(1) => \rezultat_reg_n_0_[37]\,
      DI(0) => \rezultat_reg_n_0_[36]\,
      O(3 downto 0) => in5(39 downto 36),
      S(3) => \plusOp_carry__8_i_1_n_0\,
      S(2) => \plusOp_carry__8_i_2_n_0\,
      S(1) => \plusOp_carry__8_i_3_n_0\,
      S(0) => \plusOp_carry__8_i_4_n_0\
    );
\plusOp_carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[39]\,
      I1 => \A_extins_reg_n_0_[39]\,
      O => \plusOp_carry__8_i_1_n_0\
    );
\plusOp_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[38]\,
      I1 => \A_extins_reg_n_0_[38]\,
      O => \plusOp_carry__8_i_2_n_0\
    );
\plusOp_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[37]\,
      I1 => \A_extins_reg_n_0_[37]\,
      O => \plusOp_carry__8_i_3_n_0\
    );
\plusOp_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[36]\,
      I1 => \A_extins_reg_n_0_[36]\,
      O => \plusOp_carry__8_i_4_n_0\
    );
\plusOp_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__8_n_0\,
      CO(3) => \plusOp_carry__9_n_0\,
      CO(2) => \plusOp_carry__9_n_1\,
      CO(1) => \plusOp_carry__9_n_2\,
      CO(0) => \plusOp_carry__9_n_3\,
      CYINIT => '0',
      DI(3) => \rezultat_reg_n_0_[43]\,
      DI(2) => \rezultat_reg_n_0_[42]\,
      DI(1) => \rezultat_reg_n_0_[41]\,
      DI(0) => \rezultat_reg_n_0_[40]\,
      O(3 downto 0) => in5(43 downto 40),
      S(3) => \plusOp_carry__9_i_1_n_0\,
      S(2) => \plusOp_carry__9_i_2_n_0\,
      S(1) => \plusOp_carry__9_i_3_n_0\,
      S(0) => \plusOp_carry__9_i_4_n_0\
    );
\plusOp_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[43]\,
      I1 => \A_extins_reg_n_0_[43]\,
      O => \plusOp_carry__9_i_1_n_0\
    );
\plusOp_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[42]\,
      I1 => \A_extins_reg_n_0_[42]\,
      O => \plusOp_carry__9_i_2_n_0\
    );
\plusOp_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[41]\,
      I1 => \A_extins_reg_n_0_[41]\,
      O => \plusOp_carry__9_i_3_n_0\
    );
\plusOp_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[40]\,
      I1 => \A_extins_reg_n_0_[40]\,
      O => \plusOp_carry__9_i_4_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[3]\,
      I1 => \A_extins_reg_n_0_[3]\,
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[2]\,
      I1 => \A_extins_reg_n_0_[2]\,
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[1]\,
      I1 => \A_extins_reg_n_0_[1]\,
      O => plusOp_carry_i_3_n_0
    );
plusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rezultat_reg_n_0_[0]\,
      I1 => \A_extins_reg_n_0_[0]\,
      O => plusOp_carry_i_4_n_0
    );
\result[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stare_0(1),
      I1 => stare_0(0),
      I2 => \FSM_sequential_stare_reg[1]_0\,
      O => \result[47]_i_1_n_0\
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[22]\,
      Q => Q(0),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[23]\,
      Q => Q(1),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[24]\,
      Q => Q(2),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[25]\,
      Q => Q(3),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[26]\,
      Q => Q(4),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[27]\,
      Q => Q(5),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[28]\,
      Q => Q(6),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[29]\,
      Q => Q(7),
      R => '0'
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[30]\,
      Q => Q(8),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[31]\,
      Q => Q(9),
      R => '0'
    );
\result_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[32]\,
      Q => Q(10),
      R => '0'
    );
\result_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[33]\,
      Q => Q(11),
      R => '0'
    );
\result_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[34]\,
      Q => Q(12),
      R => '0'
    );
\result_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[35]\,
      Q => Q(13),
      R => '0'
    );
\result_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[36]\,
      Q => Q(14),
      R => '0'
    );
\result_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[37]\,
      Q => Q(15),
      R => '0'
    );
\result_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[38]\,
      Q => Q(16),
      R => '0'
    );
\result_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[39]\,
      Q => Q(17),
      R => '0'
    );
\result_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[40]\,
      Q => Q(18),
      R => '0'
    );
\result_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[41]\,
      Q => Q(19),
      R => '0'
    );
\result_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[42]\,
      Q => Q(20),
      R => '0'
    );
\result_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[43]\,
      Q => Q(21),
      R => '0'
    );
\result_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[44]\,
      Q => Q(22),
      R => '0'
    );
\result_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[45]\,
      Q => Q(23),
      R => '0'
    );
\result_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[46]\,
      Q => Q(24),
      R => '0'
    );
\result_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[47]_i_1_n_0\,
      D => \rezultat_reg_n_0_[47]\,
      Q => Q(25),
      R => '0'
    );
\rezultat[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stare_0(1),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(0),
      O => \rezultat[47]_i_1_n_0\
    );
\rezultat[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_sequential_stare_reg[1]_0\,
      I1 => stare_0(0),
      I2 => \B_extins_reg_n_0_[0]\,
      I3 => stare_0(1),
      O => \rezultat[47]_i_2_n_0\
    );
\rezultat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(0),
      Q => \rezultat_reg_n_0_[0]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(10),
      Q => \rezultat_reg_n_0_[10]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(11),
      Q => \rezultat_reg_n_0_[11]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(12),
      Q => \rezultat_reg_n_0_[12]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(13),
      Q => \rezultat_reg_n_0_[13]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(14),
      Q => \rezultat_reg_n_0_[14]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(15),
      Q => \rezultat_reg_n_0_[15]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(16),
      Q => \rezultat_reg_n_0_[16]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(17),
      Q => \rezultat_reg_n_0_[17]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(18),
      Q => \rezultat_reg_n_0_[18]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(19),
      Q => \rezultat_reg_n_0_[19]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(1),
      Q => \rezultat_reg_n_0_[1]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(20),
      Q => \rezultat_reg_n_0_[20]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(21),
      Q => \rezultat_reg_n_0_[21]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(22),
      Q => \rezultat_reg_n_0_[22]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(23),
      Q => \rezultat_reg_n_0_[23]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(24),
      Q => \rezultat_reg_n_0_[24]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(25),
      Q => \rezultat_reg_n_0_[25]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(26),
      Q => \rezultat_reg_n_0_[26]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(27),
      Q => \rezultat_reg_n_0_[27]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(28),
      Q => \rezultat_reg_n_0_[28]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(29),
      Q => \rezultat_reg_n_0_[29]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(2),
      Q => \rezultat_reg_n_0_[2]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(30),
      Q => \rezultat_reg_n_0_[30]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(31),
      Q => \rezultat_reg_n_0_[31]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(32),
      Q => \rezultat_reg_n_0_[32]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(33),
      Q => \rezultat_reg_n_0_[33]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(34),
      Q => \rezultat_reg_n_0_[34]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(35),
      Q => \rezultat_reg_n_0_[35]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(36),
      Q => \rezultat_reg_n_0_[36]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(37),
      Q => \rezultat_reg_n_0_[37]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(38),
      Q => \rezultat_reg_n_0_[38]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(39),
      Q => \rezultat_reg_n_0_[39]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(3),
      Q => \rezultat_reg_n_0_[3]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(40),
      Q => \rezultat_reg_n_0_[40]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(41),
      Q => \rezultat_reg_n_0_[41]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(42),
      Q => \rezultat_reg_n_0_[42]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(43),
      Q => \rezultat_reg_n_0_[43]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(44),
      Q => \rezultat_reg_n_0_[44]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(45),
      Q => \rezultat_reg_n_0_[45]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(46),
      Q => \rezultat_reg_n_0_[46]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(47),
      Q => \rezultat_reg_n_0_[47]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(4),
      Q => \rezultat_reg_n_0_[4]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(5),
      Q => \rezultat_reg_n_0_[5]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(6),
      Q => \rezultat_reg_n_0_[6]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(7),
      Q => \rezultat_reg_n_0_[7]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(8),
      Q => \rezultat_reg_n_0_[8]\,
      R => \rezultat[47]_i_1_n_0\
    );
\rezultat_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rezultat[47]_i_2_n_0\,
      D => in5(9),
      Q => \rezultat_reg_n_0_[9]\,
      R => \rezultat[47]_i_1_n_0\
    );
start_mul_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFFF10100030"
    )
        port map (
      I0 => final_mul,
      I1 => stare(2),
      I2 => stare(1),
      I3 => \FSM_sequential_stare_reg[2]_2\,
      I4 => stare(0),
      I5 => \FSM_sequential_stare_reg[1]_0\,
      O => done_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_subBinary is
  port (
    done_sub : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_reg_0 : out STD_LOGIC;
    \FSM_sequential_stare_reg[0]_0\ : out STD_LOGIC;
    \result_reg[23]_0\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    clk : in STD_LOGIC;
    \FSM_sequential_stare_reg[1]_0\ : in STD_LOGIC;
    stare : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \A_extins_reg[22]_0\ : in STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_subBinary : entity is "subBinary";
end design_1_ALU_0_0_subBinary;

architecture STRUCTURE of design_1_ALU_0_0_subBinary is
  signal A_extins : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal A_extins_1 : STD_LOGIC;
  signal B_extins : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \FSM_sequential_stare[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[1]_i_2__0_n_0\ : STD_LOGIC;
  signal borrow_i_10_n_0 : STD_LOGIC;
  signal borrow_i_11_n_0 : STD_LOGIC;
  signal borrow_i_12_n_0 : STD_LOGIC;
  signal borrow_i_13_n_0 : STD_LOGIC;
  signal borrow_i_14_n_0 : STD_LOGIC;
  signal borrow_i_15_n_0 : STD_LOGIC;
  signal borrow_i_16_n_0 : STD_LOGIC;
  signal borrow_i_17_n_0 : STD_LOGIC;
  signal borrow_i_18_n_0 : STD_LOGIC;
  signal borrow_i_19_n_0 : STD_LOGIC;
  signal borrow_i_1_n_0 : STD_LOGIC;
  signal borrow_i_20_n_0 : STD_LOGIC;
  signal borrow_i_21_n_0 : STD_LOGIC;
  signal borrow_i_2_n_0 : STD_LOGIC;
  signal borrow_i_3_n_0 : STD_LOGIC;
  signal borrow_reg_i_4_n_0 : STD_LOGIC;
  signal borrow_reg_i_5_n_0 : STD_LOGIC;
  signal borrow_reg_i_6_n_0 : STD_LOGIC;
  signal borrow_reg_i_7_n_0 : STD_LOGIC;
  signal borrow_reg_i_8_n_0 : STD_LOGIC;
  signal borrow_reg_i_9_n_0 : STD_LOGIC;
  signal borrow_reg_n_0 : STD_LOGIC;
  signal \contor[0]_i_1_n_0\ : STD_LOGIC;
  signal \contor[1]_i_1_n_0\ : STD_LOGIC;
  signal \contor[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \contor[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \contor[4]_i_1_n_0\ : STD_LOGIC;
  signal \contor[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \contor[4]_i_3_n_0\ : STD_LOGIC;
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal \contor_reg_n_0_[4]\ : STD_LOGIC;
  signal diferenta0_in : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \diferenta[10]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[11]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[12]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[13]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[14]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[15]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[15]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[16]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[17]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[17]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[18]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[18]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[19]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[19]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[1]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[20]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[20]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[21]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[21]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[22]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[22]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[23]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[23]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[23]_i_3_n_0\ : STD_LOGIC;
  signal \diferenta[24]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[24]_i_3_n_0\ : STD_LOGIC;
  signal \diferenta[2]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[3]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[4]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[5]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[6]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[7]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[7]_i_2_n_0\ : STD_LOGIC;
  signal \diferenta[8]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta[9]_i_1_n_0\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[10]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[11]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[12]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[13]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[14]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[15]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[16]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[17]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[18]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[19]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[1]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[20]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[21]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[22]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[23]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[24]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[2]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[3]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[4]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[5]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[6]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[7]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[8]\ : STD_LOGIC;
  signal \diferenta_reg_n_0_[9]\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \^done_sub\ : STD_LOGIC;
  signal mantisa_result_internal : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \result[24]_i_1__1_n_0\ : STD_LOGIC;
  signal stare_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[0]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_2__0\ : label is "soft_lutpair87";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "scadere:01,terminare:10,initializare:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "scadere:01,terminare:10,initializare:00,iSTATE:11";
  attribute SOFT_HLUTNM of \contor[2]_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \contor[3]_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \contor[4]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \diferenta[17]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \diferenta[18]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \diferenta[19]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \diferenta[20]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \diferenta[21]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \diferenta[22]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \diferenta[23]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \diferenta[23]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \diferenta[24]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \diferenta[7]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of start_sub_i_1 : label is "soft_lutpair86";
begin
  done_sub <= \^done_sub\;
\A_extins_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(0),
      Q => A_extins(0),
      R => '0'
    );
\A_extins_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(10),
      Q => A_extins(10),
      R => '0'
    );
\A_extins_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(11),
      Q => A_extins(11),
      R => '0'
    );
\A_extins_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(12),
      Q => A_extins(12),
      R => '0'
    );
\A_extins_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(13),
      Q => A_extins(13),
      R => '0'
    );
\A_extins_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(14),
      Q => A_extins(14),
      R => '0'
    );
\A_extins_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(15),
      Q => A_extins(15),
      R => '0'
    );
\A_extins_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(16),
      Q => A_extins(16),
      R => '0'
    );
\A_extins_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(17),
      Q => A_extins(17),
      R => '0'
    );
\A_extins_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(18),
      Q => A_extins(18),
      R => '0'
    );
\A_extins_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(19),
      Q => A_extins(19),
      R => '0'
    );
\A_extins_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(1),
      Q => A_extins(1),
      R => '0'
    );
\A_extins_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(20),
      Q => A_extins(20),
      R => '0'
    );
\A_extins_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(21),
      Q => A_extins(21),
      R => '0'
    );
\A_extins_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(22),
      Q => A_extins(22),
      R => '0'
    );
\A_extins_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => '1',
      Q => A_extins(23),
      R => '0'
    );
\A_extins_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(2),
      Q => A_extins(2),
      R => '0'
    );
\A_extins_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(3),
      Q => A_extins(3),
      R => '0'
    );
\A_extins_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(4),
      Q => A_extins(4),
      R => '0'
    );
\A_extins_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(5),
      Q => A_extins(5),
      R => '0'
    );
\A_extins_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(6),
      Q => A_extins(6),
      R => '0'
    );
\A_extins_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(7),
      Q => A_extins(7),
      R => '0'
    );
\A_extins_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(8),
      Q => A_extins(8),
      R => '0'
    );
\A_extins_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => \A_extins_reg[22]_0\(9),
      Q => A_extins(9),
      R => '0'
    );
\B_extins[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stare_0(0),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(1),
      O => A_extins_1
    );
\B_extins_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(0),
      Q => B_extins(0),
      R => '0'
    );
\B_extins_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(10),
      Q => B_extins(10),
      R => '0'
    );
\B_extins_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(11),
      Q => B_extins(11),
      R => '0'
    );
\B_extins_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(12),
      Q => B_extins(12),
      R => '0'
    );
\B_extins_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(13),
      Q => B_extins(13),
      R => '0'
    );
\B_extins_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(14),
      Q => B_extins(14),
      R => '0'
    );
\B_extins_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(15),
      Q => B_extins(15),
      R => '0'
    );
\B_extins_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(16),
      Q => B_extins(16),
      R => '0'
    );
\B_extins_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(17),
      Q => B_extins(17),
      R => '0'
    );
\B_extins_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(18),
      Q => B_extins(18),
      R => '0'
    );
\B_extins_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(19),
      Q => B_extins(19),
      R => '0'
    );
\B_extins_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(1),
      Q => B_extins(1),
      R => '0'
    );
\B_extins_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(20),
      Q => B_extins(20),
      R => '0'
    );
\B_extins_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(21),
      Q => B_extins(21),
      R => '0'
    );
\B_extins_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(22),
      Q => B_extins(22),
      R => '0'
    );
\B_extins_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(2),
      Q => B_extins(2),
      R => '0'
    );
\B_extins_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(3),
      Q => B_extins(3),
      R => '0'
    );
\B_extins_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(4),
      Q => B_extins(4),
      R => '0'
    );
\B_extins_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(5),
      Q => B_extins(5),
      R => '0'
    );
\B_extins_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(6),
      Q => B_extins(6),
      R => '0'
    );
\B_extins_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(7),
      Q => B_extins(7),
      R => '0'
    );
\B_extins_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(8),
      Q => B_extins(8),
      R => '0'
    );
\B_extins_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => A_extins_1,
      D => Q(9),
      Q => B_extins(9),
      R => '0'
    );
\FSM_sequential_stare[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7FFF00"
    )
        port map (
      I0 => \FSM_sequential_stare[1]_i_2__0_n_0\,
      I1 => \contor_reg_n_0_[4]\,
      I2 => \contor_reg_n_0_[3]\,
      I3 => \FSM_sequential_stare_reg[1]_0\,
      I4 => stare_0(0),
      I5 => stare_0(1),
      O => \FSM_sequential_stare[0]_i_1__0_n_0\
    );
\FSM_sequential_stare[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0045"
    )
        port map (
      I0 => stare(0),
      I1 => \^done_sub\,
      I2 => stare(1),
      I3 => stare(2),
      O => \FSM_sequential_stare_reg[0]_0\
    );
\FSM_sequential_stare[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0080800000"
    )
        port map (
      I0 => \FSM_sequential_stare[1]_i_2__0_n_0\,
      I1 => \contor_reg_n_0_[4]\,
      I2 => \contor_reg_n_0_[3]\,
      I3 => \FSM_sequential_stare_reg[1]_0\,
      I4 => stare_0(0),
      I5 => stare_0(1),
      O => \FSM_sequential_stare[1]_i_1__0_n_0\
    );
\FSM_sequential_stare[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \FSM_sequential_stare[1]_i_2__0_n_0\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[0]_i_1__0_n_0\,
      Q => stare_0(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[1]_i_1__0_n_0\,
      Q => stare_0(1),
      R => '0'
    );
borrow_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F0FF01010000"
    )
        port map (
      I0 => borrow_i_2_n_0,
      I1 => borrow_i_3_n_0,
      I2 => stare_0(1),
      I3 => \FSM_sequential_stare_reg[1]_0\,
      I4 => stare_0(0),
      I5 => borrow_reg_n_0,
      O => borrow_i_1_n_0
    );
borrow_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_extins(19),
      I1 => B_extins(18),
      I2 => \contor_reg_n_0_[1]\,
      I3 => B_extins(17),
      I4 => \contor_reg_n_0_[0]\,
      I5 => B_extins(16),
      O => borrow_i_10_n_0
    );
borrow_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(23),
      I1 => B_extins(22),
      I2 => \contor_reg_n_0_[1]\,
      I3 => B_extins(21),
      I4 => \contor_reg_n_0_[0]\,
      I5 => B_extins(20),
      O => borrow_i_11_n_0
    );
borrow_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_extins(11),
      I1 => B_extins(10),
      I2 => \contor_reg_n_0_[1]\,
      I3 => B_extins(9),
      I4 => \contor_reg_n_0_[0]\,
      I5 => B_extins(8),
      O => borrow_i_12_n_0
    );
borrow_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_extins(15),
      I1 => B_extins(14),
      I2 => \contor_reg_n_0_[1]\,
      I3 => B_extins(13),
      I4 => \contor_reg_n_0_[0]\,
      I5 => B_extins(12),
      O => borrow_i_13_n_0
    );
borrow_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_extins(3),
      I1 => B_extins(2),
      I2 => \contor_reg_n_0_[1]\,
      I3 => B_extins(1),
      I4 => \contor_reg_n_0_[0]\,
      I5 => B_extins(0),
      O => borrow_i_14_n_0
    );
borrow_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_extins(7),
      I1 => B_extins(6),
      I2 => \contor_reg_n_0_[1]\,
      I3 => B_extins(5),
      I4 => \contor_reg_n_0_[0]\,
      I5 => B_extins(4),
      O => borrow_i_15_n_0
    );
borrow_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(19),
      I1 => A_extins(18),
      I2 => \contor_reg_n_0_[1]\,
      I3 => A_extins(17),
      I4 => \contor_reg_n_0_[0]\,
      I5 => A_extins(16),
      O => borrow_i_16_n_0
    );
borrow_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(23),
      I1 => A_extins(22),
      I2 => \contor_reg_n_0_[1]\,
      I3 => A_extins(21),
      I4 => \contor_reg_n_0_[0]\,
      I5 => A_extins(20),
      O => borrow_i_17_n_0
    );
borrow_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(11),
      I1 => A_extins(10),
      I2 => \contor_reg_n_0_[1]\,
      I3 => A_extins(9),
      I4 => \contor_reg_n_0_[0]\,
      I5 => A_extins(8),
      O => borrow_i_18_n_0
    );
borrow_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(15),
      I1 => A_extins(14),
      I2 => \contor_reg_n_0_[1]\,
      I3 => A_extins(13),
      I4 => \contor_reg_n_0_[0]\,
      I5 => A_extins(12),
      O => borrow_i_19_n_0
    );
borrow_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => borrow_reg_i_4_n_0,
      I1 => \contor_reg_n_0_[4]\,
      I2 => borrow_reg_i_5_n_0,
      I3 => \contor_reg_n_0_[3]\,
      I4 => borrow_reg_i_6_n_0,
      O => borrow_i_2_n_0
    );
borrow_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(3),
      I1 => A_extins(2),
      I2 => \contor_reg_n_0_[1]\,
      I3 => A_extins(1),
      I4 => \contor_reg_n_0_[0]\,
      I5 => A_extins(0),
      O => borrow_i_20_n_0
    );
borrow_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A_extins(7),
      I1 => A_extins(6),
      I2 => \contor_reg_n_0_[1]\,
      I3 => A_extins(5),
      I4 => \contor_reg_n_0_[0]\,
      I5 => A_extins(4),
      O => borrow_i_21_n_0
    );
borrow_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => borrow_reg_i_7_n_0,
      I1 => \contor_reg_n_0_[4]\,
      I2 => borrow_reg_i_8_n_0,
      I3 => \contor_reg_n_0_[3]\,
      I4 => borrow_reg_i_9_n_0,
      O => borrow_i_3_n_0
    );
borrow_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => borrow_i_1_n_0,
      Q => borrow_reg_n_0,
      R => '0'
    );
borrow_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => borrow_i_10_n_0,
      I1 => borrow_i_11_n_0,
      O => borrow_reg_i_4_n_0,
      S => \contor_reg_n_0_[2]\
    );
borrow_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => borrow_i_12_n_0,
      I1 => borrow_i_13_n_0,
      O => borrow_reg_i_5_n_0,
      S => \contor_reg_n_0_[2]\
    );
borrow_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => borrow_i_14_n_0,
      I1 => borrow_i_15_n_0,
      O => borrow_reg_i_6_n_0,
      S => \contor_reg_n_0_[2]\
    );
borrow_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => borrow_i_16_n_0,
      I1 => borrow_i_17_n_0,
      O => borrow_reg_i_7_n_0,
      S => \contor_reg_n_0_[2]\
    );
borrow_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => borrow_i_18_n_0,
      I1 => borrow_i_19_n_0,
      O => borrow_reg_i_8_n_0,
      S => \contor_reg_n_0_[2]\
    );
borrow_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => borrow_i_20_n_0,
      I1 => borrow_i_21_n_0,
      O => borrow_reg_i_9_n_0,
      S => \contor_reg_n_0_[2]\
    );
\contor[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      O => \contor[0]_i_1_n_0\
    );
\contor[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDCF2200"
    )
        port map (
      I0 => \contor_reg_n_0_[0]\,
      I1 => stare_0(1),
      I2 => \FSM_sequential_stare_reg[1]_0\,
      I3 => stare_0(0),
      I4 => \contor_reg_n_0_[1]\,
      O => \contor[1]_i_1_n_0\
    );
\contor[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \contor[2]_i_1__0_n_0\
    );
\contor[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \contor_reg_n_0_[3]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[2]\,
      O => \contor[3]_i_1__0_n_0\
    );
\contor[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_sequential_stare_reg[1]_0\,
      I1 => stare_0(1),
      I2 => stare_0(0),
      O => \contor[4]_i_1_n_0\
    );
\contor[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => stare_0(1),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(0),
      O => \contor[4]_i_2__0_n_0\
    );
\contor[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \contor_reg_n_0_[4]\,
      I1 => \contor_reg_n_0_[3]\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \contor_reg_n_0_[0]\,
      I4 => \contor_reg_n_0_[1]\,
      O => \contor[4]_i_3_n_0\
    );
\contor_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_2__0_n_0\,
      D => \contor[0]_i_1_n_0\,
      Q => \contor_reg_n_0_[0]\,
      R => \contor[4]_i_1_n_0\
    );
\contor_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \contor[1]_i_1_n_0\,
      Q => \contor_reg_n_0_[1]\,
      R => '0'
    );
\contor_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_2__0_n_0\,
      D => \contor[2]_i_1__0_n_0\,
      Q => \contor_reg_n_0_[2]\,
      R => \contor[4]_i_1_n_0\
    );
\contor_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_2__0_n_0\,
      D => \contor[3]_i_1__0_n_0\,
      Q => \contor_reg_n_0_[3]\,
      R => \contor[4]_i_1_n_0\
    );
\contor_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \contor[4]_i_2__0_n_0\,
      D => \contor[4]_i_3_n_0\,
      Q => \contor_reg_n_0_[4]\,
      R => \contor[4]_i_1_n_0\
    );
\diferenta[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[18]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[10]\,
      O => \diferenta[10]_i_1_n_0\
    );
\diferenta[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[19]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[11]\,
      O => \diferenta[11]_i_1_n_0\
    );
\diferenta[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[20]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[12]\,
      O => \diferenta[12]_i_1_n_0\
    );
\diferenta[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[21]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[13]\,
      O => \diferenta[13]_i_1_n_0\
    );
\diferenta[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[22]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[14]\,
      O => \diferenta[14]_i_1_n_0\
    );
\diferenta[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[23]_i_3_n_0\,
      I4 => \diferenta_reg_n_0_[15]\,
      O => \diferenta[15]_i_1_n_0\
    );
\diferenta[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => stare_0(1),
      I1 => stare_0(0),
      I2 => \contor_reg_n_0_[4]\,
      I3 => \contor_reg_n_0_[3]\,
      O => \diferenta[15]_i_2_n_0\
    );
\diferenta[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[23]_i_2_n_0\,
      I3 => \FSM_sequential_stare[1]_i_2__0_n_0\,
      I4 => \diferenta_reg_n_0_[16]\,
      O => \diferenta[16]_i_1_n_0\
    );
\diferenta[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[17]_i_2_n_0\,
      I3 => \diferenta[23]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[17]\,
      O => \diferenta[17]_i_1_n_0\
    );
\diferenta[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \diferenta[17]_i_2_n_0\
    );
\diferenta[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[18]_i_2_n_0\,
      I3 => \diferenta[23]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[18]\,
      O => \diferenta[18]_i_1_n_0\
    );
\diferenta[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      O => \diferenta[18]_i_2_n_0\
    );
\diferenta[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[23]_i_2_n_0\,
      I3 => \diferenta[19]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[19]\,
      O => \diferenta[19]_i_1_n_0\
    );
\diferenta[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \diferenta[19]_i_2_n_0\
    );
\diferenta[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[17]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[1]\,
      O => \diferenta[1]_i_1_n_0\
    );
\diferenta[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[20]_i_2_n_0\,
      I3 => \diferenta[23]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[20]\,
      O => \diferenta[20]_i_1_n_0\
    );
\diferenta[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \diferenta[20]_i_2_n_0\
    );
\diferenta[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[21]_i_2_n_0\,
      I3 => \diferenta[23]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[21]\,
      O => \diferenta[21]_i_1_n_0\
    );
\diferenta[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \diferenta[21]_i_2_n_0\
    );
\diferenta[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[22]_i_2_n_0\,
      I3 => \diferenta[23]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[22]\,
      O => \diferenta[22]_i_1_n_0\
    );
\diferenta[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      O => \diferenta[22]_i_2_n_0\
    );
\diferenta[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[23]_i_2_n_0\,
      I3 => \diferenta[23]_i_3_n_0\,
      I4 => \diferenta_reg_n_0_[23]\,
      O => \diferenta[23]_i_1_n_0\
    );
\diferenta[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \contor_reg_n_0_[3]\,
      I1 => \contor_reg_n_0_[4]\,
      I2 => stare_0(1),
      I3 => stare_0(0),
      O => \diferenta[23]_i_2_n_0\
    );
\diferenta[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => \diferenta[23]_i_3_n_0\
    );
\diferenta[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFAFB00080A08"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(1),
      I3 => stare_0(0),
      I4 => \diferenta[24]_i_3_n_0\,
      I5 => \diferenta_reg_n_0_[24]\,
      O => \diferenta[24]_i_1_n_0\
    );
\diferenta[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => stare_0(0),
      I1 => borrow_reg_n_0,
      I2 => borrow_i_3_n_0,
      I3 => borrow_i_2_n_0,
      O => diferenta0_in(24)
    );
\diferenta[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \contor_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[2]\,
      I3 => \contor_reg_n_0_[4]\,
      I4 => \contor_reg_n_0_[3]\,
      O => \diferenta[24]_i_3_n_0\
    );
\diferenta[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[18]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[2]\,
      O => \diferenta[2]_i_1_n_0\
    );
\diferenta[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[19]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[3]\,
      O => \diferenta[3]_i_1_n_0\
    );
\diferenta[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[20]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[4]\,
      O => \diferenta[4]_i_1_n_0\
    );
\diferenta[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[21]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[5]\,
      O => \diferenta[5]_i_1_n_0\
    );
\diferenta[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[22]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[6]\,
      O => \diferenta[6]_i_1_n_0\
    );
\diferenta[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[7]_i_2_n_0\,
      I3 => \diferenta[23]_i_3_n_0\,
      I4 => \diferenta_reg_n_0_[7]\,
      O => \diferenta[7]_i_1_n_0\
    );
\diferenta[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \contor_reg_n_0_[4]\,
      I1 => \contor_reg_n_0_[3]\,
      I2 => stare_0(1),
      I3 => stare_0(0),
      O => \diferenta[7]_i_2_n_0\
    );
\diferenta[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \FSM_sequential_stare[1]_i_2__0_n_0\,
      I4 => \diferenta_reg_n_0_[8]\,
      O => \diferenta[8]_i_1_n_0\
    );
\diferenta[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => diferenta0_in(24),
      I1 => A_extins_1,
      I2 => \diferenta[15]_i_2_n_0\,
      I3 => \diferenta[17]_i_2_n_0\,
      I4 => \diferenta_reg_n_0_[9]\,
      O => \diferenta[9]_i_1_n_0\
    );
\diferenta_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[10]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[10]\,
      R => '0'
    );
\diferenta_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[11]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[11]\,
      R => '0'
    );
\diferenta_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[12]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[12]\,
      R => '0'
    );
\diferenta_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[13]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[13]\,
      R => '0'
    );
\diferenta_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[14]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[14]\,
      R => '0'
    );
\diferenta_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[15]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[15]\,
      R => '0'
    );
\diferenta_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[16]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[16]\,
      R => '0'
    );
\diferenta_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[17]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[17]\,
      R => '0'
    );
\diferenta_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[18]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[18]\,
      R => '0'
    );
\diferenta_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[19]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[19]\,
      R => '0'
    );
\diferenta_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[1]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[1]\,
      R => '0'
    );
\diferenta_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[20]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[20]\,
      R => '0'
    );
\diferenta_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[21]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[21]\,
      R => '0'
    );
\diferenta_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[22]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[22]\,
      R => '0'
    );
\diferenta_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[23]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[23]\,
      R => '0'
    );
\diferenta_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[24]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[24]\,
      R => '0'
    );
\diferenta_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[2]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[2]\,
      R => '0'
    );
\diferenta_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[3]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[3]\,
      R => '0'
    );
\diferenta_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[4]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[4]\,
      R => '0'
    );
\diferenta_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[5]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[5]\,
      R => '0'
    );
\diferenta_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[6]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[6]\,
      R => '0'
    );
\diferenta_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[7]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[7]\,
      R => '0'
    );
\diferenta_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[8]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[8]\,
      R => '0'
    );
\diferenta_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \diferenta[9]_i_1_n_0\,
      Q => \diferenta_reg_n_0_[9]\,
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB40"
    )
        port map (
      I0 => stare_0(0),
      I1 => stare_0(1),
      I2 => \FSM_sequential_stare_reg[1]_0\,
      I3 => \^done_sub\,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => \^done_sub\,
      R => '0'
    );
\mantisa_result[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => mantisa_result_internal(24),
      I1 => stare(2),
      I2 => stare(1),
      I3 => stare(0),
      O => E(0)
    );
\result[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stare_0(0),
      I1 => \FSM_sequential_stare_reg[1]_0\,
      I2 => stare_0(1),
      O => \result[24]_i_1__1_n_0\
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[10]\,
      Q => \result_reg[23]_0\(9),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[11]\,
      Q => \result_reg[23]_0\(10),
      R => '0'
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[12]\,
      Q => \result_reg[23]_0\(11),
      R => '0'
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[13]\,
      Q => \result_reg[23]_0\(12),
      R => '0'
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[14]\,
      Q => \result_reg[23]_0\(13),
      R => '0'
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[15]\,
      Q => \result_reg[23]_0\(14),
      R => '0'
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[16]\,
      Q => \result_reg[23]_0\(15),
      R => '0'
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[17]\,
      Q => \result_reg[23]_0\(16),
      R => '0'
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[18]\,
      Q => \result_reg[23]_0\(17),
      R => '0'
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[19]\,
      Q => \result_reg[23]_0\(18),
      R => '0'
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[1]\,
      Q => \result_reg[23]_0\(0),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[20]\,
      Q => \result_reg[23]_0\(19),
      R => '0'
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[21]\,
      Q => \result_reg[23]_0\(20),
      R => '0'
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[22]\,
      Q => \result_reg[23]_0\(21),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[23]\,
      Q => \result_reg[23]_0\(22),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[24]\,
      Q => mantisa_result_internal(24),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[2]\,
      Q => \result_reg[23]_0\(1),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[3]\,
      Q => \result_reg[23]_0\(2),
      R => '0'
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[4]\,
      Q => \result_reg[23]_0\(3),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[5]\,
      Q => \result_reg[23]_0\(4),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[6]\,
      Q => \result_reg[23]_0\(5),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[7]\,
      Q => \result_reg[23]_0\(6),
      R => '0'
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[8]\,
      Q => \result_reg[23]_0\(7),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[24]_i_1__1_n_0\,
      D => \diferenta_reg_n_0_[9]\,
      Q => \result_reg[23]_0\(8),
      R => '0'
    );
start_sub_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0100"
    )
        port map (
      I0 => \^done_sub\,
      I1 => stare(2),
      I2 => stare(0),
      I3 => stare(1),
      I4 => \FSM_sequential_stare_reg[1]_0\,
      O => done_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_div is
  port (
    overflow4 : out STD_LOGIC;
    zero4 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_28_sp_1 : out STD_LOGIC;
    B_0_sp_1 : out STD_LOGIC;
    A_0_sp_1 : out STD_LOGIC;
    A_25_sp_1 : out STD_LOGIC;
    A_19_sp_1 : out STD_LOGIC;
    B_25_sp_1 : out STD_LOGIC;
    B_19_sp_1 : out STD_LOGIC;
    \B[29]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    result4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \exp_B_reg[6]_0\ : in STD_LOGIC;
    \exp_B_reg[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \exp_A_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_div : entity is "div";
end design_1_ALU_0_0_div;

architecture STRUCTURE of design_1_ALU_0_0_div is
  signal A_0_sn_1 : STD_LOGIC;
  signal A_19_sn_1 : STD_LOGIC;
  signal A_25_sn_1 : STD_LOGIC;
  signal A_28_sn_1 : STD_LOGIC;
  signal \^b[29]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal B_0_sn_1 : STD_LOGIC;
  signal B_19_sn_1 : STD_LOGIC;
  signal B_25_sn_1 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_stare[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_9_n_0\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[0]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[3]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[8]\ : STD_LOGIC;
  signal exp_B : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \exp_B[8]_i_10_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_11_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_12_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_2_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_4_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_6_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_7_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_8_n_0\ : STD_LOGIC;
  signal \exp_B[8]_i_9_n_0\ : STD_LOGIC;
  signal exp_result : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \exp_result0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \exp_result0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \exp_result0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \exp_result0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \exp_result0_carry__0_n_0\ : STD_LOGIC;
  signal \exp_result0_carry__0_n_1\ : STD_LOGIC;
  signal \exp_result0_carry__0_n_2\ : STD_LOGIC;
  signal \exp_result0_carry__0_n_3\ : STD_LOGIC;
  signal \exp_result0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal exp_result0_carry_i_1_n_0 : STD_LOGIC;
  signal exp_result0_carry_i_2_n_0 : STD_LOGIC;
  signal exp_result0_carry_i_3_n_0 : STD_LOGIC;
  signal exp_result0_carry_i_4_n_0 : STD_LOGIC;
  signal exp_result0_carry_n_0 : STD_LOGIC;
  signal exp_result0_carry_n_1 : STD_LOGIC;
  signal exp_result0_carry_n_2 : STD_LOGIC;
  signal exp_result0_carry_n_3 : STD_LOGIC;
  signal \exp_result[6]_i_2_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[0]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[1]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[2]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[3]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[4]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[5]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[6]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[7]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[8]\ : STD_LOGIC;
  signal impartitorNormal_n_0 : STD_LOGIC;
  signal impartitorNormal_n_1 : STD_LOGIC;
  signal impartitorNormal_n_10 : STD_LOGIC;
  signal impartitorNormal_n_11 : STD_LOGIC;
  signal impartitorNormal_n_12 : STD_LOGIC;
  signal impartitorNormal_n_13 : STD_LOGIC;
  signal impartitorNormal_n_14 : STD_LOGIC;
  signal impartitorNormal_n_15 : STD_LOGIC;
  signal impartitorNormal_n_16 : STD_LOGIC;
  signal impartitorNormal_n_17 : STD_LOGIC;
  signal impartitorNormal_n_18 : STD_LOGIC;
  signal impartitorNormal_n_19 : STD_LOGIC;
  signal impartitorNormal_n_2 : STD_LOGIC;
  signal impartitorNormal_n_20 : STD_LOGIC;
  signal impartitorNormal_n_21 : STD_LOGIC;
  signal impartitorNormal_n_23 : STD_LOGIC;
  signal impartitorNormal_n_24 : STD_LOGIC;
  signal impartitorNormal_n_25 : STD_LOGIC;
  signal impartitorNormal_n_26 : STD_LOGIC;
  signal impartitorNormal_n_3 : STD_LOGIC;
  signal impartitorNormal_n_4 : STD_LOGIC;
  signal impartitorNormal_n_5 : STD_LOGIC;
  signal impartitorNormal_n_6 : STD_LOGIC;
  signal impartitorNormal_n_7 : STD_LOGIC;
  signal impartitorNormal_n_8 : STD_LOGIC;
  signal impartitorNormal_n_9 : STD_LOGIC;
  signal in13 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \mantisa_A_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[9]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[9]\ : STD_LOGIC;
  signal \^overflow4\ : STD_LOGIC;
  signal \overflow_i_1__2_n_0\ : STD_LOGIC;
  signal result0_in : STD_LOGIC_VECTOR ( 31 downto 22 );
  signal \result[21]_i_1_n_0\ : STD_LOGIC;
  signal \result[31]_i_1__1_n_0\ : STD_LOGIC;
  signal semn_A : STD_LOGIC;
  signal semn_A_reg_n_0 : STD_LOGIC;
  signal semn_B : STD_LOGIC;
  signal \semn_result_i_1__1_n_0\ : STD_LOGIC;
  signal semn_result_reg_n_0 : STD_LOGIC;
  signal stare : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal start_div_reg_n_0 : STD_LOGIC;
  signal \^zero4\ : STD_LOGIC;
  signal \NLW_exp_result0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exp_result0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_6\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_9\ : label is "soft_lutpair45";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "ajustareexponent:010,normalizarerezultat:011,impartiremantise:001,terminare:100,initializare:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "ajustareexponent:010,normalizarerezultat:011,impartiremantise:001,terminare:100,initializare:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[2]\ : label is "ajustareexponent:010,normalizarerezultat:011,impartiremantise:001,terminare:100,initializare:000,iSTATE:101";
  attribute SOFT_HLUTNM of \exp_A[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \exp_A[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \exp_B[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \exp_B[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \exp_B[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \exp_B[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \exp_B[8]_i_6\ : label is "soft_lutpair44";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of exp_result0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of exp_result0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \exp_result0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \exp_result0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \exp_result0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \exp_result0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \exp_result[0]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \exp_result[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \result[23]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \result[24]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \result[25]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \result[26]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \result[27]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \result[28]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \result[29]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \result[30]_i_1__0\ : label is "soft_lutpair52";
begin
  A_0_sp_1 <= A_0_sn_1;
  A_19_sp_1 <= A_19_sn_1;
  A_25_sp_1 <= A_25_sn_1;
  A_28_sp_1 <= A_28_sn_1;
  \B[29]\(6 downto 0) <= \^b[29]\(6 downto 0);
  B_0_sp_1 <= B_0_sn_1;
  B_19_sp_1 <= B_19_sn_1;
  B_25_sp_1 <= B_25_sn_1;
  D(1 downto 0) <= \^d\(1 downto 0);
  overflow4 <= \^overflow4\;
  zero4 <= \^zero4\;
\FSM_sequential_stare[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000FF00E"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2__0_n_0\,
      I1 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      I2 => stare(0),
      I3 => stare(1),
      I4 => stare(2),
      O => \FSM_sequential_stare[2]_i_1__2_n_0\
    );
\FSM_sequential_stare[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => A_0_sn_1,
      I1 => A_25_sn_1,
      I2 => A(28),
      I3 => A(30),
      I4 => A(29),
      I5 => A_19_sn_1,
      O => \FSM_sequential_stare[2]_i_2__0_n_0\
    );
\FSM_sequential_stare[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => B_0_sn_1,
      I1 => B_25_sn_1,
      I2 => B(28),
      I3 => B(30),
      I4 => B(29),
      I5 => B_19_sn_1,
      O => \FSM_sequential_stare[2]_i_3__0_n_0\
    );
\FSM_sequential_stare[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => A(25),
      I1 => A(24),
      I2 => A(27),
      I3 => A(26),
      O => A_25_sn_1
    );
\FSM_sequential_stare[2]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => A(19),
      I1 => A(18),
      I2 => A(16),
      I3 => A(17),
      I4 => \FSM_sequential_stare[2]_i_8_n_0\,
      O => A_19_sn_1
    );
\FSM_sequential_stare[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => B(25),
      I1 => B(24),
      I2 => B(27),
      I3 => B(26),
      O => B_25_sn_1
    );
\FSM_sequential_stare[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => B(19),
      I1 => B(18),
      I2 => B(16),
      I3 => B(17),
      I4 => \FSM_sequential_stare[2]_i_9_n_0\,
      O => B_19_sn_1
    );
\FSM_sequential_stare[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => A(21),
      I1 => A(20),
      I2 => A(22),
      I3 => A(23),
      O => \FSM_sequential_stare[2]_i_8_n_0\
    );
\FSM_sequential_stare[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => B(21),
      I1 => B(20),
      I2 => B(22),
      I3 => B(23),
      O => \FSM_sequential_stare[2]_i_9_n_0\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => impartitorNormal_n_26,
      Q => stare(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => impartitorNormal_n_25,
      Q => stare(1),
      R => '0'
    );
\FSM_sequential_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[2]_i_1__2_n_0\,
      Q => stare(2),
      R => '0'
    );
\exp_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => A(30),
      I1 => A_28_sn_1,
      I2 => A(29),
      O => \^d\(0)
    );
\exp_A[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => A(30),
      I1 => A_28_sn_1,
      I2 => A(29),
      O => \^d\(1)
    );
\exp_A[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => A(28),
      I1 => A(27),
      I2 => A(25),
      I3 => A(23),
      I4 => A(24),
      I5 => A(26),
      O => A_28_sn_1
    );
\exp_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(0),
      Q => \exp_A_reg_n_0_[0]\,
      R => '0'
    );
\exp_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(1),
      Q => \exp_A_reg_n_0_[1]\,
      R => '0'
    );
\exp_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(2),
      Q => \exp_A_reg_n_0_[2]\,
      R => '0'
    );
\exp_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(3),
      Q => \exp_A_reg_n_0_[3]\,
      R => '0'
    );
\exp_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(4),
      Q => \exp_A_reg_n_0_[4]\,
      R => '0'
    );
\exp_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(5),
      Q => \exp_A_reg_n_0_[5]\,
      R => '0'
    );
\exp_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[6]_0\(6),
      Q => \exp_A_reg_n_0_[6]\,
      R => '0'
    );
\exp_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^d\(0),
      Q => \exp_A_reg_n_0_[7]\,
      R => '0'
    );
\exp_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^d\(1),
      Q => \exp_A_reg_n_0_[8]\,
      R => '0'
    );
\exp_B[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(23),
      O => \^b[29]\(0)
    );
\exp_B[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(23),
      I1 => B(24),
      O => \^b[29]\(1)
    );
\exp_B[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => B(25),
      I1 => B(23),
      I2 => B(24),
      O => \^b[29]\(2)
    );
\exp_B[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => B(26),
      I1 => B(24),
      I2 => B(23),
      I3 => B(25),
      O => \^b[29]\(3)
    );
\exp_B[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => B(27),
      I1 => B(25),
      I2 => B(23),
      I3 => B(24),
      I4 => B(26),
      O => \^b[29]\(4)
    );
\exp_B[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => B(26),
      I1 => B(24),
      I2 => B(23),
      I3 => B(25),
      I4 => B(27),
      I5 => B(28),
      O => \^b[29]\(5)
    );
\exp_B[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(29),
      I1 => \exp_B_reg[6]_0\,
      O => \^b[29]\(6)
    );
\exp_B[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B0BB"
    )
        port map (
      I0 => \exp_B[8]_i_2_n_0\,
      I1 => B_0_sn_1,
      I2 => \exp_B[8]_i_4_n_0\,
      I3 => A_0_sn_1,
      I4 => stare(2),
      I5 => \exp_B[8]_i_6_n_0\,
      O => semn_A
    );
\exp_B[8]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => A(11),
      I1 => A(10),
      I2 => A(9),
      I3 => A(8),
      I4 => \exp_B[8]_i_12_n_0\,
      O => \exp_B[8]_i_10_n_0\
    );
\exp_B[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => B(13),
      I1 => B(12),
      I2 => B(14),
      I3 => B(15),
      O => \exp_B[8]_i_11_n_0\
    );
\exp_B[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => A(13),
      I1 => A(12),
      I2 => A(14),
      I3 => A(15),
      O => \exp_B[8]_i_12_n_0\
    );
\exp_B[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => B_19_sn_1,
      I1 => B(29),
      I2 => B(30),
      I3 => B(28),
      I4 => B_25_sn_1,
      O => \exp_B[8]_i_2_n_0\
    );
\exp_B[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \exp_B[8]_i_7_n_0\,
      I1 => B(0),
      I2 => B(1),
      I3 => B(2),
      I4 => B(3),
      I5 => \exp_B[8]_i_8_n_0\,
      O => B_0_sn_1
    );
\exp_B[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => A_19_sn_1,
      I1 => A(29),
      I2 => A(30),
      I3 => A(28),
      I4 => A_25_sn_1,
      O => \exp_B[8]_i_4_n_0\
    );
\exp_B[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \exp_B[8]_i_9_n_0\,
      I1 => A(0),
      I2 => A(1),
      I3 => A(2),
      I4 => A(3),
      I5 => \exp_B[8]_i_10_n_0\,
      O => A_0_sn_1
    );
\exp_B[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      O => \exp_B[8]_i_6_n_0\
    );
\exp_B[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => B(5),
      I1 => B(4),
      I2 => B(6),
      I3 => B(7),
      O => \exp_B[8]_i_7_n_0\
    );
\exp_B[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => B(11),
      I1 => B(10),
      I2 => B(9),
      I3 => B(8),
      I4 => \exp_B[8]_i_11_n_0\,
      O => \exp_B[8]_i_8_n_0\
    );
\exp_B[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => A(5),
      I1 => A(4),
      I2 => A(6),
      I3 => A(7),
      O => \exp_B[8]_i_9_n_0\
    );
\exp_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(0),
      Q => exp_B(0),
      R => '0'
    );
\exp_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(1),
      Q => exp_B(1),
      R => '0'
    );
\exp_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(2),
      Q => exp_B(2),
      R => '0'
    );
\exp_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(3),
      Q => exp_B(3),
      R => '0'
    );
\exp_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(4),
      Q => exp_B(4),
      R => '0'
    );
\exp_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(5),
      Q => exp_B(5),
      R => '0'
    );
\exp_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^b[29]\(6),
      Q => exp_B(6),
      R => '0'
    );
\exp_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[8]_0\(0),
      Q => exp_B(7),
      R => '0'
    );
\exp_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[8]_0\(1),
      Q => exp_B(8),
      R => '0'
    );
exp_result0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => exp_result0_carry_n_0,
      CO(2) => exp_result0_carry_n_1,
      CO(1) => exp_result0_carry_n_2,
      CO(0) => exp_result0_carry_n_3,
      CYINIT => '1',
      DI(3) => \exp_A_reg_n_0_[3]\,
      DI(2) => \exp_A_reg_n_0_[2]\,
      DI(1) => \exp_A_reg_n_0_[1]\,
      DI(0) => \exp_A_reg_n_0_[0]\,
      O(3 downto 0) => in13(3 downto 0),
      S(3) => exp_result0_carry_i_1_n_0,
      S(2) => exp_result0_carry_i_2_n_0,
      S(1) => exp_result0_carry_i_3_n_0,
      S(0) => exp_result0_carry_i_4_n_0
    );
\exp_result0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => exp_result0_carry_n_0,
      CO(3) => \exp_result0_carry__0_n_0\,
      CO(2) => \exp_result0_carry__0_n_1\,
      CO(1) => \exp_result0_carry__0_n_2\,
      CO(0) => \exp_result0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \exp_A_reg_n_0_[7]\,
      DI(2) => \exp_A_reg_n_0_[6]\,
      DI(1) => \exp_A_reg_n_0_[5]\,
      DI(0) => \exp_A_reg_n_0_[4]\,
      O(3 downto 0) => in13(7 downto 4),
      S(3) => \exp_result0_carry__0_i_1_n_0\,
      S(2) => \exp_result0_carry__0_i_2_n_0\,
      S(1) => \exp_result0_carry__0_i_3_n_0\,
      S(0) => \exp_result0_carry__0_i_4_n_0\
    );
\exp_result0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[7]\,
      I1 => exp_B(7),
      O => \exp_result0_carry__0_i_1_n_0\
    );
\exp_result0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[6]\,
      I1 => exp_B(6),
      O => \exp_result0_carry__0_i_2_n_0\
    );
\exp_result0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[5]\,
      I1 => exp_B(5),
      O => \exp_result0_carry__0_i_3_n_0\
    );
\exp_result0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[4]\,
      I1 => exp_B(4),
      O => \exp_result0_carry__0_i_4_n_0\
    );
\exp_result0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \exp_result0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_exp_result0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_exp_result0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => in13(8),
      S(3 downto 1) => B"000",
      S(0) => \exp_result0_carry__1_i_1_n_0\
    );
\exp_result0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[8]\,
      I1 => exp_B(8),
      O => \exp_result0_carry__1_i_1_n_0\
    );
exp_result0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[3]\,
      I1 => exp_B(3),
      O => exp_result0_carry_i_1_n_0
    );
exp_result0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[2]\,
      I1 => exp_B(2),
      O => exp_result0_carry_i_2_n_0
    );
exp_result0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[1]\,
      I1 => exp_B(1),
      O => exp_result0_carry_i_3_n_0
    );
exp_result0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_A_reg_n_0_[0]\,
      I1 => exp_B(0),
      O => exp_result0_carry_i_4_n_0
    );
\exp_result[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => in13(0),
      I1 => \exp_result_reg_n_0_[0]\,
      I2 => stare(0),
      O => exp_result(0)
    );
\exp_result[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \exp_result_reg_n_0_[1]\,
      I1 => \exp_result_reg_n_0_[0]\,
      I2 => stare(0),
      I3 => in13(1),
      O => exp_result(1)
    );
\exp_result[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => \exp_result_reg_n_0_[0]\,
      I1 => \exp_result_reg_n_0_[1]\,
      I2 => \exp_result_reg_n_0_[2]\,
      I3 => stare(0),
      I4 => in13(2),
      O => exp_result(2)
    );
\exp_result[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \exp_result_reg_n_0_[2]\,
      I1 => \exp_result_reg_n_0_[1]\,
      I2 => \exp_result_reg_n_0_[0]\,
      I3 => \exp_result_reg_n_0_[3]\,
      I4 => stare(0),
      I5 => in13(3),
      O => exp_result(3)
    );
\exp_result[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \exp_result_reg_n_0_[4]\,
      I1 => \exp_result[6]_i_2_n_0\,
      I2 => stare(0),
      I3 => in13(4),
      O => exp_result(4)
    );
\exp_result[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => \exp_result_reg_n_0_[5]\,
      I1 => \exp_result_reg_n_0_[4]\,
      I2 => \exp_result[6]_i_2_n_0\,
      I3 => stare(0),
      I4 => in13(5),
      O => exp_result(5)
    );
\exp_result[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AFFFFAA9A0000"
    )
        port map (
      I0 => \exp_result_reg_n_0_[6]\,
      I1 => \exp_result_reg_n_0_[5]\,
      I2 => \exp_result[6]_i_2_n_0\,
      I3 => \exp_result_reg_n_0_[4]\,
      I4 => stare(0),
      I5 => in13(6),
      O => exp_result(6)
    );
\exp_result[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \exp_result_reg_n_0_[3]\,
      I1 => \exp_result_reg_n_0_[0]\,
      I2 => \exp_result_reg_n_0_[1]\,
      I3 => \exp_result_reg_n_0_[2]\,
      O => \exp_result[6]_i_2_n_0\
    );
\exp_result[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59FF5900"
    )
        port map (
      I0 => \exp_result_reg_n_0_[7]\,
      I1 => \exp_result[8]_i_3__0_n_0\,
      I2 => \exp_result_reg_n_0_[6]\,
      I3 => stare(0),
      I4 => in13(7),
      O => exp_result(7)
    );
\exp_result[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stare(1),
      I1 => stare(2),
      O => \exp_result[8]_i_1__0_n_0\
    );
\exp_result[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AAFFFF65AA0000"
    )
        port map (
      I0 => \exp_result_reg_n_0_[8]\,
      I1 => \exp_result_reg_n_0_[6]\,
      I2 => \exp_result[8]_i_3__0_n_0\,
      I3 => \exp_result_reg_n_0_[7]\,
      I4 => stare(0),
      I5 => in13(8),
      O => exp_result(8)
    );
\exp_result[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \exp_result_reg_n_0_[4]\,
      I1 => \exp_result_reg_n_0_[3]\,
      I2 => \exp_result_reg_n_0_[0]\,
      I3 => \exp_result_reg_n_0_[1]\,
      I4 => \exp_result_reg_n_0_[2]\,
      I5 => \exp_result_reg_n_0_[5]\,
      O => \exp_result[8]_i_3__0_n_0\
    );
\exp_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(0),
      Q => \exp_result_reg_n_0_[0]\,
      R => '0'
    );
\exp_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(1),
      Q => \exp_result_reg_n_0_[1]\,
      R => '0'
    );
\exp_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(2),
      Q => \exp_result_reg_n_0_[2]\,
      R => '0'
    );
\exp_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(3),
      Q => \exp_result_reg_n_0_[3]\,
      R => '0'
    );
\exp_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(4),
      Q => \exp_result_reg_n_0_[4]\,
      R => '0'
    );
\exp_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(5),
      Q => \exp_result_reg_n_0_[5]\,
      R => '0'
    );
\exp_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(6),
      Q => \exp_result_reg_n_0_[6]\,
      R => '0'
    );
\exp_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(7),
      Q => \exp_result_reg_n_0_[7]\,
      R => '0'
    );
\exp_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \exp_result[8]_i_1__0_n_0\,
      D => exp_result(8),
      Q => \exp_result_reg_n_0_[8]\,
      R => '0'
    );
impartitorNormal: entity work.design_1_ALU_0_0_divBinary
     port map (
      \A_extins_reg[22]_0\(22) => \mantisa_A_reg_n_0_[22]\,
      \A_extins_reg[22]_0\(21) => \mantisa_A_reg_n_0_[21]\,
      \A_extins_reg[22]_0\(20) => \mantisa_A_reg_n_0_[20]\,
      \A_extins_reg[22]_0\(19) => \mantisa_A_reg_n_0_[19]\,
      \A_extins_reg[22]_0\(18) => \mantisa_A_reg_n_0_[18]\,
      \A_extins_reg[22]_0\(17) => \mantisa_A_reg_n_0_[17]\,
      \A_extins_reg[22]_0\(16) => \mantisa_A_reg_n_0_[16]\,
      \A_extins_reg[22]_0\(15) => \mantisa_A_reg_n_0_[15]\,
      \A_extins_reg[22]_0\(14) => \mantisa_A_reg_n_0_[14]\,
      \A_extins_reg[22]_0\(13) => \mantisa_A_reg_n_0_[13]\,
      \A_extins_reg[22]_0\(12) => \mantisa_A_reg_n_0_[12]\,
      \A_extins_reg[22]_0\(11) => \mantisa_A_reg_n_0_[11]\,
      \A_extins_reg[22]_0\(10) => \mantisa_A_reg_n_0_[10]\,
      \A_extins_reg[22]_0\(9) => \mantisa_A_reg_n_0_[9]\,
      \A_extins_reg[22]_0\(8) => \mantisa_A_reg_n_0_[8]\,
      \A_extins_reg[22]_0\(7) => \mantisa_A_reg_n_0_[7]\,
      \A_extins_reg[22]_0\(6) => \mantisa_A_reg_n_0_[6]\,
      \A_extins_reg[22]_0\(5) => \mantisa_A_reg_n_0_[5]\,
      \A_extins_reg[22]_0\(4) => \mantisa_A_reg_n_0_[4]\,
      \A_extins_reg[22]_0\(3) => \mantisa_A_reg_n_0_[3]\,
      \A_extins_reg[22]_0\(2) => \mantisa_A_reg_n_0_[2]\,
      \A_extins_reg[22]_0\(1) => \mantisa_A_reg_n_0_[1]\,
      \A_extins_reg[22]_0\(0) => \mantisa_A_reg_n_0_[0]\,
      \A_extins_reg[23]_0\ => start_div_reg_n_0,
      \B_extins_reg[22]_0\(22) => \mantisa_B_reg_n_0_[22]\,
      \B_extins_reg[22]_0\(21) => \mantisa_B_reg_n_0_[21]\,
      \B_extins_reg[22]_0\(20) => \mantisa_B_reg_n_0_[20]\,
      \B_extins_reg[22]_0\(19) => \mantisa_B_reg_n_0_[19]\,
      \B_extins_reg[22]_0\(18) => \mantisa_B_reg_n_0_[18]\,
      \B_extins_reg[22]_0\(17) => \mantisa_B_reg_n_0_[17]\,
      \B_extins_reg[22]_0\(16) => \mantisa_B_reg_n_0_[16]\,
      \B_extins_reg[22]_0\(15) => \mantisa_B_reg_n_0_[15]\,
      \B_extins_reg[22]_0\(14) => \mantisa_B_reg_n_0_[14]\,
      \B_extins_reg[22]_0\(13) => \mantisa_B_reg_n_0_[13]\,
      \B_extins_reg[22]_0\(12) => \mantisa_B_reg_n_0_[12]\,
      \B_extins_reg[22]_0\(11) => \mantisa_B_reg_n_0_[11]\,
      \B_extins_reg[22]_0\(10) => \mantisa_B_reg_n_0_[10]\,
      \B_extins_reg[22]_0\(9) => \mantisa_B_reg_n_0_[9]\,
      \B_extins_reg[22]_0\(8) => \mantisa_B_reg_n_0_[8]\,
      \B_extins_reg[22]_0\(7) => \mantisa_B_reg_n_0_[7]\,
      \B_extins_reg[22]_0\(6) => \mantisa_B_reg_n_0_[6]\,
      \B_extins_reg[22]_0\(5) => \mantisa_B_reg_n_0_[5]\,
      \B_extins_reg[22]_0\(4) => \mantisa_B_reg_n_0_[4]\,
      \B_extins_reg[22]_0\(3) => \mantisa_B_reg_n_0_[3]\,
      \B_extins_reg[22]_0\(2) => \mantisa_B_reg_n_0_[2]\,
      \B_extins_reg[22]_0\(1) => \mantisa_B_reg_n_0_[1]\,
      \B_extins_reg[22]_0\(0) => \mantisa_B_reg_n_0_[0]\,
      D(0) => result0_in(22),
      E(0) => semn_A,
      \FSM_sequential_stare_reg[0]\ => \FSM_sequential_stare[2]_i_3__0_n_0\,
      \FSM_sequential_stare_reg[0]_0\ => \FSM_sequential_stare[2]_i_2__0_n_0\,
      \FSM_sequential_stare_reg[2]\ => impartitorNormal_n_24,
      Q(21) => impartitorNormal_n_0,
      Q(20) => impartitorNormal_n_1,
      Q(19) => impartitorNormal_n_2,
      Q(18) => impartitorNormal_n_3,
      Q(17) => impartitorNormal_n_4,
      Q(16) => impartitorNormal_n_5,
      Q(15) => impartitorNormal_n_6,
      Q(14) => impartitorNormal_n_7,
      Q(13) => impartitorNormal_n_8,
      Q(12) => impartitorNormal_n_9,
      Q(11) => impartitorNormal_n_10,
      Q(10) => impartitorNormal_n_11,
      Q(9) => impartitorNormal_n_12,
      Q(8) => impartitorNormal_n_13,
      Q(7) => impartitorNormal_n_14,
      Q(6) => impartitorNormal_n_15,
      Q(5) => impartitorNormal_n_16,
      Q(4) => impartitorNormal_n_17,
      Q(3) => impartitorNormal_n_18,
      Q(2) => impartitorNormal_n_19,
      Q(1) => impartitorNormal_n_20,
      Q(0) => impartitorNormal_n_21,
      clk => clk,
      done_reg_0 => impartitorNormal_n_23,
      done_reg_1 => impartitorNormal_n_25,
      done_reg_2 => impartitorNormal_n_26,
      stare(2 downto 0) => stare(2 downto 0),
      zero4 => \^zero4\
    );
\mantisa_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(0),
      Q => \mantisa_A_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(10),
      Q => \mantisa_A_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(11),
      Q => \mantisa_A_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(12),
      Q => \mantisa_A_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(13),
      Q => \mantisa_A_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(14),
      Q => \mantisa_A_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(15),
      Q => \mantisa_A_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(16),
      Q => \mantisa_A_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(17),
      Q => \mantisa_A_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(18),
      Q => \mantisa_A_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(19),
      Q => \mantisa_A_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(1),
      Q => \mantisa_A_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(20),
      Q => \mantisa_A_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(21),
      Q => \mantisa_A_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(22),
      Q => \mantisa_A_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(2),
      Q => \mantisa_A_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(3),
      Q => \mantisa_A_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(4),
      Q => \mantisa_A_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(5),
      Q => \mantisa_A_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(6),
      Q => \mantisa_A_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(7),
      Q => \mantisa_A_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(8),
      Q => \mantisa_A_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(9),
      Q => \mantisa_A_reg_n_0_[9]\,
      R => '0'
    );
\mantisa_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(0),
      Q => \mantisa_B_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(10),
      Q => \mantisa_B_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(11),
      Q => \mantisa_B_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(12),
      Q => \mantisa_B_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(13),
      Q => \mantisa_B_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(14),
      Q => \mantisa_B_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(15),
      Q => \mantisa_B_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(16),
      Q => \mantisa_B_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(17),
      Q => \mantisa_B_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(18),
      Q => \mantisa_B_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(19),
      Q => \mantisa_B_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(1),
      Q => \mantisa_B_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(20),
      Q => \mantisa_B_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(21),
      Q => \mantisa_B_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(22),
      Q => \mantisa_B_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(2),
      Q => \mantisa_B_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(3),
      Q => \mantisa_B_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(4),
      Q => \mantisa_B_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(5),
      Q => \mantisa_B_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(6),
      Q => \mantisa_B_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(7),
      Q => \mantisa_B_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(8),
      Q => \mantisa_B_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(9),
      Q => \mantisa_B_reg_n_0_[9]\,
      R => '0'
    );
\overflow_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F55555B0A00000"
    )
        port map (
      I0 => semn_A,
      I1 => stare(2),
      I2 => stare(1),
      I3 => stare(0),
      I4 => \exp_result_reg_n_0_[8]\,
      I5 => \^overflow4\,
      O => \overflow_i_1__2_n_0\
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \overflow_i_1__2_n_0\,
      Q => \^overflow4\,
      R => '0'
    );
\result[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      I1 => \FSM_sequential_stare[2]_i_2__0_n_0\,
      I2 => stare(0),
      I3 => stare(2),
      I4 => stare(1),
      O => \result[21]_i_1_n_0\
    );
\result[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[0]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(23)
    );
\result[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[1]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(24)
    );
\result[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[2]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(25)
    );
\result[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[3]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(26)
    );
\result[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[4]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(27)
    );
\result[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[5]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(28)
    );
\result[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[6]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(29)
    );
\result[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \exp_result_reg_n_0_[7]\,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => result0_in(30)
    );
\result[31]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41414140"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => stare(0),
      I3 => \FSM_sequential_stare[2]_i_2__0_n_0\,
      I4 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      O => \result[31]_i_1__1_n_0\
    );
\result[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8888BB8BBB8888"
    )
        port map (
      I0 => semn_result_reg_n_0,
      I1 => stare(0),
      I2 => \FSM_sequential_stare[2]_i_2__0_n_0\,
      I3 => \FSM_sequential_stare[2]_i_3__0_n_0\,
      I4 => A(31),
      I5 => B(31),
      O => result0_in(31)
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_21,
      Q => result4(0),
      R => \result[21]_i_1_n_0\
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_11,
      Q => result4(10),
      R => \result[21]_i_1_n_0\
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_10,
      Q => result4(11),
      R => \result[21]_i_1_n_0\
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_9,
      Q => result4(12),
      R => \result[21]_i_1_n_0\
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_8,
      Q => result4(13),
      R => \result[21]_i_1_n_0\
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_7,
      Q => result4(14),
      R => \result[21]_i_1_n_0\
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_6,
      Q => result4(15),
      R => \result[21]_i_1_n_0\
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_5,
      Q => result4(16),
      R => \result[21]_i_1_n_0\
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_4,
      Q => result4(17),
      R => \result[21]_i_1_n_0\
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_3,
      Q => result4(18),
      R => \result[21]_i_1_n_0\
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_2,
      Q => result4(19),
      R => \result[21]_i_1_n_0\
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_20,
      Q => result4(1),
      R => \result[21]_i_1_n_0\
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_1,
      Q => result4(20),
      R => \result[21]_i_1_n_0\
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_0,
      Q => result4(21),
      R => \result[21]_i_1_n_0\
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(22),
      Q => result4(22),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(23),
      Q => result4(23),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(24),
      Q => result4(24),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(25),
      Q => result4(25),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(26),
      Q => result4(26),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(27),
      Q => result4(27),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(28),
      Q => result4(28),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(29),
      Q => result4(29),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_19,
      Q => result4(2),
      R => \result[21]_i_1_n_0\
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(30),
      Q => result4(30),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => result0_in(31),
      Q => result4(31),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_18,
      Q => result4(3),
      R => \result[21]_i_1_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_17,
      Q => result4(4),
      R => \result[21]_i_1_n_0\
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_16,
      Q => result4(5),
      R => \result[21]_i_1_n_0\
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_15,
      Q => result4(6),
      R => \result[21]_i_1_n_0\
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_14,
      Q => result4(7),
      R => \result[21]_i_1_n_0\
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_13,
      Q => result4(8),
      R => \result[21]_i_1_n_0\
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \result[31]_i_1__1_n_0\,
      D => impartitorNormal_n_12,
      Q => result4(9),
      R => \result[21]_i_1_n_0\
    );
semn_A_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => A(31),
      Q => semn_A_reg_n_0,
      R => '0'
    );
semn_B_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => B(31),
      Q => semn_B,
      R => '0'
    );
\semn_result_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF6FF00000600"
    )
        port map (
      I0 => semn_B,
      I1 => semn_A_reg_n_0,
      I2 => stare(2),
      I3 => stare(1),
      I4 => stare(0),
      I5 => semn_result_reg_n_0,
      O => \semn_result_i_1__1_n_0\
    );
semn_result_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \semn_result_i_1__1_n_0\,
      Q => semn_result_reg_n_0,
      R => '0'
    );
start_div_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => impartitorNormal_n_23,
      Q => start_div_reg_n_0,
      R => '0'
    );
zero_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => impartitorNormal_n_24,
      Q => \^zero4\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_mul is
  port (
    overflow3 : out STD_LOGIC;
    zero3 : out STD_LOGIC;
    result3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_stare_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_stare_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_stare[2]_i_2_0\ : in STD_LOGIC;
    \FSM_sequential_stare[2]_i_2_1\ : in STD_LOGIC;
    \FSM_sequential_stare[2]_i_2_2\ : in STD_LOGIC;
    \FSM_sequential_stare[2]_i_2_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_mul : entity is "mul";
end design_1_ALU_0_0_mul;

architecture STRUCTURE of design_1_ALU_0_0_mul is
  signal \FSM_sequential_stare[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_5_n_0\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 45 downto 23 );
  signal R : STD_LOGIC;
  signal \exp_A_reg_n_0_[0]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[3]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \exp_A_reg_n_0_[7]\ : STD_LOGIC;
  signal exp_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal exp_suma : STD_LOGIC;
  signal \exp_suma0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \exp_suma0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \exp_suma0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \exp_suma0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \exp_suma0_carry__0_n_0\ : STD_LOGIC;
  signal \exp_suma0_carry__0_n_1\ : STD_LOGIC;
  signal \exp_suma0_carry__0_n_2\ : STD_LOGIC;
  signal \exp_suma0_carry__0_n_3\ : STD_LOGIC;
  signal \exp_suma0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal exp_suma0_carry_i_5_n_0 : STD_LOGIC;
  signal exp_suma0_carry_i_6_n_0 : STD_LOGIC;
  signal exp_suma0_carry_i_7_n_0 : STD_LOGIC;
  signal exp_suma0_carry_i_8_n_0 : STD_LOGIC;
  signal exp_suma0_carry_n_0 : STD_LOGIC;
  signal exp_suma0_carry_n_1 : STD_LOGIC;
  signal exp_suma0_carry_n_2 : STD_LOGIC;
  signal exp_suma0_carry_n_3 : STD_LOGIC;
  signal exp_suma0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \exp_suma_reg_n_0_[0]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[1]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[2]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[3]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[4]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[5]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[6]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[7]\ : STD_LOGIC;
  signal \exp_suma_reg_n_0_[8]\ : STD_LOGIC;
  signal inmultitorNormal_n_1 : STD_LOGIC;
  signal inmultitorNormal_n_10 : STD_LOGIC;
  signal inmultitorNormal_n_11 : STD_LOGIC;
  signal inmultitorNormal_n_12 : STD_LOGIC;
  signal inmultitorNormal_n_13 : STD_LOGIC;
  signal inmultitorNormal_n_14 : STD_LOGIC;
  signal inmultitorNormal_n_15 : STD_LOGIC;
  signal inmultitorNormal_n_16 : STD_LOGIC;
  signal inmultitorNormal_n_17 : STD_LOGIC;
  signal inmultitorNormal_n_18 : STD_LOGIC;
  signal inmultitorNormal_n_19 : STD_LOGIC;
  signal inmultitorNormal_n_2 : STD_LOGIC;
  signal inmultitorNormal_n_20 : STD_LOGIC;
  signal inmultitorNormal_n_21 : STD_LOGIC;
  signal inmultitorNormal_n_22 : STD_LOGIC;
  signal inmultitorNormal_n_23 : STD_LOGIC;
  signal inmultitorNormal_n_24 : STD_LOGIC;
  signal inmultitorNormal_n_25 : STD_LOGIC;
  signal inmultitorNormal_n_26 : STD_LOGIC;
  signal inmultitorNormal_n_27 : STD_LOGIC;
  signal inmultitorNormal_n_28 : STD_LOGIC;
  signal inmultitorNormal_n_29 : STD_LOGIC;
  signal inmultitorNormal_n_3 : STD_LOGIC;
  signal inmultitorNormal_n_30 : STD_LOGIC;
  signal inmultitorNormal_n_4 : STD_LOGIC;
  signal inmultitorNormal_n_5 : STD_LOGIC;
  signal inmultitorNormal_n_6 : STD_LOGIC;
  signal inmultitorNormal_n_7 : STD_LOGIC;
  signal inmultitorNormal_n_8 : STD_LOGIC;
  signal inmultitorNormal_n_9 : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[9]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[9]\ : STD_LOGIC;
  signal mantisa_normalizata : STD_LOGIC;
  signal \mantisa_normalizata_reg_n_0_[46]\ : STD_LOGIC;
  signal \mantisa_normalizata_reg_n_0_[47]\ : STD_LOGIC;
  signal \^overflow3\ : STD_LOGIC;
  signal \overflow_i_1__1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 45 downto 23 );
  signal plusOp0_in : STD_LOGIC_VECTOR ( 46 downto 24 );
  signal \result[0]_i_1_n_0\ : STD_LOGIC;
  signal \result[10]_i_1_n_0\ : STD_LOGIC;
  signal \result[11]_i_1_n_0\ : STD_LOGIC;
  signal \result[12]_i_1_n_0\ : STD_LOGIC;
  signal \result[13]_i_1_n_0\ : STD_LOGIC;
  signal \result[14]_i_1_n_0\ : STD_LOGIC;
  signal \result[15]_i_1_n_0\ : STD_LOGIC;
  signal \result[16]_i_1_n_0\ : STD_LOGIC;
  signal \result[17]_i_1_n_0\ : STD_LOGIC;
  signal \result[18]_i_1_n_0\ : STD_LOGIC;
  signal \result[19]_i_1_n_0\ : STD_LOGIC;
  signal \result[1]_i_1_n_0\ : STD_LOGIC;
  signal \result[20]_i_1_n_0\ : STD_LOGIC;
  signal \result[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \result[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \result[28]_i_1_n_0\ : STD_LOGIC;
  signal \result[29]_i_1_n_0\ : STD_LOGIC;
  signal \result[29]_i_2_n_0\ : STD_LOGIC;
  signal \result[2]_i_1_n_0\ : STD_LOGIC;
  signal \result[30]_i_1_n_0\ : STD_LOGIC;
  signal \result[31]_i_1__2_n_0\ : STD_LOGIC;
  signal \result[31]_i_2_n_0\ : STD_LOGIC;
  signal \result[31]_i_3_n_0\ : STD_LOGIC;
  signal \result[31]_i_4_n_0\ : STD_LOGIC;
  signal \result[31]_i_5_n_0\ : STD_LOGIC;
  signal \result[3]_i_1_n_0\ : STD_LOGIC;
  signal \result[3]_i_4_n_0\ : STD_LOGIC;
  signal \result[3]_i_5_n_0\ : STD_LOGIC;
  signal \result[4]_i_1_n_0\ : STD_LOGIC;
  signal \result[5]_i_1_n_0\ : STD_LOGIC;
  signal \result[6]_i_1_n_0\ : STD_LOGIC;
  signal \result[7]_i_1_n_0\ : STD_LOGIC;
  signal \result[8]_i_1_n_0\ : STD_LOGIC;
  signal \result[9]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[19]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg[19]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[19]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[22]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[22]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal semn_A : STD_LOGIC;
  signal semn_A_reg_n_0 : STD_LOGIC;
  signal semn_B : STD_LOGIC;
  signal stare : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal start_mul_reg_n_0 : STD_LOGIC;
  signal \^zero3\ : STD_LOGIC;
  signal \zero_i_1__1_n_0\ : STD_LOGIC;
  signal \NLW_exp_suma0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exp_suma0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_result_reg[22]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_result_reg[22]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_reg[22]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_result_reg[22]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_3\ : label is "soft_lutpair83";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "multiplicare:001,normalizarerezultat:100,adunareexponenti:010,corectiedepasire:011,terminare:101,initializare:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "multiplicare:001,normalizarerezultat:100,adunareexponenti:010,corectiedepasire:011,terminare:101,initializare:000,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[2]\ : label is "multiplicare:001,normalizarerezultat:100,adunareexponenti:010,corectiedepasire:011,terminare:101,initializare:000,iSTATE:110";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of exp_suma0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of exp_suma0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \exp_suma0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \exp_suma0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \exp_suma0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \exp_suma0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \result[22]_i_1__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \result[23]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \result[24]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \result[25]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \result[27]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \result[28]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \result[29]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \result[30]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \result[31]_i_3\ : label is "soft_lutpair84";
  attribute ADDER_THRESHOLD of \result_reg[11]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[11]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[11]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[11]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[15]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[15]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[15]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[15]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[19]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[19]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[19]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[19]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[22]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[22]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[22]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[22]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[3]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[3]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[3]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[7]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \result_reg[7]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \result_reg[7]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  overflow3 <= \^overflow3\;
  zero3 <= \^zero3\;
\FSM_sequential_stare[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_4__0_n_0\,
      I1 => \FSM_sequential_stare_reg[2]_0\,
      I2 => \FSM_sequential_stare[2]_i_5_n_0\,
      I3 => \FSM_sequential_stare_reg[2]_1\,
      O => \FSM_sequential_stare[2]_i_2_n_0\
    );
\FSM_sequential_stare[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \exp_suma_reg_n_0_[8]\,
      I1 => \result[31]_i_4_n_0\,
      I2 => \exp_suma_reg_n_0_[7]\,
      O => \FSM_sequential_stare[2]_i_3_n_0\
    );
\FSM_sequential_stare[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2_2\,
      I1 => B(29),
      I2 => B(28),
      I3 => B(30),
      I4 => B(31),
      I5 => \FSM_sequential_stare[2]_i_2_3\,
      O => \FSM_sequential_stare[2]_i_4__0_n_0\
    );
\FSM_sequential_stare[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2_0\,
      I1 => A(29),
      I2 => A(28),
      I3 => A(30),
      I4 => A(31),
      I5 => \FSM_sequential_stare[2]_i_2_1\,
      O => \FSM_sequential_stare[2]_i_5_n_0\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inmultitorNormal_n_4,
      Q => stare(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inmultitorNormal_n_3,
      Q => stare(1),
      R => '0'
    );
\FSM_sequential_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inmultitorNormal_n_2,
      Q => stare(2),
      R => '0'
    );
\exp_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(23),
      Q => \exp_A_reg_n_0_[0]\,
      R => '0'
    );
\exp_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(24),
      Q => \exp_A_reg_n_0_[1]\,
      R => '0'
    );
\exp_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(25),
      Q => \exp_A_reg_n_0_[2]\,
      R => '0'
    );
\exp_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(26),
      Q => \exp_A_reg_n_0_[3]\,
      R => '0'
    );
\exp_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(27),
      Q => \exp_A_reg_n_0_[4]\,
      R => '0'
    );
\exp_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(28),
      Q => \exp_A_reg_n_0_[5]\,
      R => '0'
    );
\exp_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(29),
      Q => \exp_A_reg_n_0_[6]\,
      R => '0'
    );
\exp_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(30),
      Q => \exp_A_reg_n_0_[7]\,
      R => '0'
    );
\exp_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(23),
      Q => exp_B(0),
      R => '0'
    );
\exp_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(24),
      Q => exp_B(1),
      R => '0'
    );
\exp_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(25),
      Q => exp_B(2),
      R => '0'
    );
\exp_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(26),
      Q => exp_B(3),
      R => '0'
    );
\exp_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(27),
      Q => exp_B(4),
      R => '0'
    );
\exp_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(28),
      Q => exp_B(5),
      R => '0'
    );
\exp_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(29),
      Q => exp_B(6),
      R => '0'
    );
\exp_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(30),
      Q => exp_B(7),
      R => '0'
    );
exp_suma0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => exp_suma0_carry_n_0,
      CO(2) => exp_suma0_carry_n_1,
      CO(1) => exp_suma0_carry_n_2,
      CO(0) => exp_suma0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => p_0_out(3 downto 0),
      O(3 downto 0) => exp_suma0_in(3 downto 0),
      S(3) => exp_suma0_carry_i_5_n_0,
      S(2) => exp_suma0_carry_i_6_n_0,
      S(1) => exp_suma0_carry_i_7_n_0,
      S(0) => exp_suma0_carry_i_8_n_0
    );
\exp_suma0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => exp_suma0_carry_n_0,
      CO(3) => \exp_suma0_carry__0_n_0\,
      CO(2) => \exp_suma0_carry__0_n_1\,
      CO(1) => \exp_suma0_carry__0_n_2\,
      CO(0) => \exp_suma0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_out(7 downto 4),
      O(3 downto 0) => exp_suma0_in(7 downto 4),
      S(3) => \exp_suma0_carry__0_i_5_n_0\,
      S(2) => \exp_suma0_carry__0_i_6_n_0\,
      S(1) => \exp_suma0_carry__0_i_7_n_0\,
      S(0) => \exp_suma0_carry__0_i_8_n_0\
    );
\exp_suma0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => exp_B(7),
      I1 => stare(0),
      O => p_0_out(7)
    );
\exp_suma0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(6),
      I1 => stare(1),
      O => p_0_out(6)
    );
\exp_suma0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(5),
      I1 => stare(1),
      O => p_0_out(5)
    );
\exp_suma0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(4),
      I1 => stare(1),
      O => p_0_out(4)
    );
\exp_suma0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"53A3"
    )
        port map (
      I0 => exp_B(7),
      I1 => \exp_suma_reg_n_0_[7]\,
      I2 => stare(0),
      I3 => \exp_A_reg_n_0_[7]\,
      O => \exp_suma0_carry__0_i_5_n_0\
    );
\exp_suma0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB444B4"
    )
        port map (
      I0 => stare(1),
      I1 => exp_B(6),
      I2 => \exp_suma_reg_n_0_[6]\,
      I3 => stare(0),
      I4 => \exp_A_reg_n_0_[6]\,
      O => \exp_suma0_carry__0_i_6_n_0\
    );
\exp_suma0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB444B4"
    )
        port map (
      I0 => stare(1),
      I1 => exp_B(5),
      I2 => \exp_suma_reg_n_0_[5]\,
      I3 => stare(0),
      I4 => \exp_A_reg_n_0_[5]\,
      O => \exp_suma0_carry__0_i_7_n_0\
    );
\exp_suma0_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB444B4"
    )
        port map (
      I0 => stare(1),
      I1 => exp_B(4),
      I2 => \exp_suma_reg_n_0_[4]\,
      I3 => stare(0),
      I4 => \exp_A_reg_n_0_[4]\,
      O => \exp_suma0_carry__0_i_8_n_0\
    );
\exp_suma0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \exp_suma0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_exp_suma0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_exp_suma0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => exp_suma0_in(8),
      S(3 downto 1) => B"000",
      S(0) => \exp_suma0_carry__1_i_1_n_0\
    );
\exp_suma0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stare(1),
      I1 => \exp_suma_reg_n_0_[8]\,
      O => \exp_suma0_carry__1_i_1_n_0\
    );
exp_suma0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(3),
      I1 => stare(1),
      O => p_0_out(3)
    );
exp_suma0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(2),
      I1 => stare(1),
      O => p_0_out(2)
    );
exp_suma0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => exp_B(1),
      I1 => stare(1),
      O => p_0_out(1)
    );
exp_suma0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => exp_B(0),
      I1 => stare(0),
      O => p_0_out(0)
    );
exp_suma0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB444B4"
    )
        port map (
      I0 => stare(1),
      I1 => exp_B(3),
      I2 => \exp_suma_reg_n_0_[3]\,
      I3 => stare(0),
      I4 => \exp_A_reg_n_0_[3]\,
      O => exp_suma0_carry_i_5_n_0
    );
exp_suma0_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB444B4"
    )
        port map (
      I0 => stare(1),
      I1 => exp_B(2),
      I2 => \exp_suma_reg_n_0_[2]\,
      I3 => stare(0),
      I4 => \exp_A_reg_n_0_[2]\,
      O => exp_suma0_carry_i_6_n_0
    );
exp_suma0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB444B4"
    )
        port map (
      I0 => stare(1),
      I1 => exp_B(1),
      I2 => \exp_suma_reg_n_0_[1]\,
      I3 => stare(0),
      I4 => \exp_A_reg_n_0_[1]\,
      O => exp_suma0_carry_i_7_n_0
    );
exp_suma0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"53A3"
    )
        port map (
      I0 => exp_B(0),
      I1 => \exp_suma_reg_n_0_[0]\,
      I2 => stare(0),
      I3 => \exp_A_reg_n_0_[0]\,
      O => exp_suma0_carry_i_8_n_0
    );
\exp_suma[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040304"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2_n_0\,
      I1 => stare(0),
      I2 => stare(2),
      I3 => stare(1),
      I4 => \FSM_sequential_stare[2]_i_3_n_0\,
      O => exp_suma
    );
\exp_suma_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(0),
      Q => \exp_suma_reg_n_0_[0]\,
      R => '0'
    );
\exp_suma_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(1),
      Q => \exp_suma_reg_n_0_[1]\,
      R => '0'
    );
\exp_suma_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(2),
      Q => \exp_suma_reg_n_0_[2]\,
      R => '0'
    );
\exp_suma_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(3),
      Q => \exp_suma_reg_n_0_[3]\,
      R => '0'
    );
\exp_suma_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(4),
      Q => \exp_suma_reg_n_0_[4]\,
      R => '0'
    );
\exp_suma_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(5),
      Q => \exp_suma_reg_n_0_[5]\,
      R => '0'
    );
\exp_suma_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(6),
      Q => \exp_suma_reg_n_0_[6]\,
      R => '0'
    );
\exp_suma_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(7),
      Q => \exp_suma_reg_n_0_[7]\,
      R => '0'
    );
\exp_suma_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_suma,
      D => exp_suma0_in(8),
      Q => \exp_suma_reg_n_0_[8]\,
      R => '0'
    );
inmultitorNormal: entity work.design_1_ALU_0_0_mulBinary
     port map (
      \A_extins_reg[22]_0\(22) => \mantisa_A_reg_n_0_[22]\,
      \A_extins_reg[22]_0\(21) => \mantisa_A_reg_n_0_[21]\,
      \A_extins_reg[22]_0\(20) => \mantisa_A_reg_n_0_[20]\,
      \A_extins_reg[22]_0\(19) => \mantisa_A_reg_n_0_[19]\,
      \A_extins_reg[22]_0\(18) => \mantisa_A_reg_n_0_[18]\,
      \A_extins_reg[22]_0\(17) => \mantisa_A_reg_n_0_[17]\,
      \A_extins_reg[22]_0\(16) => \mantisa_A_reg_n_0_[16]\,
      \A_extins_reg[22]_0\(15) => \mantisa_A_reg_n_0_[15]\,
      \A_extins_reg[22]_0\(14) => \mantisa_A_reg_n_0_[14]\,
      \A_extins_reg[22]_0\(13) => \mantisa_A_reg_n_0_[13]\,
      \A_extins_reg[22]_0\(12) => \mantisa_A_reg_n_0_[12]\,
      \A_extins_reg[22]_0\(11) => \mantisa_A_reg_n_0_[11]\,
      \A_extins_reg[22]_0\(10) => \mantisa_A_reg_n_0_[10]\,
      \A_extins_reg[22]_0\(9) => \mantisa_A_reg_n_0_[9]\,
      \A_extins_reg[22]_0\(8) => \mantisa_A_reg_n_0_[8]\,
      \A_extins_reg[22]_0\(7) => \mantisa_A_reg_n_0_[7]\,
      \A_extins_reg[22]_0\(6) => \mantisa_A_reg_n_0_[6]\,
      \A_extins_reg[22]_0\(5) => \mantisa_A_reg_n_0_[5]\,
      \A_extins_reg[22]_0\(4) => \mantisa_A_reg_n_0_[4]\,
      \A_extins_reg[22]_0\(3) => \mantisa_A_reg_n_0_[3]\,
      \A_extins_reg[22]_0\(2) => \mantisa_A_reg_n_0_[2]\,
      \A_extins_reg[22]_0\(1) => \mantisa_A_reg_n_0_[1]\,
      \A_extins_reg[22]_0\(0) => \mantisa_A_reg_n_0_[0]\,
      \B_extins_reg[22]_0\(22) => \mantisa_B_reg_n_0_[22]\,
      \B_extins_reg[22]_0\(21) => \mantisa_B_reg_n_0_[21]\,
      \B_extins_reg[22]_0\(20) => \mantisa_B_reg_n_0_[20]\,
      \B_extins_reg[22]_0\(19) => \mantisa_B_reg_n_0_[19]\,
      \B_extins_reg[22]_0\(18) => \mantisa_B_reg_n_0_[18]\,
      \B_extins_reg[22]_0\(17) => \mantisa_B_reg_n_0_[17]\,
      \B_extins_reg[22]_0\(16) => \mantisa_B_reg_n_0_[16]\,
      \B_extins_reg[22]_0\(15) => \mantisa_B_reg_n_0_[15]\,
      \B_extins_reg[22]_0\(14) => \mantisa_B_reg_n_0_[14]\,
      \B_extins_reg[22]_0\(13) => \mantisa_B_reg_n_0_[13]\,
      \B_extins_reg[22]_0\(12) => \mantisa_B_reg_n_0_[12]\,
      \B_extins_reg[22]_0\(11) => \mantisa_B_reg_n_0_[11]\,
      \B_extins_reg[22]_0\(10) => \mantisa_B_reg_n_0_[10]\,
      \B_extins_reg[22]_0\(9) => \mantisa_B_reg_n_0_[9]\,
      \B_extins_reg[22]_0\(8) => \mantisa_B_reg_n_0_[8]\,
      \B_extins_reg[22]_0\(7) => \mantisa_B_reg_n_0_[7]\,
      \B_extins_reg[22]_0\(6) => \mantisa_B_reg_n_0_[6]\,
      \B_extins_reg[22]_0\(5) => \mantisa_B_reg_n_0_[5]\,
      \B_extins_reg[22]_0\(4) => \mantisa_B_reg_n_0_[4]\,
      \B_extins_reg[22]_0\(3) => \mantisa_B_reg_n_0_[3]\,
      \B_extins_reg[22]_0\(2) => \mantisa_B_reg_n_0_[2]\,
      \B_extins_reg[22]_0\(1) => \mantisa_B_reg_n_0_[1]\,
      \B_extins_reg[22]_0\(0) => \mantisa_B_reg_n_0_[0]\,
      E(0) => mantisa_normalizata,
      \FSM_sequential_stare_reg[1]_0\ => start_mul_reg_n_0,
      \FSM_sequential_stare_reg[2]\ => inmultitorNormal_n_2,
      \FSM_sequential_stare_reg[2]_0\ => inmultitorNormal_n_3,
      \FSM_sequential_stare_reg[2]_1\ => inmultitorNormal_n_4,
      \FSM_sequential_stare_reg[2]_2\ => \FSM_sequential_stare[2]_i_3_n_0\,
      \FSM_sequential_stare_reg[2]_3\ => \FSM_sequential_stare[2]_i_2_n_0\,
      Q(25) => inmultitorNormal_n_5,
      Q(24) => inmultitorNormal_n_6,
      Q(23) => inmultitorNormal_n_7,
      Q(22) => inmultitorNormal_n_8,
      Q(21) => inmultitorNormal_n_9,
      Q(20) => inmultitorNormal_n_10,
      Q(19) => inmultitorNormal_n_11,
      Q(18) => inmultitorNormal_n_12,
      Q(17) => inmultitorNormal_n_13,
      Q(16) => inmultitorNormal_n_14,
      Q(15) => inmultitorNormal_n_15,
      Q(14) => inmultitorNormal_n_16,
      Q(13) => inmultitorNormal_n_17,
      Q(12) => inmultitorNormal_n_18,
      Q(11) => inmultitorNormal_n_19,
      Q(10) => inmultitorNormal_n_20,
      Q(9) => inmultitorNormal_n_21,
      Q(8) => inmultitorNormal_n_22,
      Q(7) => inmultitorNormal_n_23,
      Q(6) => inmultitorNormal_n_24,
      Q(5) => inmultitorNormal_n_25,
      Q(4) => inmultitorNormal_n_26,
      Q(3) => inmultitorNormal_n_27,
      Q(2) => inmultitorNormal_n_28,
      Q(1) => inmultitorNormal_n_29,
      Q(0) => inmultitorNormal_n_30,
      clk => clk,
      done_reg_0 => inmultitorNormal_n_1,
      stare(2 downto 0) => stare(2 downto 0)
    );
\mantisa_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(0),
      Q => \mantisa_A_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(10),
      Q => \mantisa_A_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(11),
      Q => \mantisa_A_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(12),
      Q => \mantisa_A_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(13),
      Q => \mantisa_A_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(14),
      Q => \mantisa_A_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(15),
      Q => \mantisa_A_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(16),
      Q => \mantisa_A_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(17),
      Q => \mantisa_A_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(18),
      Q => \mantisa_A_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(19),
      Q => \mantisa_A_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(1),
      Q => \mantisa_A_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(20),
      Q => \mantisa_A_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(21),
      Q => \mantisa_A_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(22),
      Q => \mantisa_A_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(2),
      Q => \mantisa_A_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(3),
      Q => \mantisa_A_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(4),
      Q => \mantisa_A_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(5),
      Q => \mantisa_A_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(6),
      Q => \mantisa_A_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(7),
      Q => \mantisa_A_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(8),
      Q => \mantisa_A_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(9),
      Q => \mantisa_A_reg_n_0_[9]\,
      R => '0'
    );
\mantisa_B[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => stare(2),
      O => semn_A
    );
\mantisa_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(0),
      Q => \mantisa_B_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(10),
      Q => \mantisa_B_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(11),
      Q => \mantisa_B_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(12),
      Q => \mantisa_B_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(13),
      Q => \mantisa_B_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(14),
      Q => \mantisa_B_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(15),
      Q => \mantisa_B_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(16),
      Q => \mantisa_B_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(17),
      Q => \mantisa_B_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(18),
      Q => \mantisa_B_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(19),
      Q => \mantisa_B_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(1),
      Q => \mantisa_B_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(20),
      Q => \mantisa_B_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(21),
      Q => \mantisa_B_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(22),
      Q => \mantisa_B_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(2),
      Q => \mantisa_B_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(3),
      Q => \mantisa_B_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(4),
      Q => \mantisa_B_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(5),
      Q => \mantisa_B_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(6),
      Q => \mantisa_B_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(7),
      Q => \mantisa_B_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(8),
      Q => \mantisa_B_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(9),
      Q => \mantisa_B_reg_n_0_[9]\,
      R => '0'
    );
\mantisa_normalizata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_30,
      Q => R,
      R => '0'
    );
\mantisa_normalizata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_29,
      Q => L(23),
      R => '0'
    );
\mantisa_normalizata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_28,
      Q => L(24),
      R => '0'
    );
\mantisa_normalizata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_27,
      Q => L(25),
      R => '0'
    );
\mantisa_normalizata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_26,
      Q => L(26),
      R => '0'
    );
\mantisa_normalizata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_25,
      Q => L(27),
      R => '0'
    );
\mantisa_normalizata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_24,
      Q => L(28),
      R => '0'
    );
\mantisa_normalizata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_23,
      Q => L(29),
      R => '0'
    );
\mantisa_normalizata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_22,
      Q => L(30),
      R => '0'
    );
\mantisa_normalizata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_21,
      Q => L(31),
      R => '0'
    );
\mantisa_normalizata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_20,
      Q => L(32),
      R => '0'
    );
\mantisa_normalizata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_19,
      Q => L(33),
      R => '0'
    );
\mantisa_normalizata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_18,
      Q => L(34),
      R => '0'
    );
\mantisa_normalizata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_17,
      Q => L(35),
      R => '0'
    );
\mantisa_normalizata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_16,
      Q => L(36),
      R => '0'
    );
\mantisa_normalizata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_15,
      Q => L(37),
      R => '0'
    );
\mantisa_normalizata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_14,
      Q => L(38),
      R => '0'
    );
\mantisa_normalizata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_13,
      Q => L(39),
      R => '0'
    );
\mantisa_normalizata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_12,
      Q => L(40),
      R => '0'
    );
\mantisa_normalizata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_11,
      Q => L(41),
      R => '0'
    );
\mantisa_normalizata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_10,
      Q => L(42),
      R => '0'
    );
\mantisa_normalizata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_9,
      Q => L(43),
      R => '0'
    );
\mantisa_normalizata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_8,
      Q => L(44),
      R => '0'
    );
\mantisa_normalizata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_7,
      Q => L(45),
      R => '0'
    );
\mantisa_normalizata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_6,
      Q => \mantisa_normalizata_reg_n_0_[46]\,
      R => '0'
    );
\mantisa_normalizata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_normalizata,
      D => inmultitorNormal_n_5,
      Q => \mantisa_normalizata_reg_n_0_[47]\,
      R => '0'
    );
\overflow_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => \FSM_sequential_stare[2]_i_3_n_0\,
      I3 => stare(0),
      I4 => \^overflow3\,
      O => \overflow_i_1__1_n_0\
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \overflow_i_1__1_n_0\,
      Q => \^overflow3\,
      R => '0'
    );
\result[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(23),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(24),
      I3 => stare(2),
      O => \result[0]_i_1_n_0\
    );
\result[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(33),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(34),
      I3 => stare(2),
      O => \result[10]_i_1_n_0\
    );
\result[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(34),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(35),
      I3 => stare(2),
      O => \result[11]_i_1_n_0\
    );
\result[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(35),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(36),
      I3 => stare(2),
      O => \result[12]_i_1_n_0\
    );
\result[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(36),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(37),
      I3 => stare(2),
      O => \result[13]_i_1_n_0\
    );
\result[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(37),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(38),
      I3 => stare(2),
      O => \result[14]_i_1_n_0\
    );
\result[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(38),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(39),
      I3 => stare(2),
      O => \result[15]_i_1_n_0\
    );
\result[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(39),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(40),
      I3 => stare(2),
      O => \result[16]_i_1_n_0\
    );
\result[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(40),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(41),
      I3 => stare(2),
      O => \result[17]_i_1_n_0\
    );
\result[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(41),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(42),
      I3 => stare(2),
      O => \result[18]_i_1_n_0\
    );
\result[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(42),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(43),
      I3 => stare(2),
      O => \result[19]_i_1_n_0\
    );
\result[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(24),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(25),
      I3 => stare(2),
      O => \result[1]_i_1_n_0\
    );
\result[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(43),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(44),
      I3 => stare(2),
      O => \result[20]_i_1_n_0\
    );
\result[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(44),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(45),
      I3 => stare(2),
      O => \result[21]_i_1__0_n_0\
    );
\result[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(45),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(46),
      I3 => stare(2),
      O => \result[22]_i_1__0_n_0\
    );
\result[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \mantisa_normalizata_reg_n_0_[47]\,
      I1 => \exp_suma_reg_n_0_[0]\,
      I2 => stare(2),
      O => \result[23]_i_1__1_n_0\
    );
\result[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[1]\,
      I2 => \mantisa_normalizata_reg_n_0_[47]\,
      I3 => \exp_suma_reg_n_0_[0]\,
      O => \result[24]_i_1__0_n_0\
    );
\result[25]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[1]\,
      I2 => \mantisa_normalizata_reg_n_0_[47]\,
      I3 => \exp_suma_reg_n_0_[0]\,
      I4 => \exp_suma_reg_n_0_[2]\,
      O => \result[25]_i_1__0_n_0\
    );
\result[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[3]\,
      I2 => \exp_suma_reg_n_0_[1]\,
      I3 => \mantisa_normalizata_reg_n_0_[47]\,
      I4 => \exp_suma_reg_n_0_[0]\,
      I5 => \exp_suma_reg_n_0_[2]\,
      O => \result[26]_i_1__0_n_0\
    );
\result[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[4]\,
      I2 => \result[29]_i_2_n_0\,
      O => \result[27]_i_1__0_n_0\
    );
\result[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[5]\,
      I2 => \exp_suma_reg_n_0_[4]\,
      I3 => \result[29]_i_2_n_0\,
      O => \result[28]_i_1_n_0\
    );
\result[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[6]\,
      I2 => \result[29]_i_2_n_0\,
      I3 => \exp_suma_reg_n_0_[4]\,
      I4 => \exp_suma_reg_n_0_[5]\,
      O => \result[29]_i_1_n_0\
    );
\result[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \exp_suma_reg_n_0_[3]\,
      I1 => \exp_suma_reg_n_0_[1]\,
      I2 => \mantisa_normalizata_reg_n_0_[47]\,
      I3 => \exp_suma_reg_n_0_[0]\,
      I4 => \exp_suma_reg_n_0_[2]\,
      O => \result[29]_i_2_n_0\
    );
\result[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(25),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(26),
      I3 => stare(2),
      O => \result[2]_i_1_n_0\
    );
\result[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => stare(2),
      I1 => \exp_suma_reg_n_0_[7]\,
      I2 => \mantisa_normalizata_reg_n_0_[47]\,
      I3 => \result[31]_i_4_n_0\,
      O => \result[30]_i_1_n_0\
    );
\result[31]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E00000"
    )
        port map (
      I0 => \exp_suma_reg_n_0_[7]\,
      I1 => \result[31]_i_4_n_0\,
      I2 => \exp_suma_reg_n_0_[8]\,
      I3 => stare(2),
      I4 => stare(1),
      I5 => stare(0),
      O => \result[31]_i_1__2_n_0\
    );
\result[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03380308"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2_n_0\,
      I1 => stare(0),
      I2 => stare(1),
      I3 => stare(2),
      I4 => \FSM_sequential_stare[2]_i_3_n_0\,
      O => \result[31]_i_2_n_0\
    );
\result[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => semn_B,
      I1 => semn_A_reg_n_0,
      I2 => stare(2),
      O => \result[31]_i_3_n_0\
    );
\result[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \exp_suma_reg_n_0_[0]\,
      I1 => \exp_suma_reg_n_0_[1]\,
      I2 => \exp_suma_reg_n_0_[2]\,
      I3 => \exp_suma_reg_n_0_[3]\,
      I4 => \exp_suma_reg_n_0_[6]\,
      I5 => \result[31]_i_5_n_0\,
      O => \result[31]_i_4_n_0\
    );
\result[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \exp_suma_reg_n_0_[4]\,
      I1 => \exp_suma_reg_n_0_[5]\,
      O => \result[31]_i_5_n_0\
    );
\result[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(26),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(27),
      I3 => stare(2),
      O => \result[3]_i_1_n_0\
    );
\result[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(23),
      I1 => R,
      O => \result[3]_i_4_n_0\
    );
\result[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(24),
      I1 => L(23),
      O => \result[3]_i_5_n_0\
    );
\result[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(27),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(28),
      I3 => stare(2),
      O => \result[4]_i_1_n_0\
    );
\result[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(28),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(29),
      I3 => stare(2),
      O => \result[5]_i_1_n_0\
    );
\result[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(29),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(30),
      I3 => stare(2),
      O => \result[6]_i_1_n_0\
    );
\result[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(30),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(31),
      I3 => stare(2),
      O => \result[7]_i_1_n_0\
    );
\result[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(31),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(32),
      I3 => stare(2),
      O => \result[8]_i_1_n_0\
    );
\result[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => plusOp(32),
      I1 => \mantisa_normalizata_reg_n_0_[47]\,
      I2 => plusOp0_in(33),
      I3 => stare(2),
      O => \result[9]_i_1_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[0]_i_1_n_0\,
      Q => result3(0),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[10]_i_1_n_0\,
      Q => result3(10),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[11]_i_1_n_0\,
      Q => result3(11),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[7]_i_2_n_0\,
      CO(3) => \result_reg[11]_i_2_n_0\,
      CO(2) => \result_reg[11]_i_2_n_1\,
      CO(1) => \result_reg[11]_i_2_n_2\,
      CO(0) => \result_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(34 downto 31),
      S(3 downto 0) => L(34 downto 31)
    );
\result_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[7]_i_3_n_0\,
      CO(3) => \result_reg[11]_i_3_n_0\,
      CO(2) => \result_reg[11]_i_3_n_1\,
      CO(1) => \result_reg[11]_i_3_n_2\,
      CO(0) => \result_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(35 downto 32),
      S(3 downto 0) => L(35 downto 32)
    );
\result_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[12]_i_1_n_0\,
      Q => result3(12),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[13]_i_1_n_0\,
      Q => result3(13),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[14]_i_1_n_0\,
      Q => result3(14),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[15]_i_1_n_0\,
      Q => result3(15),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[11]_i_2_n_0\,
      CO(3) => \result_reg[15]_i_2_n_0\,
      CO(2) => \result_reg[15]_i_2_n_1\,
      CO(1) => \result_reg[15]_i_2_n_2\,
      CO(0) => \result_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(38 downto 35),
      S(3 downto 0) => L(38 downto 35)
    );
\result_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[11]_i_3_n_0\,
      CO(3) => \result_reg[15]_i_3_n_0\,
      CO(2) => \result_reg[15]_i_3_n_1\,
      CO(1) => \result_reg[15]_i_3_n_2\,
      CO(0) => \result_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(39 downto 36),
      S(3 downto 0) => L(39 downto 36)
    );
\result_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[16]_i_1_n_0\,
      Q => result3(16),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[17]_i_1_n_0\,
      Q => result3(17),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[18]_i_1_n_0\,
      Q => result3(18),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[19]_i_1_n_0\,
      Q => result3(19),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[15]_i_2_n_0\,
      CO(3) => \result_reg[19]_i_2_n_0\,
      CO(2) => \result_reg[19]_i_2_n_1\,
      CO(1) => \result_reg[19]_i_2_n_2\,
      CO(0) => \result_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(42 downto 39),
      S(3 downto 0) => L(42 downto 39)
    );
\result_reg[19]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[15]_i_3_n_0\,
      CO(3) => \result_reg[19]_i_3_n_0\,
      CO(2) => \result_reg[19]_i_3_n_1\,
      CO(1) => \result_reg[19]_i_3_n_2\,
      CO(0) => \result_reg[19]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(43 downto 40),
      S(3 downto 0) => L(43 downto 40)
    );
\result_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[1]_i_1_n_0\,
      Q => result3(1),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[20]_i_1_n_0\,
      Q => result3(20),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[21]_i_1__0_n_0\,
      Q => result3(21),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[22]_i_1__0_n_0\,
      Q => result3(22),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[19]_i_2_n_0\,
      CO(3 downto 2) => \NLW_result_reg[22]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \result_reg[22]_i_2_n_2\,
      CO(0) => \result_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_result_reg[22]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(45 downto 43),
      S(3) => '0',
      S(2 downto 0) => L(45 downto 43)
    );
\result_reg[22]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[19]_i_3_n_0\,
      CO(3 downto 2) => \NLW_result_reg[22]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \result_reg[22]_i_3_n_2\,
      CO(0) => \result_reg[22]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_result_reg[22]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp0_in(46 downto 44),
      S(3) => '0',
      S(2) => \mantisa_normalizata_reg_n_0_[46]\,
      S(1 downto 0) => L(45 downto 44)
    );
\result_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[23]_i_1__1_n_0\,
      Q => result3(23),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[24]_i_1__0_n_0\,
      Q => result3(24),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[25]_i_1__0_n_0\,
      Q => result3(25),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[26]_i_1__0_n_0\,
      Q => result3(26),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[27]_i_1__0_n_0\,
      Q => result3(27),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[28]_i_1_n_0\,
      Q => result3(28),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[29]_i_1_n_0\,
      Q => result3(29),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[2]_i_1_n_0\,
      Q => result3(2),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[30]_i_1_n_0\,
      Q => result3(30),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[31]_i_3_n_0\,
      Q => result3(31),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[3]_i_1_n_0\,
      Q => result3(3),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[3]_i_2_n_0\,
      CO(2) => \result_reg[3]_i_2_n_1\,
      CO(1) => \result_reg[3]_i_2_n_2\,
      CO(0) => \result_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => L(23),
      O(3 downto 0) => plusOp(26 downto 23),
      S(3 downto 1) => L(26 downto 24),
      S(0) => \result[3]_i_4_n_0\
    );
\result_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[3]_i_3_n_0\,
      CO(2) => \result_reg[3]_i_3_n_1\,
      CO(1) => \result_reg[3]_i_3_n_2\,
      CO(0) => \result_reg[3]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => L(24),
      O(3 downto 0) => plusOp0_in(27 downto 24),
      S(3 downto 1) => L(27 downto 25),
      S(0) => \result[3]_i_5_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[4]_i_1_n_0\,
      Q => result3(4),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[5]_i_1_n_0\,
      Q => result3(5),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[6]_i_1_n_0\,
      Q => result3(6),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[7]_i_1_n_0\,
      Q => result3(7),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[3]_i_2_n_0\,
      CO(3) => \result_reg[7]_i_2_n_0\,
      CO(2) => \result_reg[7]_i_2_n_1\,
      CO(1) => \result_reg[7]_i_2_n_2\,
      CO(0) => \result_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(30 downto 27),
      S(3 downto 0) => L(30 downto 27)
    );
\result_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[3]_i_3_n_0\,
      CO(3) => \result_reg[7]_i_3_n_0\,
      CO(2) => \result_reg[7]_i_3_n_1\,
      CO(1) => \result_reg[7]_i_3_n_2\,
      CO(0) => \result_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(31 downto 28),
      S(3 downto 0) => L(31 downto 28)
    );
\result_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[8]_i_1_n_0\,
      Q => result3(8),
      S => \result[31]_i_1__2_n_0\
    );
\result_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \result[31]_i_2_n_0\,
      D => \result[9]_i_1_n_0\,
      Q => result3(9),
      S => \result[31]_i_1__2_n_0\
    );
semn_A_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => A(31),
      Q => semn_A_reg_n_0,
      R => '0'
    );
semn_B_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => B(31),
      Q => semn_B,
      R => '0'
    );
start_mul_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inmultitorNormal_n_1,
      Q => start_mul_reg_n_0,
      R => '0'
    );
\zero_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => stare(1),
      I1 => stare(2),
      I2 => \FSM_sequential_stare[2]_i_2_n_0\,
      I3 => stare(0),
      I4 => \^zero3\,
      O => \zero_i_1__1_n_0\
    );
zero_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \zero_i_1__1_n_0\,
      Q => \^zero3\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_sub is
  port (
    overflow2 : out STD_LOGIC;
    zero2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B_28_sp_1 : out STD_LOGIC;
    \A[29]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \exp_A_reg[6]_0\ : in STD_LOGIC;
    \exp_B_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \exp_A_reg[8]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_sub : entity is "sub";
end design_1_ALU_0_0_sub;

architecture STRUCTURE of design_1_ALU_0_0_sub is
  signal \^a[29]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal B_28_sn_1 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_stare[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_1__0_n_0\ : STD_LOGIC;
  signal SHIFT_RIGHT : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal done_sub : STD_LOGIC;
  signal \exp_A__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal exp_B : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal exp_result : STD_LOGIC;
  signal \exp_result[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp_result[8]_i_2_n_0\ : STD_LOGIC;
  signal exp_result_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \exp_result_reg__0\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_A_reg_n_0_[9]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_B_reg_n_0_[9]\ : STD_LOGIC;
  signal mantisa_result : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[0]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[10]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[11]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[12]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[13]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[14]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[15]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[16]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[17]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[18]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[19]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[1]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[20]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[21]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[22]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[2]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[3]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[4]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[5]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[6]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[7]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[8]\ : STD_LOGIC;
  signal \mantisa_result_reg_n_0_[9]\ : STD_LOGIC;
  signal \^overflow2\ : STD_LOGIC;
  signal \overflow_i_1__0_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal scazatorNormal_n_2 : STD_LOGIC;
  signal scazatorNormal_n_3 : STD_LOGIC;
  signal semn_A : STD_LOGIC;
  signal semn_A_reg_n_0 : STD_LOGIC;
  signal semn_B : STD_LOGIC;
  signal semn_result : STD_LOGIC;
  signal semn_result1 : STD_LOGIC;
  signal \semn_result1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \semn_result1_carry__0_n_3\ : STD_LOGIC;
  signal \semn_result1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \semn_result1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \semn_result1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \semn_result1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal semn_result1_carry_i_5_n_0 : STD_LOGIC;
  signal semn_result1_carry_i_6_n_0 : STD_LOGIC;
  signal semn_result1_carry_i_7_n_0 : STD_LOGIC;
  signal semn_result1_carry_i_8_n_0 : STD_LOGIC;
  signal semn_result1_carry_n_0 : STD_LOGIC;
  signal semn_result1_carry_n_1 : STD_LOGIC;
  signal semn_result1_carry_n_2 : STD_LOGIC;
  signal semn_result1_carry_n_3 : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \semn_result1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \semn_result__0\ : STD_LOGIC;
  signal \semn_result_i_1__0_n_0\ : STD_LOGIC;
  signal stare : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal start_sub_reg_n_0 : STD_LOGIC;
  signal \^zero2\ : STD_LOGIC;
  signal \zero_i_1__0_n_0\ : STD_LOGIC;
  signal \zero_i_2__0_n_0\ : STD_LOGIC;
  signal \zero_i_3__0_n_0\ : STD_LOGIC;
  signal \zero_i_4__0_n_0\ : STD_LOGIC;
  signal zero_i_5_n_0 : STD_LOGIC;
  signal zero_i_6_n_0 : STD_LOGIC;
  signal zero_i_7_n_0 : STD_LOGIC;
  signal zero_i_8_n_0 : STD_LOGIC;
  signal NLW_semn_result1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_semn_result1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_1__1\ : label is "soft_lutpair95";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "aliniereexponenti:001,scaderemantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "aliniereexponenti:001,scaderemantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[2]\ : label is "aliniereexponenti:001,scaderemantise:010,normalizarerezultat:011,terminare:100,initializare:000,iSTATE:101";
  attribute SOFT_HLUTNM of \exp_A[1]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \exp_A[2]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \exp_A[3]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \exp_A[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \exp_B[7]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \exp_B[8]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \exp_result[1]_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \exp_result[2]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \exp_result[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \exp_result[4]_i_1__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \exp_result[6]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \exp_result[7]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \exp_result[8]_i_1\ : label is "soft_lutpair96";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of semn_result1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of semn_result1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \semn_result1_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \semn_result1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \semn_result1_inferred__0/i__carry\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \semn_result1_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \semn_result1_inferred__0/i__carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \semn_result1_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \semn_result1_inferred__0/i__carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \semn_result1_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \zero_i_1__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \zero_i_3__0\ : label is "soft_lutpair100";
begin
  \A[29]\(6 downto 0) <= \^a[29]\(6 downto 0);
  B_28_sp_1 <= B_28_sn_1;
  D(1 downto 0) <= \^d\(1 downto 0);
  overflow2 <= \^overflow2\;
  zero2 <= \^zero2\;
\FSM_sequential_stare[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => stare(2),
      O => \FSM_sequential_stare[1]_i_1__1_n_0\
    );
\FSM_sequential_stare[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => stare(2),
      O => \FSM_sequential_stare[2]_i_1__0_n_0\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => scazatorNormal_n_3,
      Q => stare(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[1]_i_1__1_n_0\,
      Q => stare(1),
      R => '0'
    );
\FSM_sequential_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stare[2]_i_1__0_n_0\,
      Q => stare(2),
      R => '0'
    );
\exp_A[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(23),
      O => \^a[29]\(0)
    );
\exp_A[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(23),
      I1 => A(24),
      O => \^a[29]\(1)
    );
\exp_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => A(25),
      I1 => A(23),
      I2 => A(24),
      O => \^a[29]\(2)
    );
\exp_A[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => A(26),
      I1 => A(24),
      I2 => A(23),
      I3 => A(25),
      O => \^a[29]\(3)
    );
\exp_A[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => A(27),
      I1 => A(25),
      I2 => A(23),
      I3 => A(24),
      I4 => A(26),
      O => \^a[29]\(4)
    );
\exp_A[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => A(26),
      I1 => A(24),
      I2 => A(23),
      I3 => A(25),
      I4 => A(27),
      I5 => A(28),
      O => \^a[29]\(5)
    );
\exp_A[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(29),
      I1 => \exp_A_reg[6]_0\,
      O => \^a[29]\(6)
    );
\exp_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(0),
      Q => \exp_A__0\(0),
      R => '0'
    );
\exp_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(1),
      Q => \exp_A__0\(1),
      R => '0'
    );
\exp_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(2),
      Q => \exp_A__0\(2),
      R => '0'
    );
\exp_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(3),
      Q => \exp_A__0\(3),
      R => '0'
    );
\exp_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(4),
      Q => \exp_A__0\(4),
      R => '0'
    );
\exp_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(5),
      Q => \exp_A__0\(5),
      R => '0'
    );
\exp_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^a[29]\(6),
      Q => \exp_A__0\(6),
      R => '0'
    );
\exp_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(0),
      Q => \exp_A__0\(7),
      R => '0'
    );
\exp_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_A_reg[8]_0\(1),
      Q => \exp_A__0\(8),
      R => '0'
    );
\exp_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => B(30),
      I1 => B_28_sn_1,
      I2 => B(29),
      O => \^d\(0)
    );
\exp_B[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => B(30),
      I1 => B_28_sn_1,
      I2 => B(29),
      O => \^d\(1)
    );
\exp_B[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => B(28),
      I1 => B(27),
      I2 => B(25),
      I3 => B(23),
      I4 => B(24),
      I5 => B(26),
      O => B_28_sn_1
    );
\exp_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(0),
      Q => exp_B(0),
      R => '0'
    );
\exp_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(1),
      Q => exp_B(1),
      R => '0'
    );
\exp_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(2),
      Q => exp_B(2),
      R => '0'
    );
\exp_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(3),
      Q => exp_B(3),
      R => '0'
    );
\exp_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(4),
      Q => exp_B(4),
      R => '0'
    );
\exp_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(5),
      Q => exp_B(5),
      R => '0'
    );
\exp_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \exp_B_reg[6]_0\(6),
      Q => exp_B(6),
      R => '0'
    );
\exp_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^d\(0),
      Q => exp_B(7),
      R => '0'
    );
\exp_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => \^d\(1),
      Q => exp_B(8),
      R => '0'
    );
\exp_result[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => exp_result_reg(0),
      O => plusOp(0)
    );
\exp_result[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_result_reg(0),
      I1 => exp_result_reg(1),
      O => \exp_result[1]_i_1__0_n_0\
    );
\exp_result[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => exp_result_reg(0),
      I1 => exp_result_reg(1),
      I2 => exp_result_reg(2),
      O => plusOp(2)
    );
\exp_result[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => exp_result_reg(2),
      I1 => exp_result_reg(1),
      I2 => exp_result_reg(0),
      I3 => exp_result_reg(3),
      O => plusOp(3)
    );
\exp_result[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => exp_result_reg(4),
      I1 => exp_result_reg(2),
      I2 => exp_result_reg(1),
      I3 => exp_result_reg(0),
      I4 => exp_result_reg(3),
      O => plusOp(4)
    );
\exp_result[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => exp_result_reg(4),
      I1 => exp_result_reg(2),
      I2 => exp_result_reg(1),
      I3 => exp_result_reg(0),
      I4 => exp_result_reg(3),
      I5 => exp_result_reg(5),
      O => plusOp(5)
    );
\exp_result[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \exp_result[8]_i_2_n_0\,
      I1 => exp_result_reg(6),
      O => plusOp(6)
    );
\exp_result[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => exp_result_reg(7),
      I1 => exp_result_reg(6),
      I2 => \exp_result[8]_i_2_n_0\,
      O => plusOp(7)
    );
\exp_result[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \exp_result_reg__0\(8),
      I1 => exp_result_reg(6),
      I2 => \exp_result[8]_i_2_n_0\,
      I3 => exp_result_reg(7),
      O => plusOp(8)
    );
\exp_result[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => exp_result_reg(5),
      I1 => exp_result_reg(3),
      I2 => exp_result_reg(0),
      I3 => exp_result_reg(1),
      I4 => exp_result_reg(2),
      I5 => exp_result_reg(4),
      O => \exp_result[8]_i_2_n_0\
    );
\exp_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(0),
      Q => exp_result_reg(0),
      R => '0'
    );
\exp_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \exp_result[1]_i_1__0_n_0\,
      Q => exp_result_reg(1),
      R => '0'
    );
\exp_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(2),
      Q => exp_result_reg(2),
      R => '0'
    );
\exp_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(3),
      Q => exp_result_reg(3),
      R => '0'
    );
\exp_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(4),
      Q => exp_result_reg(4),
      R => '0'
    );
\exp_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(5),
      Q => exp_result_reg(5),
      R => '0'
    );
\exp_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(6),
      Q => exp_result_reg(6),
      R => '0'
    );
\exp_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(7),
      Q => exp_result_reg(7),
      R => '0'
    );
\exp_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => plusOp(8),
      Q => \exp_result_reg__0\(8),
      R => '0'
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[15]\,
      I1 => \mantisa_B_reg_n_0_[15]\,
      I2 => \mantisa_A_reg_n_0_[14]\,
      I3 => \mantisa_B_reg_n_0_[14]\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[13]\,
      I1 => \mantisa_B_reg_n_0_[13]\,
      I2 => \mantisa_A_reg_n_0_[12]\,
      I3 => \mantisa_B_reg_n_0_[12]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[11]\,
      I1 => \mantisa_B_reg_n_0_[11]\,
      I2 => \mantisa_A_reg_n_0_[10]\,
      I3 => \mantisa_B_reg_n_0_[10]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[9]\,
      I1 => \mantisa_B_reg_n_0_[9]\,
      I2 => \mantisa_A_reg_n_0_[8]\,
      I3 => \mantisa_B_reg_n_0_[8]\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[15]\,
      I1 => \mantisa_A_reg_n_0_[15]\,
      I2 => \mantisa_B_reg_n_0_[14]\,
      I3 => \mantisa_A_reg_n_0_[14]\,
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[13]\,
      I1 => \mantisa_A_reg_n_0_[13]\,
      I2 => \mantisa_B_reg_n_0_[12]\,
      I3 => \mantisa_A_reg_n_0_[12]\,
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[11]\,
      I1 => \mantisa_A_reg_n_0_[11]\,
      I2 => \mantisa_B_reg_n_0_[10]\,
      I3 => \mantisa_A_reg_n_0_[10]\,
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[9]\,
      I1 => \mantisa_A_reg_n_0_[9]\,
      I2 => \mantisa_B_reg_n_0_[8]\,
      I3 => \mantisa_A_reg_n_0_[8]\,
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[22]\,
      I1 => \mantisa_B_reg_n_0_[22]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[21]\,
      I1 => \mantisa_B_reg_n_0_[21]\,
      I2 => \mantisa_A_reg_n_0_[20]\,
      I3 => \mantisa_B_reg_n_0_[20]\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[19]\,
      I1 => \mantisa_B_reg_n_0_[19]\,
      I2 => \mantisa_A_reg_n_0_[18]\,
      I3 => \mantisa_B_reg_n_0_[18]\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[17]\,
      I1 => \mantisa_B_reg_n_0_[17]\,
      I2 => \mantisa_A_reg_n_0_[16]\,
      I3 => \mantisa_B_reg_n_0_[16]\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[22]\,
      I1 => \mantisa_A_reg_n_0_[22]\,
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[21]\,
      I1 => \mantisa_A_reg_n_0_[21]\,
      I2 => \mantisa_B_reg_n_0_[20]\,
      I3 => \mantisa_A_reg_n_0_[20]\,
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[19]\,
      I1 => \mantisa_A_reg_n_0_[19]\,
      I2 => \mantisa_B_reg_n_0_[18]\,
      I3 => \mantisa_A_reg_n_0_[18]\,
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[17]\,
      I1 => \mantisa_A_reg_n_0_[17]\,
      I2 => \mantisa_B_reg_n_0_[16]\,
      I3 => \mantisa_A_reg_n_0_[16]\,
      O => \i__carry__1_i_8__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[7]\,
      I1 => \mantisa_B_reg_n_0_[7]\,
      I2 => \mantisa_A_reg_n_0_[6]\,
      I3 => \mantisa_B_reg_n_0_[6]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[5]\,
      I1 => \mantisa_B_reg_n_0_[5]\,
      I2 => \mantisa_A_reg_n_0_[4]\,
      I3 => \mantisa_B_reg_n_0_[4]\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[3]\,
      I1 => \mantisa_B_reg_n_0_[3]\,
      I2 => \mantisa_A_reg_n_0_[2]\,
      I3 => \mantisa_B_reg_n_0_[2]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \mantisa_A_reg_n_0_[1]\,
      I1 => \mantisa_B_reg_n_0_[1]\,
      I2 => \mantisa_A_reg_n_0_[0]\,
      I3 => \mantisa_B_reg_n_0_[0]\,
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[7]\,
      I1 => \mantisa_A_reg_n_0_[7]\,
      I2 => \mantisa_B_reg_n_0_[6]\,
      I3 => \mantisa_A_reg_n_0_[6]\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[5]\,
      I1 => \mantisa_A_reg_n_0_[5]\,
      I2 => \mantisa_B_reg_n_0_[4]\,
      I3 => \mantisa_A_reg_n_0_[4]\,
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[3]\,
      I1 => \mantisa_A_reg_n_0_[3]\,
      I2 => \mantisa_B_reg_n_0_[2]\,
      I3 => \mantisa_A_reg_n_0_[2]\,
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mantisa_B_reg_n_0_[1]\,
      I1 => \mantisa_A_reg_n_0_[1]\,
      I2 => \mantisa_B_reg_n_0_[0]\,
      I3 => \mantisa_A_reg_n_0_[0]\,
      O => \i__carry_i_8__1_n_0\
    );
\mantisa_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(0),
      Q => \mantisa_A_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(10),
      Q => \mantisa_A_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(11),
      Q => \mantisa_A_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(12),
      Q => \mantisa_A_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(13),
      Q => \mantisa_A_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(14),
      Q => \mantisa_A_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(15),
      Q => \mantisa_A_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(16),
      Q => \mantisa_A_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(17),
      Q => \mantisa_A_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(18),
      Q => \mantisa_A_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(19),
      Q => \mantisa_A_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(1),
      Q => \mantisa_A_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(20),
      Q => \mantisa_A_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(21),
      Q => \mantisa_A_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(22),
      Q => \mantisa_A_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(2),
      Q => \mantisa_A_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(3),
      Q => \mantisa_A_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(4),
      Q => \mantisa_A_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(5),
      Q => \mantisa_A_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(6),
      Q => \mantisa_A_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(7),
      Q => \mantisa_A_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(8),
      Q => \mantisa_A_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => A(9),
      Q => \mantisa_A_reg_n_0_[9]\,
      R => '0'
    );
\mantisa_B[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      I2 => stare(1),
      O => semn_A
    );
\mantisa_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(0),
      Q => \mantisa_B_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(10),
      Q => \mantisa_B_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(11),
      Q => \mantisa_B_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(12),
      Q => \mantisa_B_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(13),
      Q => \mantisa_B_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(14),
      Q => \mantisa_B_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(15),
      Q => \mantisa_B_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(16),
      Q => \mantisa_B_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(17),
      Q => \mantisa_B_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(18),
      Q => \mantisa_B_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(19),
      Q => \mantisa_B_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(1),
      Q => \mantisa_B_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(20),
      Q => \mantisa_B_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(21),
      Q => \mantisa_B_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(22),
      Q => \mantisa_B_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(2),
      Q => \mantisa_B_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(3),
      Q => \mantisa_B_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(4),
      Q => \mantisa_B_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(5),
      Q => \mantisa_B_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(6),
      Q => \mantisa_B_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(7),
      Q => \mantisa_B_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(8),
      Q => \mantisa_B_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => semn_A,
      D => B(9),
      Q => \mantisa_B_reg_n_0_[9]\,
      R => '0'
    );
\mantisa_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(0),
      Q => \mantisa_result_reg_n_0_[0]\,
      R => '0'
    );
\mantisa_result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(10),
      Q => \mantisa_result_reg_n_0_[10]\,
      R => '0'
    );
\mantisa_result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(11),
      Q => \mantisa_result_reg_n_0_[11]\,
      R => '0'
    );
\mantisa_result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(12),
      Q => \mantisa_result_reg_n_0_[12]\,
      R => '0'
    );
\mantisa_result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(13),
      Q => \mantisa_result_reg_n_0_[13]\,
      R => '0'
    );
\mantisa_result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(14),
      Q => \mantisa_result_reg_n_0_[14]\,
      R => '0'
    );
\mantisa_result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(15),
      Q => \mantisa_result_reg_n_0_[15]\,
      R => '0'
    );
\mantisa_result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(16),
      Q => \mantisa_result_reg_n_0_[16]\,
      R => '0'
    );
\mantisa_result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(17),
      Q => \mantisa_result_reg_n_0_[17]\,
      R => '0'
    );
\mantisa_result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(18),
      Q => \mantisa_result_reg_n_0_[18]\,
      R => '0'
    );
\mantisa_result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(19),
      Q => \mantisa_result_reg_n_0_[19]\,
      R => '0'
    );
\mantisa_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(1),
      Q => \mantisa_result_reg_n_0_[1]\,
      R => '0'
    );
\mantisa_result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(20),
      Q => \mantisa_result_reg_n_0_[20]\,
      R => '0'
    );
\mantisa_result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(21),
      Q => \mantisa_result_reg_n_0_[21]\,
      R => '0'
    );
\mantisa_result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(22),
      Q => \mantisa_result_reg_n_0_[22]\,
      R => '0'
    );
\mantisa_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(2),
      Q => \mantisa_result_reg_n_0_[2]\,
      R => '0'
    );
\mantisa_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(3),
      Q => \mantisa_result_reg_n_0_[3]\,
      R => '0'
    );
\mantisa_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(4),
      Q => \mantisa_result_reg_n_0_[4]\,
      R => '0'
    );
\mantisa_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(5),
      Q => \mantisa_result_reg_n_0_[5]\,
      R => '0'
    );
\mantisa_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(6),
      Q => \mantisa_result_reg_n_0_[6]\,
      R => '0'
    );
\mantisa_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(7),
      Q => \mantisa_result_reg_n_0_[7]\,
      R => '0'
    );
\mantisa_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(8),
      Q => \mantisa_result_reg_n_0_[8]\,
      R => '0'
    );
\mantisa_result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mantisa_result,
      D => SHIFT_RIGHT(9),
      Q => \mantisa_result_reg_n_0_[9]\,
      R => '0'
    );
\overflow_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF00000E000"
    )
        port map (
      I0 => exp_result_reg(7),
      I1 => \exp_result_reg__0\(8),
      I2 => stare(0),
      I3 => stare(1),
      I4 => stare(2),
      I5 => \^overflow2\,
      O => \overflow_i_1__0_n_0\
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \overflow_i_1__0_n_0\,
      Q => \^overflow2\,
      R => '0'
    );
\result[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => stare(2),
      O => exp_result
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[0]\,
      Q => Q(0),
      R => '0'
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[10]\,
      Q => Q(10),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[11]\,
      Q => Q(11),
      R => '0'
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[12]\,
      Q => Q(12),
      R => '0'
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[13]\,
      Q => Q(13),
      R => '0'
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[14]\,
      Q => Q(14),
      R => '0'
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[15]\,
      Q => Q(15),
      R => '0'
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[16]\,
      Q => Q(16),
      R => '0'
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[17]\,
      Q => Q(17),
      R => '0'
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[18]\,
      Q => Q(18),
      R => '0'
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[19]\,
      Q => Q(19),
      R => '0'
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[1]\,
      Q => Q(1),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[20]\,
      Q => Q(20),
      R => '0'
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[21]\,
      Q => Q(21),
      R => '0'
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[22]\,
      Q => Q(22),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(0),
      Q => Q(23),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(1),
      Q => Q(24),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(2),
      Q => Q(25),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(3),
      Q => Q(26),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(4),
      Q => Q(27),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(5),
      Q => Q(28),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(6),
      Q => Q(29),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[2]\,
      Q => Q(2),
      R => '0'
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => exp_result_reg(7),
      Q => Q(30),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \semn_result__0\,
      Q => Q(31),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[3]\,
      Q => Q(3),
      R => '0'
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[4]\,
      Q => Q(4),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[5]\,
      Q => Q(5),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[6]\,
      Q => Q(6),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[7]\,
      Q => Q(7),
      R => '0'
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[8]\,
      Q => Q(8),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => exp_result,
      D => \mantisa_result_reg_n_0_[9]\,
      Q => Q(9),
      R => '0'
    );
scazatorNormal: entity work.design_1_ALU_0_0_subBinary
     port map (
      \A_extins_reg[22]_0\(22) => \mantisa_A_reg_n_0_[22]\,
      \A_extins_reg[22]_0\(21) => \mantisa_A_reg_n_0_[21]\,
      \A_extins_reg[22]_0\(20) => \mantisa_A_reg_n_0_[20]\,
      \A_extins_reg[22]_0\(19) => \mantisa_A_reg_n_0_[19]\,
      \A_extins_reg[22]_0\(18) => \mantisa_A_reg_n_0_[18]\,
      \A_extins_reg[22]_0\(17) => \mantisa_A_reg_n_0_[17]\,
      \A_extins_reg[22]_0\(16) => \mantisa_A_reg_n_0_[16]\,
      \A_extins_reg[22]_0\(15) => \mantisa_A_reg_n_0_[15]\,
      \A_extins_reg[22]_0\(14) => \mantisa_A_reg_n_0_[14]\,
      \A_extins_reg[22]_0\(13) => \mantisa_A_reg_n_0_[13]\,
      \A_extins_reg[22]_0\(12) => \mantisa_A_reg_n_0_[12]\,
      \A_extins_reg[22]_0\(11) => \mantisa_A_reg_n_0_[11]\,
      \A_extins_reg[22]_0\(10) => \mantisa_A_reg_n_0_[10]\,
      \A_extins_reg[22]_0\(9) => \mantisa_A_reg_n_0_[9]\,
      \A_extins_reg[22]_0\(8) => \mantisa_A_reg_n_0_[8]\,
      \A_extins_reg[22]_0\(7) => \mantisa_A_reg_n_0_[7]\,
      \A_extins_reg[22]_0\(6) => \mantisa_A_reg_n_0_[6]\,
      \A_extins_reg[22]_0\(5) => \mantisa_A_reg_n_0_[5]\,
      \A_extins_reg[22]_0\(4) => \mantisa_A_reg_n_0_[4]\,
      \A_extins_reg[22]_0\(3) => \mantisa_A_reg_n_0_[3]\,
      \A_extins_reg[22]_0\(2) => \mantisa_A_reg_n_0_[2]\,
      \A_extins_reg[22]_0\(1) => \mantisa_A_reg_n_0_[1]\,
      \A_extins_reg[22]_0\(0) => \mantisa_A_reg_n_0_[0]\,
      E(0) => mantisa_result,
      \FSM_sequential_stare_reg[0]_0\ => scazatorNormal_n_3,
      \FSM_sequential_stare_reg[1]_0\ => start_sub_reg_n_0,
      Q(22) => \mantisa_B_reg_n_0_[22]\,
      Q(21) => \mantisa_B_reg_n_0_[21]\,
      Q(20) => \mantisa_B_reg_n_0_[20]\,
      Q(19) => \mantisa_B_reg_n_0_[19]\,
      Q(18) => \mantisa_B_reg_n_0_[18]\,
      Q(17) => \mantisa_B_reg_n_0_[17]\,
      Q(16) => \mantisa_B_reg_n_0_[16]\,
      Q(15) => \mantisa_B_reg_n_0_[15]\,
      Q(14) => \mantisa_B_reg_n_0_[14]\,
      Q(13) => \mantisa_B_reg_n_0_[13]\,
      Q(12) => \mantisa_B_reg_n_0_[12]\,
      Q(11) => \mantisa_B_reg_n_0_[11]\,
      Q(10) => \mantisa_B_reg_n_0_[10]\,
      Q(9) => \mantisa_B_reg_n_0_[9]\,
      Q(8) => \mantisa_B_reg_n_0_[8]\,
      Q(7) => \mantisa_B_reg_n_0_[7]\,
      Q(6) => \mantisa_B_reg_n_0_[6]\,
      Q(5) => \mantisa_B_reg_n_0_[5]\,
      Q(4) => \mantisa_B_reg_n_0_[4]\,
      Q(3) => \mantisa_B_reg_n_0_[3]\,
      Q(2) => \mantisa_B_reg_n_0_[2]\,
      Q(1) => \mantisa_B_reg_n_0_[1]\,
      Q(0) => \mantisa_B_reg_n_0_[0]\,
      clk => clk,
      done_reg_0 => scazatorNormal_n_2,
      done_sub => done_sub,
      \result_reg[23]_0\(22 downto 0) => SHIFT_RIGHT(22 downto 0),
      stare(2 downto 0) => stare(2 downto 0)
    );
semn_A_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => A(30),
      Q => semn_A_reg_n_0,
      R => '0'
    );
semn_B_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => semn_A,
      D => B(31),
      Q => semn_B,
      R => '0'
    );
semn_result1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => semn_result1_carry_n_0,
      CO(2) => semn_result1_carry_n_1,
      CO(1) => semn_result1_carry_n_2,
      CO(0) => semn_result1_carry_n_3,
      CYINIT => '0',
      DI(3) => \semn_result1_carry_i_1__0_n_0\,
      DI(2) => \semn_result1_carry_i_2__0_n_0\,
      DI(1) => \semn_result1_carry_i_3__0_n_0\,
      DI(0) => \semn_result1_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_semn_result1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => semn_result1_carry_i_5_n_0,
      S(2) => semn_result1_carry_i_6_n_0,
      S(1) => semn_result1_carry_i_7_n_0,
      S(0) => semn_result1_carry_i_8_n_0
    );
\semn_result1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => semn_result1_carry_n_0,
      CO(3 downto 1) => \NLW_semn_result1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \semn_result1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \semn_result1_carry__0_i_1__0_n_0\,
      O(3 downto 0) => \NLW_semn_result1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \semn_result1_carry__0_i_2__0_n_0\
    );
\semn_result1_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \exp_A__0\(8),
      I1 => exp_B(8),
      O => \semn_result1_carry__0_i_1__0_n_0\
    );
\semn_result1_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(8),
      I1 => \exp_A__0\(8),
      O => \semn_result1_carry__0_i_2__0_n_0\
    );
\semn_result1_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \exp_A__0\(7),
      I1 => exp_B(7),
      I2 => \exp_A__0\(6),
      I3 => exp_B(6),
      O => \semn_result1_carry_i_1__0_n_0\
    );
\semn_result1_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \exp_A__0\(5),
      I1 => exp_B(5),
      I2 => \exp_A__0\(4),
      I3 => exp_B(4),
      O => \semn_result1_carry_i_2__0_n_0\
    );
\semn_result1_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \exp_A__0\(3),
      I1 => exp_B(3),
      I2 => \exp_A__0\(2),
      I3 => exp_B(2),
      O => \semn_result1_carry_i_3__0_n_0\
    );
\semn_result1_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \exp_A__0\(1),
      I1 => exp_B(1),
      I2 => \exp_A__0\(0),
      I3 => exp_B(0),
      O => \semn_result1_carry_i_4__0_n_0\
    );
semn_result1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_B(7),
      I1 => \exp_A__0\(7),
      I2 => exp_B(6),
      I3 => \exp_A__0\(6),
      O => semn_result1_carry_i_5_n_0
    );
semn_result1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_B(5),
      I1 => \exp_A__0\(5),
      I2 => exp_B(4),
      I3 => \exp_A__0\(4),
      O => semn_result1_carry_i_6_n_0
    );
semn_result1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_B(3),
      I1 => \exp_A__0\(3),
      I2 => exp_B(2),
      I3 => \exp_A__0\(2),
      O => semn_result1_carry_i_7_n_0
    );
semn_result1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_B(1),
      I1 => \exp_A__0\(1),
      I2 => exp_B(0),
      I3 => \exp_A__0\(0),
      O => semn_result1_carry_i_8_n_0
    );
\semn_result1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \semn_result1_inferred__0/i__carry_n_0\,
      CO(2) => \semn_result1_inferred__0/i__carry_n_1\,
      CO(1) => \semn_result1_inferred__0/i__carry_n_2\,
      CO(0) => \semn_result1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_semn_result1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\semn_result1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \semn_result1_inferred__0/i__carry_n_0\,
      CO(3) => \semn_result1_inferred__0/i__carry__0_n_0\,
      CO(2) => \semn_result1_inferred__0/i__carry__0_n_1\,
      CO(1) => \semn_result1_inferred__0/i__carry__0_n_2\,
      CO(0) => \semn_result1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_semn_result1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\semn_result1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \semn_result1_inferred__0/i__carry__0_n_0\,
      CO(3) => semn_result1,
      CO(2) => \semn_result1_inferred__0/i__carry__1_n_1\,
      CO(1) => \semn_result1_inferred__0/i__carry__1_n_2\,
      CO(0) => \semn_result1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2__0_n_0\,
      DI(1) => \i__carry__1_i_3__0_n_0\,
      DI(0) => \i__carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_semn_result1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__0_n_0\,
      S(2) => \i__carry__1_i_6__0_n_0\,
      S(1) => \i__carry__1_i_7__0_n_0\,
      S(0) => \i__carry__1_i_8__0_n_0\
    );
\semn_result_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBAF000008A0"
    )
        port map (
      I0 => semn_result,
      I1 => done_sub,
      I2 => stare(0),
      I3 => stare(1),
      I4 => stare(2),
      I5 => \semn_result__0\,
      O => \semn_result_i_1__0_n_0\
    );
\semn_result_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB40CB43"
    )
        port map (
      I0 => \semn_result1_carry__0_n_3\,
      I1 => stare(0),
      I2 => semn_B,
      I3 => semn_A_reg_n_0,
      I4 => semn_result1,
      O => semn_result
    );
semn_result_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \semn_result_i_1__0_n_0\,
      Q => \semn_result__0\,
      R => '0'
    );
start_sub_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => scazatorNormal_n_2,
      Q => start_sub_reg_n_0,
      R => '0'
    );
\zero_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFE0800"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => stare(2),
      I3 => \zero_i_2__0_n_0\,
      I4 => \^zero2\,
      O => \zero_i_1__0_n_0\
    );
\zero_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \zero_i_3__0_n_0\,
      I1 => \zero_i_4__0_n_0\,
      I2 => \mantisa_result_reg_n_0_[11]\,
      I3 => \mantisa_result_reg_n_0_[15]\,
      I4 => \mantisa_result_reg_n_0_[6]\,
      I5 => zero_i_5_n_0,
      O => \zero_i_2__0_n_0\
    );
\zero_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => exp_result_reg(6),
      I1 => \exp_result[8]_i_2_n_0\,
      O => \zero_i_3__0_n_0\
    );
\zero_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => zero_i_6_n_0,
      I1 => zero_i_7_n_0,
      I2 => \mantisa_result_reg_n_0_[13]\,
      I3 => \mantisa_result_reg_n_0_[5]\,
      I4 => \mantisa_result_reg_n_0_[19]\,
      I5 => \mantisa_result_reg_n_0_[9]\,
      O => \zero_i_4__0_n_0\
    );
zero_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \mantisa_result_reg_n_0_[0]\,
      I1 => \mantisa_result_reg_n_0_[17]\,
      I2 => \mantisa_result_reg_n_0_[7]\,
      I3 => \mantisa_result_reg_n_0_[16]\,
      I4 => zero_i_8_n_0,
      O => zero_i_5_n_0
    );
zero_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \exp_result_reg__0\(8),
      I1 => exp_result_reg(7),
      I2 => \mantisa_result_reg_n_0_[12]\,
      I3 => \mantisa_result_reg_n_0_[21]\,
      I4 => \mantisa_result_reg_n_0_[3]\,
      I5 => \mantisa_result_reg_n_0_[4]\,
      O => zero_i_6_n_0
    );
zero_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mantisa_result_reg_n_0_[14]\,
      I1 => \mantisa_result_reg_n_0_[1]\,
      I2 => \mantisa_result_reg_n_0_[10]\,
      I3 => \mantisa_result_reg_n_0_[8]\,
      O => zero_i_7_n_0
    );
zero_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mantisa_result_reg_n_0_[20]\,
      I1 => \mantisa_result_reg_n_0_[2]\,
      I2 => \mantisa_result_reg_n_0_[22]\,
      I3 => \mantisa_result_reg_n_0_[18]\,
      O => zero_i_8_n_0
    );
zero_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \zero_i_1__0_n_0\,
      Q => \^zero2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_ALU is
  port (
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    zero : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_ALU : entity is "ALU";
end design_1_ALU_0_0_ALU;

architecture STRUCTURE of design_1_ALU_0_0_ALU is
  signal DIV1_n_10 : STD_LOGIC;
  signal DIV1_n_2 : STD_LOGIC;
  signal DIV1_n_3 : STD_LOGIC;
  signal DIV1_n_4 : STD_LOGIC;
  signal DIV1_n_5 : STD_LOGIC;
  signal DIV1_n_6 : STD_LOGIC;
  signal DIV1_n_7 : STD_LOGIC;
  signal DIV1_n_8 : STD_LOGIC;
  signal DIV1_n_9 : STD_LOGIC;
  signal SUB1_n_10 : STD_LOGIC;
  signal SUB1_n_11 : STD_LOGIC;
  signal SUB1_n_2 : STD_LOGIC;
  signal SUB1_n_3 : STD_LOGIC;
  signal SUB1_n_4 : STD_LOGIC;
  signal SUB1_n_5 : STD_LOGIC;
  signal SUB1_n_6 : STD_LOGIC;
  signal SUB1_n_7 : STD_LOGIC;
  signal SUB1_n_8 : STD_LOGIC;
  signal SUB1_n_9 : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal overflow1 : STD_LOGIC;
  signal overflow2 : STD_LOGIC;
  signal overflow3 : STD_LOGIC;
  signal overflow4 : STD_LOGIC;
  signal \overflow__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal result1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal result2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal result3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal result4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zero1 : STD_LOGIC;
  signal zero2 : STD_LOGIC;
  signal zero3 : STD_LOGIC;
  signal zero4 : STD_LOGIC;
  signal \zero__0_n_0\ : STD_LOGIC;
begin
ADD1: entity work.design_1_ALU_0_0_add
     port map (
      A(23) => A(31),
      A(22 downto 0) => A(22 downto 0),
      B(23) => B(31),
      B(22 downto 0) => B(22 downto 0),
      D(8) => SUB1_n_2,
      D(7) => SUB1_n_3,
      D(6 downto 0) => minusOp(6 downto 0),
      Q(31 downto 0) => result1(31 downto 0),
      clk => clk,
      \exp_A_reg[8]_0\(8) => DIV1_n_2,
      \exp_A_reg[8]_0\(7) => DIV1_n_3,
      \exp_A_reg[8]_0\(6) => SUB1_n_5,
      \exp_A_reg[8]_0\(5) => SUB1_n_6,
      \exp_A_reg[8]_0\(4) => SUB1_n_7,
      \exp_A_reg[8]_0\(3) => SUB1_n_8,
      \exp_A_reg[8]_0\(2) => SUB1_n_9,
      \exp_A_reg[8]_0\(1) => SUB1_n_10,
      \exp_A_reg[8]_0\(0) => SUB1_n_11,
      overflow1 => overflow1,
      zero1 => zero1
    );
DIV1: entity work.design_1_ALU_0_0_div
     port map (
      A(31 downto 0) => A(31 downto 0),
      A_0_sp_1 => DIV1_n_6,
      A_19_sp_1 => DIV1_n_8,
      A_25_sp_1 => DIV1_n_7,
      A_28_sp_1 => DIV1_n_4,
      B(31 downto 0) => B(31 downto 0),
      \B[29]\(6 downto 0) => minusOp(6 downto 0),
      B_0_sp_1 => DIV1_n_5,
      B_19_sp_1 => DIV1_n_10,
      B_25_sp_1 => DIV1_n_9,
      D(1) => DIV1_n_2,
      D(0) => DIV1_n_3,
      clk => clk,
      \exp_A_reg[6]_0\(6) => SUB1_n_5,
      \exp_A_reg[6]_0\(5) => SUB1_n_6,
      \exp_A_reg[6]_0\(4) => SUB1_n_7,
      \exp_A_reg[6]_0\(3) => SUB1_n_8,
      \exp_A_reg[6]_0\(2) => SUB1_n_9,
      \exp_A_reg[6]_0\(1) => SUB1_n_10,
      \exp_A_reg[6]_0\(0) => SUB1_n_11,
      \exp_B_reg[6]_0\ => SUB1_n_4,
      \exp_B_reg[8]_0\(1) => SUB1_n_2,
      \exp_B_reg[8]_0\(0) => SUB1_n_3,
      overflow4 => overflow4,
      result4(31 downto 0) => result4(31 downto 0),
      zero4 => zero4
    );
MUL1: entity work.design_1_ALU_0_0_mul
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      \FSM_sequential_stare[2]_i_2_0\ => DIV1_n_8,
      \FSM_sequential_stare[2]_i_2_1\ => DIV1_n_7,
      \FSM_sequential_stare[2]_i_2_2\ => DIV1_n_10,
      \FSM_sequential_stare[2]_i_2_3\ => DIV1_n_9,
      \FSM_sequential_stare_reg[2]_0\ => DIV1_n_5,
      \FSM_sequential_stare_reg[2]_1\ => DIV1_n_6,
      clk => clk,
      overflow3 => overflow3,
      result3(31 downto 0) => result3(31 downto 0),
      zero3 => zero3
    );
SUB1: entity work.design_1_ALU_0_0_sub
     port map (
      A(30) => A(31),
      A(29 downto 0) => A(29 downto 0),
      \A[29]\(6) => SUB1_n_5,
      \A[29]\(5) => SUB1_n_6,
      \A[29]\(4) => SUB1_n_7,
      \A[29]\(3) => SUB1_n_8,
      \A[29]\(2) => SUB1_n_9,
      \A[29]\(1) => SUB1_n_10,
      \A[29]\(0) => SUB1_n_11,
      B(31 downto 0) => B(31 downto 0),
      B_28_sp_1 => SUB1_n_4,
      D(1) => SUB1_n_2,
      D(0) => SUB1_n_3,
      Q(31 downto 0) => result2(31 downto 0),
      clk => clk,
      \exp_A_reg[6]_0\ => DIV1_n_4,
      \exp_A_reg[8]_0\(1) => DIV1_n_2,
      \exp_A_reg[8]_0\(0) => DIV1_n_3,
      \exp_B_reg[6]_0\(6 downto 0) => minusOp(6 downto 0),
      overflow2 => overflow2,
      zero2 => zero2
    );
\overflow__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => overflow2,
      I1 => overflow1,
      I2 => overflow4,
      I3 => operation(1),
      I4 => operation(0),
      I5 => overflow3,
      O => \overflow__0_n_0\
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \overflow__0_n_0\,
      Q => overflow,
      R => '0'
    );
\result[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(0),
      I1 => result1(0),
      I2 => result4(0),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(0),
      O => p_0_in(0)
    );
\result[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(10),
      I1 => result1(10),
      I2 => result4(10),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(10),
      O => p_0_in(10)
    );
\result[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(11),
      I1 => result1(11),
      I2 => result4(11),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(11),
      O => p_0_in(11)
    );
\result[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(12),
      I1 => result1(12),
      I2 => result4(12),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(12),
      O => p_0_in(12)
    );
\result[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(13),
      I1 => result1(13),
      I2 => result4(13),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(13),
      O => p_0_in(13)
    );
\result[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(14),
      I1 => result1(14),
      I2 => result4(14),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(14),
      O => p_0_in(14)
    );
\result[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(15),
      I1 => result1(15),
      I2 => result4(15),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(15),
      O => p_0_in(15)
    );
\result[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(16),
      I1 => result1(16),
      I2 => result4(16),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(16),
      O => p_0_in(16)
    );
\result[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(17),
      I1 => result1(17),
      I2 => result4(17),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(17),
      O => p_0_in(17)
    );
\result[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(18),
      I1 => result1(18),
      I2 => result4(18),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(18),
      O => p_0_in(18)
    );
\result[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(19),
      I1 => result1(19),
      I2 => result4(19),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(19),
      O => p_0_in(19)
    );
\result[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(1),
      I1 => result1(1),
      I2 => result4(1),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(1),
      O => p_0_in(1)
    );
\result[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(20),
      I1 => result1(20),
      I2 => result4(20),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(20),
      O => p_0_in(20)
    );
\result[21]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(21),
      I1 => result1(21),
      I2 => result4(21),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(21),
      O => p_0_in(21)
    );
\result[22]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(22),
      I1 => result1(22),
      I2 => result4(22),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(22),
      O => p_0_in(22)
    );
\result[23]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(23),
      I1 => result1(23),
      I2 => result4(23),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(23),
      O => p_0_in(23)
    );
\result[24]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(24),
      I1 => result1(24),
      I2 => result4(24),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(24),
      O => p_0_in(24)
    );
\result[25]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(25),
      I1 => result1(25),
      I2 => result4(25),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(25),
      O => p_0_in(25)
    );
\result[26]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(26),
      I1 => result1(26),
      I2 => result4(26),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(26),
      O => p_0_in(26)
    );
\result[27]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(27),
      I1 => result1(27),
      I2 => result4(27),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(27),
      O => p_0_in(27)
    );
\result[28]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(28),
      I1 => result1(28),
      I2 => result4(28),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(28),
      O => p_0_in(28)
    );
\result[29]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(29),
      I1 => result1(29),
      I2 => result4(29),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(29),
      O => p_0_in(29)
    );
\result[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(2),
      I1 => result1(2),
      I2 => result4(2),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(2),
      O => p_0_in(2)
    );
\result[30]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(30),
      I1 => result1(30),
      I2 => result4(30),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(30),
      O => p_0_in(30)
    );
\result[31]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(31),
      I1 => result1(31),
      I2 => result4(31),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(31),
      O => p_0_in(31)
    );
\result[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(3),
      I1 => result1(3),
      I2 => result4(3),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(3),
      O => p_0_in(3)
    );
\result[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(4),
      I1 => result1(4),
      I2 => result4(4),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(4),
      O => p_0_in(4)
    );
\result[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(5),
      I1 => result1(5),
      I2 => result4(5),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(5),
      O => p_0_in(5)
    );
\result[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(6),
      I1 => result1(6),
      I2 => result4(6),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(6),
      O => p_0_in(6)
    );
\result[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(7),
      I1 => result1(7),
      I2 => result4(7),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(7),
      O => p_0_in(7)
    );
\result[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(8),
      I1 => result1(8),
      I2 => result4(8),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(8),
      O => p_0_in(8)
    );
\result[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => result2(9),
      I1 => result1(9),
      I2 => result4(9),
      I3 => operation(1),
      I4 => operation(0),
      I5 => result3(9),
      O => p_0_in(9)
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => result(0),
      R => '0'
    );
\result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(10),
      Q => result(10),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(11),
      Q => result(11),
      R => '0'
    );
\result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(12),
      Q => result(12),
      R => '0'
    );
\result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(13),
      Q => result(13),
      R => '0'
    );
\result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(14),
      Q => result(14),
      R => '0'
    );
\result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(15),
      Q => result(15),
      R => '0'
    );
\result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(16),
      Q => result(16),
      R => '0'
    );
\result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(17),
      Q => result(17),
      R => '0'
    );
\result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(18),
      Q => result(18),
      R => '0'
    );
\result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(19),
      Q => result(19),
      R => '0'
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => result(1),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(20),
      Q => result(20),
      R => '0'
    );
\result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(21),
      Q => result(21),
      R => '0'
    );
\result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(22),
      Q => result(22),
      R => '0'
    );
\result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(23),
      Q => result(23),
      R => '0'
    );
\result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(24),
      Q => result(24),
      R => '0'
    );
\result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(25),
      Q => result(25),
      R => '0'
    );
\result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(26),
      Q => result(26),
      R => '0'
    );
\result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(27),
      Q => result(27),
      R => '0'
    );
\result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(28),
      Q => result(28),
      R => '0'
    );
\result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(29),
      Q => result(29),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => result(2),
      R => '0'
    );
\result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(30),
      Q => result(30),
      R => '0'
    );
\result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(31),
      Q => result(31),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => result(3),
      R => '0'
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => result(4),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => result(5),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => result(6),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => result(7),
      R => '0'
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => result(8),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => result(9),
      R => '0'
    );
\zero__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => zero2,
      I1 => zero1,
      I2 => zero4,
      I3 => operation(1),
      I4 => operation(0),
      I5 => zero3,
      O => \zero__0_n_0\
    );
zero_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \zero__0_n_0\,
      Q => zero,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 );
    overflow : out STD_LOGIC;
    zero : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ALU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ALU_0_0 : entity is "design_1_ALU_0_0,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ALU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ALU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ALU_0_0 : entity is "ALU,Vivado 2024.1";
end design_1_ALU_0_0;

architecture STRUCTURE of design_1_ALU_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.design_1_ALU_0_0_ALU
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      clk => clk,
      operation(1 downto 0) => operation(1 downto 0),
      overflow => overflow,
      result(31 downto 0) => result(31 downto 0),
      zero => zero
    );
end STRUCTURE;
