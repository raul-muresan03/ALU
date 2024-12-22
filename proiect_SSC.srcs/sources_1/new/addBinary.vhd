library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity addBinary is
    Port ( A : in STD_LOGIC_VECTOR (23 downto 0);
           B : in STD_LOGIC_VECTOR (23 downto 0);
           result : out STD_LOGIC_VECTOR(24 downto 0);      -- 25 biti pentru carry
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           done : out STD_LOGIC);
end addBinary;

architecture Behavioral of addBinary is
    type state_type is (Initializare, Adunare, Terminare);
    signal stare : state_type := Initializare;
    signal A_extins, B_extins : std_logic_vector(24 downto 0) := (others => '0');     -- extindere la 25 biti
    signal suma : std_logic_vector(24 downto 0) := (others => '0');
    signal carry : std_logic := '0';
    signal contor : integer range 0 to 24 := 0; -- contor pt fiecare bit
begin
    process(clk)
    begin
        if rising_edge(clk) then
            case stare is 
            
                when Initializare =>
                    if start = '1' then
                        stare <= Adunare;
                        contor <= 0;
                        suma <= (others => '0');
                        A_extins(23 downto 0) <= A;
                        B_extins(23 downto 0) <= B;
                        A_extins(24) <= '0'; -- Extindem cu un bit de semn
                        B_extins(24) <= '0'; -- Extindem cu un bit de semn
                        carry <= '0';
                        done <= '0';
                    end if;
                    
                when Adunare =>
                    suma(contor) <= A_extins(contor) xor B_extins(contor) xor carry; -- Adunare cu XOR
                    carry <= (A_extins(contor) and B_extins(contor)) or (A_extins(contor) and carry) or (B_extins(contor) and carry); -- Calcul carry
                    contor <= contor + 1;
                    if contor = 24 then
                        suma(24) <= carry; -- adaugam carry final
                        stare <= Terminare;
                    end if;
                    
                when Terminare =>
                    if start = '0' then
                        stare <= Initializare;
                        done <= '0';
                    else 
                        result <= suma;
                        done <= '1';
                    end if;
                    
                when others =>
                    stare <= Initializare;
            end case;
        end if;
    end process;
end Behavioral;
