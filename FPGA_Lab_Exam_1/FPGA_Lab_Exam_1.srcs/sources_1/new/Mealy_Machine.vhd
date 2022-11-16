----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2022 10:58:30
-- Design Name: 
-- Module Name: Mealy_Machine - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mealy_Machine is
    Port (  input : in STD_LOGIC:= '0';
            reset : in STD_LOGIC:= '0';
            clk : in STD_LOGIC:= '0';
            output : out STD_LOGIC:= '0';
            clk_out : inout STD_LOGIC:= '0');
end Mealy_Machine;

architecture Behavioral of Mealy_Machine is
    
    type state is (s0,s1,s2,s3,s4);
    signal current_state, next_state: state:= s0;
    
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
    
    
    
    P1: process( clk_out, reset)
        begin
            if (reset='1') then 
                current_state <= s0;
            elsif rising_edge(clk_out) then
                current_state <= next_state;
            end if;
        end process;

    P2: process (current_state, input)
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
                        next_state <= s4;
                        output <= '0';
                    end if;
               
               when s4 =>
                   if (input = '0') then
                        next_state <= s0;
                        output <= '0';
                   else
                        next_state <= s2;
                        output <= '1';
                    end if;
        end case;        
    end process;
end Behavioral;
