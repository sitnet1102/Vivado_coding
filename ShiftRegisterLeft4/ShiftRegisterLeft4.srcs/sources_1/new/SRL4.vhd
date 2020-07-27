----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/22 05:06:49
-- Design Name: 
-- Module Name: SRL4 - Behavioral
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

entity SRL4 is
    Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           d_in : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR (3 downto 0));
end SRL4;

architecture Behavioral of SRL4 is
    
begin
    process(npr, nclr, clk)
    begin
        if(npr = '0') then
            q <= "1111";
        elsif (nclr = '0') then
            q <= "0000";
        elsif(clk'event and clk = '1') then
            q <= q(2 downto 0) & d_in;
        end if;
    end process;

end Behavioral;

















