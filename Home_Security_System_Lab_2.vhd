----------------------------------------------------------------------------------
-- Company: UND EE 451
-- Engineer: Kevin Jordan
-- 
-- Create Date: 10/26/2021 03:57:18 PM
-- Design Name: Home Security System
-- Module Name: Home_Security_System_Lab_2 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Home_Security_System_Lab_2 is
    Port (
        D: in std_logic_vector (1 downto 0);
        W: in std_logic_vector (2 downto 0);
        Y: out std_logic
    );
end Home_Security_System_Lab_2;

architecture Behavioral of Home_Security_System_Lab_2 is

begin
    with D&W select
        Y <= '0' when "00000",
             '1' when others;
             
end Behavioral;
