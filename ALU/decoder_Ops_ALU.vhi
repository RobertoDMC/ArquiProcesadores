
-- VHDL Instantiation Created from source file decoder_Ops_ALU.vhd -- 23:04:08 03/15/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT decoder_Ops_ALU
	PORT(
		operation : IN std_logic_vector(2 downto 0);          
		clk_Sumador : OUT std_logic;
		clk_Mod_Log : OUT std_logic;
		op_Mod_Log : OUT std_logic_vector(1 downto 0);
		pos_Demux_Output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_decoder_Ops_ALU: decoder_Ops_ALU PORT MAP(
		operation => ,
		clk_Sumador => ,
		clk_Mod_Log => ,
		op_Mod_Log => ,
		pos_Demux_Output => 
	);


