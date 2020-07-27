----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/11 01:54:18
-- Design Name: 
-- Module Name: buzzer_tb - Behavioral
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

entity buzzer_tb is
--  Port ( );
end buzzer_tb;

architecture Behavioral of buzzer_tb is
    component buzzer_top
        Port ( clk : in STD_LOGIC;
           sw_up : in STD_LOGIC;
           sw_down : in STD_LOGIC;
           sw_left : in STD_LOGIC;
           sw_right : in STD_LOGIC;
           sw_mid : in STD_LOGIC;
           buzz : out STD_LOGIC);
    end component;
    
    signal clk, sw_up, sw_left, sw_right, sw_mid : std_logic :='0';
    signal sw_down : std_logic := '0';
    signal buzz : std_logic;
    
begin
    UUT : buzzer_top port map (
        clk => clk,
        sw_up => sw_up,
        sw_down => sw_down,
        sw_left => sw_left,
        sw_right => sw_right,
        sw_mid => sw_mid,
        buzz => buzz);
    clk <= not clk after 5 ns;
    
    tb : process
    begin
        sw_down <= '1' after 10 ms,
                   '0' after 20 ms;
        sw_right <= '1' after 20 ms,
                   '0' after 30 ms;
        sw_left <= '1' after 30 ms,
                   '0' after 40 ms;
        sw_up <= '1' after 40 ms,
                   '0' after 50 ms;
        sw_mid <= '1' after 50 ms,
                   '0' after 60 ms;
        wait;
    end process;
        

end Behavioral;










