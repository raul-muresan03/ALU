library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity mul is
    port (
        A: in std_logic_vector(15 downto 0);
        B: in std_logic_vector(15 downto 0);
        result: out std_logic_vector(31 downto 0);
        overflow: out std_logic;
        zero: out std_logic
    );
end mul;

architecture a3 of mul is
    signal semn_A, semn_B, semn_rezultat: std_logic;
    signal exp_A, exp_B, exp_suma: std_logic_vector(4 downto 0);
    signal mantisa_A, mantisa_B: std_logic_vector(10 downto 0);
    signal mantisa_produs: std_logic_vector(21 downto 0);
    signal mantisa_norm: std_logic_vector(10 downto 0);
    signal exp_final: std_logic_vector(3 downto 0);
    signal rezultat_final: std_logic_vector(31 downto 0);
         
    -- 1 bit semn, 4 biti exponent, 11 biti mantisa
begin
    process(A, B)
    begin
--        if A(15 downto 0) = x"0000" or B(15 downto 0) = x"0000" then
--            zero <= '1';
--        end if;
        
        zero <= '0';
        overflow <= '0';
        
        semn_A <= A(15);
        semn_B <= B(15);
        semn_rezultat <= semn_A xor semn_B;
        
        exp_A <= "0" & std_logic_vector(unsigned(A(14 downto 11)) - 8);
        exp_B <= "0" & std_logic_vector(unsigned(B(14 downto 11)) - 8);
        exp_suma <= std_logic_vector(unsigned(exp_A) + unsigned(exp_B));
        
--        if A(10) = '1' then
--            mantisa_A <= A(10 downto 0);
--        else
--            mantisa_A <= "1" & A(10 downto 1);
--        end if;
        
        if B(10) = '1' then
            mantisa_B <= B(10 downto 0);
        else
            mantisa_B <= "1" & B(10 downto 1);
        end if;
        
--        mantisa_A <= "1" & A(10 downto 0);
--        mantisa_B <= "1" & B(10 downto 0);
        
        mantisa_produs <= std_logic_vector(unsigned(mantisa_A) * unsigned(mantisa_B));

        -- normalizarea mantisei
        if mantisa_produs(21) = '1' then
            mantisa_norm <= std_logic_vector(shift_right(unsigned(mantisa_produs), 1)(20 downto 10));
            exp_suma <= std_logic_vector(unsigned(exp_suma) + 1);
        else
            mantisa_norm <= mantisa_produs(20 downto 10);
        end if;
        
        if unsigned(exp_suma) > 15 then
            overflow <= '1';
            rezultat_final <= (others => '0');
        else
            exp_final <= exp_suma(3 downto 0);
            rezultat_final <= x"0000" & semn_rezultat & exp_final & mantisa_norm;
        end if;

        if rezultat_final = x"00000000" then
            zero <= '1';
        else
            zero <= '0';
        end if;
        
        result <= rezultat_final;
    end process;

        
end a3;
