library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_8bits is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
			  reset : in STD_LOGIC;
           clk : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end registro_8bits;

architecture Behavioral of registro_8bits is
signal data:std_logic_vector(7 downto 0):="00000000";
begin
process(clk, input, rw, data, reset)
begin
	if(reset = '1') then
		data<="00000000";
	else
		if(clk='1') then
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

