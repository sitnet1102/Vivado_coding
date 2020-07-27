----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/05 03:49:01
-- Design Name: 
-- Module Name: LCD_C - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD_C is
    Port ( clk : in STD_LOGIC;
           RSTB : in STD_LOGIC;
           TERM_CNT : out STD_LOGIC);
end LCD_C;

architecture Behavioral of LCD_C is
    -- signal cnt : integer range 0 to 120000;
    signal clk_50k : STD_LOGIC;
    signal cnt_50k : STD_LOGIC_VECTOR(15 downto 0);
    
begin
    
    process(RSTB, CLK, cnt_50k)
    begin
        if RSTB = '0' then
            cnt_50k <= (others => '0');
            clk_50k <= '0';
        elsif rising_edge (clk) then
            if(cnt_50k = x"3E8") then -- implemention code      x3e8 == d1000
                cnt_50k <= (others => '0');
                clk_50k <= not clk_50k;
            else
                cnt_50k <= cnt_50k + 1;
                clk_50k <= clk_50k;
            end if;
        end if;
    end process;
    
    term_cnt <= clk_50k;
         

end Behavioral;
















