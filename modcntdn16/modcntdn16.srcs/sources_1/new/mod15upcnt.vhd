----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/07 01:14:24
-- Design Name: 
-- Module Name: mod15upcnt - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod15upcnt is
    Port ( clk : in STD_LOGIC;
           nclr : in STD_LOGIC;
           q3 : out STD_LOGIC;
           q2 : out STD_LOGIC;
           q1 : out STD_LOGIC;
           q0 : out STD_LOGIC);
end mod15upcnt;

architecture Behavioral of mod15upcnt is
    signal q : std_logic_vector(3 downto 0);
begin
    process(nclr, clk)
    begin
        if(nclr = '0') then
            q <= "0000";
        elsif (clk'event and clk = '1') then
            if(q = "1110") then
                q <= "0000";
            else 
                q <= q + '1';
            end if;
        end if;
    end process;
    
    q3 <= q(3); q2 <= q(2); q1 <= q(1); q0 <= q(0);



end Behavioral;
