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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity effect_7seg is
    Port ( clk : in STD_LOGIC;
           nrst : in STD_LOGIC;
           digit : inout STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (6 downto 0));
end effect_7seg;

architecture Behavioral of effect_7seg is
    constant time1 : integer:= 10000000;
    constant time2 : integer:= 5000000;
    type states is (a, ab, b, bc, c, cd, d, de, e, ef, f, fa);
    signal pr_state, nx_state : states;
    signal count : integer range 0 to 10000000;
    signal flip : bit;
begin
    process (clk, nrst)
    begin
        if(nrst = '0') then
            pr_state <= a;
        elsif (clk'event and clk = '1') then
            if ((flip = '1' and count = time1) or (flip = '0' and count = time2) ) then
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
            when a => 
                dout <= "1000000";
                flip <= '1';
                nx_state <= ab;
            when ab => 
                dout <= "1100000";
                flip <= '0';
                nx_state <= b;
            when b => 
                dout <= "0100000";
                flip <= '1';
                nx_state <= bc;
            when bc => 
                dout <= "0110000";
                flip <= '0';
                nx_state <= c;
            when c => 
                dout <= "0010000";
                flip <= '1';
                nx_state <= cd;
            when cd => 
                dout <= "0011000";
                flip <= '0';
                nx_state <= d;
            when d => 
                dout <= "0001000";
                flip <= '1';
                nx_state <= de;
            when de => 
                dout <= "0001100";
                flip <= '0';
                nx_state <= e;
            when e => 
                dout <= "0000100";
                flip <= '1';
                nx_state <= ef;
            when ef => 
                dout <= "0000110";
                flip <= '0';
                nx_state <= f;
            when f => 
                dout <= "0000010";
                flip <= '1';
                nx_state <= fa;
            when fa => 
                dout <= "1000010";
                flip <= '0';
                nx_state <= a;
        end case;
    end process;

end Behavioral;

















