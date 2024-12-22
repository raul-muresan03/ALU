library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity subBinary is
    Port (
        A: in std_logic_vector(23 downto 0);
        B: in std_logic_vector(23 downto 0);
        result: out std_logic_vector(24 downto 0); -- 25 pt borrow
        clk: in std_logic;
        start: in std_logic;
        done: out std_logic
    );
end subBinary;

architecture Behavioral of subBinary is
    type state_type is (Initializare, Scadere, Terminare);
    signal stare: state_type := Initializare;

    signal A_extins, B_extins: std_logic_vector(24 downto 0) := (others => '0');
    signal diferenta: std_logic_vector(24 downto 0) := (others => '0');
    signal contor: integer range 0 to 24 := 0; -- contor pentru fiecare bit
    signal borrow: std_logic := '0';

begin
    process(clk)
    begin
        if rising_edge(clk) then
            case stare is
            
                when Initializare =>
                    if start = '1' then
                        stare <= Scadere;
                        contor <= 0;
                        diferenta <= (others => '0');
                        A_extins(23 downto 0) <= A;
                        B_extins(23 downto 0) <= B;
                        A_extins(24) <= '0';
                        B_extins(24) <= '0';
                        borrow <= '0';
                        done <= '0';
                    end if;

                when Scadere =>
                    -- Calculăm diferența pentru bitul curent
                    diferenta(contor) <= A_extins(contor) xor B_extins(contor) xor borrow;
                    borrow <= (not A_extins(contor) and B_extins(contor)) or (not A_extins(contor) and borrow) or (B_extins(contor) and borrow);

                    contor <= contor + 1;

                    if contor = 24 then
                        diferenta(24) <= borrow;        -- adaugam bitul de borrow
                        stare <= Terminare;
                    end if;

                when Terminare =>
                    if start = '0' then
                        stare <= Initializare;
                        done <= '0';
                    else
                        result <= diferenta;
                        done <= '1';
                    end if;

                when others =>
                    stare <= Initializare;
            end case;
        end if;
    end process;
end Behavioral;
