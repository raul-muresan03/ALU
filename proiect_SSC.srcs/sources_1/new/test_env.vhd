library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity test_env is
    Port (
        btn : in std_logic_vector(3 downto 0);
        led : out std_logic_vector(1 downto 0);
        clk : in std_logic
    );
end test_env;

architecture Behavioral of test_env is
    signal overflow, zero : std_logic;
    signal operation : std_logic_vector(1 downto 0);
    signal result_add, result_sub, result_mul, result_div : std_logic_vector(31 downto 0);
    signal overflow_add, overflow_sub, overflow_mul, overflow_div : std_logic;
    signal zero_add, zero_sub, zero_mul, zero_div : std_logic;
    signal A, B: std_logic_vector(15 downto 0);
    signal result: std_logic_vector(31 downto 0);
begin
    process(btn)
    begin
        case btn is
            when "0001" => operation <= "00"; -- +
            when "0010" => operation <= "01"; -- -
            when "0100" => operation <= "10"; -- *
            when "1000" => operation <= "11"; -- /
            when others => operation <= "00"; -- default: +
        end case;
    end process;


    u_add: entity work.add port map (A, B, result_add, overflow_add, zero_add);
    u_sub: entity work.sub port map (A, B, result_sub, overflow_sub, zero_sub);
    u_mul: entity work.mul port map (A, B, result_mul, overflow_mul, zero_mul);
    --u_div: entity work.div port map (A, B, result_div, overflow_div, zero_div);

    process(operation, result_add, result_sub, result_mul, result_div, 
            overflow_add, overflow_sub, overflow_mul, overflow_div,
            zero_add, zero_sub, zero_mul, zero_div)
    begin
        case operation is
            when "00" => 
                result <= result_add;
                overflow <= overflow_add;
                zero <= zero_add;
            when "01" => 
                result <= result_sub;
                overflow <= overflow_sub;
                zero <= zero_sub;
            when "10" => 
                result <= result_mul;
                overflow <= overflow_mul;
                zero <= zero_mul;
            when "11" => 
                result <= result_div;
                overflow <= overflow_div;
                zero <= zero_div;
            when others =>
                result <= (others => '0');
                overflow <= '0';
                zero <= '0';
        end case;
    end process;
    
    led(0) <= zero; -- zero
    led(1) <= overflow; -- overflow

end Behavioral;
