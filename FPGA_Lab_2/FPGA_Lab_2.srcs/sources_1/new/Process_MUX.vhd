----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.09.2022 11:49:33
-- Design Name: 
-- Module Name: Process_MUX - Behavioral
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

entity Process_MUX is
    Port ( a, b, c, d: in STD_LOGIC :='0';
           y: out STD_LOGIC := '0' );
end Process_MUX;
                                                                            
architecture Behavioral of Process_MUX is
    signal I0, I1, I2, I3: STD_LOGIC:='0';
    signal cd: STD_LOGIC_VECTOR(1 downto 0):="00";

begin
    cd <= c&d;
    P0: Process (a, b)
        begin 
            I0 <= b;
            I1 <= a xnor b;
            I2 <= a and b;
            I3 <= '1';
    end Process;

    P1: Process (cd, I0, I1, I2, I3)
        begin
            case (cd) is
                when "00" => y <= I0;
                when "01" => y <= I1;
                when "10" => y <= I2;
                when "11" => y <= I3;
                when others => y <= '0';
            end case;
        end Process;

end Behavioral;
