----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 03:29:09
-- Design Name: 
-- Module Name: tff - Behavioral
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

entity tff is
    Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           t : in STD_LOGIC;
           q : out STD_LOGIC);
end tff;

architecture Behavioral of tff is
    signal qq : std_logic;
begin
    process(npr, nclr, clk ,t)
    begin
        if(npr = '0') then
            qq <= '1';
        elsif(nclr = '0') then
            qq <= '0';
        elsif(clk'event and clk = '1') then
            if(t = '0') then
                qq <= qq;
            else
                qq <= not qq;
            end if;   
        end if;
    end process;
    q <= qq;

end Behavioral;



















