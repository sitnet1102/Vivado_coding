----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/11 01:45:07
-- Design Name: 
-- Module Name: DO - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SOL is
  Port( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
            clk_sol : out STD_LOGIC);
end SOL;

architecture Behavioral of SOL is
    signal clk_tmp : std_logic;
    signal cnt : std_logic_vector (17 downto 0);
begin
    process(clk, sw)
    begin
        if(sw = '0') then
            cnt <= (others => '0');
            clk_tmp <= '0';
        elsif rising_edge (clk) then
            if (cnt = 25509) then
                cnt <= (others => '0');
                clk_tmp <= not clk_tmp;
            else
                cnt <= cnt + 1;
                clk_tmp <= clk_tmp;
            end if;
        end if;
    end process;
    clk_sol <= clk_tmp;
end Behavioral;










