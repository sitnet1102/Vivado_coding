----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 18:27:04
-- Design Name: 
-- Module Name: dec38 - Behavioral
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

entity dec38 is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           d : out STD_LOGIC_VECTOR (7 downto 0));
end dec38;

architecture Behavioral of dec38 is

begin
    process(a)
    begin
        if(a = "000") then
            d <= "00000001";
        elsif(a = "001") then
            d <= "00000010";
        elsif(a = "010") then
            d <= "00000100";            
        elsif(a = "011") then
            d <= "00001000";            
         elsif(a = "100") then
            d <= "00010000";           
        elsif(a = "101") then
            d <= "00100000";            
        elsif(a = "110") then
            d <= "01000000";
        elsif(a = "111") then
            d <= "10000000";            
        end if;
            
                        
    end process;

end Behavioral;

















