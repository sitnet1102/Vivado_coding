----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/19 13:53:06
-- Design Name: 
-- Module Name: digit_2_adder - Behavioral
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

entity digit_2_adder is
Port (
    a1, a0, b1, b0 : in std_logic_vector(3 downto 0);
    s1, s0 : out std_logic_vector(3 downto 0);
    DCin : in std_logic;
    DCout : out std_logic
);
end digit_2_adder;

architecture Behavioral of digit_2_adder is
    component bcd_adder 
    port(
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        Cin : in std_logic;
        Cout : out std_logic;
        s : out std_logic_vector(3 downto 0)
    );
    end component;
    signal k : std_logic;
begin
    U1 : bcd_adder port map(a0, b0, DCin, k, s0);
    U2 : bcd_adder port map(a1, b1, k, DCout, s1);

end Behavioral;







