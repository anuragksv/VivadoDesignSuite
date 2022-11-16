----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.09.2022 12:40:05
-- Design Name: 
-- Module Name: Mealy_Machine_1011 - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mealy_Machine_1011 is
    Port ( input : in STD_LOGIC := '0';
           reset : in STD_LOGIC := '0';
           clk : in STD_LOGIC := '0';
           output : out STD_LOGIC := '0');
end Mealy_Machine_1011;

architecture Behavioral of Mealy_Machine_1011 is

type state is (s0,s1,s2,s3);
signal current_state, next_state: state:= s0;
 
begin
    P0: process (clk, reset)
        begin
           if (reset = '1') then
                current_state <= s0;
           elsif rising_edge(clk) then
                current_state <= next_state;
           end if; 
        end process;

    P1: process (current_state, input)
        begin
            case current_state is
                when s0 =>
                    if (input = '0') then
                        next_state <= s0;
                        output <= '0';                        
                    else
                        next_state <= s1;
                        output <= '0';
                    end if;
                when s1 => 
                    if (input = '0') then
                        next_state <= s0;
                        output <= '0';
                    else
                        next_state <= s2;
                        output <= '0';
                    end if; 
                when s2 =>
                    if (input = '0') then
                        next_state <= s3;
                        output <= '0';
                    else
                        next_state <= s2;
                        output <= '0';
                    end if;
                    
                when s3 =>
                    if (input = '0') then
                        next_state <= s0;
                        output <= '0';
                    else
                        next_state <= s0;
                        output <= '1';
                    end if;
                
        end case;        
    end process;
        

end Behavioral;
