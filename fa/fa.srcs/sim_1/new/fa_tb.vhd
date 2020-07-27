----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 17:54:57
-- Design Name: 
-- Module Name: fa_tb - Behavioral
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

entity fa_tb is
--  Port ( );
end fa_tb;

architecture Behavioral of fa_tb is
    component fa 
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
    end component;
    signal a, b, cin, s, cout : std_logic;
begin
    UUT : fa port map( a => a, b => b, cin => cin, s => s, cout => cout);
    
    tb : process
    begin
        a <= '0';
        b <= '0';
        cin <= '0';
        wait for 40 ns;
        
        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 40 ns;
        
        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 40 ns;
        
        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 40 ns;
        
        a <= '1';
        b <= '0';
        cin <= '0';
        wait for 40 ns;
        
        a <= '1';
        b <= '0';
        cin <= '1';
        wait for 40 ns;
        
        a <= '1';
        b <= '1';
        cin <= '0';
        wait for 40 ns;
        
        a <= '1';
        b <= '1';
        cin <= '1';
        wait;

    end process;

end Behavioral;











