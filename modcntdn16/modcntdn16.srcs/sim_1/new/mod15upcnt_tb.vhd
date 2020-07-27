----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 01:17:54
-- Design Name: 
-- Module Name: mod15upcnt_tb - Behavioral
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

entity mod15upcnt_tb is
--  Port ( );
end mod15upcnt_tb;

architecture Behavioral of mod15upcnt_tb is
    component mod15upcnt
    Port ( clk : in STD_LOGIC;
           nclr : in STD_LOGIC;
           q3 : out STD_LOGIC;
           q2 : out STD_LOGIC;
           q1 : out STD_LOGIC;
           q0 : out STD_LOGIC);
    end component;
    signal nclr, q3, q2, q1, q0 : std_logic;
    signal clk : std_logic := '0';
begin            
    UUT : mod15upcnt port map (
        clk => clk, nclr => nclr,
        q3 => q3, q2 => q2, q1 => q1, q0 => q0);
    
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        nclr <= '0';
        wait for 20 ns;
        
        nclr <= '1';
        wait;
        
    end process; 


end Behavioral;
















