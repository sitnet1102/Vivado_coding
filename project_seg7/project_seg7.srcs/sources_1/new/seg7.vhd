----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/05/30 19:38:31
-- Design Name: 
-- Module Name: seg7 - Behavioral
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

entity seg7 is
    Port ( nrst : in STD_LOGIC;
           clk : in STD_LOGIC;
           digit : inout STD_LOGIC_VECTOR (7 downto 0);
           seg_data : out STD_LOGIC_VECTOR (6 downto 0));
end seg7;

architecture Behavioral of seg7 is
    signal clk_cnt : integer range 16 downto 0;
    signal seg_clk : std_logic;
begin
    
    -- Clock dividing
    process(nrst, clk)
    begin
        if(nrst = '0') then
            clk_cnt <= 0;
            seg_clk <= '0';
        elsif(clk'event and clk = '1') then
            if(clk_cnt = 9) then
                clk_cnt <= 0;
                seg_clk <= not seg_clk;
            else
                clk_cnt <= clk_cnt + 1;
            end if;
        end if;
    end process;
    
    -- Select digit
    process(nrst, seg_clk)
    begin
        if(nrst = '0') then
            digit <= "10000000";
        elsif(seg_clk'event and seg_clk = '1') then
            digit <= digit(0)&digit(7 downto 1) ;
        end if;
    end process;
    
    -- Seg data
    process(nrst, seg_clk)
    begin
        if (nrst = '0') then
            seg_data <= "0000000";
        elsif(seg_clk'event and seg_clk = '1') then
            case digit is
                when "10000000" =>
                    seg_data <= "0110000";
                when "01000000" =>
                    seg_data <= "1101101";
                when "00100000" =>
                    seg_data <= "1111001";
                when "00010000" =>
                    seg_data <= "0110011";
                when "00001000" =>
                    seg_data <= "1011011";
                when "00000100" =>
                    seg_data <= "1011111";
                when "00000010" =>
                    seg_data <= "1110010";
                when "00000001" =>
                    seg_data <= "1111111";
                when others =>
                    seg_data <= "0000000";
           end case;
       end if;
    end process;
    
end Behavioral;




















