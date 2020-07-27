----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 01:14:41
-- Design Name: 
-- Module Name: mux81_const - Behavioral
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

entity mux81_const is
    Port ( a : in STD_LOGIC;
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
end mux81_const;

architecture Behavioral of mux81_const is
    constant bits3_0 : std_logic_vector(2 downto 0) := "000";
    constant bits3_1 : std_logic_vector(2 downto 0) := "001";
    constant bits3_2 : std_logic_vector(2 downto 0) := "010";
    constant bits3_3 : std_logic_vector(2 downto 0) := "011";
    constant bits3_4 : std_logic_vector(2 downto 0) := "100";
    constant bits3_5 : std_logic_vector(2 downto 0) := "101";
    constant bits3_6 : std_logic_vector(2 downto 0) := "110";
    constant bits3_7 : std_logic_vector(2 downto 0) := "111";
    
begin
    process(a,b,c,d,e,f,g,h,s2,s1,s0)
    variable sel :std_logic_vector(2 downto 0);
    begin
        sel := s2 & s1 & s0;
        case sel is
            when bits3_0 => y <= a;
            when bits3_1 => y <= b;
            when bits3_2 => y <= c;
            when bits3_3 => y <= d;
            when bits3_4 => y <= e;
            when bits3_5 => y <= f;
            when bits3_6 => y <= g;
            when others => y <= h;
        end case;
   end process;

end Behavioral;














