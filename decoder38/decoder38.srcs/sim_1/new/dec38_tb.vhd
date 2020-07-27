----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 18:37:03
-- Design Name: 
-- Module Name: dec38_tb - Behavioral
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

entity dec38_tb is
--  Port ( );
end dec38_tb;

architecture Behavioral of dec38_tb is
    component dec38
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           d : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal a : std_logic_vector (2 downto 0);
    signal d : std_logic_vector (7 downto 0);
begin
    UUT : dec38 port map ( a => a, d => d);
    
    tb : process
    begin
        a <= "000";
        wait for 40 ns;
        
        a <= "001";
        wait for 40 ns;
        
        a <= "010";
        wait for 40 ns;
        
        a <= "011";
        wait for 40 ns;
        
        a <= "100";
        wait for 40 ns;
        
        a <= "101";
        wait for 40 ns;
        
        a <= "110";
        wait for 40 ns;
        
        a <= "111";
        wait;
        
        
    end process;

end Behavioral;















