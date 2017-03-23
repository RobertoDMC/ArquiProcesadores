library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_output is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end register_output;

architecture Behavioral of register_output is
begin
process(clk, input)
begin
		if(clk='1') then
			output<=input;
		end if;
end process;

end Behavioral;

