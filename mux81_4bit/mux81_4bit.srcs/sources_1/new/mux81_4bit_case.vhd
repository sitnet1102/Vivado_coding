----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 01:59:01
-- Design Name: 
-- Module Name: mux81_4bit - Behavioral
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

entity mux81_4bit_case is
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
end mux81_4bit_case;

architecture Behavioral of mux81_4bit_case is
    signal s : std_logic_vector(2 downto 0);
begin
    s <= s2 & s1 & s0;
    -- s(2) <= s2; s(1) <= s1; s(0) <= s0;
    process
    begin
        case s is
            when "000" => y <= a;
            when "001" => y <= b;
            when "010" => y <= c;
            when "011" => y <= d;
            when "100" => y <= e;
            when "101" => y <= f;
            when "110" => y <= g;
            when others => y <= h;
        end case;
    end process;
end Behavioral;















