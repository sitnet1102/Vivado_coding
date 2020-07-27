----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/19 11:54:01
-- Design Name: 
-- Module Name: bcd_adder - Behavioral
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

entity bcd_adder is
   port (
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        Cin : in std_logic;
        Cout : out std_logic;
        s : out std_logic_vector(3 downto 0)
    );

end bcd_adder;

architecture Behavioral of bcd_adder is
    component fulladder
        port( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
    end component;
    
        
    signal z : std_logic_vector(3 downto 0);
    signal k : std_logic;
    signal zero : std_logic;
    signal tcin0 : std_logic;
    signal tcin1 : std_logic;
    signal c : std_logic;
    signal p : std_logic;
    signal tcout1, tcout2, tcout3 : std_logic;
    signal pcout1, pcout2, pcout3 : std_logic;
    
begin
    tcin0 <= Cin;
    U1 : fulladder port map(a(0), b(0), tcin0, z(0), tcout1);
    U2 : fulladder port map(a(1), b(1), tcout1, z(1), tcout2);
    U3 : fulladder port map(a(2), b(2), tcout2, z(2), tcout3);
    U4 : fulladder port map(a(3), b(3), tcout3, z(3), k);
    
    zero <= '0';
    c <= k or (z(3) and z(2)) or (z(3) and z(1));
    tcin1 <= zero;
    
    U11 : fulladder port map(z(0), zero, tcin1, s(0), pcout1);
    U22 : fulladder port map(z(1), c, pcout1, s(1), pcout2);
    U33 : fulladder port map(z(2), c, pcout2, s(2), pcout3);
    U44 : fulladder port map(z(3), zero, pcout3, s(3), p);
    
    Cout <= c;
end Behavioral;













