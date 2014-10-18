--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:27:49 10/14/2014
-- Design Name:   
-- Module Name:   C:/Users/Frostjaw/bsuir-14-15-labs/APVMIS/Lab4/FPGA_test.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FPGA
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
 
ENTITY FPGA_test IS
END FPGA_test;
 
ARCHITECTURE behavior OF FPGA_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FPGA
    PORT(
         key0 : IN  std_logic;
         key1 : IN  std_logic;
         key2 : IN  std_logic;
         key3 : IN  std_logic;
         key4 : IN  std_logic;
         key5 : IN  std_logic;
         key6 : IN  std_logic;
         key7 : IN  std_logic;
         clk : IN  std_logic;
         led0 : OUT  std_logic;
         led1 : OUT  std_logic;
         led2 : OUT  std_logic;
         led3 : OUT  std_logic;
         led4 : OUT  std_logic;
         led5 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal key0 : std_logic := '0';
   signal key1 : std_logic := '0';
   signal key2 : std_logic := '0';
   signal key3 : std_logic := '0';
   signal key4 : std_logic := '0';
   signal key5 : std_logic := '0';
   signal key6 : std_logic := '0';
   signal key7 : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal led0 : std_logic;
   signal led1 : std_logic;
   signal led2 : std_logic;
   signal led3 : std_logic;
   signal led4 : std_logic;
   signal led5 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FPGA PORT MAP (
          key0 => key0,
          key1 => key1,
          key2 => key2,
          key3 => key3,
          key4 => key4,
          key5 => key5,
          key6 => key6,
          key7 => key7,
          clk => clk,
          led0 => led0,
          led1 => led1,
          led2 => led2,
          led3 => led3,
          led4 => led4,
          led5 => led5
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		key2 <= '1';

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
