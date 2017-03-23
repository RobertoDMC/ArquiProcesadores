library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity demux2_1 is
    Port ( input_0: in  STD_LOGIC_VECTOR(15 downto 0);
           input_1 : in  STD_LOGIC_VECTOR(15 downto 0);
			  flag : in std_logic;
           output : out  STD_LOGIC_VECTOR(15 downto 0));
end demux2_1;

architecture Behavioral of demux2_1 is

begin
process (flag, input_0, input_1)
begin
	if(flag = '1') then
		output<=input_1;
	else 
		output<=input_0;
	end if;
end process;

end Behavioral;

