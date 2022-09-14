----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2022 19:54:06
-- Design Name: 
-- Module Name: Problem_3 - Behavioral
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

entity Problem_3 is
    Port ( a : in STD_LOGIC_VECTOR (6 downto 0);
           b : in STD_LOGIC_VECTOR (5 downto 0);
           c : out STD_LOGIC_VECTOR (6 downto 0));
end Problem_3;

architecture Behavioral of Problem_3 is

begin

c(0) <= a(0) or b(0);
c(1) <= a(1) and b(1);
c(2) <= a(2) nor b(2);
c(3) <= a(3) nand b(3);
c(4) <= a(4) xor b(4);
c(5) <= a(5) xnor b(5);
c(6) <= not a(6);

end Behavioral;