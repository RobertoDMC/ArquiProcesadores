library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modulo_Logico is
    Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
			  op : in  STD_LOGIC_VECTOR (1 downto 0);
           output_ModLog : out  STD_LOGIC_VECTOR (15 downto 0);
			  output_Compare: out STD_LOGIC_VECTOR(1 downto 0);
           clk : in  STD_LOGIC);
end modulo_Logico;

architecture Behavioral of modulo_Logico is

begin
process(clk)
variable RA_int, RB_int:integer;
begin
	if(rising_edge(clk)) then
		case op is
		when "00" =>output_ModLog<= (RA and RB);
		when "01" =>output_ModLog<= not RA;
		when "10" =>output_ModLog<= not RB;
		when "11" =>
						RA_int:=to_integer(unsigned(RA));
						RB_int:=to_integer(unsigned(RB));
						if(RA_int = RB_int) then
							output_Compare<="00";
						else
							if(RA_int > RB_int) then
								output_Compare<="10";
							else
								output_Compare<="01";
							end if;
						end if;
		when others => output_ModLog<="XXXXXXXXXXXXXXXX";
		end case;
	end if;
end process;

end Behavioral;

