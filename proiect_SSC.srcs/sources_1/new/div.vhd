library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity div is
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
end div;

architecture a4 of div is
    component divBinary is
        Port (
            A: in std_logic_vector(23 downto 0);
            B: in std_logic_vector(23 downto 0);
            result: out std_logic_vector(23 downto 0);
            clk: in std_logic;
            start: in std_logic;
            done: out std_logic
        );
    end component;
    
    type state_type is (Initializare, ImpartireMantise, AjustareExponent, NormalizareRezultat, Terminare);
    signal stare: state_type := Initializare;
    
    signal exp_A, exp_B, exp_result: std_logic_vector(8 downto 0);
    signal mantisa_A, mantisa_B: std_logic_vector(23 downto 0);
    signal semn_A, semn_B, semn_result: std_logic := '0';
    signal mantisa_result: std_logic_vector(23 downto 0);
    signal start_div, done_div: std_logic := '0';

    -- 1 bit semn, 8 biti exponent, 23 biti mantisa
begin

    impartitorNormal: divBinary port map (A => mantisa_A, B => mantisa_B, result => mantisa_result, clk => clk, start => start_div, done => done_div);

    process(clk)
    begin
        if rising_edge(clk) then
            case stare is
            
                when Initializare =>
                    if start = '1' then
                        if B(30 downto 0) = (others => '0') then
                            if A(30 downto 0) = (others => '0') then
                                -- 0/0 = NaN
                                result <= x"7FC00000";
                            else
                                -- a/0 = Inf, a /= 0
                                result(31) <= A(31); -- semnul lui A
                                result(30 downto 23) <= "11111111";
                                result(22 downto 0) <= (others => '0');
                            end if;
                            done <= '1';
                            stare <= Terminare;
                        elsif A(30 downto 0) = (others => '0') then
                            -- 0/a = 0, a/=0
                            result(31) <= A(31) xor B(31);
                            result(30 downto 23) <= (others => '0');
                            result(22 downto 0) <= (others => '0');
                            done <= '1';
                            stare <= Terminare;
                        else
                            stare <= ImpartireMantise;
                            
                            semn_A <= A(31);
                            semn_B <= B(31);
                            exp_A <= std_logic_vector(unsigned("0" & A(30 downto 23)) - 127);
                            exp_B <= std_logic_vector(unsigned("0" & B(30 downto 23)) - 127);
                            mantisa_A <= "1" & A(22 downto 0);
                            mantisa_B <= "1" & B(22 downto 0);
                            zero <= '0';
                            overflow <= '0';
                            done <= '0';
                        end if;
                    end if;
                    
                when ImpartireMantise =>
                    start_div <= '1';
                    if done_div = '1' then
                        start_div <= '0';
                        stare <= AjustareExponent;
                    end if;
                    
                when AjustareExponent =>
                    exp_result <= std_logic_vector(unsigned(exp_A) - unsigned(exp_B));
                    semn_result <= semn_A xor semn_B;
                    stare <= NormalizareRezultat;
                    
                when NormalizareRezultat =>
                    if mantisa_result(23) = '0' then
                        mantisa_result <= std_logic_vector(shift_left(unsigned(mantisa_result), 1));
                        exp_result <= std_logic_vector(unsigned(exp_result) - 1);
                    end if;
                    
                    exp_result <= std_logic_vector(unsigned(exp_result) + 127);
                    result(31) <= semn_result;
                    result(30 downto 23) <= exp_result;
                    result(22 downto 0) <= mantisa_result(22 downto 0);
                    
                    if mantisa_result = (others => '0') then
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
                    stare <= Initializare;
            end case;
        end if;
    end process;
end a4;
