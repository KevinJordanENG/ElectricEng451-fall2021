----------------------------------------------------------------------------------
-- Company: UND EE451
-- Engineer: Kevin Jordan
-- 
-- Create Date: 11/09/2021 09:58:40 AM
-- Design Name: LAB3
-- Module Name: One_Bit_Slice - Behavioral
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

entity One_Bit_Slice is
    Port (Inputs_Cin_B_A : in std_logic_vector (2 downto 0);
          S : in std_logic_vector (2 downto 0);
          F, Cout : out std_logic);
end One_Bit_Slice;

architecture Behavioral of One_Bit_Slice is
begin
    with S&Inputs_Cin_B_A select
        F <= '1' when "000001", -- Begin ADD
             '1' when "000010",
             '1' when "000100",
             '1' when "000111",
             --End ADD / Begin SUB
             '1' when "001000",
             '1' when "001011",
             '1' when "001101",
             '1' when "001110",
             --End SUB / Begin EQU
             '1' when "010011",
             '1' when "010111",
             '1' when "010000",
             '1' when "010100",
             --End EQU / Begin GT
             '1' when "011001",
             '1' when "011101",
             --End GT / Begin LT
             '1' when "100010",
             '1' when "100110",
             --End LT / Begin AND
             '1' when "101011",
             '1' when "101111",
             --End AND / Begin OR
             '1' when "110001",
             '1' when "110101",
             '1' when "110010",
             '1' when "110110",
             '1' when "110011",
             '1' when "110111",
             --End OR / Begin XOR
             '1' when "111001",
             '1' when "111101",
             '1' when "111010",
             '1' when "111110",
             '0' when others;
             
    with S&Inputs_Cin_B_A select
        Cout <= '0' when "000000", --Begin ADD
                '0' when "000001",
                '0' when "000010",
                '0' when "000100",
                '1' when "000011",
                '1' when "000101",
                '1' when "000110",
                '1' when "000111",
                --End ADD / Begin SUB
                '0' when "001000",
                '0' when "001010",
                '0' when "001011",
                '0' when "001110",
                '1' when "001001",
                '1' when "001100",
                '1' when "001101",
                '1' when "001111",
                --End SUB / Begin EQU/GT/LT/AND/OR/XOR
                '-' when others;

end Behavioral;