library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux3_1 is
    Port ( input_0 : in  STD_LOGIC_VECTOR (15 downto 0);
           input_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           input_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           pos_0 : in  STD_LOGIC;
           pos_1 : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end demux3_1;

architecture Behavioral of demux3_1 is

begin
process(pos_0,pos_1, input_1, input_2, input_0)
begin
	if(pos_0='0') then
		output<=input_0;
	else
		if(pos_1='0') then
			output<=input_1;
		else
			output<=input_2;
		end if;
	end if;
end process;

end Behavioral;

