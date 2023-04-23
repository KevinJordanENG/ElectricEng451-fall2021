library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem6 is
    Port (X, clk: in std_logic;
          Z: out std_logic);
end Problem6;

architecture seq_examiner of Problem6 is
signal sm: std_logic_vector (2 downto 0);
constant S0: std_logic_vector (2 downto 0) := "001";
constant S1: std_logic_vector (2 downto 0) := "010";
constant S2: std_logic_vector (2 downto 0) := "100";
begin
    process (clk)
        begin
            if (rising_edge(clk)) then
                case sm is
                    when S0 => if X = '1' then
                                   sm <= S1;
                                   Z <= '0';
                               else
                                   sm <= S0;
                                   Z <= '0';
                               end if;
                    when S1 => if X = '1' then
                                   sm <= S2;
                                   Z <= '0';
                               else
                                   sm <= S1;
                                   Z <= '0';
                               end if;
                    when S2 => if X = '1' then
                                   sm <= S0;
                                   Z <= '1';
                               else
                                   sm <= S2;
                                   Z <= '0';
                               end if;
                    when others => sm <= S0;
                                   Z <= '0';
                end case;
            end if;
    end process;
end seq_examiner;