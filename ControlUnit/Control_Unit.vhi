
-- VHDL Instantiation Created from source file Control_Unit.vhd -- 18:20:37 03/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_Unit
	PORT(
		ram_Input : IN std_logic_vector(15 downto 0);
		carry : IN std_logic;
		compare : IN std_logic_vector(1 downto 0);
		clk : IN std_logic;          
		ram_addr : OUT std_logic_vector(7 downto 0);
		ram_data : OUT std_logic_vector(15 downto 0);
		ram_clk : OUT std_logic;
		ram_rw : OUT std_logic;
		ram_doi : OUT std_logic;
		ram_demux_data_pos1 : OUT std_logic;
		ram_demux_dir_pos1 : OUT std_logic;
		ALU_inst : OUT std_logic_vector(2 downto 0);
		ALU_clk : OUT std_logic;
		RA_rw : OUT std_logic;
		RA_clk : OUT std_logic;
		RA_demux_pos : OUT std_logic;
		RB_rw : OUT std_logic;
		RB_clk : OUT std_logic;
		RB_demux_pos : OUT std_logic;
		RC_rw : OUT std_logic;
		RC_clk : OUT std_logic;
		output_Register_clk : OUT std_logic;
		CR_clk : OUT std_logic;
		input_PC_Branch : OUT std_logic_vector(7 downto 0);
		enable_PC_Branch : OUT std_logic;
		increase_PC : OUT std_logic_vector(1 downto 0);
		reset : OUT std_logic
		);
	END COMPONENT;

	Inst_Control_Unit: Control_Unit PORT MAP(
		ram_Input => ,
		carry => ,
		compare => ,
		clk => ,
		ram_addr => ,
		ram_data => ,
		ram_clk => ,
		ram_rw => ,
		ram_doi => ,
		ram_demux_data_pos1 => ,
		ram_demux_dir_pos1 => ,
		ALU_inst => ,
		ALU_clk => ,
		RA_rw => ,
		RA_clk => ,
		RA_demux_pos => ,
		RB_rw => ,
		RB_clk => ,
		RB_demux_pos => ,
		RC_rw => ,
		RC_clk => ,
		output_Register_clk => ,
		CR_clk => ,
		input_PC_Branch => ,
		enable_PC_Branch => ,
		increase_PC => ,
		reset => 
	);


