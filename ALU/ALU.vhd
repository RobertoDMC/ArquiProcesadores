library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
           operacion : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           RC : out  STD_LOGIC_VECTOR (15 downto 0);
           C : out  STD_LOGIC;--CARRY
           compare : out  STD_LOGIC_VECTOR(1 downto 0)--COMPARE RESULT
			  );
end ALU;

architecture Behavioral of ALU is

	COMPONENT decoder_Ops_ALU
	PORT(
		operation : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;
		clk_Sumador : OUT std_logic;
		clk_Mod_Log : OUT std_logic;
		op_Mod_Log : OUT std_logic_vector(1 downto 0);
		pos_Demux_Output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	COMPONENT sumador
	PORT(
		RA : IN std_logic_vector(15 downto 0);
		RB : IN std_logic_vector(15 downto 0);
		clk : IN std_logic;          
		SUM : OUT std_logic_vector(15 downto 0);
		c : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT modulo_Logico
	PORT(
		RA : IN std_logic_vector(15 downto 0);
		RB : IN std_logic_vector(15 downto 0);
		op : IN std_logic_vector(1 downto 0);
		clk : IN std_logic;          
		output_ModLog : OUT std_logic_vector(15 downto 0);
		output_Compare : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT demux_ALU
	PORT(
		sumador : IN std_logic_vector(15 downto 0);
		mod_Log : IN std_logic_vector(15 downto 0);
		posicion : IN std_logic_vector(1 downto 0);          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	signal clk_Sumador, clk_Mod_Log: std_logic;
	signal op_Mod_Log, pos_Demux_Output: std_logic_vector(1 downto 0);
	signal SUM, modLog: std_logic_vector(15 downto 0);

	
begin

	Inst_decoder_Ops_ALU: decoder_Ops_ALU PORT MAP(
		operation => operacion,
		clk =>clk,
		clk_Sumador => clk_Sumador,
		clk_Mod_Log => clk_Mod_Log,
		op_Mod_Log => op_Mod_Log,
		pos_Demux_Output => pos_Demux_Output
	);

	Inst_sumador: sumador PORT MAP(
		RA => RA,
		RB => RB,
		SUM => SUM,
		c => C,
		clk => clk_Sumador 
	);
	

	Inst_modulo_Logico: modulo_Logico PORT MAP(
		RA => RA,
		RB => RB,
		op => op_Mod_Log,
		output_ModLog => modLog,
		output_Compare => compare,
		clk => clk_Mod_Log
	);
	
	Inst_demux_ALU: demux_ALU PORT MAP(
		sumador => SUM,
		mod_Log => modLog,
		posicion => pos_Demux_Output,
		output => RC
	);
	
end Behavioral;

