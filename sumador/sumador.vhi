
-- VHDL Instantiation Created from source file sumador.vhd -- 21:21:42 03/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sumador
	PORT(
		RA : IN std_logic_vector(7 downto 0);
		RB : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		SUM : OUT std_logic_vector(7 downto 0);
		c : OUT std_logic
		);
	END COMPONENT;

	Inst_sumador: sumador PORT MAP(
		RA => ,
		RB => ,
		SUM => ,
		c => ,
		clk => 
	);


