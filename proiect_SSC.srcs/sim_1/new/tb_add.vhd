library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_add is
end tb_add;

architecture behavior of tb_add is
    component add
        port (
            A       : in std_logic_vector(31 downto 0);
            B       : in std_logic_vector(31 downto 0);
            result  : out std_logic_vector(31 downto 0);
            overflow: out std_logic;
            zero    : out std_logic;
            clk     : in std_logic;
            start   : in std_logic;
            done    : out std_logic
        );
    end component;

    signal A_tb, B_tb      : std_logic_vector(31 downto 0) := (others => '0');
    signal result_tb       : std_logic_vector(31 downto 0);
    signal overflow_tb     : std_logic;
    signal zero_tb         : std_logic;
    signal clk_tb          : std_logic := '0';
    signal start_tb        : std_logic := '0';
    signal done_tb         : std_logic;

    constant clk_period : time := 10 ns;

begin
    -- Instanțierea unității de adunare
    uut: add
        port map (
            A        => A_tb,
            B        => B_tb,
            result   => result_tb,
            overflow => overflow_tb,
            zero     => zero_tb,
            clk      => clk_tb,
            start    => start_tb,
            done     => done_tb
        );

    -- Procesul de generare a semnalului de ceas
    clk_process : process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period / 2;
            clk_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Procesul de generare a stimulilor
    stim_proc: process
    begin
        wait for 20 ns;

        -- Test 1: 3.5 + 2.25
        A_tb <= x"40600000";  -- 3.5 în IEEE-754
        B_tb <= x"40200000";  -- 2.25 în IEEE-754
        start_tb <= '1';
        wait for clk_period;
        start_tb <= '0';
        wait until done_tb = '1';
        wait for 20 ns;

        -- Test 2: -2.0 + 1.0
        A_tb <= x"C0000000";  -- -2.0 în IEEE-754
        B_tb <= x"3F800000";  -- 1.0 în IEEE-754
        start_tb <= '1';
        wait for clk_period;
        start_tb <= '0';
        wait until done_tb = '1';
        wait for 20 ns;

        -- Test 3: 0.0 + 0.0
        A_tb <= x"00000000";
        B_tb <= x"00000000";
        start_tb <= '1';
        wait for clk_period;
        start_tb <= '0';
        wait until done_tb = '1';
        wait for 20 ns;

        wait;
    end process;

end behavior;
