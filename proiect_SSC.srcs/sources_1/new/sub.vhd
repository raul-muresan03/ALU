library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity sub is
    port (
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        result: out std_logic_vector(31 downto 0);
        overflow: out std_logic;
        zero: out std_logic;
        clk: in std_logic;
        start: in std_logic;
        done: out std_logic
    );
end sub;

architecture a2 of sub is

    component subBinary is
        Port (
            A: in std_logic_vector(23 downto 0);
            B: in std_logic_vector(23 downto 0);
            result: out std_logic_vector(24 downto 0);
            clk: in std_logic;
            start: in std_logic;
            done: out std_logic
        );
    end component;

    type state_type is (Initializare, AliniereExponenti, ScadereMantise, NormalizareRezultat, Terminare);
    signal stare: state_type := Initializare;
    
    signal exp_A, exp_B, exp_max: std_logic_vector(8 downto 0);
    signal mantisa_A, mantisa_B, mantisa_shifted: std_logic_vector(23 downto 0);
    signal semn_A, semn_B, semn_result: std_logic := '0';
    signal mantisa_result: std_logic_vector(24 downto 0);
    signal exp_result: std_logic_vector(7 downto 0);
    signal start_sub, done_sub: std_logic := '0';

    -- 1 bit semn, 8 biti exponent, 23 biti mantisa
begin

    scazatorNormal: subBinary port map(A => mantisa_A, B => mantisa_B, result => mantisa_result, clk => clk, start => start_sub, done => done_sub);
    
    process(clk)
    begin
        if rising_edge(clk) then
            case stare is
                 when Initializare =>
                    if start = '1' then
                        stare <= AliniereExponenti;

                        -- Pregătire semne, exponenți și mantise
                        exp_A <= std_logic_vector(unsigned("0" & A(30 downto 23)) - 127);
                        exp_B <= std_logic_vector(unsigned("0" & B(30 downto 23)) - 127);
                        mantisa_A <= "1" & A(22 downto 0);
                        mantisa_B <= "1" & B(22 downto 0);
                        semn_A <= A(31);
                        semn_B <= B(31);
                        done <= '0';
                        zero <= '0';
                        overflow <= '0';
                    end if;
                
                when AliniereExponenti =>
                    if to_integer(unsigned(exp_A)) > to_integer(unsigned(exp_B)) then
                        exp_max <= exp_A;
                        mantisa_shifted <= std_logic_vector(shift_right(unsigned(mantisa_B), to_integer(unsigned(exp_A - exp_B))));
                        semn_result <= semn_A;
                    else
                        exp_max <= exp_B;
                        mantisa_shifted <= std_logic_vector(shift_right(unsigned(mantisa_A), to_integer(unsigned(exp_B - exp_A))));
                        semn_result <= semn_B;
                    end if;

                    stare <= ScadereMantise;
                                    
                when ScadereMantise =>
                    start_sub <= '1';
                
                    if done_sub = '1' then
                        start_sub <= '0';
                        
                        if semn_A = semn_B then
                            if unsigned(mantisa_A) >= unsigned(mantisa_B) then
                                semn_result <= semn_A;
                            else
                                semn_result <= not semn_A;
                            end if;
                        else
                            semn_result <= semn_A;
                        end if;
                        
                        stare <= NormalizareRezultat;
                    end if;

                
                when NormalizareRezultat =>
                   if mantisa_result(24) = '1' then             --bitul de borrow
                        exp_result <= std_logic_vector(unsigned(exp_max) + 1);
                        mantisa_result <= std_logic_vector(shift_right(unsigned(mantisa_result), 1));
                    elsif mantisa_result(23 downto 0) = (others => '0') then
                        exp_result <= "00000000";       -- underflow
                    else
                        exp_result <= exp_max(7 downto 0);
                    end if;
                    
                    exp_result <= std_logic_vector(unsigned(exp_result) + 127);

                    result(31) <= semn_result;
                    result(30 downto 23) <= exp_result;
                    result(22 downto 0) <= mantisa_result(22 downto 0);

                    if (unsigned(exp_result) = 0 and mantisa_result(22 downto 0) = (others => '0')) then
                        zero <= '1';
                    end if;

                    if unsigned(exp_result) > 127 then      --verificam fara deplasament
                        overflow <= '1';
                    end if;

                    stare <= Terminare; 
                
                when Terminare =>
                    done <= '1';
                    if start = '0' then
                        stare <= Initializare;
                    end if;
                
                when others =>
                    stare <= Initializare;
            end case;
        end if;
    end process;
end a2;
