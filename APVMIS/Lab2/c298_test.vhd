--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:09:11 09/18/2014
-- Design Name:   
-- Module Name:   E:/bsuir-14-15-labs/APVMIS/Lab2/c298_test.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: c298
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
 
ENTITY c298_test IS
END c298_test;
 
ARCHITECTURE behavior OF c298_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT c298
    PORT(
         LW : IN  std_logic_vector(3 downto 0);
         HW : IN  std_logic_vector(3 downto 0);
         WS : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LW : std_logic_vector(3 downto 0) := (others => '0');
   signal HW : std_logic_vector(3 downto 0) := (others => '0');
   signal WS : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: c298 PORT MAP (
          LW => LW,
          HW => HW,
          WS => WS,
          CLK => CLK,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
		variable i : integer := 0;
   begin
		CLK <= '0';
		wait for CLK_period/2;
		if i < 100 then
			CLK <= '1';
		end if;
		wait for CLK_period/2;
		
		i := i + 1;
		
		if i = 200 then
			i := 0;
		end if;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		WS <= '0';
		
		for i in 0 to 15 loop
			LW <= conv_std_logic_vector(i, 4);
			for j in 0 to 15 loop
				HW <= conv_std_logic_vector(j, 4);
				
				
				
				wait for CLK_period / 4;
			end loop;
				
		end loop;
			
      wait for CLK_period*10;
		
		WS <= '1';
		
		for i in 0 to 15 loop
			LW <= conv_std_logic_vector(i, 4);
			for j in 0 to 15 loop
				HW <= conv_std_logic_vector(j, 4);
				
				
				
				wait for CLK_period / 4;
			end loop;
				
		end loop;

   end process;

END;
