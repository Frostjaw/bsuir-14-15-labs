----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:38 09/12/2014 
-- Design Name: 
-- Module Name:    jk - Behavioral 
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

entity jk is
    Port ( SN : in  STD_LOGIC;
           J : in  STD_LOGIC;
           C : in  STD_LOGIC;
           K : in  STD_LOGIC;
           RN : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end jk;

architecture Behavioral of jk is
	signal qtemp, notQtemp : std_logic :='0';
begin
	Q <= qtemp;
	nQ <= notQtemp;

	process(C,RN,SN)
	begin
		if(RN = '0') then           --notR the output.
			qtemp <= '0';
			notQtemp <= '1';
		elsif(SN = '0') then
			qtemp <= '1';
			notQtemp <= '0';
		elsif( rising_edge(C) ) then
			if(J='0' and K='0') then       --No change in the output
				NULL;
			elsif(J='0' and K='1') then    --Set the output.
				qtemp <= '0';
				notQtemp <= '1';
			elsif(J='1' and K='0') then    --Reset the output.
				qtemp <= '1';
				notQtemp <= '0';
			else                           --Toggle the output.
				qtemp <= not qtemp;
				notQtemp <= not notQtemp;
			end if;
		end if;
	end process;

end Behavioral;
