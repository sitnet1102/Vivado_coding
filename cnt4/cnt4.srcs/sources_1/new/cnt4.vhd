----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 17:06:17
-- Design Name: 
-- Module Name: cnt4 - Behavioral
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

entity cnt4 is
    Port ( nld : in STD_LOGIC;
           nclr : in STD_LOGIC;
           ent : in STD_LOGIC;
           enp : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0);
           rco : out STD_LOGIC);
end cnt4;

architecture Behavioral of cnt4 is
    signal qq : std_logic_vector(3 downto 0);
begin
    process(nclr, clk)
    variable dd : std_logic_vector(3 downto 0);
    begin 
        dd := d(3)&d(2)&d(1)&d(0);
        if(nclr='0') then
            qq <= "0000";
        elsif(clk'event and clk = '1') then
            if(nld = '0') then
                qq <= dd;
            elsif(ent = '1' and enp = '1') then
                qq <= qq+'1';
            end if;
        end if;
    end process;
    q(3) <= qq(3);
    q(2) <= qq(2);
    q(1) <= qq(1);
    q(0) <= qq(0);
    rco <= ent and qq(3) and qq(2) and qq(1) and qq(0);
end Behavioral;



















