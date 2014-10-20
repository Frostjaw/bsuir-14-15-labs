--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:32:52 10/20/2014
-- Design Name:   
-- Module Name:   C:/APVMIS/Lab4/ARTIX_test.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ARTIX
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
library UNISIM;
use UNISIM.VComponents.all;
 
ENTITY ARTIX_test IS
END ARTIX_test;
 
ARCHITECTURE behavior OF ARTIX_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ARTIX
    PORT(
         ledsmain : OUT  std_logic_vector(3 downto 0);
         ledsboard : OUT  std_logic_vector(3 downto 0);
         pushbuttons : IN  std_logic_vector(4 downto 0);
         dipswitch : IN  std_logic_vector(3 downto 0);
         sysclk_p : IN  std_logic;
         sysclk_n : IN  std_logic;
         rotarysw : IN  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
 
   --Inputs
   signal pushbuttons : std_logic_vector(4 downto 0) := (others => '0');
   signal dipswitch : std_logic_vector(3 downto 0) := (others => '0');
   signal sysclk_p : std_logic := '0';
   signal sysclk_n : std_logic := '0';
   signal rotarysw : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ledsmain : std_logic_vector(3 downto 0);
   signal ledsboard : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ARTIX PORT MAP (
          ledsmain => ledsmain,
          ledsboard => ledsboard,
          pushbuttons => pushbuttons,
          dipswitch => dipswitch,
          sysclk_p => sysclk_p,
          sysclk_n => sysclk_n,
          rotarysw => rotarysw
        );
	
   -- Clock process definitions
   clock_process :process
   begin
		sysclk_p <= '0';
		sysclk_n <= '1';
		wait for clock_period/2;
		sysclk_p <= '1';
		sysclk_n <= '0';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		dipswitch(0) <= '0';
		dipswitch(1) <= '0';
		dipswitch(2) <= '1';
		
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
