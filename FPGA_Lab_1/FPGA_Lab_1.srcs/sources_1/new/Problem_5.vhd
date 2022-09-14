----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2022 19:54:06
-- Design Name: 
-- Module Name: Problem_5 - Behavioral
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

entity Problem_5 is
    Port ( a, b, c : in STD_LOGIC_VECTOR (7 downto 0):="00000000";
           y1, y2 : out STD_LOGIC_VECTOR (7 downto 0):="00000000";
           y3 : out STD_LOGIC_VECTOR (3 downto 0):="0000");
end Problem_5;

architecture Behavioral of Problem_5 is

begin
    y1 <= a(6 downto 0) & b(7);
    y2 <= c(3 downto 0) & b(7 downto 4);
    y3 <= "00" & c( 1 downto 0) and a(7 downto 6) & "11";    

end Behavioral;
