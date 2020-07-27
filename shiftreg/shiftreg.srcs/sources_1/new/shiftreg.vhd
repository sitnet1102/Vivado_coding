----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 16:39:32
-- Design Name: 
-- Module Name: shiftreg - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftreg is
    Port ( d : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           qa : out STD_LOGIC;
           qb : out STD_LOGIC);
end shiftreg;

architecture Behavioral of shiftreg is
    signal tqa, tqb : std_logic;
begin
    process(nclr, clk)
    begin
        if(nclr = '0') then
            tqa <= '0';
            tqb <= '0';
        elsif(clk'event and clk = '1') then
            tqa <= d;
            tqb <= tqa;
        end if;
     end process;
     qa <= tqa;
     qb <= tqb;

end Behavioral;













