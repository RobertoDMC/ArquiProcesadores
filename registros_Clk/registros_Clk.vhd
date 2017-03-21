library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity registros_Clk is
    Port ( clk : in  STD_LOGIC;
			  reset: in STD_LOGIC;
			  increase_PC: in STD_LOGIC_VECTOR(1 downto 0);
			  enable_Change_PC : in  STD_LOGIC;
			  change_PC: in STD_LOGIC_VECTOR(7 downto 0);
			  input_PC: out  STD_LOGIC_VECTOR(7 downto 0);
           clk_PC : out  STD_LOGIC;
           clk_MAR : out  STD_LOGIC;
           clk_MBR : out  STD_LOGIC;
           clk_IR : out  STD_LOGIC;
           rw_PC : out  STD_LOGIC;
           rw_MAR : out  STD_LOGIC;
           rw_MBR : out  STD_LOGIC;
           rw_IR : out  STD_LOGIC);
end registros_Clk;

architecture Behavioral of registros_Clk is


type state is (e1,q0,q1,q2,q3,q4,q5);
signal pr_state, nx_state: state;

begin
process(clk, reset)
variable output_PC: integer:=0;
begin
	if(reset ='1') then
		output_PC:= 0;
		nx_state<=e1;
	else
		if(rising_edge(clk)) then	
			case pr_state is
			when e1=>
						clk_PC<='1';
						clk_MAR<='0';
						clk_MBR<='0';
						clk_IR<='0';
						input_PC<="00000000";
						rw_PC<='1';
						rw_MAR<='1';
						rw_MBR<='0';
						rw_IR<='0';
						nx_state<=q0;
			when q0=>	
			--ESCRIBIR EN MAR EL VALOR PC
						clk_PC<='1';
						clk_MAR<='1';
						clk_MBR<='0';
						clk_IR<='0';
						rw_PC<='0';
						rw_MAR<='1';
						rw_MBR<='0';
						rw_IR<='0';
						nx_state<=q1;
			when q1=>
			--LEER EL VALOR DEL MAR
						clk_PC<='0';
						clk_MAR<='1';
						clk_MBR<='0';
						clk_IR<='0';
						rw_PC<='0';
						rw_MAR<='0';
						rw_MBR<='0';
						rw_IR<='0';
						nx_state<=q2;
			when q2=>
			--GUARDAR EN EL MBR LA POSICION DE LA RAM SENHALADA POR EL MAR
						clk_PC<='0';
						clk_MAR<='0';
						clk_MBR<='1';
						clk_IR<='0';
						rw_PC<='0';
						rw_MAR<='0';
						rw_MBR<='1';
						rw_IR<='0';
						nx_state<=q3;
			when q3=>
			--GUARDAR EN IR LO QUE ESTA EN MBR
						clk_PC<='0';
						clk_MAR<='0';
						clk_MBR<='1';
						clk_IR<='1';
						rw_PC<='0';
						rw_MAR<='0';
						rw_MBR<='0';
						rw_IR<='1';
						nx_state<=q4;
			when q4=>
			--MANDAR LA INSTRUCCION DEL IR A LA CU
						clk_PC<='0';
						clk_MAR<='0';
						clk_MBR<='0';
						clk_IR<='1';
						rw_PC<='0';
						rw_MAR<='0';
						rw_MBR<='0';
						rw_IR<='0';
						nx_state<=q5;
			when q5=>
			--AUMENTAR EL VALOR DEL PC EN UNO
						if(enable_Change_PC = '1') then
							output_PC:= to_integer(unsigned(change_PC));
						else
							output_PC:= output_PC + to_integer(unsigned(increase_PC));
						end if;
						input_PC <= std_logic_vector(to_unsigned(output_PC, 8));
						clk_PC<='1';
						clk_MAR<='0';
						clk_MBR<='0';
						clk_IR<='0';
						rw_PC<='1';
						rw_MAR<='0';
						rw_MBR<='0';
						rw_IR<='0';
						nx_state<=q0;
									
			end case;	
		end if;
	end if;
end process;	
process(clk)
begin
	if(falling_edge(clk)) then
		pr_state<=nx_state;
	end if;
end process;

end Behavioral;

