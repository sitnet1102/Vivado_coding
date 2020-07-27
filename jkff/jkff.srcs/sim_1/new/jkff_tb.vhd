----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 03:08:55
-- Design Name: 
-- Module Name: jkff_tb - Behavioral
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

entity jkff_tb is
--  Port ( );
end jkff_tb;

architecture Behavioral of jkff_tb is
    component jkff
        Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           npr : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    
    signal j, k, nclr, npr, q : std_logic;
    signal clk : std_logic := '0';
begin
    UUT : jkff port map (j => j, k => k, nclr => nclr, clk => clk, npr => npr, q => q);
    
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
        j <= '0';
        k <= '0';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        j <= '0';
        k <= '1';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        j <= '1';
        k <= '0';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        j <= '1';
        k <= '1';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        j <= '0';
        k <= '0';
        wait;             
    end process;

end Behavioral;













