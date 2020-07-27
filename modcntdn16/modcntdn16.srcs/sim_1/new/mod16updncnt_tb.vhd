----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 01:03:29
-- Design Name: 
-- Module Name: mod16updncnt_tb - Behavioral
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

entity mod16updncnt_tb is
--  Port ( );
end mod16updncnt_tb;

architecture Behavioral of mod16updncnt_tb is
    component mod16updncnt
    Port ( nclr : in STD_LOGIC;
           clk : in STD_LOGIC;
           UpDn : in STD_LOGIC;
           q3 : out STD_LOGIC;
           q2 : out STD_LOGIC;
           q1 : out STD_LOGIC;
           q0 : out STD_LOGIC);
    end component;
    signal nclr, UpDn : std_logic;
    signal clk : std_logic := '0';
    signal q3, q2, q1, q0: std_logic;
begin
    UUT : mod16updncnt port map (
        nclr => nclr,
        UpDn => UpDn,
        clk => clk,
        q3 => q3,
        q2 => q2,
        q1 => q1,
        q0 => q0);
    clk <= not clk after 20 ns;
    
    tb : process
    begin
        UpDn <= '1';
        nclr <= '0';
        wait for 20 ns;
        
        UpDn <= '1';
        nclr <= '1';
        wait for 680 ns;
        
        UpDn <= '0';
        nclr <= '1';
        wait;
        
    end process;
        

end Behavioral;
















