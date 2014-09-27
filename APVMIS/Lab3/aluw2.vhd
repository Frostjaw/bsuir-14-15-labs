----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:03 09/07/2014 
-- Design Name: 
-- Module Name:    aluw2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aluw2 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cmd : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end aluw2;

architecture Behavioral of aluw2 is

begin

	y <=  a + b when cmd = "00" else
			a - b when cmd = "01" else
			a + 1 when cmd = "10" else
			b + a when cmd = "11";

end Behavioral;

