----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/13 16:11:32
-- Design Name: 
-- Module Name: MM3 - Behavioral
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

entity MM3 is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           WindowAct : in STD_LOGIC;
           RiseShot : out STD_LOGIC;
           FallShot : out STD_LOGIC);
end MM3;

architecture Behavioral of MM3 is
    type state_type is (s0, s1);
    signal state, NextState : state_type;
begin
    process(state, WindowAct)
    begin
        case state is
            when s0 =>
                if WindowAct = '1' then
                    NextState <= s1;
                else
                    NextState <= s0;
                end if;
            when others =>
                if WindowAct = '0' then
                    NextState <= s0;
                else
                    NextState <= s1;
                end if;
        end case;
    end process;

    process(reset, clk)
    begin
        if reset = '0' then
            state <= s0;
        elsif(clk'event and clk = '1') then
            state <= NextState;
        end if;
    end process;
    
    process(state, WindowAct)
    begin
        if(state = s0 and WindowAct = '1') then
            RiseShot <= '1';
        else
            RiseShot <= '0';
        end if;
        if(state = s1 and WindowAct = '0') then
            FallShot <= '1';
        else
            FallShot <= '0';
        end if;
        
    end process;


end Behavioral;
















