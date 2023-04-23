library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem5 is
    Port (clk, Read_Bus: in std_logic);
end Problem5;

architecture read_states of Problem5 is
type states is (Idle, A, B, C);
signal state: states;
signal nextstate: states;
begin
    first: process (Read_Bus, state)
        begin
            case state is
                when Idle => if Read_Bus = '0' then
                                 nextstate <= Idle;
                             elsif Read_Bus = '1' then
                                 nextstate <= A;
                             end if;
                when A => nextstate <= B;
                when B => nextstate <= C;
                when C => if Read_Bus = '0' then
                              nextstate <= Idle;
                          elsif Read_Bus = '1' then
                              nextstate <= A;
                          end if;
                when others => nextstate <= Idle;
            end case;
    end process;
    second: process (clk)
        begin
            if (falling_edge(clk)) then
                state <= nextstate;
            end if;
    end process;
end read_states;