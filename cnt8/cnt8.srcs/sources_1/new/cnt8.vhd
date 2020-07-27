----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/14 01:53:39
-- Design Name: 
-- Module Name: cnt8 - Behavioral
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

entity cnt8 is
    Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end cnt8;

architecture Behavioral of cnt8 is
    signal s : std_logic_vector (7 downto 0);
begin
    process(npr, nclr, clk)
    begin
        if(npr = '0') then
            s <= "11111111";
        elsif(nclr = '0') then
            s <= "00000000";
        elsif(clk'event and clk = '1') then
            s <= s + 1;
        end if;
    end process;
    
    q <= s;

end Behavioral;




















