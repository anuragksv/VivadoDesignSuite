----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.09.2022 10:58:07
-- Design Name: 
-- Module Name: Universal_adder_subtractor - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Universal_adder_subtractor is
    Port ( a, b : in STD_LOGIC_VECTOR (3 downto 0) := "0000";
           m : in STD_LOGIC:='0';
           br, c : inout STD_LOGIC:='0';
           y : out STD_LOGIC_VECTOR(3 downto 0):="0000");
end Universal_adder_subtractor;

architecture Behavioral of Universal_adder_subtractor is
    signal s1: STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal s2: STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal i: STD_LOGIC:='0';
    
begin
    s1 <= ('0' & a) + ('0' & (b xor (m & m & m & m))) + ("0000" & m);
    c <= s1(4);
    br <= not s1(4);
    i <= br and m;
    s2 <= (i & i & i & i) xor (s1(3 downto 0));
    y <= s2 + ("000" & i);


end Behavioral;
