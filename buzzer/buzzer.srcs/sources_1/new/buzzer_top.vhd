----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/11 01:36:40
-- Design Name: 
-- Module Name: buzzer_top - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity buzzer_top is
    Port ( clk : in STD_LOGIC;
           sw_up : in STD_LOGIC;
           sw_down : in STD_LOGIC;
           sw_left : in STD_LOGIC;
           sw_right : in STD_LOGIC;
           sw_mid : in STD_LOGIC;
           buzz : out STD_LOGIC);
end buzzer_top;

architecture Behavioral of buzzer_top is
    component DO
        Port( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
            clk_do : out STD_LOGIC);
    end component;
    
    component RE
        Port( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
            clk_re : out STD_LOGIC);
    end component;
    
    component MI
        Port( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
            clk_mi : out STD_LOGIC);
    end component;
    
    component SOL
        Port( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
            clk_sol : out STD_LOGIC);
    end component;
    
    component LA
        Port( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
            clk_la : out STD_LOGIC);
    end component;
    
    signal buzz_tmp : std_logic_vector (4 downto 0);
    
begin

    U0 : DO port map(clk => clk, sw => sw_down, clk_do => buzz_tmp(0));
    U1 : RE port map(clk => clk, sw => sw_left, clk_re => buzz_tmp(1));
    U2 : MI port map(clk => clk, sw => sw_mid, clk_mi => buzz_tmp(2));
    U3 : SOL port map(clk => clk, sw => sw_right, clk_sol => buzz_tmp(3));
    U4 : LA port map(clk => clk, sw => sw_up, clk_la => buzz_tmp(4));
    
    buzz <= buzz_tmp(0) or buzz_tmp(1) or buzz_tmp(2) or buzz_tmp(3) or buzz_tmp(4);
    
end Behavioral;
























