
-- VHDL Instantiation Created from source file modulo_Logico.vhd -- 21:22:29 03/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT modulo_Logico
	PORT(
		RA : IN std_logic_vector(7 downto 0);
		RB : IN std_logic_vector(7 downto 0);
		op : IN std_logic_vector(1 downto 0);
		clk : IN std_logic;          
		modLog : OUT std_logic_vector(7 downto 0);
		comparador : OUT std_logic
		);
	END COMPONENT;

	Inst_modulo_Logico: modulo_Logico PORT MAP(
		RA => ,
		RB => ,
		op => ,
		modLog => ,
		comparador => ,
		clk => 
	);


