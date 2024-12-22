library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity divBinary is
    Port (
        A: in std_logic_vector(23 downto 0);
        B: in std_logic_vector(23 downto 0);
        result: out std_logic_vector(23 downto 0);
        clk: in std_logic;
        start: in std_logic;
        done: out std_logic
    );
end divBinary;

architecture Behavioral of divBinary is
    type state_type is (Initializare, Impartire, Terminare);
    signal stare: state_type := Initializare;

    signal A_extins, B_extins: std_logic_vector(47 downto 0) := (others => '0');
    signal rezultat: std_logic_vector(23 downto 0) := (others => '0');
    signal contor: integer range 0 to 23 := 23;
    signal partial_remainder: std_logic_vector(47 downto 0) := (others => '0');

begin
    process(clk)
    begin
        if rising_edge(clk) then
            case stare is
                when Initializare =>
                    if start = '1' then
                        stare <= Impartire;
                        contor <= 23;
                        rezultat <= (others => '0');
                        partial_remainder <= (others => '0');
                        A_extins(23 downto 0) <= A;
                        B_extins(23 downto 0) <= B;
                        B_extins(47 downto 24) <= (others => '0');
                        done <= '0';
                    end if;
                
                -- impartire cu refacerea restului
                when Impartire =>
                    partial_remainder <= partial_remainder(46 downto 0) & A_extins(23); -- shiftam restul
                    A_extins <= A_extins(22 downto 0) & '0';            -- shiftam A la stanga
                    
                    if unsigned(partial_remainder) >= unsigned(B_extins) then
                        partial_remainder <= std_logic_vector(unsigned(partial_remainder) - unsigned(B_extins));
                        rezultat(contor) <= '1';
                    else
                        rezultat(contor) <= '0';
                    end if;

                    contor <= contor - 1;

                    if contor = 0 then
                        stare <= Terminare;
                    end if;

                when Terminare =>
                    if start = '0' then
                        stare <= Initializare;
                        done <= '0';
                    else
                        result <= rezultat;
                        done <= '1';
                    end if;

                when others =>
                    stare <= Initializare;
            end case;
        end if;
    end process;

end Behavioral;
