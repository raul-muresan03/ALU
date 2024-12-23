-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Dec 23 13:21:09 2024
-- Host        : DESKTOP-V8PAV36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Raul/Desktop/SSC_projects/ALU/proiect_SSC.gen/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_stub.vhdl
-- Design      : design_1_ALU_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ALU_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    operation : in STD_LOGIC_VECTOR ( 1 downto 0 );
    overflow : out STD_LOGIC;
    zero : out STD_LOGIC;
    clk : in STD_LOGIC
  );

end design_1_ALU_0_0;

architecture stub of design_1_ALU_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],result[31:0],operation[1:0],overflow,zero,clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ALU,Vivado 2024.1";
begin
end;
