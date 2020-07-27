----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 03:31:41
-- Design Name: 
-- Module Name: tff_tb - Behavioral
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

entity tff_tb is
--  Port ( );
end tff_tb;

architecture Behavioral of tff_tb is
    component tff
        Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           t : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    signal t, nclr, npr, q : std_logic;
    signal clk : std_logic := '0';   
begin
    UUT : tff port map (t => t, nclr => nclr, clk => clk, npr => npr, q => q);
    
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
        t <= '0';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        t <= '1';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        t <= '0';
        wait for 40 ns;
        
        npr <= '1';
        nclr <= '1';
        t <= '1';
        wait;
    end process;
        
               
end Behavioral;












