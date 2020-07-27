----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 17:38:23
-- Design Name: 
-- Module Name: m16cnt_tb - Behavioral
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

entity m16cnt_tb is
--  Port ( );
end m16cnt_tb;

architecture Behavioral of m16cnt_tb is
    component m16cnt
        Port ( clk : in STD_LOGIC;
           nclr : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    signal clk : std_logic := '0';
    signal nclr : std_logic ;
    signal q : std_logic_vector(3 downto 0);
begin
    UUT : m16cnt port map (
        clk => clk,
        nclr => nclr,
        q(3) => q(3),
        q(2) => q(2),
        q(1) => q(1),
        q(0) => q(0));
    
    clk <= not clk after 100 ns;
    
    tb : process
    begin
        nclr <= '0';
        wait for 200 ns;
        
        nclr <= '1';
        wait;    
    end process;


end Behavioral;





















