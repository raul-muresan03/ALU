library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity ALU is
    port (
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        result: out std_logic_vector(31 downto 0);
        operation: in std_logic_vector(1 downto 0);
        overflow: out std_logic;
        zero: out std_logic;
        clk: in std_logic
        );
end ALU;

architecture Behavioral of ALU is
    signal result1, result2, result3, result4: std_logic_vector(31 downto 0):= (others => '0');
    signal overflow1, overflow2, overflow3, overflow4, zero1, zero2, zero3, zero4: std_logic := '0';
    signal start1, start2, start3, start4: std_logic := '1';
    signal done1, done2, done3, done4: std_logic := '0';
begin

--    ADD: entity work.add port map(A, B, result1, overflow1, zero1, clk, start1, done1);
--    SUB: entity work.sub port map(A, B, result2, overflow2, zero2, clk, start2, done2);
    MUL: entity work.mul port map(A, B, result3, overflow3, zero3, clk, start3, done3);
--    DIV: entity work.div port map(A, B, result4, overflow4, zero4, clk, start4, done4);
    
    process(clk)
    begin
        if rising_edge(clk) then
            overflow <= '0';
            zero <= '0';
            
            case operation is
                when "00" =>        --adunare
                    result <= result1;
                    overflow <= overflow1;
                    zero <= zero1;
                when "01" =>        --scadere
                    result <= result2;
                    overflow <= overflow2;
                    zero <= zero2;
                when "10" =>        --inmultire
                    result <= result3;
                    overflow <= overflow3;
                    zero <= zero3;
                when "11" =>        --impartire
                    result <= result4;
                    overflow <= overflow4;
                    zero <= zero4;
                when others =>
                    result <= (others => '0');
                    overflow <= '0';
                    zero <= '0';
            end case;
        end if;
    end process;
end Behavioral;