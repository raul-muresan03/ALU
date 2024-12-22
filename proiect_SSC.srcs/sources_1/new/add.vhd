library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity add is
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
end add;

architecture a1 of add is

    component addBinary is
        Port (
            A: in std_logic_vector(23 downto 0);
            B: in std_logic_vector(23 downto 0);
            result: out std_logic_vector(24 downto 0); -- 25 biți pentru carry
            clk: in std_logic;
            start: in std_logic;
            done: out std_logic
        );
    end component;

    type state_type is (Initializare, AliniereExponenti, AdunareMantise, NormalizareRezultat, Terminare);
    signal stare : state_type := Initializare;
    signal exp_A, exp_B, exp_max: std_logic_vector(8 downto 0);   -- un bit pentru a ne da seama de depasire  
    signal mantisa_a, mantisa_b: std_logic_vector(23 downto 0);  -- 1 bit in plus pentru acel 1 implicit
    signal mantisa_shifted: std_logic_vector(23 downto 0);
    signal start_add, done_add, semn_A, semn_B, semn_result: std_logic := '0';
    signal mantisa_result: std_logic_vector(24 downto 0); -- 25 biti pentru rezultat cu carry
    signal exp_result: std_logic_vector(7 downto 0);
    
    -- 1 bit semn, 8 biti exponent, 23 biti mantisa
begin
    sumatorNormal: addBinary port map(A => mantisa_A, B => mantisa_B, result => mantisa_result, clk => clk, start => start_add, done => done_add);

    process(clk)
    begin
        if rising_edge(clk) then
            case stare is
            
                when Initializare =>
                    if start = '1' then
                        stare <= AliniereExponenti;
                        semn_A <= A(31);
						semn_B <= B(31);
                        exp_A <= std_logic_vector(unsigned("0" & A(30 downto 23)) - 127);
                        exp_B <= std_logic_vector(unsigned("0" & B(30 downto 23)) - 127);
						mantisa_A <= '1' & A(22 downto 0);
						mantisa_B <= '1' & B(22 downto 0);
						done <= '0';
						zero <= '0';
						overflow <= '0';
                    end if;
                    
                when AliniereExponenti =>
                    if to_integer(unsigned(exp_A)) > to_integer(unsigned(exp_B)) then
                        exp_max <= exp_A;
                        mantisa_shifted <= std_logic_vector(shift_right(unsigned(mantisa_B), to_integer(unsigned(exp_A - exp_B))));
                        semn_result <= semn_A;
                    elsif to_integer(unsigned(exp_A)) < to_integer(unsigned(exp_B)) then
                        exp_max <= exp_B;
                        mantisa_shifted <= std_logic_vector(shift_right(unsigned(mantisa_A), to_integer(unsigned(exp_B - exp_A))));
                        semn_result <= semn_B;
                    else
                        exp_max <= exp_A;
                        mantisa_shifted <= mantisa_B; -- nu avem nevoie de shift
                        semn_result <= semn_A;         --se ia semnul de la oricare, sunt egale
                    end if;
                    
                    stare <= AdunareMantise;
                
                when AdunareMantise =>
                    if semn_A = semn_B then
                        mantisa_result <= std_logic_vector(unsigned(mantisa_A) + unsigned(mantisa_shifted));
                    else
                        if unsigned(mantisa_A) = unsigned(mantisa_shifted) then
                            mantisa_result <= (others => '0');      -- rezultatul este zero
                            semn_result <= '0';             -- semnul nu conteaza
                        elsif unsigned(mantisa_A) > unsigned(mantisa_shifted) then
                            mantisa_result <= std_logic_vector(unsigned(mantisa_A) - unsigned(mantisa_shifted));
                            semn_result <= semn_A;
                        else
                            mantisa_result <= std_logic_vector(unsigned(mantisa_shifted) - unsigned(mantisa_A));
                            semn_result <= semn_B;
                        end if;
                    end if;
                    
                    stare <= NormalizareRezultat;
                   
                when NormalizareRezultat =>
                    if mantisa_result = (others => '0') then
                        exp_result <= (others => '0'); -- Exponentul este zero
                    else
                        if mantisa_result(24) = '1' then
                            exp_result <= std_logic_vector(unsigned(exp_max) + 1);
                            mantisa_result <= std_logic_vector(shift_right(unsigned(mantisa_result), 1));
                        else
                            exp_result <= exp_max(7 downto 0);
                        end if;
                        exp_result <= std_logic_vector(unsigned(exp_result) + 127);
                    end if;

                    
                    result(31) <= semn_result;
                    result(30 downto 23) <= exp_result;
                    result(22 downto 0) <= mantisa_result(22 downto 0);
                    
                    if (exp_result & mantisa_result(22 downto 0)) = (others => '0') then
                        zero <= '1';
                    end if;

                    if unsigned(exp_result) > 255 then
                        overflow <= '1';
                    end if;

                    stare <= Terminare;
                    
                when Terminare =>
                    done <= '1';
                    if start = '0' then
                        stare <= Initializare;
                    end if;
                    
                when others =>
                    
                    
            end case;
        end if;
    end process;
end a1;