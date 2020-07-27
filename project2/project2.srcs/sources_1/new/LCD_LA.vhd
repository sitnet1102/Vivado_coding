----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/05 03:57:07
-- Design Name: 
-- Module Name: LCD_BLK1 - Behavioral
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

entity LCD_LA is
    Port ( CLK50 : in STD_LOGIC;
           sw : in STD_LOGIC;
           RS : out STD_LOGIC;
           RW : out STD_LOGIC;
           E : out STD_LOGIC;
           DB : out STD_LOGIC_VECTOR (7 downto 0));
end LCD_LA;

architecture Behavioral of LCD_LA is

-- ASCII Code

    constant FONT_BLANK : STD_LOGIC_VECTOR (7 downto 0) := "00100000"; --Blank
    constant FONT_SPEC  : STD_LOGIC_VECTOR (7 downto 0) := "00100001"; --'!'
    constant FONT_AND   : STD_LOGIC_VECTOR (7 downto 0) := "00100110"; --'&'
    constant FONT_BAR   : STD_LOGIC_VECTOR (7 downto 0) := "00101101"; --'-'
    constant FONT_DOT   : STD_LOGIC_VECTOR (7 downto 0) := "00101110"; --'.'
    
    constant FONT_0     : STD_LOGIC_VECTOR (7 downto 0) := "00110000"; --'0'
    constant FONT_1     : STD_LOGIC_VECTOR (7 downto 0) := "00110001"; --'1'
    constant FONT_2     : STD_LOGIC_VECTOR (7 downto 0) := "00110010"; --'2'
    constant FONT_3     : STD_LOGIC_VECTOR (7 downto 0) := "00110011"; --'3'
    constant FONT_4     : STD_LOGIC_VECTOR (7 downto 0) := "00110100"; --'4'
    constant FONT_5     : STD_LOGIC_VECTOR (7 downto 0) := "00110101"; --'5'
    constant FONT_6     : STD_LOGIC_VECTOR (7 downto 0) := "00110110"; --'6'
    constant FONT_7     : STD_LOGIC_VECTOR (7 downto 0) := "00110111"; --'7'
    constant FONT_8     : STD_LOGIC_VECTOR (7 downto 0) := "00111000"; --'8'
    constant FONT_9     : STD_LOGIC_VECTOR (7 downto 0) := "00111001"; --'9'
    
    constant FONT_A     : STD_LOGIC_VECTOR (7 downto 0) := "01000001"; --'A'
    constant FONT_B     : STD_LOGIC_VECTOR (7 downto 0) := "01000010"; --'B'
    constant FONT_C     : STD_LOGIC_VECTOR (7 downto 0) := "01000011"; --'C'
    constant FONT_D     : STD_LOGIC_VECTOR (7 downto 0) := "01000100"; --'D'
    constant FONT_E     : STD_LOGIC_VECTOR (7 downto 0) := "01000101"; --'E'
    constant FONT_F     : STD_LOGIC_VECTOR (7 downto 0) := "01000110"; --'F'
    constant FONT_G     : STD_LOGIC_VECTOR (7 downto 0) := "01000111"; --'G'
    constant FONT_H     : STD_LOGIC_VECTOR (7 downto 0) := "01001000"; --'H'
    constant FONT_I     : STD_LOGIC_VECTOR (7 downto 0) := "01001001"; --'I'
    constant FONT_J     : STD_LOGIC_VECTOR (7 downto 0) := "01001010"; --'J'
    constant FONT_K     : STD_LOGIC_VECTOR (7 downto 0) := "01001011"; --'K'
    constant FONT_L     : STD_LOGIC_VECTOR (7 downto 0) := "01001100"; --'L'
    constant FONT_M     : STD_LOGIC_VECTOR (7 downto 0) := "01001101"; --'M'
    constant FONT_N     : STD_LOGIC_VECTOR (7 downto 0) := "01001110"; --'N'
    constant FONT_O     : STD_LOGIC_VECTOR (7 downto 0) := "01001111"; --'O'
    constant FONT_P     : STD_LOGIC_VECTOR (7 downto 0) := "01010000"; --'P'
    constant FONT_Q     : STD_LOGIC_VECTOR (7 downto 0) := "01010001"; --'Q'
    constant FONT_R     : STD_LOGIC_VECTOR (7 downto 0) := "01010010"; --'R'
    constant FONT_S     : STD_LOGIC_VECTOR (7 downto 0) := "01010011"; --'S'
    constant FONT_T     : STD_LOGIC_VECTOR (7 downto 0) := "01010100"; --'T'
    constant FONT_U     : STD_LOGIC_VECTOR (7 downto 0) := "01010101"; --'U'
    constant FONT_V     : STD_LOGIC_VECTOR (7 downto 0) := "01010110"; --'V'
    constant FONT_W     : STD_LOGIC_VECTOR (7 downto 0) := "01010111"; --'W'
    constant FONT_X     : STD_LOGIC_VECTOR (7 downto 0) := "01011000"; --'X'
    constant FONT_Y     : STD_LOGIC_VECTOR (7 downto 0) := "01011001"; --'Y'
    constant FONT_Z     : STD_LOGIC_VECTOR (7 downto 0) := "01011010"; --'Z'
    
    constant FONT_SA    : STD_LOGIC_VECTOR (7 downto 0) := "01100001"; --'a'
    constant FONT_SB    : STD_LOGIC_VECTOR (7 downto 0) := "01100010"; --'b'
    constant FONT_SC    : STD_LOGIC_VECTOR (7 downto 0) := "01100011"; --'c'
    constant FONT_SD    : STD_LOGIC_VECTOR (7 downto 0) := "01100100"; --'d'
    constant FONT_SE    : STD_LOGIC_VECTOR (7 downto 0) := "01100101"; --'e'
    constant FONT_SF    : STD_LOGIC_VECTOR (7 downto 0) := "01100110"; --'f'
    constant FONT_SG    : STD_LOGIC_VECTOR (7 downto 0) := "01100111"; --'g'
    constant FONT_SH    : STD_LOGIC_VECTOR (7 downto 0) := "01101000"; --'h'
    constant FONT_SI    : STD_LOGIC_VECTOR (7 downto 0) := "01101001"; --'i'
    constant FONT_SJ    : STD_LOGIC_VECTOR (7 downto 0) := "01101010"; --'j'
    constant FONT_SK    : STD_LOGIC_VECTOR (7 downto 0) := "01101011"; --'k'
    constant FONT_SL    : STD_LOGIC_VECTOR (7 downto 0) := "01101100"; --'l'
    constant FONT_SM    : STD_LOGIC_VECTOR (7 downto 0) := "01101101"; --'m'
    constant FONT_SN    : STD_LOGIC_VECTOR (7 downto 0) := "01101110"; --'n'
    constant FONT_SO    : STD_LOGIC_VECTOR (7 downto 0) := "01101111"; --'o'
    constant FONT_SP    : STD_LOGIC_VECTOR (7 downto 0) := "01110000"; --'p'
    constant FONT_SQ    : STD_LOGIC_VECTOR (7 downto 0) := "01110001"; --'q'
    constant FONT_SR    : STD_LOGIC_VECTOR (7 downto 0) := "01110010"; --'r'
    constant FONT_SS    : STD_LOGIC_VECTOR (7 downto 0) := "01110011"; --'s'
    constant FONT_ST    : STD_LOGIC_VECTOR (7 downto 0) := "01110100"; --'t'
    constant FONT_SU    : STD_LOGIC_VECTOR (7 downto 0) := "01110101"; --'u'
    constant FONT_SV    : STD_LOGIC_VECTOR (7 downto 0) := "01110110"; --'v'
    constant FONT_SW    : STD_LOGIC_VECTOR (7 downto 0) := "01110111"; --'w'
    constant FONT_SX    : STD_LOGIC_VECTOR (7 downto 0) := "01111000"; --'x'
    constant FONT_SY    : STD_LOGIC_VECTOR (7 downto 0) := "01111001"; --'y'
    constant FONT_SZ    : STD_LOGIC_VECTOR (7 downto 0) := "01111010"; --'z'

begin
    process(CLK50)
        variable CNT_INT : STD_LOGIC_VECTOR(7 downto 0);
    begin
        if(CLK50'event and CLK50 = '1' and sw = '1') then
            CNT_INT := CNT_INT + 1;
            
        -- LCD Initial Routine -----------------------------------------------------
        
        -- delay Setup
                -- CNT_INT = 16d
                if      CNT_INT = "00010000" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "00111000"; 
                
                -- CNT_INT = 24d
                elsif   CNT_INT = "00011000" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "00001110";
                
                -- CNT_INT = 32d
                elsif   CNT_INT = "00100000" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "00000110";
                
                -- CNT_INT = 39d
                elsif   CNT_INT = "00100111" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "00000010";
                
                -- CNT_INT = 41d
                elsif   CNT_INT = "00101001" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "00000001";
                                                    
        -- LDC Line 1 Display Routine ---------------------------------------------------------
        -- Line1: Konkuk Univ.
                
                -- CNT_INT = 79d
                elsif   CNT_INT = "01001111" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "10000000";
                
                -- CNT_INT = 81d
                elsif   CNT_INT = "01010001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                -- CNT_INT = 83d
                elsif   CNT_INT = "01010011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                -- CNT_INT = 85d
                elsif   CNT_INT = "01010101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                -- CNT_INT = 87d
                elsif   CNT_INT = "01010111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                -- CNT_INT = 89d
                elsif   CNT_INT = "01011001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                -- CNT_INT = 91d
                elsif   CNT_INT = "01011011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01011101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01011111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01100001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01100011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01100101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01100111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01101001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01101011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "01101101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_L;
                
                elsif   CNT_INT = "01101111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_A;
        
        -- LCD Line 2 Display Routine ---------------------------------------------------------        
        -- Line2: Computer S&E          FONT_AND
                
                elsif   CNT_INT = "10100001" then E <= '1';
                                                    RS <= '0';
                                                    RW <= '0';
                                                    DB <= "11000000";
                
                elsif   CNT_INT = "10100011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10100101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10100111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10101001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                                                    
                elsif   CNT_INT = "10101011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10101101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10101111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10110001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10110011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10110101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10110111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10111001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10111011" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10111101" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "10111111" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                elsif   CNT_INT = "11000001" then E <= '1';
                                                    RS <= '1';
                                                    RW <= '0';
                                                    DB <= FONT_BLANK;
                
                else E <= '0';
        -------------------------------------------------------------------------------------
                end if;
           end if;
     end process;
                
                
end Behavioral;











