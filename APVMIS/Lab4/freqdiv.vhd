----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:02:25 10/14/2014 
-- Design Name: 
-- Module Name:    freqdiv - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity freqdiv is
    Port ( CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC);
end freqdiv;

architecture Behavioral of freqdiv is

	

begin

	process (CIN)
		constant freq_div : integer := 4;
		variable counter : integer := 0;
	begin
	
	if CIN = '1' then
	
		if counter = 0 then
			COUT <= '1';
		else
			COUT <= '0';
		end if;
	
		counter := counter + 1;
	elsif CIN = '0' then
		COUT <= '0';
	end if;
	
	if counter = freq_div then
		counter := 0;
	end if;
	
	end process;

end Behavioral;

