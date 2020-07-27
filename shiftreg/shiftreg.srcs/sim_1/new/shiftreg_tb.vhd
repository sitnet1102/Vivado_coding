----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 16:42:40
-- Design Name: 
-- Module Name: shiftreg_tb - Behavioral
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

entity shiftreg_tb is
--  Port ( );
end shiftreg_tb;

architecture Behavioral of shiftreg_tb is
    component shiftreg 
    Port ( d : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           qa : out STD_LOGIC;
           qb : out STD_LOGIC);
    end component;
    signal d, nclr, qa, qb : std_logic;
    signal clk : std_logic := '0';
begin
    UUT : shiftreg port map (d => d, nclr => nclr, clk => clk, qa => qa, qb => qb);
    
    clk <= not clk after 100 ns;
    
    tb : process
    begin
        nclr <= '0';
        d <= '0';
        wait for 200 ns;
        
        nclr <= '1';
        d <= '0';
        wait for 200 ns;
        
        nclr <= '1';
        d <= '1';
        wait for 200 ns;
        
        nclr <= '1';
        d <= '0';
        wait;
        
        
    end process;

end Behavioral;















