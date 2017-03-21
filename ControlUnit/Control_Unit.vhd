library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Control_Unit is
    Port ( ram_Input : in  STD_LOGIC_VECTOR (15 downto 0);
           carry : in  STD_LOGIC;
           compare : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           --RAM-----------------------------------------
			  ram_addr : out  STD_LOGIC_VECTOR (7 downto 0);
           ram_data : out  STD_LOGIC_VECTOR (15 downto 0);
           ram_clk : out  STD_LOGIC;
           ram_rw : out  STD_LOGIC;
           ram_doi : out  STD_LOGIC;
           ram_demux_data_pos1 : out  STD_LOGIC;
			  ram_demux_dir_pos1 : out  STD_LOGIC;
			  ----------------------------------------------
			  --ALU-----------------------------------------
           ALU_inst : out  STD_LOGIC_VECTOR (2 downto 0);
           ALU_clk : out  STD_LOGIC;
			  ----------------------------------------------
			  --REGISTERS---RA---RB---RC--------------------
           RA_rw : out  STD_LOGIC;
           RA_clk : out  STD_LOGIC;
           RA_demux_pos : out  STD_LOGIC;
           RB_rw : out  STD_LOGIC;
           RB_clk : out  STD_LOGIC;
           RB_demux_pos : out  STD_LOGIC;
           RC_rw : out  STD_LOGIC;
           RC_clk : out  STD_LOGIC;
			  ----------------------------------------------
			  --CONTROL---REGISTERS-------------------------
			  clk_CR: out STD_LOGIC;
			  input_PC_Branch: out STD_LOGIC_VECTOR(7 downto 0);
			  enable_PC_Branch: out STD_LOGIC;
			  increase_PC: out STD_LOGIC_VECTOR(2 downto 0);
			  ----------------------------------------------
			  --OUTPUT--------------------------------------
			  clk_Output_Regiter: out STD_LOGIC;
			  ----------------------------------------------
			  --RESET---------------------------------------
			  reset : out std_logic);
end Control_Unit;

architecture Behavioral of Control_Unit is
begin


end Behavioral;

