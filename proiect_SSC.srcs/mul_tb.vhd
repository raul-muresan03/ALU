library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity mul_tb is
    -- Nu are porturi externe, fiind un testbench
end mul_tb;

architecture Behavioral of mul_tb is
    -- Declarația semnalelor pentru testare
    signal A, B: std_logic_vector(15 downto 0);  -- Intrări în format virgulă mobilă
    signal result: std_logic_vector(31 downto 0);  -- Rezultatul în format virgulă mobilă
    signal overflow, zero: std_logic;  -- Indicatori pentru overflow și zero

    -- Instanțierea modulului de înmulțire
    component mul is
        port (
            A: in std_logic_vector(15 downto 0);
            B: in std_logic_vector(15 downto 0);
            result: out std_logic_vector(31 downto 0);
            overflow: out std_logic;
            zero: out std_logic
        );
    end component;

begin
    -- Conectarea semnalelor la modulul testat
    uut: mul
        port map (
            A => A,
            B => B,
            result => result,
            overflow => overflow,
            zero => zero
        );

    -- Proces de generare a stimulilor
    stim_proc: process
    begin
        -- Test 1: Înmulțirea a două numere pozitive
        -- A = +2.5, B = +1.5
        A <= "0000010100000000";  -- +2.5 (S=0, E=3, M=0.0100000000)
        B <= "0000001100000000";  -- +1.5 (S=0, E=2, M=0.1000000000)
        wait for 10 ns;

        -- Test 2: Înmulțirea a două numere negative
        -- A = -2.0, B = -1.5
        A <= "1000010000000000";  -- -2.0 (S=1, E=3, M=0.0000000000)
        B <= "1000001100000000";  -- -1.5 (S=1, E=2, M=0.1000000000)
        wait for 10 ns;

        -- Test 3: Înmulțirea unui număr pozitiv cu zero
        -- A = +1.0, B = 0.0
        A <= "0000001100000000";  -- +1.0 (S=0, E=2, M=0.0000000000)
        B <= "0000000000000000";  -- 0.0 (S=0, E=0, M=0.0000000000)
        wait for 10 ns;

        -- Test 4: Înmulțirea unui număr negativ cu zero
        -- A = -1.0, B = 0.0
        A <= "1000001100000000";  -- -1.0 (S=1, E=2, M=0.0000000000)
        B <= "0000000000000000";  -- 0.0 (S=0, E=0, M=0.0000000000)
        wait for 10 ns;

        -- Test 5: Overflow (exponenți mari)
        -- A = +30.0, B = +30.0
        A <= "0000111100000000";  -- +30.0 (S=0, E=6, M=0.0000000000)
        B <= "0000111100000000";  -- +30.0 (S=0, E=6, M=0.0000000000)
        wait for 10 ns;

        -- Test 6: Mantise mici
        -- A = +1.125, B = +1.0625
        A <= "0000001100010000";  -- +1.125 (S=0, E=2, M=0.0010000000)
        B <= "0000001100001000";  -- +1.0625 (S=0, E=2, M=0.0001000000)
        wait for 10 ns;

        -- Finalizare testbench
        wait;
    end process;

end Behavioral;
