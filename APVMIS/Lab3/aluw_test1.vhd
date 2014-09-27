--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:20:21 09/27/2014
-- Design Name:   
-- Module Name:   G:/bsuir-14-15-labs/APVMIS/Lab3/aluw_test1.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: aluw1
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
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY aluw_test1 IS
END aluw_test1;
 
ARCHITECTURE behavior OF aluw_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT aluw1
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
   uut: aluw1 PORT MAP (
          a => a,
          b => b,
          cmd => cmd,
          y => y
        );
	
   -- Stimulus process
   stim_proc: process
		file file_inputs : text;
		file file_valid_ys : text;
		variable file_status : file_open_status;
		
		variable buffer_line : line;
		
		variable input : std_logic_vector(9 downto 0);
		variable valid : std_logic_vector(3 downto 0);

   begin		
		file_open(file_status, file_inputs, "_aluw_test_inputs.txt");
		file_open(file_status, file_valid_ys, "_aluw_test_valid_ys.txt");
		
		wait for 100 ns;
		
		while not endfile(file_inputs) and not endfile(file_valid_ys)
		loop
		
			readline(file_inputs, buffer_line);
			read(buffer_line, input);
			
			cmd <= input(9 downto 8);
			a <= input(7 downto 4);
			b <= input(3 downto 0);
			
			readline(file_valid_ys, buffer_line);
			read(buffer_line, valid);
			
			wait for 10 ns;
			
			if y = valid then
				--report "Ok";
			else
				report "Fail";
			end if;
		
		end loop;
		
		wait;
   end process;

END;
