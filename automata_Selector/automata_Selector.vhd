----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:20 03/18/2017 
-- Design Name: 
-- Module Name:    automata_Selector - Behavioral 
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

entity automata_Selector is
    Port ( opcode : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           clk_automata_0 : out  STD_LOGIC;
           clk_automata_1 : out  STD_LOGIC;
           clk_automata_2 : out  STD_LOGIC;
           clk_automata_3 : out  STD_LOGIC;
           clk_automata_4 : out  STD_LOGIC;
           clk_automata_5 : out  STD_LOGIC;
           clk_automata_6 : out  STD_LOGIC;
           clk_automata_7 : out  STD_LOGIC;
           clk_automata_8 : out  STD_LOGIC;
           clk_automata_9 : out  STD_LOGIC;
           clk_automata_10 : out  STD_LOGIC;
           clk_automata_11 : out  STD_LOGIC;
           clk_automata_12 : out  STD_LOGIC;
           clk_automata_13 : out  STD_LOGIC;
           clk_automata_14 : out  STD_LOGIC;
           clk_automata_15 : out  STD_LOGIC);
end automata_Selector;

architecture Behavioral of automata_Selector is

begin
process (clk, opcode)
begin

		case opcode is
			when "0000"=>
				clk_automata_0  <=clk;
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0001"=>
				clk_automata_0  <='0';
				clk_automata_1  <=clk;
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0010"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <=clk;
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0011"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <=clk;
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0100"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <=clk;
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0101"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <=clk;
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0110"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <=clk;
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "0111"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <=clk;
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1000"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <=clk;
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1001"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <=clk;
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1010"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <=clk;
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1011"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <=clk;
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1100"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <=clk;
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1101"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <=clk;
				clk_automata_14 <='0';
				clk_automata_15 <='0';
			when "1110"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <=clk;
				clk_automata_15 <='0';
			when "1111"=>
				clk_automata_0  <='0';
				clk_automata_1  <='0';
				clk_automata_2  <='0';
				clk_automata_3  <='0';
				clk_automata_4  <='0';
				clk_automata_5  <='0';
				clk_automata_6  <='0';
				clk_automata_7  <='0';
				clk_automata_8  <='0';
				clk_automata_9  <='0';
				clk_automata_10 <='0';
				clk_automata_11 <='0';
				clk_automata_12 <='0';
				clk_automata_13 <='0';
				clk_automata_14 <='0';
				clk_automata_15 <=clk;
			when others=>
				clk_automata_0  <='X';
				clk_automata_1  <='X';
				clk_automata_2  <='X';
				clk_automata_3  <='X';
				clk_automata_4  <='X';
				clk_automata_5  <='X';
				clk_automata_6  <='X';
				clk_automata_7  <='X';
				clk_automata_8  <='X';
				clk_automata_9  <='X';
				clk_automata_10 <='X';
				clk_automata_11 <='X';
				clk_automata_12 <='X';
				clk_automata_13 <='X';
				clk_automata_14 <='X';
				clk_automata_15 <='X';
		end case;
--	end if;
end process;

end Behavioral;