----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 01:37:28
-- Design Name: 
-- Module Name: dff_tb - Behavioral
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

entity dff_tb is
--  Port ( );
end dff_tb;

architecture Behavioral of dff_tb is
    component dff
    Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    
    signal q, npr, nclr, d : std_logic;
    signal clk : std_logic := '0';
    
begin
    UUT : dff port map (npr => npr, nclr => nclr, q => q, d => d, clk => clk);
    
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        npr <= '0';
        nclr <= '1';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '0';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        d <= '1';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        d <= '0';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        d <= '1';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        d <= '0';
        wait for 40 ns;
    end process;
        

end Behavioral;












