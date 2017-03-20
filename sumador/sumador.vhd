library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity sumador is
    Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
           SUM : out  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end sumador;

architecture Behavioral of sumador is

begin

process (clk)
variable ra_int, rb_int, ac_int: integer;
begin
	if(rising_edge(clk)) then
		ra_int:=to_integer(unsigned(RA));
		rb_int:=to_integer(unsigned(RB));
		ac_int:=ra_int+rb_int;
		
		if(ac_int>255) then
			SUM<="1111111111111111";
			c<='1';
		else
			SUM<=std_logic_vector(to_unsigned(ac_int,16));
			c<='0';
		end if;
	end if;
end process;

end Behavioral;

