library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity ALU is
    port (
        A: in std_logic_vector(15 downto 0);
        B: in std_logic_vector(15 downto 0);
        operation: in std_logic_vector(1 downto 0);
        result: out std_logic_vector(31 downto 0);
        overflow: out std_logic;
        zero: out std_logic
        );
end ALU;

architecture Behavioral of ALU is
    signal result1: std_logic_vector(31 downto 0);
    signal result2: std_logic_vector(31 downto 0);
    signal result3: std_logic_vector(31 downto 0);
    signal result4: std_logic_vector(31 downto 0);
    signal overflow1: std_logic;
    signal overflow2: std_logic;
    signal overflow3: std_logic;
    signal overflow4: std_logic;
    signal zero1: std_logic;
    signal zero2: std_logic;
    signal zero3: std_logic;
    signal zero4: std_logic;
begin

    ADD: entity work.add port map(A, B, result1, overflow1, zero1);
    SUB: entity work.add port map(A, B, result2, overflow2, zero2);
    MUL: entity work.add port map(A, B, result3, overflow3, zero3);
    DIV: entity work.add port map(A, B, result4, overflow4, zero4);
    
    process(A, B)
    begin
        overflow <= '0';
        zero <= '0';
        
        case operation is
            when "00" =>                 --adunare
                result <= result1;
            when "01" =>                 --scadere
                result <= result2;
            when "10" =>                 --inmultire
                result <= result3;
            when "11" =>                 --impartire
                result <= result4;
            when others =>
                result <= (others => '0');
        end case;
    end process;
end Behavioral;