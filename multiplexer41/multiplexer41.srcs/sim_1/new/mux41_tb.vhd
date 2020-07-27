----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 19:04:17
-- Design Name: 
-- Module Name: mux41_tb - Behavioral
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

entity mux41_tb is
--  Port ( );
end mux41_tb;

architecture Behavioral of mux41_tb is
    component mux41 
        Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
    end component;
    signal a, b, c, d, y : std_logic;
    signal s : std_logic_vector(1 downto 0);
begin
    UUT : mux41 port map( a => a, b => b, c => c, d => d, s => s, y => y);
    
    tb : process
    begin
        a <= '1';
        b <= '0';
        c <= '0';
        d <= '0';
        s <= "00";
        wait for 50 ns;
        
        a <= '0';
        b <= '1';
        c <= '0';
        d <= '0';
        s <= "01";
        wait for 50 ns;
        
        a <= '0';
        b <= '0';
        c <= '1';
        d <= '0';
        s <= "10";
        wait for 50 ns;
        
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '1';
        s <= "11";
        wait for 50 ns;
        
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        s <= "00";
        wait;
        
    end process;

end Behavioral;



















