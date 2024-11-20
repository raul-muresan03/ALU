library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;               -- Needed for shifts
use ieee.std_logic_unsigned.all;

entity add is
    port (
        A: in std_logic_vector(15 downto 0);
        B: in std_logic_vector(15 downto 0);
        result: out std_logic_vector(31 downto 0);
        overflow: out std_logic;
        zero: out std_logic
        );
end add;

-- 1 bit semn, 4 biti exponent, 11 biti mantisa
architecture a1 of add is
    signal dif: std_logic_vector(3 downto 0) := "0000";
    signal exp_comun: std_logic_vector(3 downto 0) := "0000";
    signal mantisa_aux: std_logic_vector(10 downto 0) := "0000";
    signal mantisa_shift: std_logic_vector(10 downto 0) := "0000";
    
begin
    process(A, B)
    begin
        if (A(14 downto 11) >= B(14 downto 11)) then
            dif <= A(14 downto 11) - B(14 downto 11);
            exp_comun <= A(14 downto 11);
            mantisa_aux <= B(14 downto 11);
        else
            dif <= B(14 downto 11) - A(14 downto 11);
            exp_comun <= B(14 downto 11);
            mantisa_aux <= A(14 downto 11);
        end if;
        
        mantisa_shift <= shift_left(mantisa_aux, conv_integer(dif));

        
    end process;
    
    
end a1;