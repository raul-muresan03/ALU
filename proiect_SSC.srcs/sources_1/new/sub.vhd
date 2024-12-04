library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity sub is
    port (
        A: in std_logic_vector(15 downto 0);
        B: in std_logic_vector(15 downto 0);
        result: out std_logic_vector(31 downto 0);
        overflow: out std_logic;
        zero: out std_logic
    );
end sub;

architecture a2 of sub is
    signal dif: std_logic_vector(3 downto 0) := (others => '0');
    signal exp_comun: std_logic_vector(3 downto 0) := (others => '0');
    signal mantisa_aux: std_logic_vector(10 downto 0) := (others => '0');
    signal mantisa_shift: std_logic_vector(10 downto 0) := (others => '0');
    signal rez_aux: std_logic_vector(10 downto 0) := (others => '0');
    signal exp_temp: std_logic_vector(3 downto 0) := (others => '0');
    signal final_aux: std_logic_vector(31 downto 0);

    -- 1 bit semn, 4 biti exponent, 11 biti mantisa
begin
    process(A, B)
    begin
        overflow <= '0';
        zero <= '0';
        
        if unsigned(A(14 downto 11)) >= unsigned(B(14 downto 11)) then
            dif <= std_logic_vector(unsigned(A(14 downto 11)) - unsigned(B(14 downto 11)));
            exp_comun <= A(14 downto 11);
            mantisa_aux <= B(10 downto 0);
            mantisa_shift <= std_logic_vector(shift_left(unsigned(mantisa_aux), to_integer(unsigned(dif))));
            rez_aux <= std_logic_vector(unsigned(mantisa_shift) - unsigned(A(10 downto 0)));
        else
            dif <= std_logic_vector(unsigned(B(14 downto 11)) - unsigned(A(14 downto 11)));
            exp_comun <= B(14 downto 11);
            mantisa_aux <= A(10 downto 0);
            mantisa_shift <= std_logic_vector(shift_left(unsigned(mantisa_aux), to_integer(unsigned(dif))));  
            rez_aux <= std_logic_vector(unsigned(mantisa_shift) - unsigned(B(10 downto 0)));
        end if;

        --normalizarea rezultatului
        exp_temp <= exp_comun;
        
        --while rez_aux(10) = '0' and exp_temp > 0 loop
        --    rez_aux <= std_logic_vector(shift_left(unsigned(rez_aux), 1));
        --    exp_temp <= exp_temp - 1;
        --end loop;
        
        if rez_aux(10) = '1' then
            rez_aux <= std_logic_vector(shift_right(unsigned(rez_aux), 1));
            exp_temp <= exp_temp + 1;
        end if;
        
        exp_comun <= std_logic_vector(exp_temp);
    
        if (A(15) >= B(15))then
           final_aux <= x"0000" & A(15) & exp_comun & rez_aux;
        else
            final_aux <= x"0000" & B(15) & exp_comun & rez_aux;
        end if;
        
        result <= final_aux;
        
        if final_aux = x"00000000" then
            zero <= '1';
        end if;
        
    end process;
end a2;
