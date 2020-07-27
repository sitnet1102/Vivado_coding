----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 00:33:01
-- Design Name: 
-- Module Name: mux_41_case_tb - Behavioral
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

entity mux_41_case_tb is
--  Port ( );
end mux_41_case_tb;

architecture Behavioral of mux_41_case_tb is


component mux41_case
        Port (  a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
    end component;
    signal a,b,c,d,y : std_logic;
    signal s : std_logic_vector(1 downto 0);
begin
    UUT : mux41_case port map (a => a, b => b, c => c, d => d, s => s, y => y);
    
    process
    begin
        s <= "00";
        a <= '1';
        b <= '0';
        c <= '0';
        d <= '0';
        wait for 20 ns;
        
        s <= "01";
        a <= '0';
        b <= '1';
        c <= '0';
        d <= '0';
        wait for 20 ns;
        
        s <= "10";
        a <= '0';
        b <= '0';
        c <= '1';
        d <= '0';
        wait for 20 ns;
        
        s <= "11";
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '1';
        wait;
    end process;

end Behavioral;














