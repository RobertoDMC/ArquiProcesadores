
-- VHDL Instantiation Created from source file demux_ALU.vhd -- 21:41:17 03/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT demux_ALU
	PORT(
		sumador : IN std_logic_vector(7 downto 0);
		mult : IN std_logic_vector(7 downto 0);
		mod_Log : IN std_logic_vector(7 downto 0);
		posicion : IN std_logic_vector(1 downto 0);          
		output : OUT std_logic_vector(7 downto 0);
		clk_AC : OUT std_logic
		);
	END COMPONENT;

	Inst_demux_ALU: demux_ALU PORT MAP(
		sumador => ,
		mult => ,
		mod_Log => ,
		posicion => ,
		output => ,
		clk_AC => 
	);


