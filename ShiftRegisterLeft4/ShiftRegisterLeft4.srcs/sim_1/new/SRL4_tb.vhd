----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/22 05:08:41
-- Design Name: 
-- Module Name: SRL4_tb - Behavioral
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

entity SRL4_tb is
--  Port ( );
end SRL4_tb;

architecture Behavioral of SRL4_tb is
    component SRL4
        Port ( npr : in STD_LOGIC;
           nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           d_in : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR (3 downto 0));
    end component;
    signal npr, nclr, d_in : std_logic;
    signal clk : std_logic := '0';
    signal q : std_logic_vector (3 downto 0);
    
begin
    UUT : SRL4 port map(
        npr => npr,
        nclr => nclr,
        clk => clk,
        d_in => d_in,
        q => q);
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        npr <= '0', '1' after 40 ns;
        nclr <= '1', '0' after 40 ns, '1' after 80 ns;
        d_in <= '0', '1' after 60 ns, '0' after 110 ns, '1' after 150 ns;
        wait;
    end process;

end Behavioral;


















