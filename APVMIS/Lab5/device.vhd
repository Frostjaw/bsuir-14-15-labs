----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:54 10/28/2014 
-- Design Name: 
-- Module Name:    device - Behavioral 
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
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity device is
    Port ( leds : out  STD_LOGIC_VECTOR (6 downto 0);
           switch : in  STD_LOGIC_VECTOR (3 downto 0);
           button : in  STD_LOGIC_VECTOR (2 downto 0);
			  startbutton : in STD_LOGIC;
           sysclk_p : in  STD_LOGIC;
           sysclk_n : in  STD_LOGIC;
           tx : out  STD_LOGIC);
end device;

architecture Behavioral of device is

	 COMPONENT freqdiv
    PORT(
         CIN : IN  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;

	 signal clk_in : std_logic;
	 signal clk : std_logic;
	 signal data : std_logic_vector(6 downto 0);
	 
	 signal count : std_logic;
	 signal counter : integer range 0 to 15;

begin

	ibuf1 : IBUFDS port map (I => sysclk_p, IB => sysclk_n, O => clk_in);
	
	fdiv : freqdiv port map (clk_in, clk);
	
	leds <= data;
	
	data(0) <= switch(0);
	data(1) <= switch(1);
	data(2) <= switch(2);
	data(3) <= switch(3);
	
	--data(4) <= '0';
	--data(5) <= '0';
	--data(6) <= '0';
	data(4) <= button(0);
	data(5) <= button(1);
	data(6) <= button(2);
	--process (button)
	--begin
	--	if (button(0) = '1') then
	--		data(4) <= not data(4);
	--	end if;
	--	if (button(1) = '1') then
	--		data(5) <= not data(5);
	--	end if;
	--	if (button(2) = '1') then
	--		data(6) <= not data(6);
	--	end if;
	--end process;
	
	-- UART
	process (clk, startbutton)
		type finit_state is (start, bit_0, bit_1, bit_2, bit_3, bit_4, bit_5, bit_6, stop);
		variable state : finit_state;
	begin
		if (startbutton = '1' and startbutton'event) then
			count <= '1';
		end if;
		
		if (clk = '1' and clk'event) then		
		
			if (counter = 8) then			
				case (state) is
					when start => tx <= '0'; state := bit_0;
					when bit_0 => tx <= data(0); state := bit_1;										  
					when bit_1 => tx <= data(1); state := bit_2;
					when bit_2 => tx <= data(2); state := bit_3;
					when bit_3 => tx <= data(3); state := bit_4;
					when bit_4 => tx <= data(4); state := bit_5;
					when bit_5 => tx <= data(5); state := bit_6;
					when bit_6 => tx <= data(6); state := stop;
					when stop  => tx <= '1';	  state := start; count <= '0';
				end case;
			end if;
		end if;
		
	end process;

	process (clk)
	begin
		if (clk = '1' and clk'event) then       
			if (count = '1') then
						if(counter = 15) then
							counter <= 0;
						else counter <= counter + 1;         -- счечик времени через которое считывать бит					
						end if;					
			else counter <= 0;
			end if;
		end if;
	end process;

end Behavioral;

