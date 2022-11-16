----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2022 10:30:37
-- Design Name: 
-- Module Name: clock_counter - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_counter is
    Port (  clk, reset: in std_logic := '0';
            seg_out: out std_logic_vector(7 downto 0):= "00000000";
            clk_out: inout std_logic:='0';
            transistor_sel: out std_logic_vector(3 downto 0):="1110");
end clock_counter;


architecture Behavioral of clock_counter is
    signal seg_sel: std_logic_vector(4 downto 0):="11111";
    signal count: integer:=500000;
    signal tmp : std_logic := '0';
   
begin
    
    P0: process(clk,reset)
    begin
        if(reset='1') then
            count<=1;
            tmp<='1';
        elsif(clk'event and clk='1') then
            count <=count-1;
        if (count = 0) then
            tmp <= NOT tmp;
            count <= 100000000;
        end if;
        end if;
        clk_out <= NOT tmp;
    end process;
    
    P1: process(clk_out)
            variable cnt: integer:= -1;
        begin
            if rising_edge(clk_out) then
                if (cnt <= 16) then
                    cnt := cnt + 1;
                    case cnt is
                        when 0 => seg_sel <= "00000";
                        when 1 => seg_sel <= "00001";
                        when 2 => seg_sel <= "00010";
                        when 3 => seg_sel <= "00011";
                        when 4 => seg_sel <= "00100";
                        when 5 => seg_sel <= "00101";
                        when 6 => seg_sel <= "00110";
                        when 7 => seg_sel <= "00111";
                        when 8 => seg_sel <= "01000";
                        when 9 => seg_sel <= "01001";
                        when 10 => seg_sel <= "01010";
                        when 11 => seg_sel <= "01011";
                        when 12 => seg_sel <= "01100";
                        when 13 => seg_sel <= "01101";
                        when 14 => seg_sel <= "01110";
                        when 15 => seg_sel <= "01111";
                        when 16 => seg_sel <= "10000";
                        when others => seg_sel <= "00000"; 
                    end case;
                else
                    cnt := 0;
                end if;
            end if;
        end process;
        
    
    P2:process(seg_sel)
        begin
            case seg_sel is
                when "00000" => seg_out <= "11000000";
                when "00001" => seg_out <= "11111001";
                when "00010" => seg_out <= "10100100";
                when "00011" => seg_out <= "10110000";
                when "00100" => seg_out <= "10011001";
                when "00101" => seg_out <= "10010010";
                when "00110" => seg_out <= "10000010";
                when "00111" => seg_out <= "11111000";
                when "01000" => seg_out <= "10000000";
                when "01001" => seg_out <= "10011000";
                when "01010" => seg_out <= "10001000";
                when "01011" => seg_out <= "10000000";
                when "01100" => seg_out <= "11000110";
                when "01101" => seg_out <= "11000000";
                when "01110" => seg_out <= "10000110";
                when "01111" => seg_out <= "10001110";
                when "10000" => seg_out <= "01111111";
                when others => seg_out <= "00000000";
            end case;
        end process;

end Behavioral;
