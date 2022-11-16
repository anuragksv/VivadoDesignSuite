----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.09.2022 11:29:14
-- Design Name: 
-- Module Name: All_Dimension_Array_Design - Behavioral
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

entity All_Dimension_Array_Design is
    Port ( sel : in STD_LOGIC;
           dt1, dt2, dt3, dt4, dt5, dt6, dt7, str_out : out STD_LOGIC);
end All_Dimension_Array_Design;

architecture Behavioral of All_Dimension_Array_Design is
--Declaration and Assignment Section of Constants, Arrays and Strings

--String Declraration
constant msg: string(1 to 8):= "DIATDRDO";

--Array Declaration and Assignment
type dis_data is array (0 to 3) of std_logic_vector (0 to 7);
constant data_d: dis_data:=("00000000","00000001","00000010","00000011");

--Array Declaration and Assignment with datatype and range
type com_data is array (0 to 7) of integer range 0 to 255;
constant data_c: com_data:= (0,1,2,3,4,5,6,7);

--2D Array Declaration and Assignment
type lu_table is array (0 to 4, 0 to 2) of integer range 0 to 255;
signal sample_array1: lu_table:= 
    (
        (1,2,3),
        (4,5,6),
        (7,8,9),
        (10,11,12)
    );

--3D Array Declaration and Assignment
type lu_table2 is array (0 to 1, 0 to 1, 0 to 1) of integer range 0 to 255;
signal sample_array2: lu_table2:=
    (
        ( (1,2),(3,4) ),
        ( (5,6),(7,8) )
    );

--3D Array Declaration and Assignment
type lu_table3 is array (0 to 1, 0 to 1, 0 to 2) of integer range 0 to 255;
signal sample_array3: lu_table3:=
    (
        ( (1,2,3),(4,5,6) ),
        ( (7,8,9),(10,11,12) )
    );

--3D Array Declaration and Assignment
type lu_table4 is array (0 to 2, 0 to 1, 0 to 1) of integer range 0 to 255;
signal sample_array4: lu_table4:=
    (
        ((10,20),(30,40)),
        ((50,60),(70,80)),
        ((90,100),(110,120))
    );
    
--3D Array Declaration and Assignment
type lu_table5 is array (0 to 1, 0 to 1, 0 to 1, 0 to 1) of integer range 0 to 255;
signal sample_array5: lu_table5:=
    (
        (
            (),
            ()
        ),
        (
            ((),()),
            ((),())
        )
    );


begin


end Behavioral;
