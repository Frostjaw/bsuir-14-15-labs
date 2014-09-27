----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:22 09/23/2014 
-- Design Name: 
-- Module Name:    c590 - Behavioral 
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

entity c590 is
    Port ( OE : in  STD_LOGIC;--inv
           RCLK : in  STD_LOGIC;
           CCKEN : in  STD_LOGIC;--inv
           CCLK : in  STD_LOGIC;
           CCLR : in  STD_LOGIC;--inv
           RCO : out  STD_LOGIC;--inv
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end c590;

architecture Behavioral of c590 is

	component jk is
		    Port ( SN : in  STD_LOGIC;
           J : in  STD_LOGIC;
           C : in  STD_LOGIC;
           K : in  STD_LOGIC;
           RN : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
	end component jk;
	
	signal f_sig : std_logic;
	signal t_ins : std_logic_vector(7 downto 0);
	signal r_ins : std_logic_vector(7 downto 0);
	signal s_ins : std_logic_vector(7 downto 0);
	signal r_out : std_logic_vector(7 downto 0);
	signal t_out_dir : std_logic_vector(7 downto 0);
	signal t_out_inv : std_logic_vector(7 downto 0);
	
begin
	
	t0 : jk port map ('1', '1', t_ins(0), '1', CCLR, t_out_dir(0), t_out_inv(0));
	t1 : jk port map ('1', '1', t_ins(1), '1', CCLR, t_out_dir(1), t_out_inv(1));
	t2 : jk port map ('1', '1', t_ins(2), '1', CCLR, t_out_dir(2), t_out_inv(2));
	t3 : jk port map ('1', '1', t_ins(3), '1', CCLR, t_out_dir(3), t_out_inv(3));
	t4 : jk port map ('1', '1', t_ins(4), '1', CCLR, t_out_dir(4), t_out_inv(4));
	t5 : jk port map ('1', '1', t_ins(5), '1', CCLR, t_out_dir(5), t_out_inv(5));
	t6 : jk port map ('1', '1', t_ins(6), '1', CCLR, t_out_dir(6), t_out_inv(6));
	t7 : jk port map ('1', '1', t_ins(7), '1', CCLR, t_out_dir(7), t_out_inv(7));
	
	r0 : jk port map ('1', t_out_dir(0), RCLK, t_out_inv(0), '1', r_out(0));
	r1 : jk port map ('1', t_out_dir(1), RCLK, t_out_inv(1), '1', r_out(1));
	r2 : jk port map ('1', t_out_dir(2), RCLK, t_out_inv(2), '1', r_out(2));
	r3 : jk port map ('1', t_out_dir(3), RCLK, t_out_inv(3), '1', r_out(3));
	r4 : jk port map ('1', t_out_dir(4), RCLK, t_out_inv(4), '1', r_out(4));
	r5 : jk port map ('1', t_out_dir(5), RCLK, t_out_inv(5), '1', r_out(5));
	r6 : jk port map ('1', t_out_dir(6), RCLK, t_out_inv(6), '1', r_out(6));
	r7 : jk port map ('1', t_out_dir(7), RCLK, t_out_inv(7), '1', r_out(7));

	f_sig <= CCLK and (((not CCKEN) or f_sig) and (not CCLK));
	
	t_ins(0) <= CCLK and (not CCKEN);
	t_ins(1) <= not ((not f_sig) and (t_out_dir(0)));
	t_ins(2) <= not ((not f_sig) and (t_out_dir(0) and t_out_dir(1)));
	t_ins(3) <= not ((not f_sig) and (t_out_dir(0) and t_out_dir(1) and t_out_dir(2)));
	t_ins(4) <= not ((not f_sig) and (t_out_dir(0) and t_out_dir(1) and t_out_dir(2) and t_out_dir(3)));
	t_ins(5) <= not ((not f_sig) and (t_out_dir(0) and t_out_dir(1) and t_out_dir(2) and t_out_dir(3) and t_out_dir(4)));
	t_ins(6) <= not ((not f_sig) and (t_out_dir(0) and t_out_dir(1) and t_out_dir(2) and t_out_dir(3) and t_out_dir(4) and t_out_dir(5)));
	t_ins(7) <= not ((not f_sig) and (t_out_dir(0) and t_out_dir(1) and t_out_dir(2) and t_out_dir(3) and t_out_dir(4) and t_out_dir(5) and t_out_dir(6)));
	
	RCO <= not (t_out_dir(0) and t_out_dir(1) and t_out_dir(2) and t_out_dir(3) and t_out_dir(4) and t_out_dir(5) and t_out_dir(6) and t_out_dir(7));

	Q <= r_out when OE = '0' else "ZZZZZZZZ" when OE = '1';

end Behavioral;

