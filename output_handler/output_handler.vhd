library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity output_handler is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end output_handler;

architecture Behavioral of output_handler is
begin
process(clk, input)
begin
		if(rising_edge(clk)) then
			output<=input;
		end if;
end process;

end Behavioral;

