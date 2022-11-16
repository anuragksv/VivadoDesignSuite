----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 10:25:35
-- Design Name: 
-- Module Name: HT12E_D - Behavioral
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

entity HT12E_D is
    Port(
         ip_rec: in std_logic_vector(3 downto 0):="0000";
         op_led: out std_logic_vector(3 downto 0):="0000";
         op_parity: out std_logic_vector(1 downto 0):="00";
         seg_out: out std_logic_vector(7 downto 0):= "00000000";
         transistor_sel: out std_logic_vector(3 downto 0):="1110");
end HT12E_D;

architecture Behavioral of HT12E_D is
    signal flag: std_logic:='0';

begin
    op_led <= ip_rec;
    flag <= (ip_rec(0) xor ip_rec(1) xor ip_rec(2) xor ip_rec(3));
    op_parity(0) <= flag;
    op_parity(1) <= not flag;
    
P0:process(ip_rec)
begin    
    case (ip_rec) is
        when "0000" => seg_out <= "11000000";
        when "0001" => seg_out <= "11111001";
        when "0010" => seg_out <= "10100100";
        when "0011" => seg_out <= "10110000";
        when "0100" => seg_out <= "10011001";
        when "0101" => seg_out <= "10010010";
        when "0110" => seg_out <= "10000010";
        when "0111" => seg_out <= "11111000";
        when "1000" => seg_out <= "10000000";
        when "1001" => seg_out <= "10011000";
        when "1010" => seg_out <= "10001000";
        when "1011" => seg_out <= "10000000";
        when "1100" => seg_out <= "11000110";
        when "1101" => seg_out <= "11000000";
        when "1110" => seg_out <= "10000110";
        when "1111" => seg_out <= "10001110";
        when others => seg_out <= "00000000";
    end case;
end process;
end Behavioral;


