----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/25 02:15:18
-- Design Name: 
-- Module Name: and2_tb - Behavioral
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

entity and2_tb is
--  Port ( );
end and2_tb;

architecture Behavioral of and2_tb is
    component and2
        Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
    end component;
    
    signal in1, in2, out1 : std_logic;
begin
    UUT : and2 port map(in1 => in1, in2 => in2, out1 => out1);
    
    td : process
    begin
        in1 <= '0';
        in2 <= '0';
        wait for 40 ns;
        
        in1 <= '0';
        in2 <= '1';
        wait for 40 ns;
        
        in1 <= '1';
        in2 <= '0';
        wait for 40 ns;
        
        in1 <= '1';
        in2 <= '1';
        wait;
    end process;
        
        

end Behavioral;

















