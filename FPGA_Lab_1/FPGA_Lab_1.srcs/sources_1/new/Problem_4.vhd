----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2022 19:54:06
-- Design Name: 
-- Module Name: Problem_4 - Behavioral
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

entity Problem_4 is
    Port ( a, b : in STD_LOGIC_VECTOR (3 downto 0);
           y1, y3 : out STD_LOGIC_VECTOR (3 downto 0);
           y2 : inout STD_LOGIC_VECTOR (3 downto 0));
end Problem_4;

architecture Behavioral of Problem_4 is
    signal s1: STD_LOGIC_VECTOR(3 downto 0);
begin

s1 <= not a;
y1 <= a or not (b);
y2 <= s1 and not (b);
y3 <= y2 or not (b);

end Behavioral;

