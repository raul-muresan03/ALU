-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Dec 11 15:08:44 2024
-- Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_2/design_1_ALU_0_2_sim_netlist.vhdl
-- Design      : design_1_ALU_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_2_add is
  port (
    result : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rez_aux1 : out STD_LOGIC;
    B_2_sp_1 : out STD_LOGIC;
    mantisa_aux : out STD_LOGIC_VECTOR ( 1 downto 0 );
    A_13_sp_1 : out STD_LOGIC;
    A_12_sp_1 : out STD_LOGIC;
    B_1_sp_1 : out STD_LOGIC;
    \A[12]_0\ : out STD_LOGIC;
    dif : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rez_aux : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 );
    result_15_sp_1 : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[14]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i__carry__0_i_8_0\ : in STD_LOGIC;
    \i__carry__0_i_8_1\ : in STD_LOGIC;
    \i__carry__0_i_8_2\ : in STD_LOGIC;
    \i__carry__1_i_13\ : in STD_LOGIC;
    \i__carry__1_i_19\ : in STD_LOGIC;
    \i__carry__1_i_24\ : in STD_LOGIC;
    \i__carry__1_i_16\ : in STD_LOGIC;
    \i__carry__0_i_8_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry_i_5_0\ : in STD_LOGIC;
    \i__carry__0_i_8_4\ : in STD_LOGIC;
    \i__carry__0_i_7_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \_inferred__5/i__carry__0_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_2_add : entity is "add";
end design_1_ALU_0_2_add;

architecture STRUCTURE of design_1_ALU_0_2_add is
  signal \^a[12]_0\ : STD_LOGIC;
  signal A_12_sn_1 : STD_LOGIC;
  signal A_13_sn_1 : STD_LOGIC;
  signal B_1_sn_1 : STD_LOGIC;
  signal B_2_sn_1 : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \^dif\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal exp_temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal final_aux1 : STD_LOGIC;
  signal \final_aux1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \final_aux1_carry__0_n_1\ : STD_LOGIC;
  signal \final_aux1_carry__0_n_2\ : STD_LOGIC;
  signal \final_aux1_carry__0_n_3\ : STD_LOGIC;
  signal final_aux1_carry_i_1_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_2_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_3_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_4_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_5_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_6_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_7_n_0 : STD_LOGIC;
  signal final_aux1_carry_i_8_n_0 : STD_LOGIC;
  signal final_aux1_carry_n_0 : STD_LOGIC;
  signal final_aux1_carry_n_1 : STD_LOGIC;
  signal final_aux1_carry_n_2 : STD_LOGIC;
  signal final_aux1_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_18_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_19_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_20_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_21_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_25_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_27_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \^mantisa_aux\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal result_15_sn_1 : STD_LOGIC;
  signal \^rez_aux\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rez_aux0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^rez_aux1\ : STD_LOGIC;
  signal \NLW__inferred__5/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__5/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_final_aux1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_final_aux1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \exp_temp_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_temp_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_temp_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_temp_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of final_aux1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of final_aux1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \final_aux1_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \final_aux1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \i__carry__0_i_16\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i__carry__0_i_18\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i__carry_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i__carry_i_17\ : label is "soft_lutpair1";
begin
  \A[12]_0\ <= \^a[12]_0\;
  A_12_sp_1 <= A_12_sn_1;
  A_13_sp_1 <= A_13_sn_1;
  B_1_sp_1 <= B_1_sn_1;
  B_2_sp_1 <= B_2_sn_1;
  dif(1 downto 0) <= \^dif\(1 downto 0);
  mantisa_aux(1 downto 0) <= \^mantisa_aux\(1 downto 0);
  result_15_sn_1 <= result_15_sp_1;
  rez_aux(0) <= \^rez_aux\(0);
  rez_aux1 <= \^rez_aux1\;
\_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__5/i__carry_n_0\,
      CO(2) => \_inferred__5/i__carry_n_1\,
      CO(1) => \_inferred__5/i__carry_n_2\,
      CO(0) => \_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => rez_aux0_in(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry_n_0\,
      CO(3) => \_inferred__5/i__carry__0_n_0\,
      CO(2) => \_inferred__5/i__carry__0_n_1\,
      CO(1) => \_inferred__5/i__carry__0_n_2\,
      CO(0) => \_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => rez_aux0_in(7 downto 4),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\_inferred__5/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW__inferred__5/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_inferred__5/i__carry__1_n_2\,
      CO(0) => \_inferred__5/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => DI(1 downto 0),
      O(3) => \NLW__inferred__5/i__carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => rez_aux0_in(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\exp_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => p_1_in,
      GE => '1',
      Q => exp_temp(0)
    );
\exp_temp_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => exp_temp(0),
      O => plusOp(0)
    );
\exp_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => p_1_in,
      GE => '1',
      Q => exp_temp(1)
    );
\exp_temp_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => exp_temp(0),
      I1 => exp_temp(1),
      O => plusOp(1)
    );
\exp_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => p_1_in,
      GE => '1',
      Q => exp_temp(2)
    );
\exp_temp_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => exp_temp(0),
      I1 => exp_temp(1),
      I2 => exp_temp(2),
      O => plusOp(2)
    );
\exp_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => p_1_in,
      GE => '1',
      Q => exp_temp(3)
    );
\exp_temp_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => exp_temp(2),
      I1 => exp_temp(1),
      I2 => exp_temp(0),
      I3 => exp_temp(3),
      O => plusOp(3)
    );
final_aux1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => final_aux1_carry_n_0,
      CO(2) => final_aux1_carry_n_1,
      CO(1) => final_aux1_carry_n_2,
      CO(0) => final_aux1_carry_n_3,
      CYINIT => '1',
      DI(3) => final_aux1_carry_i_1_n_0,
      DI(2) => final_aux1_carry_i_2_n_0,
      DI(1) => final_aux1_carry_i_3_n_0,
      DI(0) => final_aux1_carry_i_4_n_0,
      O(3 downto 0) => NLW_final_aux1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => final_aux1_carry_i_5_n_0,
      S(2) => final_aux1_carry_i_6_n_0,
      S(1) => final_aux1_carry_i_7_n_0,
      S(0) => final_aux1_carry_i_8_n_0
    );
\final_aux1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => final_aux1_carry_n_0,
      CO(3) => final_aux1,
      CO(2) => \final_aux1_carry__0_n_1\,
      CO(1) => \final_aux1_carry__0_n_2\,
      CO(0) => \final_aux1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \final_aux1_carry__0_i_1_n_0\,
      DI(2) => \final_aux1_carry__0_i_2_n_0\,
      DI(1) => \final_aux1_carry__0_i_3_n_0\,
      DI(0) => \final_aux1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_final_aux1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \final_aux1_carry__0_i_5_n_0\,
      S(2) => \final_aux1_carry__0_i_6_n_0\,
      S(1) => \final_aux1_carry__0_i_7_n_0\,
      S(0) => \final_aux1_carry__0_i_8_n_0\
    );
\final_aux1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      I2 => A(14),
      I3 => B(14),
      O => \final_aux1_carry__0_i_1_n_0\
    );
\final_aux1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => B(13),
      I3 => A(13),
      O => \final_aux1_carry__0_i_2_n_0\
    );
\final_aux1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => B(11),
      I3 => A(11),
      O => \final_aux1_carry__0_i_3_n_0\
    );
\final_aux1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => A(8),
      I3 => B(8),
      O => \final_aux1_carry__0_i_4_n_0\
    );
\final_aux1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      I2 => A(14),
      I3 => B(14),
      O => \final_aux1_carry__0_i_5_n_0\
    );
\final_aux1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => B(13),
      I3 => A(13),
      O => \final_aux1_carry__0_i_6_n_0\
    );
\final_aux1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => A(10),
      I3 => B(10),
      O => \final_aux1_carry__0_i_7_n_0\
    );
\final_aux1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => A(9),
      I3 => B(9),
      O => \final_aux1_carry__0_i_8_n_0\
    );
final_aux1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      I2 => A(6),
      I3 => B(6),
      O => final_aux1_carry_i_1_n_0
    );
final_aux1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => A(4),
      I3 => B(4),
      O => final_aux1_carry_i_2_n_0
    );
final_aux1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      I2 => A(2),
      I3 => B(2),
      O => final_aux1_carry_i_3_n_0
    );
final_aux1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      I2 => A(0),
      I3 => B(0),
      O => final_aux1_carry_i_4_n_0
    );
final_aux1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      I2 => A(6),
      I3 => B(6),
      O => final_aux1_carry_i_5_n_0
    );
final_aux1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => A(5),
      I3 => B(5),
      O => final_aux1_carry_i_6_n_0
    );
final_aux1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => A(3),
      I3 => B(3),
      O => final_aux1_carry_i_7_n_0
    );
final_aux1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => A(1),
      I3 => B(1),
      O => final_aux1_carry_i_8_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(7),
      I1 => \^rez_aux1\,
      I2 => B(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \i__carry__0_i_15_n_0\,
      I1 => \i__carry__0_i_18_n_0\,
      I2 => B_1_sn_1,
      I3 => A_12_sn_1,
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAC"
    )
        port map (
      I0 => B_1_sn_1,
      I1 => B_2_sn_1,
      I2 => A(11),
      I3 => B(11),
      I4 => \i__carry__0_i_7_0\(0),
      O => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404050000000000"
    )
        port map (
      I0 => \^dif\(0),
      I1 => B(3),
      I2 => \^dif\(1),
      I3 => A(3),
      I4 => \^rez_aux1\,
      I5 => \i__carry__0_i_18_n_0\,
      O => \i__carry__0_i_14_n_0\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0C2C20B80020208"
    )
        port map (
      I0 => \i__carry__0_i_8_3\(0),
      I1 => \i__carry__0_i_8_0\,
      I2 => \i__carry__0_i_8_1\,
      I3 => \i__carry__0_i_8_2\,
      I4 => \i__carry__1_i_13\,
      I5 => \i__carry__0_i_8_4\,
      O => \i__carry__0_i_15_n_0\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => A(11),
      I3 => B(11),
      O => A_12_sn_1
    );
\i__carry__0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAC"
    )
        port map (
      I0 => \i__carry__0_i_15_n_0\,
      I1 => B_1_sn_1,
      I2 => A(11),
      I3 => B(11),
      I4 => \i__carry__0_i_7_0\(0),
      O => \i__carry__0_i_17_n_0\
    );
\i__carry__0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00966900"
    )
        port map (
      I0 => \^rez_aux1\,
      I1 => A(12),
      I2 => B(12),
      I3 => A(11),
      I4 => B(11),
      O => \i__carry__0_i_18_n_0\
    );
\i__carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404050000000000"
    )
        port map (
      I0 => \^dif\(0),
      I1 => B(3),
      I2 => \^dif\(1),
      I3 => A(3),
      I4 => \^rez_aux1\,
      I5 => A_12_sn_1,
      O => \i__carry__0_i_19_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(6),
      I1 => \^rez_aux1\,
      I2 => B(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404050000000000"
    )
        port map (
      I0 => \^dif\(0),
      I1 => B(3),
      I2 => \^dif\(1),
      I3 => A(3),
      I4 => \^rez_aux1\,
      I5 => \^a[12]_0\,
      O => \i__carry__0_i_20_n_0\
    );
\i__carry__0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \i__carry__0_i_18_n_0\,
      I1 => \^mantisa_aux\(0),
      I2 => A_13_sn_1,
      I3 => A_12_sn_1,
      I4 => \^mantisa_aux\(1),
      O => \i__carry__0_i_21_n_0\
    );
\i__carry__0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(6),
      I1 => \i__carry__1_i_19\,
      I2 => B(11),
      I3 => A(11),
      I4 => \i__carry__1_i_24\,
      I5 => A(6),
      O => \i__carry__0_i_25_n_0\
    );
\i__carry__0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0C2C20B80020208"
    )
        port map (
      I0 => \^mantisa_aux\(0),
      I1 => \i__carry__0_i_8_0\,
      I2 => \i__carry__0_i_8_1\,
      I3 => \i__carry__0_i_8_2\,
      I4 => \i__carry__1_i_13\,
      I5 => \i__carry__1_i_16\,
      O => B_1_sn_1
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(5),
      I1 => \^rez_aux1\,
      I2 => B(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(4),
      I1 => \^rez_aux1\,
      I2 => B(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555556A6A6A"
    )
        port map (
      I0 => \i__carry__0_i_1_n_0\,
      I1 => B_2_sn_1,
      I2 => \^a[12]_0\,
      I3 => \_inferred__5/i__carry__0_0\,
      I4 => \i__carry_i_5_0\,
      I5 => \i__carry__0_i_12_n_0\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55565656"
    )
        port map (
      I0 => \i__carry__0_i_2_n_0\,
      I1 => \i__carry__0_i_13_n_0\,
      I2 => \i__carry__0_i_14_n_0\,
      I3 => \i__carry__0_i_15_n_0\,
      I4 => A_12_sn_1,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555556666666"
    )
        port map (
      I0 => \i__carry__0_i_3_n_0\,
      I1 => \i__carry__0_i_17_n_0\,
      I2 => A_13_sn_1,
      I3 => \i__carry__0_i_18_n_0\,
      I4 => \^mantisa_aux\(1),
      I5 => \i__carry__0_i_19_n_0\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555666"
    )
        port map (
      I0 => \i__carry__0_i_4_n_0\,
      I1 => \i__carry__0_i_20_n_0\,
      I2 => \i__carry__0_i_15_n_0\,
      I3 => \i__carry_i_5_0\,
      I4 => \i__carry__0_i_21_n_0\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0C2C20B80020208"
    )
        port map (
      I0 => \^mantisa_aux\(1),
      I1 => \i__carry__0_i_8_0\,
      I2 => \i__carry__0_i_8_1\,
      I3 => \i__carry__0_i_8_2\,
      I4 => \i__carry__1_i_13\,
      I5 => \i__carry__0_i_25_n_0\,
      O => B_2_sn_1
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(3),
      I1 => \^rez_aux1\,
      I2 => B(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282414114418228"
    )
        port map (
      I0 => A(13),
      I1 => B(14),
      I2 => A(14),
      I3 => \^rez_aux1\,
      I4 => B(13),
      I5 => \i__carry__1_i_13\,
      O => A_13_sn_1
    );
\i__carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00699600"
    )
        port map (
      I0 => \^rez_aux1\,
      I1 => A(12),
      I2 => B(12),
      I3 => A(11),
      I4 => B(11),
      O => \^a[12]_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(2),
      I1 => \i__carry__1_i_19\,
      I2 => B(11),
      I3 => A(11),
      I4 => \i__carry__1_i_24\,
      I5 => A(2),
      O => \^mantisa_aux\(1)
    );
\i__carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404050000000000"
    )
        port map (
      I0 => \^dif\(0),
      I1 => B(3),
      I2 => \^dif\(1),
      I3 => A(3),
      I4 => \^rez_aux1\,
      I5 => \i__carry_i_5_0\,
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \i__carry__0_i_18_n_0\,
      I1 => \i__carry__0_i_8_3\(0),
      I2 => A_13_sn_1,
      I3 => A_12_sn_1,
      I4 => \^mantisa_aux\(0),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => B(0),
      I1 => \^rez_aux1\,
      I2 => A(0),
      I3 => A_12_sn_1,
      I4 => A_13_sn_1,
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => B(1),
      I1 => \^rez_aux1\,
      I2 => A(1),
      I3 => \^a[12]_0\,
      I4 => A_13_sn_1,
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      I2 => B(12),
      I3 => A(12),
      I4 => A_13_sn_1,
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => B(0),
      I1 => \^rez_aux1\,
      I2 => A(0),
      I3 => \^a[12]_0\,
      I4 => A_13_sn_1,
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => B(13),
      I3 => A(13),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(2),
      I1 => \^rez_aux1\,
      I2 => B(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2B24D718E8E71"
    )
        port map (
      I0 => \i__carry_i_27_n_0\,
      I1 => B(12),
      I2 => A(12),
      I3 => B(13),
      I4 => A(13),
      I5 => \^rez_aux1\,
      O => \^dif\(0)
    );
\i__carry_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B8B847D12E2ED1"
    )
        port map (
      I0 => \i__carry__1_i_13\,
      I1 => B(13),
      I2 => \^rez_aux1\,
      I3 => A(14),
      I4 => B(14),
      I5 => A(13),
      O => \^dif\(1)
    );
\i__carry_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(1),
      I1 => \i__carry__1_i_19\,
      I2 => B(11),
      I3 => A(11),
      I4 => \i__carry__1_i_24\,
      I5 => A(1),
      O => \^mantisa_aux\(0)
    );
\i__carry_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFBFFFFBAFBDF5D"
    )
        port map (
      I0 => A(11),
      I1 => A(14),
      I2 => B(14),
      I3 => \i__carry_i_19_n_0\,
      I4 => B(11),
      I5 => \i__carry__1_i_24\,
      O => \i__carry_i_27_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(1),
      I1 => \^rez_aux1\,
      I2 => B(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(0),
      I1 => \^rez_aux1\,
      I2 => B(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555556AAA"
    )
        port map (
      I0 => \i__carry_i_1_n_0\,
      I1 => A_13_sn_1,
      I2 => \^a[12]_0\,
      I3 => \^mantisa_aux\(1),
      I4 => \i__carry_i_13_n_0\,
      I5 => \i__carry_i_14_n_0\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF001E1EEE111E1"
    )
        port map (
      I0 => \i__carry_i_15_n_0\,
      I1 => \i__carry_i_16_n_0\,
      I2 => B(2),
      I3 => \^rez_aux1\,
      I4 => A(2),
      I5 => \i__carry_i_17_n_0\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC09837"
    )
        port map (
      I0 => \i__carry_i_17_n_0\,
      I1 => A(1),
      I2 => \^rez_aux1\,
      I3 => B(1),
      I4 => \i__carry_i_18_n_0\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A51D"
    )
        port map (
      I0 => B(0),
      I1 => \^rez_aux1\,
      I2 => A(0),
      I3 => \i__carry_i_17_n_0\,
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB2FFB2B2B2B2"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => \i__carry_i_19_n_0\,
      I3 => B(11),
      I4 => A(11),
      I5 => \i__carry__1_i_24\,
      O => \^rez_aux1\
    );
\result[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(0),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(0)
    );
\result[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => operation(1),
      I1 => rez_aux0_in(10),
      I2 => p_1_in,
      I3 => operation(0),
      I4 => \^rez_aux\(0),
      O => result(10)
    );
\result[10]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rez_aux0_in(10),
      I1 => p_1_in,
      O => p_1_in
    );
\result[10]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rez_aux0_in(10),
      I1 => \^rez_aux\(0),
      O => \^rez_aux\(0)
    );
\result[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7362514033221100"
    )
        port map (
      I0 => operation(0),
      I1 => operation(1),
      I2 => result_15_sn_1,
      I3 => exp_temp(0),
      I4 => Q(0),
      I5 => \result[14]\(0),
      O => result(11)
    );
\result[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7362514033221100"
    )
        port map (
      I0 => operation(0),
      I1 => operation(1),
      I2 => result_15_sn_1,
      I3 => exp_temp(1),
      I4 => Q(1),
      I5 => \result[14]\(1),
      O => result(12)
    );
\result[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7362514033221100"
    )
        port map (
      I0 => operation(0),
      I1 => operation(1),
      I2 => result_15_sn_1,
      I3 => exp_temp(2),
      I4 => Q(2),
      I5 => \result[14]\(2),
      O => result(13)
    );
\result[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7362514033221100"
    )
        port map (
      I0 => operation(0),
      I1 => operation(1),
      I2 => result_15_sn_1,
      I3 => exp_temp(3),
      I4 => Q(3),
      I5 => \result[14]\(3),
      O => result(14)
    );
\result[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3362337373006200"
    )
        port map (
      I0 => operation(0),
      I1 => operation(1),
      I2 => result_15_sn_1,
      I3 => A(15),
      I4 => final_aux1,
      I5 => B(15),
      O => result(15)
    );
\result[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(1),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(1)
    );
\result[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(2),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(2)
    );
\result[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(3),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(3)
    );
\result[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(4),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(4)
    );
\result[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(5),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(5)
    );
\result[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(6),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(6)
    );
\result[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(7),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(7)
    );
\result[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(8),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(8)
    );
\result[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAAAAA"
    )
        port map (
      I0 => rez_aux0_in(9),
      I1 => \^rez_aux\(0),
      I2 => operation(0),
      I3 => p_1_in,
      I4 => rez_aux0_in(10),
      I5 => operation(1),
      O => result(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_2_mul is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_2_mul : entity is "mul";
end design_1_ALU_0_2_mul;

architecture STRUCTURE of design_1_ALU_0_2_mul is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal exp_suma : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \exp_final_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \exp_final_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \exp_final_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \exp_final_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_final_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_final_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \exp_final_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_final_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \exp_final_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_final_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_final_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result[15]_INST_0_i_1\ : label is "soft_lutpair5";
begin
  E(0) <= \^e\(0);
\exp_final_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => exp_suma(0),
      G => \^e\(0),
      GE => '1',
      Q => Q(0)
    );
\exp_final_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => exp_suma(0)
    );
\exp_final_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => exp_suma(1),
      G => \^e\(0),
      GE => '1',
      Q => Q(1)
    );
\exp_final_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => B(1),
      I3 => A(1),
      O => exp_suma(1)
    );
\exp_final_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => exp_suma(2),
      G => \^e\(0),
      GE => '1',
      Q => Q(2)
    );
\exp_final_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      I2 => A(0),
      I3 => B(0),
      I4 => B(2),
      I5 => A(2),
      O => exp_suma(2)
    );
\exp_final_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => exp_suma(3),
      G => \^e\(0),
      GE => '1',
      Q => Q(3)
    );
\exp_final_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      I2 => \result[15]_INST_0_i_2_n_0\,
      O => exp_suma(3)
    );
\result[15]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => A(3),
      I1 => \result[15]_INST_0_i_2_n_0\,
      I2 => B(3),
      O => \^e\(0)
    );
\result[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => A(1),
      I3 => B(1),
      I4 => B(2),
      I5 => A(2),
      O => \result[15]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_2_sub is
  port (
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \B[12]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    A_11_sp_1 : out STD_LOGIC;
    B_5_sp_1 : out STD_LOGIC;
    \A[11]_0\ : out STD_LOGIC;
    \A[11]_1\ : out STD_LOGIC;
    \A[14]\ : out STD_LOGIC;
    \A[11]_2\ : out STD_LOGIC;
    A_12_sp_1 : out STD_LOGIC;
    \A[12]_0\ : out STD_LOGIC;
    A_7_sp_1 : out STD_LOGIC;
    \B[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    B_4_sp_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    A : in STD_LOGIC_VECTOR ( 12 downto 0 );
    rez_aux1 : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \i__carry__1_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mantisa_aux : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i__carry__1_i_5_0\ : in STD_LOGIC;
    \i__carry__1_i_3_0\ : in STD_LOGIC;
    \i__carry__1_i_3_1\ : in STD_LOGIC;
    \i__carry__1_i_5_1\ : in STD_LOGIC;
    \_inferred__5/i__carry__1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_2_sub : entity is "sub";
end design_1_ALU_0_2_sub;

architecture STRUCTURE of design_1_ALU_0_2_sub is
  signal \^a[11]_0\ : STD_LOGIC;
  signal \^a[11]_1\ : STD_LOGIC;
  signal \^a[11]_2\ : STD_LOGIC;
  signal \^a[12]_0\ : STD_LOGIC;
  signal \^a[14]\ : STD_LOGIC;
  signal A_11_sn_1 : STD_LOGIC;
  signal A_12_sn_1 : STD_LOGIC;
  signal A_7_sn_1 : STD_LOGIC;
  signal \^b[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^b[12]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal B_4_sn_1 : STD_LOGIC;
  signal B_5_sn_1 : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dif : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i__carry__0_i_26_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_29_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_30_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_18_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_19_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_20_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_21_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_22_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_23_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_24_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_25_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_26_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_27_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_28_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_9_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \exp_temp_reg[0]_i_1__0\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_temp_reg[1]_i_1__0\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_temp_reg[2]_i_1__0\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \exp_temp_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \exp_temp_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \exp_temp_reg[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i__carry__0_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i__carry__1_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i__carry__1_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i__carry__1_i_18\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i__carry__1_i_25\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i__carry__1_i_27\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i__carry__1_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i__carry__1_i_7\ : label is "soft_lutpair7";
begin
  \A[11]_0\ <= \^a[11]_0\;
  \A[11]_1\ <= \^a[11]_1\;
  \A[11]_2\ <= \^a[11]_2\;
  \A[12]_0\ <= \^a[12]_0\;
  \A[14]\ <= \^a[14]\;
  A_11_sp_1 <= A_11_sn_1;
  A_12_sp_1 <= A_12_sn_1;
  A_7_sp_1 <= A_7_sn_1;
  \B[0]\(0) <= \^b[0]\(0);
  \B[12]\(0) <= \^b[12]\(0);
  B_4_sp_1 <= B_4_sn_1;
  B_5_sp_1 <= B_5_sn_1;
  DI(1 downto 0) <= \^di\(1 downto 0);
  Q(3 downto 0) <= \^q\(3 downto 0);
\exp_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => E(0),
      GE => '1',
      Q => \^q\(0)
    );
\exp_temp_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\exp_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => E(0),
      GE => '1',
      Q => \^q\(1)
    );
\exp_temp_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\exp_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => E(0),
      GE => '1',
      Q => \^q\(2)
    );
\exp_temp_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\exp_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => E(0),
      GE => '1',
      Q => \^q\(3)
    );
\exp_temp_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE040E040E040"
    )
        port map (
      I0 => rez_aux1,
      I1 => A(5),
      I2 => \i__carry__1_i_3_0\,
      I3 => B(5),
      I4 => \i__carry__1_i_4_0\(0),
      I5 => \i__carry__0_i_26_n_0\,
      O => A_7_sn_1
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => A(10),
      I3 => B(10),
      O => A_11_sn_1
    );
\i__carry__0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8A0075"
    )
        port map (
      I0 => \^a[12]_0\,
      I1 => A(9),
      I2 => B(9),
      I3 => A_12_sn_1,
      I4 => A(11),
      O => \^a[11]_2\
    );
\i__carry__0_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => \^a[14]\
    );
\i__carry__0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0075FF8A"
    )
        port map (
      I0 => \^a[12]_0\,
      I1 => A(9),
      I2 => B(9),
      I3 => A_12_sn_1,
      I4 => B(11),
      O => \^a[11]_1\
    );
\i__carry__0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC03C03FA802802A"
    )
        port map (
      I0 => \i__carry__0_i_29_n_0\,
      I1 => \^a[11]_0\,
      I2 => \^a[11]_1\,
      I3 => \^a[14]\,
      I4 => \^a[11]_2\,
      I5 => \i__carry__0_i_30_n_0\,
      O => \i__carry__0_i_26_n_0\
    );
\i__carry__0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(2),
      I1 => A_12_sn_1,
      I2 => B(9),
      I3 => A(9),
      I4 => \^a[12]_0\,
      I5 => A(2),
      O => B_4_sn_1
    );
\i__carry__0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8A0000"
    )
        port map (
      I0 => \^a[12]_0\,
      I1 => A(9),
      I2 => B(9),
      I3 => A_12_sn_1,
      I4 => B(1),
      O => \i__carry__0_i_29_n_0\
    );
\i__carry__0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => A(1),
      I1 => \^a[12]_0\,
      I2 => A(9),
      I3 => B(9),
      I4 => A_12_sn_1,
      O => \i__carry__0_i_30_n_0\
    );
\i__carry__0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(3),
      I1 => A_12_sn_1,
      I2 => B(9),
      I3 => A(9),
      I4 => \^a[12]_0\,
      I5 => A(3),
      O => B_5_sn_1
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(7),
      I1 => rez_aux1,
      I2 => B(7),
      O => \^di\(1)
    );
\i__carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => dif(0)
    );
\i__carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEFE"
    )
        port map (
      I0 => \i__carry__1_i_19_n_0\,
      I1 => \i__carry__1_i_20_n_0\,
      I2 => \i__carry__1_i_21_n_0\,
      I3 => \^b[12]\(0),
      I4 => \i__carry__1_i_22_n_0\,
      I5 => \i__carry__1_i_23_n_0\,
      O => \i__carry__1_i_11_n_0\
    );
\i__carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666966666699666"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => A_12_sn_1,
      I3 => B(9),
      I4 => A(9),
      I5 => \^a[12]_0\,
      O => \^b[12]\(0)
    );
\i__carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CCAAFF00CCAAF0"
    )
        port map (
      I0 => \^b[0]\(0),
      I1 => B_4_sn_1,
      I2 => \i__carry__1_i_24_n_0\,
      I3 => \i__carry__1_i_4_0\(1),
      I4 => \i__carry__1_i_4_0\(0),
      I5 => \i__carry__1_i_25_n_0\,
      O => \i__carry__1_i_13_n_0\
    );
\i__carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09900000"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      I2 => B(10),
      I3 => A(10),
      I4 => \i__carry__1_i_5_1\,
      O => \i__carry__1_i_14_n_0\
    );
\i__carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8080A000"
    )
        port map (
      I0 => A_11_sn_1,
      I1 => B(6),
      I2 => \i__carry__1_i_3_0\,
      I3 => A(6),
      I4 => rez_aux1,
      I5 => \i__carry__1_i_17_n_0\,
      O => \i__carry__1_i_15_n_0\
    );
\i__carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2442422400000000"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      I2 => B(10),
      I3 => A(10),
      I4 => rez_aux1,
      I5 => \i__carry__1_i_5_0\,
      O => \i__carry__1_i_16_n_0\
    );
\i__carry__1_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"803E03E880020028"
    )
        port map (
      I0 => B_4_sn_1,
      I1 => \^a[11]_0\,
      I2 => \^a[11]_1\,
      I3 => \^a[14]\,
      I4 => \^a[11]_2\,
      I5 => \^b[0]\(0),
      O => \i__carry__1_i_17_n_0\
    );
\i__carry__1_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => A_11_sn_1,
      I1 => A(4),
      I2 => rez_aux1,
      I3 => B(4),
      O => \i__carry__1_i_18_n_0\
    );
\i__carry__1_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002002000200200"
    )
        port map (
      I0 => mantisa_aux(0),
      I1 => \^b[12]\(0),
      I2 => \^a[11]_2\,
      I3 => \^a[14]\,
      I4 => \^a[11]_1\,
      I5 => \^a[11]_0\,
      O => \i__carry__1_i_19_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(6),
      I1 => rez_aux1,
      I2 => B(6),
      O => \^di\(0)
    );
\i__carry__1_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000400000440"
    )
        port map (
      I0 => \^b[12]\(0),
      I1 => B_5_sn_1,
      I2 => \^a[11]_0\,
      I3 => \^a[11]_1\,
      I4 => \^a[14]\,
      I5 => \^a[11]_2\,
      O => \i__carry__1_i_20_n_0\
    );
\i__carry__1_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440000040000004"
    )
        port map (
      I0 => \^b[12]\(0),
      I1 => \i__carry__1_i_26_n_0\,
      I2 => \^a[11]_0\,
      I3 => \^a[11]_1\,
      I4 => \^a[14]\,
      I5 => \^a[11]_2\,
      O => \i__carry__1_i_21_n_0\
    );
\i__carry__1_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30C0C00320808002"
    )
        port map (
      I0 => \i__carry__1_i_27_n_0\,
      I1 => \^a[11]_2\,
      I2 => \^a[14]\,
      I3 => \^a[11]_1\,
      I4 => \^a[11]_0\,
      I5 => \i__carry__1_i_28_n_0\,
      O => \i__carry__1_i_22_n_0\
    );
\i__carry__1_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C800003200323200"
    )
        port map (
      I0 => \i__carry__0_i_30_n_0\,
      I1 => \^a[14]\,
      I2 => \i__carry__0_i_29_n_0\,
      I3 => \^a[11]_2\,
      I4 => \^a[11]_1\,
      I5 => \^a[11]_0\,
      O => \i__carry__1_i_23_n_0\
    );
\i__carry__1_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => A(6),
      I1 => rez_aux1,
      O => \i__carry__1_i_24_n_0\
    );
\i__carry__1_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rez_aux1,
      I1 => B(6),
      O => \i__carry__1_i_25_n_0\
    );
\i__carry__1_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(7),
      I1 => A_12_sn_1,
      I2 => B(9),
      I3 => A(9),
      I4 => \^a[12]_0\,
      I5 => A(7),
      O => \i__carry__1_i_26_n_0\
    );
\i__carry__1_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8A0000"
    )
        port map (
      I0 => \^a[12]_0\,
      I1 => A(9),
      I2 => B(9),
      I3 => A_12_sn_1,
      I4 => B(5),
      O => \i__carry__1_i_27_n_0\
    );
\i__carry__1_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => A(5),
      I1 => \^a[12]_0\,
      I2 => A(9),
      I3 => B(9),
      I4 => A_12_sn_1,
      O => \i__carry__1_i_28_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555655565556"
    )
        port map (
      I0 => \i__carry__1_i_6_n_0\,
      I1 => \i__carry__1_i_7_n_0\,
      I2 => \i__carry__1_i_8_n_0\,
      I3 => \i__carry__1_i_9_n_0\,
      I4 => dif(0),
      I5 => \i__carry__1_i_11_n_0\,
      O => S(2)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"559565A55A9A6AAA"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^b[12]\(0),
      I2 => dif(0),
      I3 => \i__carry__1_i_5_1\,
      I4 => \i__carry__1_i_13_n_0\,
      I5 => \i__carry__1_i_11_n_0\,
      O => S(1)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555655565556"
    )
        port map (
      I0 => \^di\(0),
      I1 => \i__carry__1_i_14_n_0\,
      I2 => \i__carry__1_i_15_n_0\,
      I3 => \i__carry__1_i_16_n_0\,
      I4 => A_7_sn_1,
      I5 => \_inferred__5/i__carry__1\,
      O => S(0)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => A(8),
      I1 => rez_aux1,
      I2 => B(8),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080C000"
    )
        port map (
      I0 => B(8),
      I1 => A_11_sn_1,
      I2 => \i__carry__1_i_3_0\,
      I3 => A(8),
      I4 => rez_aux1,
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8080A000"
    )
        port map (
      I0 => \i__carry__1_i_3_1\,
      I1 => B(6),
      I2 => \i__carry__1_i_3_0\,
      I3 => A(6),
      I4 => rez_aux1,
      I5 => \i__carry__1_i_17_n_0\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2C202020"
    )
        port map (
      I0 => \i__carry__1_i_18_n_0\,
      I1 => \i__carry__1_i_4_0\(1),
      I2 => \i__carry__1_i_4_0\(0),
      I3 => mantisa_aux(1),
      I4 => A_11_sn_1,
      O => \i__carry__1_i_9_n_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => A(11),
      I3 => B(11),
      I4 => A(12),
      I5 => B(12),
      O => \^a[12]_0\
    );
\i__carry_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFBFF8A0075CFFB"
    )
        port map (
      I0 => \^a[12]_0\,
      I1 => A(9),
      I2 => B(9),
      I3 => A_12_sn_1,
      I4 => B(10),
      I5 => A(10),
      O => \^a[11]_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT6
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
      O => A_12_sn_1
    );
\i__carry_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => B(0),
      I1 => A_12_sn_1,
      I2 => B(9),
      I3 => A(9),
      I4 => \^a[12]_0\,
      I5 => A(0),
      O => \^b[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_2_ALU is
  port (
    result : out STD_LOGIC_VECTOR ( 15 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_2_ALU : entity is "ALU";
end design_1_ALU_0_2_ALU;

architecture STRUCTURE of design_1_ALU_0_2_ALU is
  signal ADD_n_17 : STD_LOGIC;
  signal ADD_n_20 : STD_LOGIC;
  signal ADD_n_21 : STD_LOGIC;
  signal ADD_n_22 : STD_LOGIC;
  signal ADD_n_23 : STD_LOGIC;
  signal MUL_n_0 : STD_LOGIC;
  signal SUB_n_0 : STD_LOGIC;
  signal SUB_n_1 : STD_LOGIC;
  signal SUB_n_10 : STD_LOGIC;
  signal SUB_n_11 : STD_LOGIC;
  signal SUB_n_12 : STD_LOGIC;
  signal SUB_n_13 : STD_LOGIC;
  signal SUB_n_14 : STD_LOGIC;
  signal SUB_n_16 : STD_LOGIC;
  signal SUB_n_2 : STD_LOGIC;
  signal SUB_n_3 : STD_LOGIC;
  signal SUB_n_4 : STD_LOGIC;
  signal SUB_n_6 : STD_LOGIC;
  signal SUB_n_7 : STD_LOGIC;
  signal SUB_n_8 : STD_LOGIC;
  signal SUB_n_9 : STD_LOGIC;
  signal dif : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal exp_final : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal exp_temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mantisa_aux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rez_aux : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rez_aux1 : STD_LOGIC;
begin
ADD: entity work.design_1_ALU_0_2_add
     port map (
      A(15 downto 0) => A(15 downto 0),
      \A[12]_0\ => ADD_n_23,
      A_12_sp_1 => ADD_n_21,
      A_13_sp_1 => ADD_n_20,
      B(15 downto 0) => B(15 downto 0),
      B_1_sp_1 => ADD_n_22,
      B_2_sp_1 => ADD_n_17,
      DI(1) => SUB_n_0,
      DI(0) => SUB_n_1,
      Q(3 downto 0) => exp_temp(3 downto 0),
      S(2) => SUB_n_2,
      S(1) => SUB_n_3,
      S(0) => SUB_n_4,
      \_inferred__5/i__carry__0_0\ => SUB_n_14,
      dif(1 downto 0) => dif(3 downto 2),
      \i__carry__0_i_7_0\(0) => dif(1),
      \i__carry__0_i_8_0\ => SUB_n_11,
      \i__carry__0_i_8_1\ => SUB_n_10,
      \i__carry__0_i_8_2\ => SUB_n_9,
      \i__carry__0_i_8_3\(0) => mantisa_aux(0),
      \i__carry__0_i_8_4\ => SUB_n_16,
      \i__carry__1_i_13\ => SUB_n_8,
      \i__carry__1_i_16\ => SUB_n_7,
      \i__carry__1_i_19\ => SUB_n_12,
      \i__carry__1_i_24\ => SUB_n_13,
      \i__carry_i_5_0\ => SUB_n_6,
      mantisa_aux(1 downto 0) => mantisa_aux(2 downto 1),
      operation(1 downto 0) => operation(1 downto 0),
      result(15 downto 0) => result(15 downto 0),
      \result[14]\(3 downto 0) => exp_final(3 downto 0),
      result_15_sp_1 => MUL_n_0,
      rez_aux(0) => rez_aux(10),
      rez_aux1 => rez_aux1
    );
MUL: entity work.design_1_ALU_0_2_mul
     port map (
      A(3 downto 0) => A(14 downto 11),
      B(3 downto 0) => B(14 downto 11),
      E(0) => MUL_n_0,
      Q(3 downto 0) => exp_final(3 downto 0)
    );
SUB: entity work.design_1_ALU_0_2_sub
     port map (
      A(12 downto 1) => A(14 downto 3),
      A(0) => A(0),
      \A[11]_0\ => SUB_n_8,
      \A[11]_1\ => SUB_n_9,
      \A[11]_2\ => SUB_n_11,
      \A[12]_0\ => SUB_n_13,
      \A[14]\ => SUB_n_10,
      A_11_sp_1 => SUB_n_6,
      A_12_sp_1 => SUB_n_12,
      A_7_sp_1 => SUB_n_14,
      B(12 downto 1) => B(14 downto 3),
      B(0) => B(0),
      \B[0]\(0) => mantisa_aux(0),
      \B[12]\(0) => dif(1),
      B_4_sp_1 => SUB_n_16,
      B_5_sp_1 => SUB_n_7,
      DI(1) => SUB_n_0,
      DI(0) => SUB_n_1,
      E(0) => rez_aux(10),
      Q(3 downto 0) => exp_temp(3 downto 0),
      S(2) => SUB_n_2,
      S(1) => SUB_n_3,
      S(0) => SUB_n_4,
      \_inferred__5/i__carry__1\ => ADD_n_23,
      \i__carry__1_i_3_0\ => ADD_n_20,
      \i__carry__1_i_3_1\ => ADD_n_21,
      \i__carry__1_i_4_0\(1 downto 0) => dif(3 downto 2),
      \i__carry__1_i_5_0\ => ADD_n_22,
      \i__carry__1_i_5_1\ => ADD_n_17,
      mantisa_aux(1 downto 0) => mantisa_aux(2 downto 1),
      rez_aux1 => rez_aux1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_2 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    zero : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ALU_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ALU_0_2 : entity is "design_1_ALU_0_2,ALU,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ALU_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ALU_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ALU_0_2 : entity is "ALU,Vivado 2024.1";
end design_1_ALU_0_2;

architecture STRUCTURE of design_1_ALU_0_2 is
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
inst: entity work.design_1_ALU_0_2_ALU
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      operation(1 downto 0) => operation(1 downto 0),
      result(15 downto 0) => \^result\(15 downto 0)
    );
end STRUCTURE;
