----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:56 10/17/2014 
-- Design Name: 
-- Module Name:    ARTIX - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity ARTIX is
    Port ( ledsmain : out  STD_LOGIC_VECTOR (3 downto 0);
           ledsboard : out  STD_LOGIC_VECTOR (3 downto 0);
           pushbuttons : in  STD_LOGIC_VECTOR (4 downto 0);
           dipswitch : in  STD_LOGIC_VECTOR (3 downto 0);
           sysclk_p : in  STD_LOGIC;
           sysclk_n : in  STD_LOGIC;
           rotarysw : in  STD_LOGIC_VECTOR (2 downto 0));
end ARTIX;

architecture Behavioral of ARTIX is

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
	 
	 signal clk_in : std_logic;
	 signal clk : std_logic;
	 signal clk_inv : std_logic;

begin

	ibuf1 : IBUFDS port map (I => sysclk_p, IB => sysclk_n, O => clk_in);
	
	fdiv : freqdiv port map (clk_in, clk);
	
	clk_inv <= not clk;
	
	counter : c590 port map (
		Q(7 downto 4) => ledsmain,
		Q(3 downto 0) => ledsboard,
		CCLK => clk,
		RCLK => clk_inv,
		OE => dipswitch(0),
		CCKEN => dipswitch(1),
		CCLR => dipswitch(2)
		
	);

end Behavioral;

