library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ram_16bits is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           direccion : in  STD_LOGIC_VECTOR (7 downto 0);
           doi : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset: in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end ram_16bits;

architecture Behavioral of ram_16bits is

type ram is array (255 downto 0) of std_logic_vector(15 downto 0);
signal ram_memory: ram:= (others =>(others =>'0'));

begin

process(clk, ram_memory, direccion)
variable posicion: integer range 0 to 255; 
begin
	if(rising_edge(clk)) then
		if(reset='1') then
			ram_memory <= (others =>(others =>'0'));
		else
			posicion:= to_integer(unsigned(direccion));
			if(rw = '0') then
				--0 es read
			output<=ram_memory(posicion);
			else
				if(doi = '0')	then
					if(posicion >127) then
						--1 es write
						ram_memory(posicion)<=input;
					else
						--QUIERE ESCRIBIR EN INSTRUCCION EN MODO READ, PROHIBIR
					end if;
				end if;
			end if;
		end if;
	end if;
end process;

end Behavioral;