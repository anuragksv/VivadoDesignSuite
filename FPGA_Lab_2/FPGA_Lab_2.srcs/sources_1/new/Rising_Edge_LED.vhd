----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.09.2022 13:04:30
-- Design Name: 
-- Module Name: Rising_Edge_LED - Behavioral
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

entity Rising_Edge_LED is
    Port ( a, ctrl : in STD_LOGIC:='0';
           y1: inout STD_LOGIC_VECTOR (7 downto 0):="10000000";
           y2 : inout STD_LOGIC_VECTOR (7 downto 0):="00000001");
end Rising_Edge_LED;

architecture Behavioral of Rising_Edge_LED is

begin
    P0: Process (a, ctrl)
      begin
        if rising_edge(a) then
            if ctrl = '0' then
                y1 <= y1(0) & y1(7 downto 1);
                y2 <= y2(6 downto 0) & y2(7);
            else
                y1 <= y1(6 downto 0) & y1(7);
                y2 <= y2(0) & y2(7 downto 1);
            end if;
        end if;
      end Process;
end Behavioral;
