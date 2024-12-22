-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Dec 15 20:12:23 2024
-- Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_4/design_1_ALU_0_4_sim_netlist.vhdl
-- Design      : design_1_ALU_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_4_add is
  port (
    result : out STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_4_add : entity is "add";
end design_1_ALU_0_4_add;

architecture STRUCTURE of design_1_ALU_0_4_add is
  signal \_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal exp_aux : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \exp_result_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \exp_result_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \exp_result_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \exp_result_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[0]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[1]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[2]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[3]\ : STD_LOGIC;
  signal \exp_result_reg_n_0_[4]\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_0\ : STD_LOGIC;
  signal mantisa_aux : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \mantisa_aux1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \mantisa_aux1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \mantisa_aux1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \mantisa_aux1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \mantisa_aux1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal mantisa_result : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in1_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 to 10 );
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW__inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW__inferred__2/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mantisa_aux1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mantisa_aux1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_mantisa_aux1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__2/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__2/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__2/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \exp_result_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \exp_result_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \exp_result_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_result_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \exp_result_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_result_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \exp_result_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \exp_result_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_result_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \exp_result_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_result_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_result_reg[4]_i_2\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \mantisa_aux1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \mantisa_aux1_inferred__0/i__carry__0\ : label is 11;
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mantisa_result_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mantisa_result_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \result[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[10]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result[12]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[8]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result[9]_INST_0\ : label is "soft_lutpair5";
begin
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__2/i__carry_n_0\,
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => \i__carry_i_1_n_0\,
      DI(3 downto 0) => p_2_in(3 downto 0),
      O(3 downto 1) => mantisa_aux(3 downto 1),
      O(0) => \NLW__inferred__2/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_6__0_n_0\,
      S(2) => \i__carry_i_7__0_n_0\,
      S(1) => \i__carry_i_8__0_n_0\,
      S(0) => \i__carry_i_9__0_n_0\
    );
\_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry_n_0\,
      CO(3) => \_inferred__2/i__carry__0_n_0\,
      CO(2) => \_inferred__2/i__carry__0_n_1\,
      CO(1) => \_inferred__2/i__carry__0_n_2\,
      CO(0) => \_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(7 downto 4),
      O(3 downto 0) => mantisa_aux(7 downto 4),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry__0_n_0\,
      CO(3) => \NLW__inferred__2/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__2/i__carry__1_n_1\,
      CO(1) => \_inferred__2/i__carry__1_n_2\,
      CO(0) => \_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_2_in(10 downto 8),
      O(3 downto 0) => mantisa_aux(11 downto 8),
      S(3) => \i__carry__1_i_4_n_0\,
      S(2) => \i__carry__1_i_5_n_0\,
      S(1) => \i__carry__1_i_6_n_0\,
      S(0) => \i__carry__1_i_7_n_0\
    );
\exp_result_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => mantisa_aux(11),
      GE => '1',
      Q => \exp_result_reg_n_0_[0]\
    );
\exp_result_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"551D"
    )
        port map (
      I0 => A(10),
      I1 => \exp_result_reg[3]_i_3_n_0\,
      I2 => B(10),
      I3 => p_1_in,
      O => plusOp(0)
    );
\exp_result_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => mantisa_aux(11),
      GE => '1',
      Q => \exp_result_reg_n_0_[1]\
    );
\exp_result_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5A335ACC5A"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => A(11),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(11),
      I5 => p_1_in,
      O => plusOp(1)
    );
\exp_result_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => mantisa_aux(11),
      GE => '1',
      Q => \exp_result_reg_n_0_[2]\
    );
\exp_result_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"666656A6"
    )
        port map (
      I0 => \exp_result_reg[4]_i_3_n_0\,
      I1 => A(12),
      I2 => \exp_result_reg[3]_i_3_n_0\,
      I3 => B(12),
      I4 => p_1_in,
      O => plusOp(2)
    );
\exp_result_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => mantisa_aux(11),
      GE => '1',
      Q => \exp_result_reg_n_0_[3]\
    );
\exp_result_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5755DFFFA8AA2000"
    )
        port map (
      I0 => \exp_result_reg[4]_i_3_n_0\,
      I1 => p_1_in,
      I2 => B(12),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => A(12),
      I5 => exp_aux(3),
      O => plusOp(3)
    );
\exp_result_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2FF00B2"
    )
        port map (
      I0 => \exp_result_reg[3]_i_4_n_0\,
      I1 => B(13),
      I2 => A(13),
      I3 => B(14),
      I4 => A(14),
      O => p_1_in
    );
\exp_result_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2FF00B2"
    )
        port map (
      I0 => \exp_result_reg[3]_i_5_n_0\,
      I1 => A(13),
      I2 => B(13),
      I3 => A(14),
      I4 => B(14),
      O => \exp_result_reg[3]_i_3_n_0\
    );
\exp_result_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => B(11),
      I3 => A(11),
      I4 => B(12),
      I5 => A(12),
      O => \exp_result_reg[3]_i_4_n_0\
    );
\exp_result_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => A(11),
      I3 => B(11),
      I4 => A(12),
      I5 => B(12),
      O => \exp_result_reg[3]_i_5_n_0\
    );
\exp_result_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(4),
      G => mantisa_aux(11),
      GE => '1',
      Q => \exp_result_reg_n_0_[4]\
    );
\exp_result_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => exp_aux(2),
      I1 => \exp_result_reg[4]_i_3_n_0\,
      I2 => exp_aux(3),
      I3 => exp_aux(4),
      O => plusOp(4)
    );
\exp_result_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => p_1_in,
      I1 => B(12),
      I2 => \exp_result_reg[3]_i_3_n_0\,
      I3 => A(12),
      O => exp_aux(2)
    );
\exp_result_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0CCA000A0"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => A(10),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(10),
      I5 => p_1_in,
      O => \exp_result_reg[4]_i_3_n_0\
    );
\exp_result_reg[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => p_1_in,
      I1 => B(13),
      I2 => \exp_result_reg[3]_i_3_n_0\,
      I3 => A(13),
      O => exp_aux(3)
    );
\exp_result_reg[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => p_1_in,
      I1 => B(14),
      I2 => \exp_result_reg[3]_i_3_n_0\,
      I3 => A(14),
      O => exp_aux(4)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(7),
      O => p_2_in(7)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in,
      I1 => \exp_result_reg[3]_i_3_n_0\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(6),
      O => p_2_in(6)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A002AF00000002"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => p_1_in,
      I3 => B(9),
      I4 => \exp_result_reg[3]_i_3_n_0\,
      I5 => A(9),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(5),
      O => p_2_in(5)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \exp_result_reg[3]_i_3_n_0\,
      I1 => p_1_in,
      O => \p_0_in__0\(10)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(4),
      O => p_2_in(4)
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A050A0A0905009"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => A(9),
      I3 => p_1_in,
      I4 => B(9),
      I5 => \exp_result_reg[3]_i_3_n_0\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(7),
      I1 => A(7),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(6),
      I1 => A(6),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(5),
      I1 => A(5),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(4),
      I1 => A(4),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6060609F"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_1_in,
      I4 => \exp_result_reg[3]_i_3_n_0\,
      O => p_2_in(10)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F9F9F9F9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(9),
      I5 => p_1_in,
      O => p_2_in(9)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(8),
      O => p_2_in(8)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \exp_result_reg[3]_i_3_n_0\,
      I1 => p_1_in,
      I2 => B(15),
      I3 => A(15),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666999999996"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_1_in,
      I3 => B(9),
      I4 => \exp_result_reg[3]_i_3_n_0\,
      I5 => A(9),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(8),
      I1 => A(8),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(9),
      I1 => p_1_in,
      I2 => A(9),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(8),
      O => p_0_in(8)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(8),
      I1 => p_1_in,
      I2 => A(8),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(7),
      O => p_0_in(7)
    );
\i__carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(5),
      I1 => p_1_in,
      I2 => A(5),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(4),
      O => p_0_in(4)
    );
\i__carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(6),
      I1 => p_1_in,
      I2 => A(6),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(5),
      O => p_0_in(5)
    );
\i__carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(3),
      I1 => p_1_in,
      I2 => A(3),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(2),
      O => p_0_in(2)
    );
\i__carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(4),
      I1 => p_1_in,
      I2 => A(4),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(3),
      O => p_0_in(3)
    );
\i__carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(1),
      I1 => p_1_in,
      I2 => A(1),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(0),
      O => p_0_in(0)
    );
\i__carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(2),
      I1 => p_1_in,
      I2 => A(2),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(1),
      O => p_0_in(1)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(6),
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      I3 => A(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(3),
      O => p_2_in(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(4),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => A(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(2),
      O => p_2_in(2)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(2),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => A(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(1),
      O => p_2_in(1)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => A(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F60"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => p_0_in1_in,
      I3 => p_0_in(0),
      O => p_2_in(0)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(6),
      I1 => p_0_in(6),
      I2 => A(7),
      I3 => p_0_in(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(4),
      I1 => p_0_in(4),
      I2 => A(5),
      I3 => p_0_in(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(3),
      I1 => A(3),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(2),
      I1 => p_0_in(2),
      I2 => A(3),
      I3 => p_0_in(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(2),
      I1 => A(2),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(0),
      I1 => p_0_in(0),
      I2 => A(1),
      I3 => p_0_in(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(1),
      I1 => A(1),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => B(7),
      I1 => p_1_in,
      I2 => A(7),
      I3 => \exp_result_reg[3]_i_3_n_0\,
      I4 => B(6),
      O => p_0_in(6)
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in(0),
      I1 => A(0),
      I2 => A(15),
      I3 => B(15),
      O => \i__carry_i_9__0_n_0\
    );
\mantisa_aux1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mantisa_aux1_inferred__0/i__carry_n_0\,
      CO(2) => \mantisa_aux1_inferred__0/i__carry_n_1\,
      CO(1) => \mantisa_aux1_inferred__0/i__carry_n_2\,
      CO(0) => \mantisa_aux1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_mantisa_aux1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\mantisa_aux1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \mantisa_aux1_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_mantisa_aux1_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_0_in1_in,
      CO(0) => \mantisa_aux1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1__0_n_0\,
      DI(0) => \i__carry__0_i_2__0_n_0\,
      O(3 downto 0) => \NLW_mantisa_aux1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \p_0_in__0\(10),
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\mantisa_result_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(1),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(0)
    );
\mantisa_result_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(2),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(1)
    );
\mantisa_result_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(3),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(2)
    );
\mantisa_result_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(4),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(3)
    );
\mantisa_result_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(5),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(4)
    );
\mantisa_result_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(6),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(5)
    );
\mantisa_result_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(7),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(6)
    );
\mantisa_result_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(8),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(7)
    );
\mantisa_result_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(9),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(8)
    );
\mantisa_result_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mantisa_aux(10),
      G => mantisa_aux(11),
      GE => '1',
      Q => mantisa_result(9)
    );
\result[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(0),
      I1 => operation(0),
      I2 => operation(1),
      O => result(0)
    );
\result[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \exp_result_reg_n_0_[0]\,
      I1 => operation(0),
      I2 => operation(1),
      O => result(10)
    );
\result[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \exp_result_reg_n_0_[1]\,
      I1 => operation(0),
      I2 => operation(1),
      O => result(11)
    );
\result[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \exp_result_reg_n_0_[2]\,
      I1 => operation(0),
      I2 => operation(1),
      O => result(12)
    );
\result[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \exp_result_reg_n_0_[3]\,
      I1 => operation(0),
      I2 => operation(1),
      O => result(13)
    );
\result[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \exp_result_reg_n_0_[4]\,
      I1 => operation(0),
      I2 => operation(1),
      O => result(14)
    );
\result[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D8"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => A(15),
      I2 => B(15),
      I3 => operation(0),
      I4 => operation(1),
      O => result(15)
    );
\result[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(1),
      I1 => operation(0),
      I2 => operation(1),
      O => result(1)
    );
\result[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(2),
      I1 => operation(0),
      I2 => operation(1),
      O => result(2)
    );
\result[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(3),
      I1 => operation(0),
      I2 => operation(1),
      O => result(3)
    );
\result[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(4),
      I1 => operation(0),
      I2 => operation(1),
      O => result(4)
    );
\result[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(5),
      I1 => operation(0),
      I2 => operation(1),
      O => result(5)
    );
\result[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(6),
      I1 => operation(0),
      I2 => operation(1),
      O => result(6)
    );
\result[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(7),
      I1 => operation(0),
      I2 => operation(1),
      O => result(7)
    );
\result[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(8),
      I1 => operation(0),
      I2 => operation(1),
      O => result(8)
    );
\result[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => mantisa_result(9),
      I1 => operation(0),
      I2 => operation(1),
      O => result(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_4_ALU is
  port (
    result : out STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_4_ALU : entity is "ALU";
end design_1_ALU_0_4_ALU;

architecture STRUCTURE of design_1_ALU_0_4_ALU is
begin
ADD: entity work.design_1_ALU_0_4_add
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      operation(1 downto 0) => operation(1 downto 0),
      result(15 downto 0) => result(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_4 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    zero : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ALU_0_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ALU_0_4 : entity is "design_1_ALU_0_4,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ALU_0_4 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ALU_0_4 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ALU_0_4 : entity is "ALU,Vivado 2024.1";
end design_1_ALU_0_4;

architecture STRUCTURE of design_1_ALU_0_4 is
  signal \<const0>\ : STD_LOGIC;
  signal \^result\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  overflow <= \<const0>\;
  result(31) <= \<const0>\;
  result(30) <= \<const0>\;
  result(29) <= \<const0>\;
  result(28) <= \<const0>\;
  result(27) <= \<const0>\;
  result(26) <= \<const0>\;
  result(25) <= \<const0>\;
  result(24) <= \<const0>\;
  result(23) <= \<const0>\;
  result(22) <= \<const0>\;
  result(21) <= \<const0>\;
  result(20) <= \<const0>\;
  result(19) <= \<const0>\;
  result(18) <= \<const0>\;
  result(17) <= \<const0>\;
  result(16) <= \<const0>\;
  result(15 downto 0) <= \^result\(15 downto 0);
  zero <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_ALU_0_4_ALU
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      operation(1 downto 0) => operation(1 downto 0),
      result(15 downto 0) => \^result\(15 downto 0)
    );
end STRUCTURE;
