
-- VHDL Instantiation Created from source file registro.vhd -- 15:47:53 03/05/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registro
	PORT(
		input : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;
		rw : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_registro: registro PORT MAP(
		input => ,
		clk => ,
		rw => ,
		output => 
	);


