----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/25 01:44:05
-- Design Name: 
-- Module Name: dff_preset_1 - Behavioral
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

entity dff_preset_1 is
    Port ( d : in STD_LOGIC;
           npre : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end dff_preset_1;

architecture Behavioral of dff_preset_1 is

begin
    process(npre, clk)
    begin
        if(npre='0') then
            q <= '1';
        elsif(clk'event and clk = '1') then 
            q <= d;
        end if;
    end process;


end Behavioral;
