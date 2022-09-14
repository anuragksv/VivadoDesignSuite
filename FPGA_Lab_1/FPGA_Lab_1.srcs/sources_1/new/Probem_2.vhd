----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2022 17:19:24
-- Design Name: 
-- Module Name: Probem_2 - Behavioral
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

entity Probem_2 is
    Port ( a,b : in STD_LOGIC;
           y1,y2,y3,y4,y5,y6, y7 : out STD_LOGIC);
end Probem_2;

architecture Behavioral of Probem_2 is

begin

y1 <= a and b;
y2 <= a or b;
y3 <= a nand b;
y4 <= a nor b;
y5 <= a xor b;
y6 <= a xnor b;
y7 <= not a;

end Behavioral;
