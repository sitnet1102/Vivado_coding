----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 17:49:19
-- Design Name: 
-- Module Name: fa - Behavioral
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

entity fa is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end fa;

architecture Behavioral of fa is

begin
    process(a, b, cin)
    begin
        if (a  = '0' and b = '0' and cin = '0') then
            s <= '0'; cout <= '0';
        elsif (a  = '0' and b = '0' and cin = '1') then
            s <= '1'; cout <= '0';
        elsif (a  = '0' and b = '1' and cin = '0') then
            s <= '1'; cout <= '0';
        elsif (a  = '0' and b = '1' and cin = '1') then
            s <= '0'; cout <= '1';            
        elsif (a  = '1' and b = '0' and cin = '0') then
            s <= '1'; cout <= '0';            
        elsif (a  = '1' and b = '0' and cin = '1') then
            s <= '0'; cout <= '1';            
         elsif (a  = '1' and b = '1' and cin = '0') then
            s <= '0'; cout <= '1';           
         elsif (a  = '1' and b = '1' and cin = '1') then
            s <= '1'; cout <= '1';
         end if;
    end process;        
            
                        
end Behavioral;


















