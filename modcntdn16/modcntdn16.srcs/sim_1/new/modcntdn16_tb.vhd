----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 00:41:34
-- Design Name: 
-- Module Name: modcntdn16_tb - Behavioral
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

entity modcntdn16_tb is
--  Port ( );
end modcntdn16_tb;

architecture Behavioral of modcntdn16_tb is
    component modcntdn16
    Port ( clk : in STD_LOGIC;
           nclr : in STD_LOGIC;
           q3 : out STD_LOGIC;
           q2 : out STD_LOGIC;
           q1 : out STD_LOGIC;
           q0 : out STD_LOGIC);
    end component;
    
    signal q : std_logic_vector(3 downto 0);
    signal nclr : std_logic;
    signal clk : std_logic := '0';
begin
    UUT : modcntdn16 port map ( nclr => nclr, clk => clk, q3 => q(3), q2 => q(2), q1 => q(1), q0 => q(0) );
    
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        nclr <= '0';
        wait for 40 ns;
        
        nclr <= '1';
        wait;
        
        
    end process;

end Behavioral;














