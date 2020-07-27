----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 02:03:43
-- Design Name: 
-- Module Name: mux81_4bit_tb - Behavioral
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

entity mux81_4bit_tb is
--  Port ( );
end mux81_4bit_tb;

architecture Behavioral of mux81_4bit_tb is
    component mux81_4bit
         Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           c : in STD_LOGIC_VECTOR (3 downto 0);
           d : in STD_LOGIC_VECTOR (3 downto 0);
           e : in STD_LOGIC_VECTOR (3 downto 0);
           f : in STD_LOGIC_VECTOR (3 downto 0);
           g : in STD_LOGIC_VECTOR (3 downto 0);
           h : in STD_LOGIC_VECTOR (3 downto 0);
           s2 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (3 downto 0));
     end component;
     
     signal s : std_logic_vector(2 downto 0);
     signal a, b, c, d, e, f, g, h, y : std_logic_vector(3 downto 0);
     
begin
    UUT : mux81_4bit port map ( 
        a => a, 
        b => b,
        c => c,
        d => d,
        e => e,
        f => f,
        g => g,
        h => h,
        s2 => s(2),
        s1 => s(1),
        s0 => s(0),
        y => y);
        
    process 
    begin
        
        s <= "000";
        a <= "1111";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        s <= "001";
        a <= "0000";
        b <= "1110";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        s <= "010";
        a <= "0000";
        b <= "0000";
        c <= "1101";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        s <= "011";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "1100";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        s <= "100";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "1011";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        s <= "101";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "1010";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        s <= "110";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "1001";
        h <= "0000";
        wait for 20 ns;
        
        s <= "111";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "1000";
        wait;
        
   end process;
        
        

end Behavioral;






















