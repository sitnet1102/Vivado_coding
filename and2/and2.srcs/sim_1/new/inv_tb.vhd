----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/25 02:46:19
-- Design Name: 
-- Module Name: inv_tb - Behavioral
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

entity inv_tb is
--  Port ( );
end inv_tb;

architecture Behavioral of inv_tb is
    component inv
        Port ( in1 : in STD_LOGIC;
           out1 : out STD_LOGIC);
    end component;
    signal in1 : std_logic := '0';
    signal out1 : std_logic;
begin
    UUT : inv port map (in1 => in1, out1 => out1);
    
    in1 <= not in1 after 100 ns;
    
    tb : process
    begin
    end process;

end Behavioral;
























