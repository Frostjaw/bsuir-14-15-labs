----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:29 10/14/2014 
-- Design Name: 
-- Module Name:    FPGA - Behavioral 
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

entity FPGA is
    Port ( key0 : in  STD_LOGIC;
           key1 : in  STD_LOGIC;
           key2 : in  STD_LOGIC;
           key3 : in  STD_LOGIC;
           key4 : in  STD_LOGIC;
           key5 : in  STD_LOGIC;
           key6 : in  STD_LOGIC;
           key7 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           led0 : out  STD_LOGIC;
           led1 : out  STD_LOGIC;
           led2 : out  STD_LOGIC;
           led3 : out  STD_LOGIC;
           led4 : out  STD_LOGIC;
           led5 : out  STD_LOGIC);
end FPGA;

architecture Behavioral of FPGA is

	 COMPONENT freqdiv
    PORT(
         CIN : IN  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT c590
    PORT(
         OE : IN  std_logic;
         RCLK : IN  std_logic;
         CCKEN : IN  std_logic;
         CCLK : IN  std_logic;
         CCLR : IN  std_logic;
         RCO : OUT  std_logic;
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
	 signal Q : std_logic_vector(7 downto 0);
	 
	 signal clock : std_logic;
	 signal clock_inv : std_logic;

begin

	clock_inv <= not clock;

	divide_freq : freqdiv port map ( clk, clock );
	counter : c590 port map ( key0, clock_inv, key1, clock, key2, led5, Q );
	
	led0 <= Q(0);
	led1 <= Q(1);
	led2 <= Q(2);
	led3 <= Q(3);
	led4 <= Q(4);

end Behavioral;

