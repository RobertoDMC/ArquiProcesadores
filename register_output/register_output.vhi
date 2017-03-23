
-- VHDL Instantiation Created from source file register_output.vhd -- 18:47:08 03/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT register_output
	PORT(
		input : IN std_logic_vector(15 downto 0);
		clk : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_register_output: register_output PORT MAP(
		input => ,
		clk => ,
		output => 
	);


