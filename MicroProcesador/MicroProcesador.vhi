
-- VHDL Instantiation Created from source file MicroProcesador.vhd -- 19:02:51 03/23/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MicroProcesador
	PORT(
		data : IN std_logic_vector(15 downto 0);
		direccion : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;
		doi : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_MicroProcesador: MicroProcesador PORT MAP(
		data => ,
		direccion => ,
		clk => ,
		doi => ,
		output => 
	);


