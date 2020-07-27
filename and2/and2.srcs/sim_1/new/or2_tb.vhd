----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/25 02:55:24
-- Design Name: 
-- Module Name: or2_tb - Behavioral
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

entity or2_tb is
--  Port ( );
end or2_tb;

architecture Behavioral of or2_tb is
    component or2
        Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
    end component;
    
    signal in1, in2, out1 : std_logic;
begin
    UUT : or2 port map (in1 => in1, in2 => in2, out1 => out1);
    
    tb : process
    begin
        in1 <= '0';
        in2 <= '0';
        wait for 20 ns;
        
        in1 <= '0';
        in2 <= '1';
        wait for 20 ns;
        
        in1 <= '1';
        in2 <= '0';
        wait for 20 ns;
        
        in1 <= '1';
        in2 <= '1';
        wait;
    end process;

end Behavioral;


















