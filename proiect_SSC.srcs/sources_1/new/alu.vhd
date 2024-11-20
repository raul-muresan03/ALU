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
    signal aux: std_logic_vector(31 downto 0);
begin
    process(A, B)
    begin
        overflow <= '0';
        zero <= '0';
        
        case operation is
            when "00" =>                 --adunare
                aux <= A + B;
                if (A(31) = B(31)) and (A(31) /= aux(31)) then
                    overflow <= '1';
                end if;
            when "01" =>                 --scadere
                aux <= A - B;  
                if (A(31) = B(31)) and (A(31) /= aux(31)) then
                    overflow <= '1';
                end if;
            when "10" =>                 --inmultire
                aux <= A * B;
            when "11" =>                 --impartire
                --aux <= A / B;        
            when others =>
                aux <= (others => '0');
        end case;
        
        result <= aux;
        
        if aux = X"00000000" then
            zero <= '1';
        else
            zero <= '0';
        end if;
    end process;
end Behavioral;