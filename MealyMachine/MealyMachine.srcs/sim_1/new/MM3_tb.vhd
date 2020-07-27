----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/13 16:18:39
-- Design Name: 
-- Module Name: MM3_tb - Behavioral
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

entity MM3_tb is
--  Port ( );
end MM3_tb;

architecture Behavioral of MM3_tb is
    component MM3
        Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           WindowAct : in STD_LOGIC;
           RiseShot : out STD_LOGIC;
           FallShot : out STD_LOGIC);
    end component;
    signal reset, clk, WindowAct : std_logic := '0';
    signal RiseShot, FallShot : std_logic;
begin
    UUT : MM3 port map(
        reset => reset,
        clk => clk,
        WindowAct => WindowAct,
        RiseShot => RiseShot,
        FallShot => FallShot);
        
    clk <= not clk after 100 ns;
    
    tb : process
    begin 
        reset <= '1' after 200 ns;
        
        WindowAct <= '1' after 350 ns,
                     '0' after 950 ns,
                     '1' after 1750 ns,
                     '0' after 2350 ns;
        wait;
    end process;    
    

end Behavioral;







