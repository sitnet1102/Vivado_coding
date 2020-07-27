----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 17:33:53
-- Design Name: 
-- Module Name: m16cnt - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity m16cnt is
    Port ( clk : in STD_LOGIC;
           nclr : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end m16cnt;

architecture Behavioral of m16cnt is
    signal qq : std_logic_vector(3 downto 0);
begin
    process(nclr, clk)
    begin 
        if(nclr = '0') then
            qq <= "0000";
        elsif(clk'event and clk = '1') then
            qq <= qq + '1';
        end if;
    end process;
    q(3) <= qq(3);
    q(2) <= qq(2);
    q(1) <= qq(1);
    q(0) <= qq(0);

end Behavioral;


























