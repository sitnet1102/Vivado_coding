----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/22 02:53:51
-- Design Name: 
-- Module Name: MooreMachine_tb - Behavioral
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

entity MooreMachine_tb is
--  Port ( );
end MooreMachine_tb;

architecture Behavioral of MooreMachine_tb is
    component MooreMachine
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           WindowAct : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    signal clk, reset, WindowAct : std_logic := '0';
    signal y : std_logic_vector (2 downto 0);
begin
    UUT : MooreMachine port map (clk => clk, reset => reset, WindowAct => WindowAct, y => y);
    
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        reset <= '1' after 40 ns;
        WindowAct <= '1' after 100 ns,
                     '0' after 160 ns,
                     '1' after 250 ns;
        wait;                
    end process;

end Behavioral;














