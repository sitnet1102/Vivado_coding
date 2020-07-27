----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/05 03:42:08
-- Design Name: 
-- Module Name: LCD_TOP - Behavioral
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

entity LCD_TOP is
    Port ( CLK : in STD_LOGIC;
           RSTB : in STD_LOGIC;
           RS : out STD_LOGIC;
           E : out STD_LOGIC;
           RW : out STD_LOGIC;
           DB : out STD_LOGIC_VECTOR (7 downto 0));
end LCD_TOP;

architecture Behavioral of LCD_TOP is
    
    -- Clock Divider
    component LCD_C
    port(
        CLK :in STD_LOGIC;
        RSTB : in STD_LOGIC;
        TERM_CNT : out STD_LOGIC);
    end component;
    
    -- Control Block
    component LCD_BLK1
    port (
        CLK50 : in STD_LOGIC;
        RS : out STD_LOGIC;
        RW : out STD_LOGIC;
        E : out STD_LOGIC;
        DB : out STD_LOGIC_VECTOR (7 downto 0) );
    end component;
    
    signal XH100 : STD_LOGIC;
    
begin
    U0 : LCD_C port map
        (CLK => CLK, RSTB => RSTB, TERM_CNT => XH100 );
    
    U1 : LCD_BLK1 port map
        (CLK50 => XH100, RS => RS, RW => RW, E => E, DB => DB );
        

end Behavioral;


















