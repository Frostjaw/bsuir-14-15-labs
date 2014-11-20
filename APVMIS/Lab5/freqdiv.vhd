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
	constant baudRate : integer := 38400;
	constant period : integer := 200000000 / baudRate;
	constant halfPeriod : integer := period / 2;
	signal CLOCK_TMP : std_logic := '0';
begin
	process(CIN)	
		variable i : integer := 0;	
		begin
		
			if(CIN'event and CIN = '1') then
				
				i := i + 1;
				
				if (i = halfPeriod) then 
					
					CLOCK_TMP <= not CLOCK_TMP;
					i := 0;
					
				end if;
				
			end if;
			
	end process;
	
	COUT <= CLOCK_TMP;
	
end Behavioral;
