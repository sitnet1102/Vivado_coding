----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/22 02:45:55
-- Design Name: 
-- Module Name: MooreMachine - Behavioral
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

entity MooreMachine is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           WindowAct : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (2 downto 0));
end MooreMachine;

architecture Behavioral of MooreMachine is
    type state_type is (s0, s1, s2);
    signal state : state_type;
begin
    process(clk, reset)
    begin
        if reset = '0' then
            state <= s0;
        elsif clk'event and clk = '1' then
            case state is
                when s0 =>
                    if WindowAct = '1' then 
                        state <= s1;
                    else
                        state <= s0;
                    end if;
                when s1 =>
                    if WindowAct = '1' then
                        state <= s2;
                    else
                        state <= s1;
                    end if;
                when others =>
                    if WindowAct = '1' then
                        state <= s0;
                    else
                        state <= s2;
                    end if;
            end case;
        end if;
    end process;
    
    process(state)
    begin
        case state is
            when s0 =>
                y <= "000";
            when s1 =>
                y <= "010";
            when s2 =>
                y <= "101";
         end case;
    end process;
    

end Behavioral;














