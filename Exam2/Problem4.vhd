library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Problem4 is
    Port (clk: in std_logic;
          C: in std_logic_vector (2 downto 0);
          D: in unsigned (7 downto 0);
          Q: inout unsigned (7 downto 0));
end Problem4;

architecture reg of Problem4 is
begin
    process (clk, C)
        begin
            if C = "000" then Q <= "00000000";
            elsif C = "001" then Q <= "11111111";
            elsif (falling_edge(clk)) then
                if C = "010" then Q <= Q(5 downto 0) & "00";
                elsif C = "011" then Q <= "00" & Q(7 downto 2);
                elsif C = "100" then Q <= Q + 1;
                elsif C = "101" then Q <= Q - 1;
                elsif C = "110" then Q <= D;
                else Q <= Q;
                end if;
            end if;
    end process;
end reg;
