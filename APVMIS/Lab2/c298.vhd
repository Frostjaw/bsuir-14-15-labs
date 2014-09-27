----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:39 09/18/2014 
-- Design Name: 
-- Module Name:    c298 - Behavioral 
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

entity c298 is
    Port ( 
				LW : in STD_LOGIC_VECTOR (3 downto 0);
				HW : in STD_LOGIC_VECTOR (3 downto 0);
				
				WS : in  STD_LOGIC;
				CLK : in  STD_LOGIC;
				
				Q : out STD_LOGIC_VECTOR (3 downto 0));
end c298;

architecture Behavioral of c298 is

	component jk is
		    Port ( SN : in  STD_LOGIC;
           J : in  STD_LOGIC;
           C : in  STD_LOGIC;
           K : in  STD_LOGIC;
           RN : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
	end component jk;

	signal A : STD_LOGIC_VECTOR (1 downto 0);
   signal B : STD_LOGIC_VECTOR (1 downto 0);
   signal C : STD_LOGIC_VECTOR (1 downto 0);
   signal D : STD_LOGIC_VECTOR (1 downto 0);
	signal QA : STD_LOGIC;
   signal QB : STD_LOGIC;
   signal QC : STD_LOGIC;
   signal QD : STD_LOGIC;
	signal VS : STD_LOGIC_VECTOR(3 downto 0);
	signal VR : STD_LOGIC_VECTOR(3 downto 0);
	signal VQ : STD_LOGIC_VECTOR(3 downto 0);

begin

	A(0) <= LW(0);
	B(0) <= LW(1);
	C(0) <= LW(2);
	D(0) <= LW(3);
	
	A(1) <= HW(0);
	B(1) <= HW(1);
	C(1) <= HW(2);
	D(1) <= HW(3);
	
	VR(0) <= not ((A(0) and (not WS)) or (A(1) and (not (not WS))));
	VS(0) <= not VR(0);
	VR(1) <= not ((B(0) and (not WS)) or (B(1) and (not (not WS))));
	VS(1) <= not VR(1);
	VR(2) <= not ((C(0) and (not WS)) or (C(1) and (not (not WS))));
	VS(2) <= not VR(2);
	VR(3) <= not ((D(0) and (not WS)) or (D(1) and (not (not WS))));
	VS(3) <= not VR(3);
	
	jk0: jk port map (SN => '1', J => VS(0), C => CLK, K => VR(0), RN => '1', Q => VQ(0));
	jk1: jk port map (SN => '1', J => VS(1), C => CLK, K => VR(1), RN => '1', Q => VQ(1));
	jk2: jk port map (SN => '1', J => VS(2), C => CLK, K => VR(2), RN => '1', Q => VQ(2));
	jk3: jk port map (SN => '1', J => VS(3), C => CLK, K => VR(3), RN => '1', Q => VQ(3));
	
	QA <= VQ(0);
	QB <= VQ(1);
	QC <= VQ(2);
	QD <= VQ(3);
	
	Q(0) <= QA;
	Q(1) <= QB;
	Q(2) <= QC;
	Q(3) <= QD;

end Behavioral;

