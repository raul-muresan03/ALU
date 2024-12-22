library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mulBinary is
    Port ( A : in STD_LOGIC_VECTOR (23 downto 0);
           B : in STD_LOGIC_VECTOR (23 downto 0);
           result : out STD_LOGIC_VECTOR(47 downto 0);
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           done : out STD_LOGIC);
end mulBinary;

architecture Behavioral of mulBinary is
    type state_type is (Initializare, Multiplicare, Verificare, Terminare);
    signal stare : state_type := Initializare;
    signal A_extins, B_extins, rezultat : std_logic_vector(47 downto 0) := (others => '0');
    signal contor : integer range 0 to 24 := 24;
begin

process(clk)
begin
    if rising_edge(clk) then
        case stare is 
            when Initializare =>
                if start='1' then
                    stare <= Multiplicare;
                    contor <= 24;
                    rezultat <= (others => '0');
                    A_extins(47 downto 23) <= (others => '0');
                    B_extins(47 downto 23) <= (others => '0');
                    A_extins(23 downto 0) <= A;
                    B_extins(23 downto 0) <= B;
                    done <= '0';
                end if;
				
            when Multiplicare =>
                stare <= Verificare;
                B_extins <= '0' & B_extins(47 downto 1);
                A_extins <= A_extins(46 downto 0) & '0';  
                contor <= contor - 1;
                done <= '0';
                if B_extins(0) = '1' then
                    rezultat <= rezultat + A_extins;
                end if;
				
            when Verificare =>
                done <= '0';
                if contor = 0 then
                    stare <= Terminare;
                else 
                    stare <= Multiplicare;
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