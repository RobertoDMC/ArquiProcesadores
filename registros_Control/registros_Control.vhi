
-- VHDL Instantiation Created from source file registros_Control.vhd -- 18:18:47 03/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registros_Control
	PORT(
		input_From_Ram : IN std_logic_vector(15 downto 0);
		input_increase_PC : IN std_logic_vector(1 downto 0);
		input_PC_Branch : IN std_logic_vector(7 downto 0);
		enable_Write_PC : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		direccion_RAM : OUT std_logic_vector(7 downto 0);
		CU : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_registros_Control: registros_Control PORT MAP(
		input_From_Ram => ,
		input_increase_PC => ,
		input_PC_Branch => ,
		enable_Write_PC => ,
		clk => ,
		reset => ,
		direccion_RAM => ,
		CU => 
	);


