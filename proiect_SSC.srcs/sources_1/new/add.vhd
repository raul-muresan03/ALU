library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity add is
    port (
        A: in std_logic_vector(15 downto 0);
        B: in std_logic_vector(15 downto 0);
        result: out std_logic_vector(31 downto 0);
        overflow: out std_logic;
        zero: out std_logic;
        clk: in std_logic;
        start: in std_logic;
        done: out std_logic
    );
end add;

architecture a1 of add is
    signal sign_a, sign_b: std_logic := '0';
    signal sign_result: std_logic := '0';
    
    signal mantisa_a, mantisa_b: std_logic_vector(10 downto 0) := (others => '0');  --1 bit in plus pentru acel 1 implicit
    signal mantisa_result: std_logic_vector(11 downto 0) := (others => '0');       -- poate avea overflow pe 12 biti
    
    signal exp_a, exp_b: std_logic_vector(4 downto 0) := (others => '0');
    signal exp_result: std_logic_vector(4 downto 0) := (others => '0');
    
    signal exp_diferenta: std_logic_vector(4 downto 0) := (others => '0');
    signal mantisa_shifted: std_logic_vector(10 downto 0) := (others => '0');
    signal mantisa_aux: std_logic_vector(11 downto 0) := (others => '0');          -- semnal auxiliar pentru normalizarea mantisei
    signal exp_aux: std_logic_vector(4 downto 0) := (others => '0');               -- semnal auxiliar pentru normalizarea mantisei
    
--    signal zero_aux: std_logic;
--    signal overflow_aux: std_logic;
    
    
    -- 1 bit semn, 5 biti exponent, 10 biti mantisa
begin
    process(clk)
    begin
        if rising_edge(clk) then
--        zero_aux <= '0';
--        overflow_aux <= '0';
        
            sign_a <= A(15);
            exp_a <= std_logic_vector(unsigned(A(14 downto 10)) - 15);
            mantisa_a <= '1'& A(9 downto 0);
            
            sign_b <= B(15);
            exp_b <= std_logic_vector(unsigned(B(14 downto 10)) - 15);
            mantisa_b <= '1'& B(9 downto 0);
            
            if to_integer(unsigned(exp_a)) > to_integer(unsigned(exp_b)) then
                exp_diferenta <= std_logic_vector(unsigned(exp_a) - unsigned(exp_b));
                mantisa_shifted <= '0' & mantisa_b(10 downto to_integer(unsigned(exp_diferenta)));
                exp_aux <= exp_a;
            elsif to_integer(unsigned(exp_a)) < to_integer(unsigned(exp_b)) then
                exp_diferenta <= std_logic_vector(unsigned(exp_b) - unsigned(exp_a));
                mantisa_shifted <= '0' & mantisa_a(10 downto to_integer(unsigned(exp_diferenta)));
                exp_aux <= exp_b;
            else
                exp_diferenta <= "00000";
                mantisa_shifted <= mantisa_b;
                exp_aux <= exp_a;
            end if;
            
            if sign_a = sign_b then
                mantisa_aux <= std_logic_vector(unsigned('0' & mantisa_a) + unsigned('0' & mantisa_shifted));
                sign_result <= sign_a;
            else
                if mantisa_a > mantisa_shifted then
                    mantisa_aux <= std_logic_vector(unsigned('0' & mantisa_a) - unsigned('0' & mantisa_shifted));
                    sign_result <= sign_a;
                else
                    mantisa_aux <= std_logic_vector(unsigned('0' & mantisa_shifted) - unsigned('0' & mantisa_a));
                    sign_result <= sign_b;
                end if;
            end if;
            -- posibil loop la zero si overflow
            
            if mantisa_aux(11) = '1' then    --normalizam rezultatul
                exp_result <= std_logic_vector(unsigned(exp_aux) + 1);
                mantisa_result <= std_logic_vector(unsigned(mantisa_aux) srl 1); -- Deplasare la dreapta
            else
                exp_result <= exp_aux;
                mantisa_result <= mantisa_aux;
            end if;
            
            --detectare zero
            if mantisa_result(10 downto 0) = "00000000000" then
                zero <= '1';
            else
                zero <= '0';
            end if;
            
            --detectare overflow
            if unsigned(exp_result) > 31 then
                overflow <= '1';
            else
                overflow <= '0';
            end if;
            
            result <= x"0000" & sign_result & exp_result & mantisa_result(9 downto 0);    --trunchiem mantisa la 10 biti
        end if;
    end process;
end a1;