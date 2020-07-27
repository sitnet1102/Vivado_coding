----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/25 01:36:42
-- Design Name: 
-- Module Name: dff_1_fall_tb - Behavioral
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

entity dff_1_fall_tb is
--  Port ( );
end dff_1_fall_tb;

architecture Behavioral of dff_1_fall_tb is
    component dff_1_fall 
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           nclr : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    
    signal d, nclr : std_logic;
    signal clk : std_logic :='0';
    signal q : std_logic;
    
    begin
    UUT : dff_1_fall port map ( d => d, nclr => nclr, clk => clk, q => q);
    
    clk <= not clk after 100 ns;
    
    tb : process
    begin  
        nclr <= '0';
        d <= '0';
        wait for 200 ns;
        
        nclr <= '1';
        d <= '0';
        wait for 300 ns;
        
        nclr <= '1';
        d <= '1';
        wait for 200 ns;
        
        nclr <= '1';
        d <= '0';
        wait;
    end process;



end Behavioral;




















