----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 02:19:23
-- Design Name: 
-- Module Name: mux81_4bit_case_tb - Behavioral
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

entity mux81_4bit_case_tb is
--  Port ( );
end mux81_4bit_case_tb;

architecture Behavioral of mux81_4bit_case_tb is
    component mux81_4bit_case
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
    signal sel :std_logic_vector(2 downto 0);
    signal a,b,c,d,e,f,g,h,y : std_logic_vector(3 downto 0);
begin
    UUT : mux81_4bit_case port map (
        a => a,
        b => b,
        c => c,
        d => d,
        e => e,
        f => f,
        g => g,
        h => h,
        s2 => sel(2),
        s1 => sel(1),
        s0 => sel(0),
        y => y);
    process
        begin
        
        sel <= "000";
        a <= "0001";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;

        sel <= "001";
        a <= "0000";
        b <= "0010";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        sel <= "010";
        a <= "0000";
        b <= "0000";
        c <= "0011";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        sel <= "011";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0100";
        e <= "0000";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        sel <= "100";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0101";
        f <= "0000";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        sel <= "101";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0110";
        g <= "0000";
        h <= "0000";
        wait for 20 ns;
        
        sel <= "110";
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        e <= "0000";
        f <= "0000";
        g <= "0111";
        h <= "0000";
        wait for 20 ns;
        
        sel <= "111";
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














