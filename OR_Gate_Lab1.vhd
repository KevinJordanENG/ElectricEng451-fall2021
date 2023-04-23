----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2021 01:28:53 PM
-- Design Name: 
-- Module Name: OR_Gate_Lab1 - Behavioral
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

entity OR_Gate_Lab1 is
    Port (
    A: in std_logic;
    B: in std_logic;
    C: out std_logic
    );
end OR_Gate_Lab1;

architecture Behavioral of OR_Gate_Lab1 is

begin
    C <= A or B;

end Behavioral;
