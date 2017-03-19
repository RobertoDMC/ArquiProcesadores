
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity automata_0 is
    Port ( clk : in  STD_LOGIC;
			  operands: in STD_LOGiC_VECTOR (11 downto 0);
           output : in  STD_LOGIC_VECTOR (47 downto 0));
end automata_0;

architecture Behavioral of automata_0 is

begin
process (clk)
variable operands_int: integer:=0;
type estado is (q0,q1,q2,q3,q4,q5,q6);
begin
	if(rising_edge(clk)) then
		operands_int:=to_integer(unsigned(operands));
			if(operands = 0) then
				--PRIMERA EJECUCION TENEMOS QUE PRENDER EL REGISTROS CONTROL PARA CARGAR LA PRIMERA INSTRUCCION DE LA RAM
				case pr_state is
					when q0=> 
								output<=x"000000000400";
								nx_state<=q1;
					when q1=>
								output<=x"000000000000";
								nx_state<=q2;
					when q2=>
								output<=x"000000000400";
								nx_state<=q1;
					when q1=>
								output<=x"000000000400";
								nx_state<=q1;
					when q1=>
								output<=x"000000000400";
								nx_state<=q1;
					when q1=>
								output<=x"000000000400";
								nx_state<=q1;
					when q1=>
								output<=x"000000000400";
								nx_state<=q1;
				end case;
			else
				--RESET
				
			end if;
	end if;
end process;

end Behavioral;

