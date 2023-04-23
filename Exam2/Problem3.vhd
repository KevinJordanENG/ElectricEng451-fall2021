library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem3 is
    Port (Data: in std_logic_vector (3 downto 0);
          CodeSet: out std_logic_vector (7 downto 0));
end Problem3;

architecture cond_sig_assign of Problem3 is
begin
    CodeSet <= "00000000" when (Data = "0000") else
               "01010101" when (Data = "0001") else
               "00110011" when (Data = "0010") else
               "01100110" when (Data = "0011") else
               "00001111" when (Data = "0100") else
               "01011010" when (Data = "0101") else
               "00111100" when (Data = "0110") else
               "01101001" when (Data = "0111") else
               "11111111" when (Data = "1000") else
               "10101010" when (Data = "1001") else
               "11001100" when (Data = "1010") else
               "10011001" when (Data = "1011") else
               "11110000" when (Data = "1100") else
               "10100101" when (Data = "1101") else
               "11000011" when (Data = "1110") else
               "10010110" when (Data = "1111") else
               "--------";
end cond_sig_assign;