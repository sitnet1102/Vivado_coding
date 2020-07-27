----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/30 19:51:35
-- Design Name: 
-- Module Name: seg7_tb - Behavioral
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

entity seg7_tb is
--  Port ( );
end seg7_tb;

architecture Behavioral of seg7_tb is
    component seg7
        Port ( nrst : in STD_LOGIC;
           clk : in STD_LOGIC;
           digit : inout STD_LOGIC_VECTOR (7 downto 0);
           seg_data : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    signal nrst : std_logic;
    signal clk : std_logic := '0';
    signal digit : std_logic_vector(7 downto 0);
    signal seg_data : std_logic_vector(6 downto 0);
    
begin
    UUT : seg7 port map(
        nrst => nrst,
        clk => clk,
        digit => digit,
        seg_data => seg_data);
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        nrst <= '0',
                '1' after 40 ns;
        wait;
    end process;

end Behavioral;















