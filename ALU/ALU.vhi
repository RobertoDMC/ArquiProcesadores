
-- VHDL Instantiation Created from source file ALU.vhd -- 18:18:01 03/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		RA : IN std_logic_vector(15 downto 0);
		RB : IN std_logic_vector(15 downto 0);
		operacion : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		RC : OUT std_logic_vector(15 downto 0);
		C : OUT std_logic;
		compare : OUT std_logic_vector(1 downto 0);
		rw_AC : OUT std_logic;
		clk_AC : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		RA => ,
		RB => ,
		operacion => ,
		clk => ,
		RC => ,
		C => ,
		compare => ,
		rw_AC => ,
		clk_AC => 
	);


