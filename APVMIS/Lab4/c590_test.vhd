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
	
	init: process
		variable counter : integer := 255;
		variable q_int : integer := 0;
	begin
		OE <= '0';
		CCKEN <= '0';
		CCLR <= '1';
		CCLK <= '1';
		RCLK <= '0';
		
		wait for clock_period * 2;
		
		-- 1 (COUNT + RCO)
		for i in 0 to 255 loop
		
			wait for clock_period / 2;
			CCLK <= '0';
			RCLK <= '1';
			
			wait for clock_period / 8;
			
			q_int := conv_integer(Q);
			
			if q_int = counter then
			else report "FAIL";
			end if;
			if ((counter = 255) and not (RCO = '0')) or ((counter /= 255) and (RCO = '0')) then
				report "FAIL";
			end if;
			
			wait for clock_period / 2;
			CCLK <= '1';
			RCLK <= '0';
			
			wait for clock_period / 8;
			
			if q_int = counter then
			else report "FAIL";
			end if;
			
			if counter = 255 then
				counter := 0;
			else
				counter := counter + 1;
			end if;
		
		end loop;
		
		-- 2 (CCLR)
		for i in 0 to 255 loop
			
			if i = 200 then
				counter := 0;
			end if;
		
			if i > 100 and i < 200 then
				CCLR <= '0';
			else
				CCLR <= '1';
			end if;
		
			wait for clock_period / 2;
			CCLK <= '0';
			RCLK <= '1';
			
			wait for clock_period / 8;
			
			q_int := conv_integer(Q);
			
			if ((q_int = counter) and (CCLR = '1')) or ((q_int = 0) and (CCLR = '0')) then
			else report "FAIL";
			end if;
			
			wait for clock_period / 2;
			CCLK <= '1';
			RCLK <= '0';
			
			wait for clock_period / 8;
			
			if ((q_int = counter) and (CCLR = '1')) or ((q_int = 0) and (CCLR = '0')) then
			else report "FAIL";
			end if;
			
			if counter = 255 then
				counter := 0;
			else
				counter := counter + 1;
			end if;
		
		end loop;
		
		-- 3 (CCKEN)
		for i in 0 to 255 loop
			
			wait for clock_period / 2;
			CCLK <= '0';
			RCLK <= '1';
			
			wait for clock_period / 8;
			
			q_int := conv_integer(Q);
			
			if q_int = counter then
			else report "FAIL";
			end if;
			
			wait for clock_period / 2;
			CCLK <= '1';
			RCLK <= '0';
			
			wait for clock_period / 8;
			
			if q_int = counter then
			else report "FAIL";
			end if;
			
			if i = 101 then
				counter := counter + 1;
			end if;
			
			if i > 100 and i < 200 then
				CCKEN <= '1';
			else
				CCKEN <= '0';
				
				if counter = 255 then
					counter := 0;
				else
					counter := counter + 1;
				end if;
			end if;
		
		end loop;
		
		-- 4 (OE)
		for i in 0 to 255 loop
			
			if i > 100 and i < 200 then
				OE <= '1';
			else
				OE <= '0';
			end if;
			
			wait for clock_period / 2;
			CCLK <= '0';
			RCLK <= '1';
			
			wait for clock_period / 8;
			
			if ((OE = '1') and (Q = "ZZZZZZZZ")) or ((OE = '0') and not (Q = "ZZZZZZZZ")) then
			else report "FAIL";
			end if;
			
			wait for clock_period / 2;
			CCLK <= '1';
			RCLK <= '0';
			
			wait for clock_period / 8;
			
			if ((OE = '1') and (Q = "ZZZZZZZZ")) or ((OE = '0') and not (Q = "ZZZZZZZZ")) then
			else report "FAIL";
			end if;
			
			if counter = 255 then
				counter := 0;
			else
				counter := counter + 1;
			end if;
		
		end loop;

		wait;
   end process;

END;
