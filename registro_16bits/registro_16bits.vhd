library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_16bits is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
			  reset : in STD_LOGIC;
           clk : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end registro_16bits;

architecture Behavioral of registro_16bits is
signal data:std_logic_vector(15 downto 0);
begin
process(clk, input, rw, data)
begin
	if(reset = '1') then
		data<="0000000000000000";
	else
		if(rising_edge(clk)) then
			if(rw = '1') then
				--1 WRITE
				data<=input;
			else
				--0 READ
				output<=data;
			end if;
			
		end if;
	end if;
end process;

end Behavioral;

