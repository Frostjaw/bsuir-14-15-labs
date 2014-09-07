----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:30 09/07/2014 
-- Design Name: 
-- Module Name:    aluw1 - Behavioral 
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

entity aluw1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cmd : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end aluw1;

architecture Behavioral of aluw1 is

	signal per : STD_LOGIC_VECTOR (3 downto 0);
	signal temp_in2 : STD_LOGIC_VECTOR (3 downto 0);
	signal mask_inv : STD_LOGIC_VECTOR (3 downto 0);
	signal mask_and : STD_LOGIC_VECTOR (3 downto 0);
	
	signal m_inv : STD_LOGIC;
	signal m_and : STD_LOGIC;

begin

	m_inv <= (not cmd(1)) and cmd(0);
	m_and <= (not cmd(1)) or (cmd(1) and cmd(0));
	
	mask_inv <= m_inv & m_inv & m_inv & m_inv;
	mask_and <= m_and & m_and & m_and & m_and;
	
	temp_in2 <= (b xor mask_inv) and mask_and;

	per(0) <= cmd(0) xor cmd(1);
	per(1) <= (a(0) and temp_in2(0)) or ((a(0) xor temp_in2(0)) and per(0));
	per(2) <= (a(1) and temp_in2(1)) or ((a(1) xor temp_in2(1)) and per(1));
	per(3) <= (a(2) and temp_in2(2)) or ((a(2) xor temp_in2(2)) and per(2));
	
	y <= a xor temp_in2 xor per;
	
end Behavioral;

