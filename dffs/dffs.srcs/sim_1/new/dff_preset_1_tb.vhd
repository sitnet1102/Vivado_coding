----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/25 01:46:00
-- Design Name: 
-- Module Name: dff_preset_1_tb - Behavioral
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

entity dff_preset_1_tb is
--  Port ( );
end dff_preset_1_tb;

architecture Behavioral of dff_preset_1_tb is
    component dff_preset_1
    Port ( d : in STD_LOGIC;
           npre : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    
    signal d, npre,q : std_logic;
    signal clk : std_logic := '0';
    
    
    
begin
    UUT : dff_preset_1 port map (d => d, npre => npre, q => q, clk => clk);
    
    clk <= not clk after 100 ns;
    
    tb : process
    begin  
        npre <= '0';
        d <= '0';
        wait for 200 ns;
        
        npre <= '1';
        d <= '0';
        wait for 200 ns;
        
        npre <= '1';
        d <= '1';
        wait for 200 ns;
        
        npre <= '1';
        d <= '0';
        wait;
    end process;
end Behavioral;










