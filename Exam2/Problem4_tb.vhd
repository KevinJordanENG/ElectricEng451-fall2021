library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Problem4_tb is
end Problem4_tb;

architecture Behavioral of Problem4_tb is

component Problem4
    Port (clk: in std_logic;
          C: in std_logic_vector (2 downto 0);
          D: in unsigned (7 downto 0);
          Q: inout unsigned (7 downto 0));
end component;

signal clk: std_logic;
signal C: std_logic_vector (2 downto 0);
signal D: unsigned (7 downto 0);
signal Q: unsigned (7 downto 0);
constant clock_period: time := 10 ns;
signal stop_the_clock: boolean;

begin
    uut: Problem4 port map (clk => clk,
                            C => C,
                            D => D,
                            Q => Q);
    stimulus: process
        begin
            D <= "00111001";
            C <= "000";
            --
            wait for 20 ns;
            C <= "001";
            wait for 20 ns;
            --
            wait for 20 ns;
            C <= "110";
            wait for 20 ns;
            --
            wait for 20 ns;
            C <= "011";
            wait for 20 ns;
            --
            wait for 20 ns;
            C <= "100";
            wait for 20 ns;
            --
            wait for 20 ns;
            C <= "101";
            wait for 20 ns;
            --
            wait for 20 ns;
            C <= "010";
            wait for 20 ns;
            --
            wait for 20 ns;
            C <= "111";
            wait for 20 ns;
            stop_the_clock <= true;
            wait;
    end process;
    clocking: process
        begin
            while not stop_the_clock loop
                clk <= '0', '1' after clock_period/2;
                wait for clock_period;
            end loop;
            wait;
    end process;    
end Behavioral;
