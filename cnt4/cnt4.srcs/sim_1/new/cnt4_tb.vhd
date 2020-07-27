----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/04/29 17:16:49
-- Design Name: 
-- Module Name: cnt4_tb - Behavioral
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

entity cnt4_tb is
--  Port ( );
end cnt4_tb;

architecture Behavioral of cnt4_tb is
    component cnt4 
    Port ( nld : in STD_LOGIC;
           nclr : in STD_LOGIC;
           ent : in STD_LOGIC;
           enp : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0);
           rco : out STD_LOGIC);
    end component;
    signal nld, nclr, ent, enp, rco : std_logic;
    signal clk : std_logic := '0';
    signal d, q : std_logic_vector(3 downto 0);
    
begin
    UUT : cnt4 port map(
        nld => nld,
        nclr => nclr,
        ent => ent,
        enp => enp,
        rco => rco,
        d(3) => d(3),
        d(2) => d(2),
        d(1) => d(1),
        d(0) => d(0),
        q(3) => q(3),
        q(2) => q(2),
        q(1) => q(1),
        q(0) => q(0),
        clk => clk);
    clk <= not clk after 100 ns;
    tb : process
    begin
        nld <= '1';
        nclr <= '0';
        ent <= '1';
        enp <= '1';
        d <= "1100";
        wait for 200 ns;
        
        nld <= '1';
        nclr <= '1';
        ent <= '1';
        enp <= '1';
        wait for 200 ns;
        
        nld <= '1';
        nclr <= '1';
        ent <= '1';
        enp <= '0';
        wait for 1200 ns;
        
        nld <= '1';
        nclr <= '1';
        ent <= '1';
        enp <= '1';
        wait for 200 ns;
        
        nld <= '1';
        nclr <= '1';
        ent <= '0';
        enp <= '1';
        wait for 200 ns;
        
        nld <= '1';
        nclr <= '1';
        ent <= '1';
        enp <= '1';
        wait for 400 ns;
        
        nld <= '0';
        nclr <= '1';
        ent <= '1';
        enp <= '1';
        wait for 200 ns;
        
        nld <= '1';
        nclr <= '1';
        ent <= '1';
        enp <= '1';
        wait;
        
        
        
        
        
    end process;
        


end Behavioral;






