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
			  output_Register_clk: out STD_LOGIC;
			  ----------------------------------------------
			  --CONTROL---REGISTERS-------------------------
			  CR_clk: out STD_LOGIC;
			  input_PC_Branch: out STD_LOGIC_VECTOR(7 downto 0);
			  enable_PC_Branch: out STD_LOGIC;
			  increase_PC: out STD_LOGIC_VECTOR(1 downto 0);
			  ----------------------------------------------
			  --OUTPUT--------------------------------------
			  clk_Output_Regiter: out STD_LOGIC;
			  ----------------------------------------------
			  --RESET---------------------------------------
			  reset : out std_logic);
end Control_Unit;

architecture Behavioral of Control_Unit is
type estado is (init0,init1,init2,init3,init4,init5,init6,init7,init8,init9,init10,init11, 
					 getParams, decoder, reset_state,
					 addPCByOne0,addPCByOne1,addPCByTwo0,addPCByTwo1,
					 str, 
					 strInRA0, strInRA1, strInRA2,
					 strInRB0, strInRB1, strInRB2, 
					 strInRam0,
					 moveFromRam,
					 moveFromRamToRA0, moveFromRamToRA1,
					 moveFromRamToRB0, moveFromRamToRB1,
					 moveFromRCToRam0, moveFromRCToRam1,
					 --jumps0,
					 mov,
					 moveRBToRA0, moveRBToRA1,
					 moveRAToRB0, moveRAToRB1,
					 out0, out1,
					 add0, add2, add3,
					 compare0, compare1,
					 and0, and1,
					 not_state,
					 notA0, notA1,
					 notB0, notB1,
					 moveToOut0,
					 branch0,
					 return0,
					 halt0, halt1
					 );
signal pr_state, nx_state: estado;

signal opcode: std_logic_vector(3 downto 0):="0000";
signal arg1: std_logic_vector(5 downto 0):="000000";
signal arg2: std_logic_vector(5 downto 0):="000000";

begin

	process
	variable arg2_int: integer:=0;
	begin
		case pr_state is
-----------------------PROCESS TO MAKE CONTROL REGISTERS FUNCTION-----------------------------------
		------WRITE 0 IN PC----------------------------
		when init0 =>
						CR_clk<='0';
						nx_state<=init1;
		when init1 =>
						CR_clk<='1';
						nx_state<=init2;
		-----------------------------------------------
		------ESCRIBIR EN MAR EL VALOR DE PC-----------
		when init2 =>
						CR_clk<='0';
						nx_state<=init3;
		when init3 =>
						CR_clk<='1';
						nx_state<=init4;
		-----------------------------------------------
		------LEER VALOR DEL MAR-----------------------
		when init4 =>
						CR_clk<='1';
						nx_state<=init5;
		when init5 =>
						CR_clk<='1';
						ram_clk<='1';
						ram_rw<='0';
						ram_demux_dir_pos1<='0';
						nx_state<=init6;
		-----------------------------------------------
		------ESCRIBIR EN MBR LO QUE ESTE EN LA RAM----
		when init6 =>
						CR_clk<='1';
						nx_state<=init7;
		when init7 =>
						CR_clk<='1';
						nx_state<=init8;
		-----------------------------------------------
		-----ESCRIBIR EN IR LO QUE ESTE EN EL MBR------
		when init8 =>
						CR_clk<='1';
						nx_state<=init9;
		when init9 =>
						CR_clk<='1';
						nx_state<=init10;
		-----------------------------------------------
		-----MANDAR A CU EL VALOR DE IR----------------
		when init10 =>
						CR_clk<='1';
						nx_state<=init11;
		when init11 =>
						CR_clk<='1';
						nx_state<=getParams;
		-----------------------------------------------

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--------SPLITS INSTRUCTION IN ITS PARTS-----OPCODE-------ARG1-----ARG2------------------------------
		when getParams =>
						opcode<=ram_Input(15 downto 12);
						arg1<=ram_Input(11 downto 6);
						arg2<=ram_Input(5 downto 0);
						nx_state<=decoder;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------DECODES THE INSTRUCCION AND REDIRECTS TO THE CORRECT PROCESS-------------------------------
		when decoder=>
						case opcode is
							when "0000" =>
											nx_state<=reset_state;
							when "0001" =>
											nx_state<=str;
							when "0010" =>
											nx_state<=moveFromRam;
							when "0011" =>
											nx_state<=jumps0;
							when "0100" =>
											nx_state<=mov;
							when "0101" =>
											nx_state<=out0;
							when "0110" =>
											nx_state<=add0;
							when "0111" =>
											nx_state<=compare0;
							when "1010" =>
											nx_state<=and0;
							when "1011" =>
											nx_state<=not_state;
							when "1100" =>
											nx_state<=moveToOut0;
							when "1101" =>
											nx_state<=branch0;
							when "1110" =>
											nx_state<=return0;
							when "1111" =>
											nx_state<=halt0;
							when others =>	nx_state<=halt0;
						end case;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
------------------------------------------RESET PROCESS---------------------------------------------
		when reset_state=>
					reset<='1';
					ram_clk<='1';
					RA_clk<='1';
					RB_clk<='1';
					RC_clk<='1';
					CR_clk<='1';
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-------------------INCREASE THE PC VALUE BY ONE-----------------------------------------------------
		when addPCByOne0 =>
						CR_clk<='1';
						increase_PC<="01";
						nx_state<=addPCByOne1;
		when addPCByOne1 =>
						CR_clk<='1';
						increase_PC<="01";
						nx_state<=init1;
----------------------------------------------------------------------------------------------------
-------------------INCREASE THE PC VALUE BY TWO-----------------------------------------------------
		when addPCByTwo0 =>
						CR_clk<='1';
						increase_PC<="01";
						nx_state<=addPCByTwo1;
		when addPCByTwo1 =>
						CR_clk<='1';
						increase_PC<="10";
						nx_state<=init1;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
------THE PROCESS TO STORE A DATAIN VALUE IN EITHER RA-----RB-----RAM(ADDR)-------------------------
		when str=>
					case arg1 is
							when "000000"=>
											nx_state<=strInRA0;
							when "000001"=>
											nx_state<=strInRB0;
							when others=> 
											nx_state<=strInRam0;
					end case;
----------------------------------------------------------------------------------------------------
---------------------------------THE PROCESS TO STORE VALUE IN RA-----------------------------------
		--WRITE IN RAM IN POS 000000---------------------
		when strInRA0=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='1';
						ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000000";
						ram_data<=std_logic_vector(to_unsigned(arg2_int,16));
						nx_state<=strInRA1;
		-------------------------------------------------
		--READ RAM POS 000000----------------------------
		when strInRA1=>
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000000";
						--ram_data<="0000000000000000";
						nx_state<=strInRA2;
						ra_demux_pos<='0';
		-------------------------------------------------
		--WRITES RA -------------------------------------
		when strInRA2=>
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000000";
						--ram_data<="0000000000000000";
						ra_clk<='1';
						ra_rw<='1';
						nx_state<=addPCByOne0;
		-------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------------------THE PROCESS TO STORE VALUE IN RB-----------------------------------
		--WRITE IN RAM IN POS 000001---------------------
		when strInRB0=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='1';
						ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000001";
						ram_data<=std_logic_vector(to_unsigned(arg2_int,16));
						nx_state<=strInRB1;
		-------------------------------------------------
		--READ RAM POS 000001----------------------------
		when strInRB1=>
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000001";
						--ram_data<="0000000000000000";
						nx_state<=strInRB2;
						rb_demux_pos<='0';
		-------------------------------------------------
		--WRITES RA -------------------------------------
		when strInRB2=>
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000000";
						--ram_data<="0000000000000000";
						rb_clk<='1';
						rb_rw<='1';
						nx_state<=addPCByOne0;
		-------------------------------------------------
----------------------------------------------------------------------------------------------------
------------------------THE PROCESS TO STORE VALUE IN RAM(ADDRESS) of DATAIN(ARG2)---------------------------
		--WRITE IN RAM IN POS 000000---------------------
		when strInRam0=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='1';
						ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<="10000000";
						ram_data<=std_logic_vector(to_unsigned(arg2_int,16));
						nx_state<=addPCByOne0;
		-------------------------------------------------
----------------------------------------------------------------------------------------------------
-------MOVE FROM RAM TO A REGISTER OR FROM RC TO RAM(ADDRESS)------------------------------------------------
		when moveFromRam=>
						case arg1 is
							when "000000"=>
											nx_state<=moveFromRamToRA0;
							when "000001"=>
											nx_state<=moveFromRamToRB0;
							when others=> 
											nx_state<=moveFromRCToRam0;
						end case;
----------------------------------------------------------------------------------------------------
--------------------PROCESS TO MOVE FROM RAM(ADDRESS) TO RA-----------------------------------------
		--READ RAM POS 000000----------------------------
		when moveFromRamToRA0=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<=std_logic_vector(to_unsigned(arg2_int,8));
						--ram_data<="0000000000000000";
						nx_state<=moveFromRamToRA1;
						ra_demux_pos<='0';
		-------------------------------------------------
		--WRITES RA -------------------------------------
		when moveFromRamToRA1=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<=std_logic_vector(to_unsigned(arg2_int,8));
						--ram_data<="0000000000000000";
						ra_clk<='1';
						ra_rw<='1';
						nx_state<=addPCByOne0;
		-------------------------------------------------
----------------------------------------------------------------------------------------------------
--------------------PROCESS TO MOVE FROM RAM(ADDRESS) TO RB-----------------------------------------
		--READ RAM POS 000000----------------------------
		when moveFromRamToRB0=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<=std_logic_vector(to_unsigned(arg2_int,8));
						--ram_data<="0000000000000000";
						nx_state<=moveFromRamToRB1;
						rb_demux_pos<='0';
		-------------------------------------------------
		--WRITES RA -------------------------------------
		when moveFromRamToRB1=>
						arg2_int:=to_integer(unsigned(arg2));
						ram_clk<='1';
						ram_rw<='0';
						--ram_demux_data_pos1<='1';
						ram_demux_dir_pos1<='1';
						ram_addr<=std_logic_vector(to_unsigned(arg2_int,8));
						--ram_data<="0000000000000000";
						rb_clk<='1';
						rb_rw<='1';
						nx_state<=addPCByOne0;
		-------------------------------------------------
----------------------------------------------------------------------------------------------------
--------------------PROCESS TO MOVE FROM RC TO RAM(ADDRESS)-----------------------------------------
		--READ RC----------------------------------------
		when moveFromRCToRam0=>
						ram_clk<='0';
						ram_rw<='0';
						ram_demux_dir_pos1<='1';
						nx_state<=moveFromRCToRam1;
						rc_clk<='1';
						rc_rw<='0';
		-------------------------------------------------
		--WRITES IN RAM(ADDRESS)-------------------------
		when moveFromRCToRam1=>
						ram_clk<='1';
						ram_rw<='0';
						ram_demux_data_pos1<='0';
						ram_demux_dir_pos1<='1';
						ram_addr<="11111111";
						rb_clk<='1';
						rb_rw<='1';
						nx_state<=addPCByOne0;
		-------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-----PROCESS TO CONTROL MOVE INSTRUCTIONS-----------------------------------------------------------
		when mov=>
					case arg1 is
							when "000000"=>
											nx_state<=moveRBToRA0;
							when "000001"=>
											nx_state<=moveRAToRB0;
							when others=> 
											nx_state<=halt0;
					end case;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-----PROCESS TO MOVE THE VALUE OF RB TO RA----------------------------------------------------------
		when moveRBToRA0=>
							RB_clk<='1';
							RB_rw<='0';
							RA_demux_pos<='1';
							nx_state<=moveRBToRA1;
		when moveRBToRA1=>
							RA_clk<='1';
							RA_rw<='1';
							nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
-----PROCESS TO MOVE THE VALUE OF RA TO RB----------------------------------------------------------
		when moveRAToRB0=>
							RA_clk<='1';
							RA_rw<='0';
							RB_demux_pos<='1';
							nx_state<=moveRAToRB1;
		when moveRAToRB1=>
							RB_clk<='1';
							RB_rw<='1';
							nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---PROCESS TO MOVE RAM(255) TO OUTPUT---------------------------------------------------------------
		when out0=>
					ram_clk<='1';
					ram_rw<='0';
					--ram_demux_data_pos1<='1';
					ram_demux_dir_pos1<='1';
					ram_addr<="11111111";
					--ram_data<="0000000000000000";
					nx_state<=out1;
		when out1=>
					output_Register_clk<='1';
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-----PROCESS TO ADD IN ALU--------------------------------------------------------------------------
		when add0=>
					ra_clk<='1';
					ra_rw<='0';
					rb_clk<='1';
					rb_rw<='0';
					nx_state<=add1;
		when add1=>
					ALU_clk<='1';
					ALU_inst<="000";
					rc_clk<='1';
					rc_rw<='1';
					nx_state<=add1;
		when add2=>
					rc_clk<='1';
					rc_rw<='1';
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-----PROCESS TO COMPARE REGISTERS RA AND RB---------------------------------------------------------
		when compare0=>
					ra_clk<='1';
					ra_rw<='0';
					rb_clk<='1';
					rb_rw<='0';
					nx_state<=compare1;
		when compare1=>
					ALU_clk<='1';
					ALU_inst<="100";
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--------PROCESS TO EXECUTE (RA AND RB)--------------------------------------------------------------
		when and0=>
					ra_clk<='1';
					ra_rw<='0';
					rb_clk<='1';
					rb_rw<='0';
					nx_state<=and1;
		when and1=>
					ALU_clk<='1';
					ALU_inst<="011";
					rc_clk<='1';
					rc_rw<='1';
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--PROCESS TO SELECT WHICH NOT OPERATION TO EXECUTE--------------------------------------------------
		when not_state=>
					case arg1 is
							when "000000"=>
											nx_state<=notA0;
							when "000001"=>
											nx_state<=notB0;
							when others=> 
											nx_state<=halt0;
					end case;
----------------------------------------------------------------------------------------------------
---------PROCESS TO NEGATE RA (~RA)-----------------------------------------------------------------
		when notA0=>
					ra_clk<='1';
					ra_rw<='0';
					nx_state<=notA1;
		when notA1=>
					ALU_clk<='1';
					ALU_inst<="001";
					rc_clk<='1';
					rc_rw<='1';
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
---------PROCESS TO NEGATE RB (~RB)-----------------------------------------------------------------
		when notB0=>
					rb_clk<='1';
					rb_rw<='0';
					nx_state<=notB1;
		when notB1=>
					ALU_clk<='1';
					ALU_inst<="010";
					rc_clk<='1';
					rc_rw<='1';
					nx_state<=addPCByOne0;
----------------------------------------------------------------------------------------------------
-------------------------------------HALT PROCESS---------------------------------------------------
		---INFINITE LOOP------------
		when halt0 =>
						ram_clk<='0';
						ra_clk<='0';
						rb_clk<='0';
						rc_clk<='0';
						CR_clk<='0';
						nx_state<=halt1;
		when halt1 =>
						ram_clk<='0';
						ra_clk<='0';
						rb_clk<='0';
						rc_clk<='0';
						CR_clk<='0';
						nx_state<=halt0;
		----------------------------
----------------------------------------------------------------------------------------------------
		end case;
	end process;

end Behavioral;

