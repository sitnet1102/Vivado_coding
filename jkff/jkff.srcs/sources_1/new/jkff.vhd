----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 02:17:28
-- Design Name: 
-- Module Name: jkff - Behavioral
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

entity jkff is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           npr : in STD_LOGIC;
           q : out STD_LOGIC);
end jkff;

architecture Behavioral of jkff is
    signal qq : std_logic;
begin
    process(npr, nclr, clk ,j, k)
    begin
        if(npr = '0') then
            qq <= '1';
        elsif(nclr = '0') then
            qq <= '0';
        elsif(clk'event and clk = '1') then
            if(j = '0' and k = '0') then
                qq <= qq;
            elsif(j = '0' and k = '1') then
                qq <= '0';
            elsif(j = '1' and k = '0') then
                qq <= '1';
            else
                qq <= not qq;
            end if;   
        end if;
    end process;
    q <= qq;
end Behavioral;






















