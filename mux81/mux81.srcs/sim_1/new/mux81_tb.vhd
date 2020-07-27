----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 01:02:00
-- Design Name: 
-- Module Name: mux81_tb - Behavioral
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

entity mux81_tb is
--  Port ( );
end mux81_tb;

architecture Behavioral of mux81_tb is
    component mux81
        Port  (a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           e : in STD_LOGIC;
           f : in STD_LOGIC;
           g : in STD_LOGIC;
           h : in STD_LOGIC;
           s2 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           y : out STD_LOGIC);
    end component;
    
    signal s : std_logic_vector(2 downto 0);
    signal a,b,c,d,e,f,g,h,y : std_logic;
    
begin
    UUT : mux81 port map(s2 => s(2), s1 => s(1), s0 => s(0),
        a => a, b => b, c => c, d => d,
        e => e, f => f, g => g, h => h, y => y);
    process
    begin
        s <= "000";
        a <= '1';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
        h <= '0';
        wait for 20 ns;
        
        s <= "001";
        a <= '0';
        b <= '1';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
        h <= '0';
        wait for 20 ns;
        
        s <= "010";
        a <= '0';
        b <= '0';
        c <= '1';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
        h <= '0';
        wait for 20 ns;
        
        s <= "011";
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '1';
        e <= '0';
        f <= '0';
        g <= '0';
        h <= '0';
        wait for 20 ns;
        
        s <= "100";
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '1';
        f <= '0';
        g <= '0';
        h <= '0';
        wait for 20 ns;
        
        s <= "101";
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '1';
        g <= '0';
        h <= '0';
        wait for 20 ns;
        
        s <= "110";
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '1';
        h <= '0';
        wait for 20 ns;
        
        s <= "111";
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
        h <= '1';
        wait;
    end process;
        
end Behavioral;
















