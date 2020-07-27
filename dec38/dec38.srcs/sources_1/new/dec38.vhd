----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 00:51:14
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
    Port ( d2 : in STD_LOGIC;
           d1 : in STD_LOGIC;
           d0 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC;
           y5 : out STD_LOGIC;
           y6 : out STD_LOGIC;
           y7 : out STD_LOGIC);
end dec38;

architecture Behavioral of dec38 is
    signal d : std_logic_vector(2 downto 0);
    signal t : std_logic_vector(0 to 7);
begin
    d <= d2 & d1 & d0;
    process(d)
    begin
        case d is
            when "000" => t <= "10000000";
            when "001" => t <= "01000000";
            when "010" => t <= "00100000";
            when "011" => t <= "00010000";
            when "100" => t <= "00001000";
            when "101" => t <= "00000100";
            when "110" => t <= "00000010";
            when others => t <= "00000001";
         end case;
    end process;
    y0 <= t(0);
    y1 <= t(1);
    y2 <= t(2);
    y3 <= t(3);
    y4 <= t(4);
    y5 <= t(5);
    y6 <= t(6);
    y7 <= t(7);
    

end Behavioral;






















