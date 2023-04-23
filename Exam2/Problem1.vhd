library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem1 is
    Port (a, b, c, d: in std_logic;
          e: out std_logic);
end Problem1;

architecture funct of Problem1 is
begin
    e <= (a and not(b or c)) or (not(d) and not(b or c));
end funct;
