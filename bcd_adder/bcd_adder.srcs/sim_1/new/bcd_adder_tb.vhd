----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/19 13:23:13
-- Design Name: 
-- Module Name: bcd_adder_tb - Behavioral
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

entity bcd_adder_tb is
--  Port ( );
end bcd_adder_tb;

architecture Behavioral of bcd_adder_tb is
    component bcd_adder 
    port (
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        Cin : in std_logic;
        Cout : out std_logic;
        s : out std_logic_vector(3 downto 0)
    );
    end component;
    signal a,b,s : std_logic_vector(3 downto 0);
    signal Cout, Cin : std_logic;
begin
    UUT : bcd_adder port map(
        a=>a, b=>b, s=>s, Cout=>Cout, Cin=>Cin
        );
    process
    begin
        Cin <= '0';
        a <= "0010";
        b <= "1001";
        wait for 20 ns;
        
        a <= "0110";
        b <= "0101";
        wait for 20 ns;
        
        a <= "1000";
        b <= "0101";
        wait for 20 ns;
        
        a <= "0000";
        b <= "1001";
        wait for 20 ns;
        
        a <= "1000";
        b <= "0101";
        wait;
        
    end process;
        
        
        
        
        
end Behavioral;

















