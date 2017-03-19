library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux2_1 is
    Port ( input_0: in  STD_LOGIC_VECTOR(7 downto 0);
           input_1 : in  STD_LOGIC_VECTOR(7 downto 0);
			  flag : in std_logic;
           output : out  STD_LOGIC_VECTOR(7 downto 0));
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

