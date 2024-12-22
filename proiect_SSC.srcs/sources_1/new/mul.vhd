library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mul is
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
end mul;

architecture a3 of mul is

    component mulBinary is
        Port ( A : in STD_LOGIC_VECTOR (23 downto 0);
           B : in STD_LOGIC_VECTOR (23 downto 0);
           result : out STD_LOGIC_VECTOR(47 downto 0);
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           done : out STD_LOGIC);
    end component;
    
    type state_type is (Initializare, Multiplicare, AdunareExponenti, CorectieDepasire, NormalizareRezultat, Terminare);
    signal stare : state_type := Initializare;
    signal exp_A, exp_B, exp_suma: std_logic_vector(8 downto 0);   -- un bit pentru a ne da seama de depasire  
    signal mantisa_A, mantisa_B: std_logic_vector(23 downto 0);   
    signal start_mul, final_mul, semn_A, semn_B: std_logic :='0';
	signal mantisa_produs, mantisa_normalizata : STD_LOGIC_VECTOR(47 downto 0);
         
    -- 1 bit semn, 8 biti exponent, 23 biti mantisa
begin
	inmultitorNormal: mulBinary port map (A => mantisa_A, B => mantisa_B, result => mantisa_produs, clk => clk, start => start_mul, done => final_mul); 

    process(clk)
    begin
        if rising_edge(clk) then
            case stare is
                when Initializare =>           --initializam semnele, exponentii si mantisele
                    if start = '1' then
                        stare <= Multiplicare;
						exp_A <= '0' & A(30 downto 23);
						exp_B <= '0' & B(30 downto 23);
						mantisa_A <= '1' & A(22 downto 0);
						mantisa_B <= '1' & B(22 downto 0);
						semn_A <= A(31);
						semn_B <= B(31);
						done <= '0';
                    end if;
                    
                when Multiplicare =>
                    if A = x"00000000" or B = x"00000000" then 
                        stare <= Terminare;
                        result <= x"00000000";
                        zero <= '1';
                    else
                        exp_suma <= std_logic_vector(unsigned(exp_A) + unsigned(exp_B));
                        stare <= AdunareExponenti;
                    end if;
                    
                when AdunareExponenti =>
                    if to_integer(unsigned(exp_suma)) < 127 then       --underflow
                        stare <= Terminare;
                        result <= x"00000000";
                        overflow <= '1';
                    elsif to_integer(unsigned(exp_suma)) > 382 then    --overflow
						stare <= Terminare;
						result <= x"FFFFFFFF";
						overflow <= '1';
                    else
                        exp_suma <= std_logic_vector(unsigned(exp_suma) - 127);
                        stare <= CorectieDepasire;
                        start_mul <= '1';
                    end if;
                    
                when CorectieDepasire =>
                    start_mul <= '1';
                    if final_mul = '1' then
                        stare <= NormalizareRezultat;
                        mantisa_normalizata <= mantisa_produs;
                        start_mul <= '0';
                    end if;
                    
                when NormalizareRezultat =>
                    if mantisa_normalizata(47) = '1' then
                        result(22 downto 0) <= mantisa_normalizata(46 downto 24) + mantisa_normalizata(23);
                        result(30 downto 23) <= std_logic_vector(unsigned(exp_suma(7 downto 0)) + 1);
                        result(31) <= semn_A xor semn_B;
                     else
                        result(22 downto 0) <= mantisa_normalizata(45 downto 23) + mantisa_normalizata(22);
						result(30 downto 23) <= exp_suma(7 downto 0);                
						result(31) <= semn_A xor semn_B;
                    end if;
                    stare <= Terminare;
                    done <= '1';
                    
                when Terminare =>
                    if start = '0' then
                        stare <= Initializare;
                    end if;
                    
                when others =>
            end case;
        end if;
    end process;
end a3;