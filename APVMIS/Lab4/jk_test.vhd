--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:45:24 09/14/2014
-- Design Name:   
-- Module Name:   G:/bsuir-14-15-labs/APVMIS/Lab2/jk_test.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jk
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
 
ENTITY jk_test IS
END jk_test;
 
ARCHITECTURE behavior OF jk_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jk
    PORT(
         SN : IN  std_logic;
         J : IN  std_logic;
         C : IN  std_logic;
         K : IN  std_logic;
         RN : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SN : std_logic := '0';
   signal J : std_logic := '0';
   signal C : std_logic := '0';
   signal K : std_logic := '0';
   signal RN : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant C_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk PORT MAP (
          SN => SN,
          J => J,
          C => C,
          K => K,
          RN => RN,
          Q => Q,
          nQ => nQ
        );

   -- Clock process definitions
   C_process :process
		variable i : integer := 0;
   begin
		C <= '0';
		wait for C_period/2;
		if i < 100 then
			C <= '1';
		end if;
		wait for C_period/2;
		
		i := i + 1;
		
		if i = 200 then
			i := 0;
		end if;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
		variable i : integer := 0;
   begin		
      
		RN <= '1';
		SN <= '1';
		
		if i < 6 then
			RN <= '0';
		end if;
		
		K <= '0';
		J <= '1';

      wait for C_period * 3;
		
		J <= '0';
		K <= '1';

      wait for C_period * 3;
		
				
		J <= '0';
		K <= '0';

      wait for C_period * 3;
		
		J <= '1';
		K <= '1';

      wait for C_period * 3;
		
		i := i + 1;
		
		wait for C_period * 3;
		
		if i = 10 then
			i := 0;
		end if;
		
   end process;

END;
