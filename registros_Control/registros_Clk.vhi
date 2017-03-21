
-- VHDL Instantiation Created from source file registros_Clk.vhd -- 17:47:08 03/21/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registros_Clk
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		increase_PC : IN std_logic_vector(1 downto 0);
		enable_Change_PC : IN std_logic;
		change_PC : IN std_logic_vector(7 downto 0);          
		input_PC : OUT std_logic_vector(7 downto 0);
		clk_PC : OUT std_logic;
		clk_MAR : OUT std_logic;
		clk_MBR : OUT std_logic;
		clk_IR : OUT std_logic;
		rw_PC : OUT std_logic;
		rw_MAR : OUT std_logic;
		rw_MBR : OUT std_logic;
		rw_IR : OUT std_logic
		);
	END COMPONENT;

	Inst_registros_Clk: registros_Clk PORT MAP(
		clk => ,
		reset => ,
		increase_PC => ,
		enable_Change_PC => ,
		change_PC => ,
		input_PC => ,
		clk_PC => ,
		clk_MAR => ,
		clk_MBR => ,
		clk_IR => ,
		rw_PC => ,
		rw_MAR => ,
		rw_MBR => ,
		rw_IR => 
	);


