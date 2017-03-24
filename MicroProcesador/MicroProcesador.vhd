library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity MicroProcesador is
    Port ( data : in  STD_LOGIC_VECTOR (15 downto 0);
           direccion : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           doi : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end MicroProcesador;

architecture Behavioral of MicroProcesador is

	COMPONENT ALU
	PORT(
		RA : IN std_logic_vector(15 downto 0);
		RB : IN std_logic_vector(15 downto 0);
		operacion : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		RC : OUT std_logic_vector(15 downto 0);
		C : OUT std_logic;
		compare : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
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
		output_clk : OUT std_logic;
		output_rw : OUT std_logic;
		CR_clk : OUT std_logic;
		input_PC_Branch : OUT std_logic_vector(7 downto 0);
		enable_PC_Branch : OUT std_logic;
		increase_PC : OUT std_logic_vector(1 downto 0);
		reset : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT demux3_1
	PORT(
		input_0 : IN std_logic_vector(15 downto 0);
		input_1 : IN std_logic_vector(15 downto 0);
		input_2 : IN std_logic_vector(15 downto 0);
		pos_0 : IN std_logic;
		pos_1 : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	COMPONENT demux3_18bits
	PORT(
		input_0 : IN std_logic_vector(7 downto 0);
		input_1 : IN std_logic_vector(7 downto 0);
		input_2 : IN std_logic_vector(7 downto 0);
		pos_0 : IN std_logic;
		pos_1 : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT demux2_1
	PORT(
		input_0 : IN std_logic_vector(15 downto 0);
		input_1 : IN std_logic_vector(15 downto 0);
		flag : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	COMPONENT registro_16bits
	PORT(
		input : IN std_logic_vector(15 downto 0);
		reset : IN std_logic;
		clk : IN std_logic;
		rw : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	COMPONENT register_output
	PORT(
		input : IN std_logic_vector(15 downto 0);
		clk : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
		COMPONENT divisor_frecuencia_10hz
	PORT(
		clk : IN std_logic;          
		clk1 : OUT std_logic
		);
	END COMPONENT;

signal reset: std_logic:='0';
signal CU_input,ram_output, input_data_ram: std_logic_vector(15 downto 0);
signal carry: std_logic;
signal compare: std_logic_vector(1 downto 0);
signal cu_ram_dir, cr_ram_dir, input_dir_ram: std_logic_vector(7 downto 0);
signal cu_ram_data, ra, rb, rc_input, output_ram, rc, output_demux_RA, output_demux_RB: std_logic_vector(15 downto 0);
signal ram_clk, ra_clk, rb_clk, rc_clk, alu_clk, ra_rw, rb_rw, rc_rw, ram_rw, ram_demux_data_pos1, ram_demux_dir_pos1, ra_demux_pos,rb_demux_pos, output_clk, output_rw, cr_clk, enable_PC_Branch: std_logic; 
signal ALU_inst: std_logic_vector(2 downto 0);
signal input_PC_Branch: std_logic_vector(7 downto 0);
signal increase_PC: std_logic_vector(1 downto 0);
signal clk_CU:std_logic;
signal clk_df:std_logic;
begin

	--Inst_divisor_frecuencia_10hz: divisor_frecuencia_10hz PORT MAP(
	--	clk => clk,
	--	clk1 => clk_df
	--);
	clk_cu<=doi and clk;

	Inst_Control_Unit: Control_Unit PORT MAP(
		ram_Input => CU_input,
		carry => carry,
		compare => compare,
		clk => clk_cu,
		ram_addr => cu_ram_dir,
		ram_data => cu_ram_data,
		ram_clk => ram_clk,
		ram_rw => ram_rw,
		ram_demux_data_pos1 => ram_demux_data_pos1,
		ram_demux_dir_pos1 => ram_demux_dir_pos1,
		ALU_inst => ALU_inst,
		ALU_clk => ALU_clk,
		RA_rw => ra_rw,
		RA_clk => ra_clk,
		RA_demux_pos => ra_demux_pos,
		RB_rw => rb_rw,
		RB_clk => rb_clk,
		RB_demux_pos => rb_demux_pos,
		RC_rw => rc_rw,
		RC_clk => rc_clk,
		output_clk => output_clk,
		output_rw => output_rw,
		CR_clk => cr_clk,
		input_PC_Branch => input_PC_Branch,
		enable_PC_Branch => enable_PC_Branch,
		increase_PC => increase_PC,
		reset => reset
	);

	Inst_registros_Control: registros_Control PORT MAP(
		input_From_Ram => output_ram,
		input_increase_PC => increase_PC,
		input_PC_Branch => input_PC_Branch,
		enable_Write_PC => enable_PC_Branch,
		clk => cr_clk,
		reset => reset,
		direccion_RAM => cr_ram_dir,
		CU => CU_input
	);
	
	Inst_ALU: ALU PORT MAP(
		RA => ra,
		RB => rb,
		operacion => ALU_inst,
		clk => ALU_clk,
		RC => rc_input,
		C => carry,
		compare => compare
	);
	
	Inst_ram_16bits: ram_16bits PORT MAP(
		input => input_data_ram,
		direccion => input_dir_ram,
		doi => doi,
		rw => ram_rw,
		clk => ram_clk,
		reset => reset,
		output => output_ram
	);
	
	Inst_demux3_1: demux3_1 PORT MAP(
		input_0 => data,
		input_1 => rc,
		input_2 => cu_ram_data,
		pos_0 => doi,
		pos_1 => ram_demux_data_pos1,
		output => input_data_ram
	);
	
	Inst_demux3_18bits: demux3_18bits PORT MAP(
		input_0 => direccion,
		input_1 => cr_ram_dir,
		input_2 => cu_ram_dir,
		pos_0 => doi,
		pos_1 => ram_demux_dir_pos1,
		output => input_dir_ram
	);
	
	RA_demux2_1: demux2_1 PORT MAP(
		input_0 => output_ram,
		input_1 => rb,
		flag => ra_demux_pos,
		output => output_demux_RA
	);
	
	RB_demux2_1: demux2_1 PORT MAP(
		input_0 => output_ram,
		input_1 => ra,
		flag => rb_demux_pos,
		output => output_demux_RB
	);
	
	RA_register: registro_16bits PORT MAP(
		input => output_demux_RA,
		reset => reset,
		clk => ra_clk,
		rw => ra_rw,
		output => ra
	);
	
	RB_register: registro_16bits PORT MAP(
		input => output_demux_RB,
		reset => reset,
		clk => rb_clk,
		rw => rb_rw,
		output => rb
	);
	
	RC_register: registro_16bits PORT MAP(
		input => rc_input,
		reset => reset,
		clk => rc_clk,
		rw => rc_rw,
		output => rc
	);
	
	output_register: registro_16bits PORT MAP(
		input => output_ram,
		reset => reset,
		clk => output_clk,
		rw => output_rw,
		output => output
	);

	
end Behavioral;

