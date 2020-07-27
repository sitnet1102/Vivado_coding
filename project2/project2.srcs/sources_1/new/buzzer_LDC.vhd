----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/07/05 14:51:10
-- Design Name: 
-- Module Name: buzzer_LDC - Behavioral
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

entity buzzer_LDC is
    Port ( clk : in STD_LOGIC;
           sw_up : in STD_LOGIC;
           sw_down : in STD_LOGIC;
           sw_left : in STD_LOGIC;
           sw_right : in STD_LOGIC;
           sw_mid : in STD_LOGIC;
           RSTB : in STD_LOGIC;
           RS : out STD_LOGIC;
           E : out STD_LOGIC;
           RW : out STD_LOGIC;
           DB : out STD_LOGIC_VECTOR (7 downto 0);
           buzz : out STD_LOGIC);
end buzzer_LDC;

architecture Behavioral of buzzer_LDC is
    -- Clock Divider
    component LCD_C
    port(
        clk :in STD_LOGIC;
        RSTB : in STD_LOGIC;
        TERM_CNT : out STD_LOGIC);
    end component;
    
    -- Control Block
    component LCD is
    Port ( CLK50 : in STD_LOGIC;
           mux : in STD_LOGIC_VECTOR (4 downto 0);
           RS : out STD_LOGIC;
           RW : out STD_LOGIC;
           E : out STD_LOGIC;
           DB : out STD_LOGIC_VECTOR (7 downto 0));
    end component;    
    
    -- buzzer
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
    
    signal XH100 : STD_LOGIC;
    signal buzz_tmp : std_logic_vector (4 downto 0);
    signal mux : std_logic_vector (4 downto 0);
begin
    U0 : DO port map(clk => clk, sw => sw_down, clk_do => buzz_tmp(0));
    U1 : RE port map(clk => clk, sw => sw_left, clk_re => buzz_tmp(1));
    U2 : MI port map(clk => clk, sw => sw_mid, clk_mi => buzz_tmp(2));
    U3 : SOL port map(clk => clk, sw => sw_right, clk_sol => buzz_tmp(3));
    U4 : LA port map(clk => clk, sw => sw_up, clk_la => buzz_tmp(4));
    
    U5 : LCD_C port map
        (clk => clk, RSTB => RSTB, TERM_CNT => XH100 );   
    
    U6 : LCD port map
        (CLK50 => XH100, mux => mux, RS => RS, RW => RW, E => E, DB => DB );       
    
    process(buzz_tmp, mux)
    begin
        if(buzz_tmp(0) = '1') then
            mux <= "00001";
        elsif(buzz_tmp(1) = '1') then
            mux <= "00010";
        elsif(buzz_tmp(2) = '1') then
            mux <= "00100";
        elsif(buzz_tmp(3) = '1') then
            mux <= "01000";
        elsif(buzz_tmp(4) = '1') then
            mux <= "10000";                      
        end if;
    end process;
    
    
    buzz <= buzz_tmp(0) or buzz_tmp(1) or buzz_tmp(2) or buzz_tmp(3) or buzz_tmp(4);

end Behavioral;





















