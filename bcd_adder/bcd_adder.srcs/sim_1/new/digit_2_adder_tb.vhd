----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/19 14:02:07
-- Design Name: 
-- Module Name: digit_2_adder_tb - Behavioral
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

entity digit_2_adder_tb is
--  Port ( );
end digit_2_adder_tb;

architecture Behavioral of digit_2_adder_tb is
    component digit_2_adder
    port (
    a1, a0, b1, b0 : in std_logic_vector(3 downto 0);
    s1, s0 : out std_logic_vector(3 downto 0);
    DCin : in std_logic;
    DCout : out std_logic
    );
    end component;
    signal a1, a0, b1, b0, s1, s0 : std_logic_vector(3 downto 0);
    signal DCin, DCout : std_logic;
begin
    UUT : digit_2_adder port map (
        a1=>a1, a0=>a0, b1=>b1, b0=>b0, s1=>s1, s0=>s0, DCin=>DCin, DCout=>DCout);
    process
    begin
        DCin <= '0';
        
        a1 <= "0001";
        a0 <= "0100";
        b1 <= "0011";
        b0 <= "1000";
        wait for 20 ns;
        
        a1 <= "0011";
        a0 <= "0101";
        b1 <= "0100";
        b0 <= "0111";
        wait for 20 ns;
        
        a1 <= "0110";
        a0 <= "0100";
        b1 <= "1000";
        b0 <= "0010";
        wait for 20 ns;
        
        a1 <= "0111";
        a0 <= "1000";
        b1 <= "0101";
        b0 <= "1001";
        wait ;
    
        
    end process;

end Behavioral;












