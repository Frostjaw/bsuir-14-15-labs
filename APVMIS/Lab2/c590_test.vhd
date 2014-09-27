--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:56:23 09/23/2014
-- Design Name:   
-- Module Name:   E:/bsuir-14-15-labs/APVMIS/Lab2/c590_test.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: c590
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY c590_test IS
END c590_test;
 
ARCHITECTURE behavior OF c590_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
    

   --Inputs
   signal OE : std_logic := '0';
   signal RCLK : std_logic := '0';
   signal CCKEN : std_logic := '0';
   signal CCLK : std_logic := '0';
   signal CCLR : std_logic := '0';

 	--Outputs
   signal RCO : std_logic;
   signal Q : std_logic_vector(7 downto 0);

   -- Clock period definitions
	constant clock_period : time := 100 ns;
	constant CCLR_period : time := 26000 ns;
	constant OE_period : time := 30000 ns;
	constant CCKEN_period : time := 32000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: c590 PORT MAP (
          OE => OE,
          RCLK => RCLK,
          CCKEN => CCKEN,
          CCLK => CCLK,
          CCLR => CCLR,
          RCO => RCO,
          Q => Q
        );

   -- Clock process definitions
   RCLK_process :process
   begin
		RCLK <= '0';
		wait for clock_period/2;
		RCLK <= '1';
		wait for clock_period/2;
   end process;
 
   CCLK_process :process
   begin
		CCLK <= '1';
		wait for clock_period/2;
		CCLK <= '0';
		wait for clock_period/2;
   end process;
	
   CCKEN_process :process
   begin
		CCKEN <= '0';
		wait for CCKEN_period;
		CCKEN <= '1';
		wait for clock_period * 10;
   end process;
	
	OE_process :process
   begin
		OE <= '0';
		wait for OE_period;
		OE <= '1';
		wait for clock_period * 10;
   end process;
	
	CCLR_process :process
   begin
		CCLR <= '1';
		wait for CCLR_period;
		CCLR <= '0';
		wait for clock_period * 10;
   end process;

END;
