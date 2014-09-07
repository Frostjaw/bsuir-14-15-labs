--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:08:29 09/07/2014
-- Design Name:   
-- Module Name:   D:/bsuir-14-15-labs/APVMIS/Lab1/aluw4test.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: aluw4
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY aluw4test IS
END aluw4test;
 
ARCHITECTURE behavior OF aluw4test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT aluw4
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cmd : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cmd : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
 
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: aluw4 PORT MAP (
          a => a,
          b => b,
          cmd => cmd,
          y => y
        );
 
	process begin
	
	for i in 0 to 3 loop
		cmd <= conv_std_logic_vector(i, 2);
		for j in 0 to 15 loop
			a <= conv_std_logic_vector(j, 4);
			for k in 0 to 15 loop
				b <= conv_std_logic_vector(k, 4);
				wait for 0.1 ns;
			end loop;
			
		end loop;
	
	end loop;
	
	end process;
END;
