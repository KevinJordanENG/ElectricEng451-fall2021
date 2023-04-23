----------------------------------------------------------------------------------
-- Company: EE 451 UND
-- Engineer: Kevin Jordan
-- 
-- Create Date: 11/20/2021 11:02:22 AM
-- Design Name: 
-- Module Name: Register4 - Behavioral
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
use work.all;
use IEEE.NUMERIC_STD.ALL;

entity Register4 is
    Port (clk: in std_logic;
          sel: in std_logic_vector (2 downto 0);
          D: in unsigned (3 downto 0);
          Q: inout unsigned (3 downto 0));
end Register4;

architecture Behavioral of Register4 is
begin
    process (clk, sel)
        begin
            if sel = "000" then Q <= "0000";
            elsif sel = "001" then Q <= "1111";
            elsif (falling_edge(clk)) then
                if sel = "010" then Q <= D;
                elsif sel = "011" then Q <= Q(0)&Q(3 downto 1);
                elsif sel = "100" then Q <= Q(2 downto 0)&Q(3);
                elsif sel = "101" then Q <= Q + 1;
                elsif sel = "110" then Q <= Q - 1;
                else Q <= Q;
                end if;
            end if;
    end process;
end Behavioral;
