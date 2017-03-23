
-- VHDL Instantiation Created from source file ram_16bits.vhd -- 18:19:56 03/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ram_16bits
	PORT(
		input : IN std_logic_vector(15 downto 0);
		direccion : IN std_logic_vector(7 downto 0);
		doi : IN std_logic;
		rw : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_ram_16bits: ram_16bits PORT MAP(
		input => ,
		direccion => ,
		doi => ,
		rw => ,
		clk => ,
		reset => ,
		output => 
	);


