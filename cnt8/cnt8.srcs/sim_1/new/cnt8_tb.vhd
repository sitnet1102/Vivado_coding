----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/14 01:55:40
-- Design Name: 
-- Module Name: cnt8_tb - Behavioral
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

entity cnt8_tb is
--  Port ( );
end cnt8_tb;

architecture Behavioral of cnt8_tb is
    component cnt8
        Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    signal npr, nclr, clk : std_logic := '0';
    signal q : std_logic_vector (7 downto 0);
begin
    UUT : cnt8 port map (
        npr => npr,
        nclr => nclr,
        clk => clk,
        q => q);
    
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        npr <= '0', '1' after 40 ns;
        nclr <= '1', '0' after 40 ns, '1' after 80 ns;
        wait;
    end process;

end Behavioral;




















