library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem2 is
    Port (C_B_A: in std_logic_vector (2 downto 0);
          Y: out std_logic);
end Problem2;

architecture selected_sig_assignment of Problem2 is
begin
    with C_B_A select
        Y <= '0' when "010",
             '0' when "110",
             '0' when "111",
             '1' when others;
end selected_sig_assignment;
