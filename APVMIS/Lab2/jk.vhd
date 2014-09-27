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
	
begin

	JK_tri: process (C, RN, SN)
	variable JK, RS : STD_LOGIC_VECTOR (1 downto 0);
	variable	res : STD_LOGIC := '0';
	begin
		RS := (RN & SN);
		JK := (J & K);
		case (RS) is
			when "01" => res := '0';
			when "10" => res := '1';
			when "11" => if (C'event and C = '1') then 
								case (JK) is
									when "01" => res := '0';
									when "10" => res := '1';
									when "11" => res := not res;
									when others => null;
								end case;
							 end if;
			when others => null;
		end case;
				  
		Q <= res;
		nQ <= not res;
	end process JK_tri;

end Behavioral;

