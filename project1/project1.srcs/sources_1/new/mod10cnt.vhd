----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/20 14:23:42
-- Design Name: 
-- Module Name: effect_7seg - Behavioral
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

entity mod10cnt is
    Port ( clk : in STD_LOGIC;
           nrst : in STD_LOGIC;
           upcnt : in STD_LOGIC;
           digit : inout STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (6 downto 0));
end mod10cnt;

architecture Behavioral of mod10cnt is
    constant time1 : integer:= 10000000;
    type states is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);
    signal pr_state, nx_state : states;
    signal count : integer range 0 to 10000000;
    signal flip : bit;
begin
    process (upcnt, nrst)
    begin
        if(nrst = '0') then
            pr_state <= s0;
        elsif (clk'event and clk = '1' and upcnt = '1') then
            if ((flip = '1' and count = time1) or (flip = '0' and count = time1) ) then
                count <= 0;
                pr_state <= nx_state;
            else
                count <= count + 1;               
            end if;       
        end if;
    end process;

    process (pr_state)
    begin
        digit <= "00000001";
        case pr_state is
            when s0 => 
                dout <= "1111110";
                flip <= '1';
                nx_state <= s1;
            when s1 => 
                dout <= "0110000";
                flip <= '0';
                nx_state <= s2;
            when s2 => 
                dout <= "1101101";
                flip <= '1';
                nx_state <= s3;
            when s3 => 
                dout <= "1111001";
                flip <= '0';
                nx_state <= s4;
            when s4 => 
                dout <= "0110011";
                flip <= '1';
                nx_state <= s5;
            when s5 => 
                dout <= "1011011";
                flip <= '0';
                nx_state <= s6;
            when s6 => 
                dout <= "1011111";
                flip <= '1';
                nx_state <= s7;
            when s7 => 
                dout <= "1110010";
                flip <= '0';
                nx_state <= s8;
            when s8 => 
                dout <= "1111111";
                flip <= '1';
                nx_state <= s9;
            when s9 => 
                dout <= "1111011";
                flip <= '0';
                nx_state <= s0;       
        end case;
    end process;

end Behavioral;

















