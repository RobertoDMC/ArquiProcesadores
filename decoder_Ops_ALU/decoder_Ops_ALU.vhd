library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity decoder_Ops_ALU is
    Port ( operation : in  STD_LOGIC_VECTOR (2 downto 0);
			  clk : in STD_LOGIC;
           clk_Sumador : out  STD_LOGIC;
           clk_Mod_Log : out  STD_LOGIC;
           op_Mod_Log : out  STD_LOGIC_VECTOR(1 downto 0);
           pos_Demux_Output : out  STD_LOGIC_VECTOR (1 downto 0));
end decoder_Ops_ALU;

architecture Behavioral of decoder_Ops_ALU is

begin
	process(operation, clk)
	begin
	--Operation Decoding
	--000 Add operation
	--001 Not A Operation
	--010 Not B operation
	--011 And Operation
	--100 Compare Operation
	if(rising_edge(clk)) then
		case operation is 
		when "000" =>
							clk_Sumador<='1';
							clk_Mod_Log<='0';
							op_Mod_Log <="11";
							pos_Demux_Output<="00";
		when "001" =>
							clk_Sumador<='0';
							clk_Mod_Log<='1';
							op_Mod_Log <="01";
							pos_Demux_Output<="01";
		when "010" =>
							clk_Sumador<='0';
							clk_Mod_Log<='1';
							op_Mod_Log <="10";
							pos_Demux_Output<="01";
		when "011" =>
							clk_Sumador<='0';
							clk_Mod_Log<='1';
							op_Mod_Log <="00";
							pos_Demux_Output<="01";
		when "100" =>
							clk_Sumador<='0';
							clk_Mod_Log<='1';
							op_Mod_Log <="11";
							pos_Demux_Output<="11";
		when others =>
							clk_Sumador<='0';
							clk_Mod_Log<='0';
							op_Mod_Log <="11";
							pos_Demux_Output<="11";
		end case;
	end if;
	end process;
end Behavioral;

