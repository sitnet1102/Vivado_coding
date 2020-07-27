----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/16 00:43:54
-- Design Name: 
-- Module Name: mux81 - Behavioral
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

entity mux81 is
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
end mux81;

architecture Behavioral of mux81 is
    component dec38
         Port ( d2 : in STD_LOGIC;
           d1 : in STD_LOGIC;
           d0 : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC;
           y5 : out STD_LOGIC;
           y6 : out STD_LOGIC;
           y7 : out STD_LOGIC);
    end component;
    signal t : std_logic_vector(7 downto 0);
    signal d0,d1,d2,d3,d4,d5,d6,d7 : std_logic;
    
begin
    U1 : dec38 port map (s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7);
        t(0) <= a and d0;
        t(1) <= b and d1;
        t(2) <= c and d2;
        t(3) <= d and d3;
        t(4) <= e and d4;
        t(5) <= f and d5;
        t(6) <= g and d6;
        t(7) <= h and d7;

        y <= t(0) or t(1) or t(2) or t(3) or t(4) or t(5) or t(6) or t(7); 
end Behavioral;














