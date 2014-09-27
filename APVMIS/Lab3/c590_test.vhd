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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;
 
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
	
	signal q_ref : std_logic_vector(7 downto 0);
 
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
		  
	CLK_proc : process
	begin
	
	CCLK <= '1';
	RCLK <= '0';
	wait for clock_period / 2;
	CCLK <= '0';
	RCLK <= '1';
	wait for clock_period / 2;
	
	end process;
		  
	process
	begin
		OE <= '0';
		CCKEN <= '0';
		CCLR <= '1';

		wait for clock_period * 1.5; -- wait for second RCLK tick
	
		-- 1
		for j in 0 to 255 loop
			q_ref <= conv_std_logic_vector(j, 8);
			
			if not Q = q_ref then
				report "[1] COUNT error";
			end if;
			
			if (j = 255) and not (RCO = '0') then
				report "[1] RCO error";
			end if;

			wait for clock_period;
		end loop;
		
		-- 2
		for j in 0 to 255 loop
			q_ref <= conv_std_logic_vector(j, 8);
			
			if j = 100 then
				CCLR <= '0';
			end if;
			
			if (not Q = q_ref) and (CCLR = '1') then
				report "[2] COUNT error";
			elsif (not Q = "00000000") and (CCLR = '0') then
				report "[2] CCLR error";
			end if;

			wait for clock_period;
		end loop;
		
		CCLR <= '1';
		
		-- 3
		for j in 0 to 255 loop
			q_ref <= conv_std_logic_vector(j, 8);
			
			if j = 100 then
				OE <= '1';
			end if;
			
			if (not Q = q_ref) and (OE = '1') then
				report "[3] COUNT error";
			elsif (not Q = "ZZZZZZZZ") and (OE = '0') then
				report "[3] OE error";
			end if;

			wait for clock_period;
		end loop;
		
		OE <= '0';
		
		-- 4
		for j in 0 to 255 loop
			if j <= 100 then
				q_ref <= conv_std_logic_vector(j, 8);
			end if;
			
			if j >= 200 then
				q_ref <= conv_std_logic_vector(j - 100, 8);
			end if;
			
			if j = 100 then
				CCKEN <= '1';
			end if;
			
			if j = 200 then
				CCKEN <= '0';
			end if;
			
			if not Q = q_ref then
				report "[4] COUNT error";
			end if;

			wait for clock_period;
		end loop;
	
		CCKEN <= '0';
		
		wait;
   end process;

END;
