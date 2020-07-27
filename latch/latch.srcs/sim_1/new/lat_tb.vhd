----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 16:27:02
-- Design Name: 
-- Module Name: lat_tb - Behavioral
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

entity lat_tb is
--  Port ( );
end lat_tb;

architecture Behavioral of lat_tb is
    component lat
    Port ( d : in STD_LOGIC;
           ena : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    signal d, ena, q : std_logic;
    
begin
    UUT : lat port map(d => d, ena => ena, q => q);
    
    tb : process
    begin 
        ena <= '0';
        d <= '0';
        wait for 50 ns;
        
        ena <= '0';
        d <= '1';
        wait for 50 ns;
        
        ena <= '1';
        d <= '1';
        wait for 50 ns;
        
        ena <= '1';
        d <= '0';
        wait for 50 ns;
        
        ena <= '0';
        d <= '0';
        wait for 50 ns;
        
        ena <= '0';
        d <= '1';
        wait for 50 ns;
        
        ena <= '1';
        d <= '1';
        wait for 50 ns;
        
        ena <= '1';
        d <= '0';
        wait;
        
    end process;
        

end Behavioral;



















