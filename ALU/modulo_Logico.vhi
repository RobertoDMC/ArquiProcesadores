
-- VHDL Instantiation Created from source file modulo_Logico.vhd -- 23:05:47 03/15/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT modulo_Logico
	PORT(
		RA : IN std_logic_vector(5 downto 0);
		RB : IN std_logic_vector(5 downto 0);
		op : IN std_logic_vector(1 downto 0);
		clk : IN std_logic;          
		output_ModLog : OUT std_logic_vector(7 downto 0);
		output_Compare : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_modulo_Logico: modulo_Logico PORT MAP(
		RA => ,
		RB => ,
		op => ,
		output_ModLog => ,
		output_Compare => ,
		clk => 
	);


