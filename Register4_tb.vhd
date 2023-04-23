----------------------------------------------------------------------------------
-- Company: EE 451 UND
-- Engineer: Kevin Jordan
-- 
-- Create Date: 11/20/2021 11:38:11 AM
-- Design Name: 
-- Module Name: Register4_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Register4_tb is
end Register4_tb;

architecture Behavioral of Register4_tb is

component Register4
    Port (clk: in std_logic;
          sel: in std_logic_vector (2 downto 0);
          D: in unsigned (3 downto 0);
          Q: inout unsigned (3 downto 0));
end component;

signal clk: std_logic;
signal sel: std_logic_vector (2 downto 0);
signal D: unsigned (3 downto 0);
signal Q: unsigned (3 downto 0);
constant clock_period: time := 10 ns;
signal stop_the_clock: boolean;

begin
    uut: Register4 port map (clk => clk,
                             sel => sel,
                             D => D,
                             Q => Q);
    stimulus: process
        begin
            D <= "1110";
            sel <= "000";
            --case 1
            wait for 20 ns;
            sel <= "001";
            wait for 20 ns;
            --case 2
            wait for 20 ns;
            sel <= "010";
            wait for 20 ns;
            --case 3
            wait for 20 ns;
            sel <= "011";
            wait for 20 ns;
            --case 4
            wait for 20 ns;
            sel <= "100";
            wait for 20 ns;
            --case 5
            wait for 20 ns;
            sel <= "101";
            wait for 20 ns;
            --case 6
            wait for 20 ns;
            sel <= "110";
            wait for 20 ns;
            --case 7
            wait for 20 ns;
            sel <= "111";
            wait for 20 ns;
            stop_the_clock <= true;
            wait;
    end process;
    clocking: process
        begin
            while not stop_the_clock loop
                clk <= '0', '1' after clock_period / 2;
                wait for clock_period;
            end loop;
            wait;
    end process;

end Behavioral;
