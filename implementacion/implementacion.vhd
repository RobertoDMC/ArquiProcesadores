library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity implementacion is
Port ( 	  clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  resetLCD : in  STD_LOGIC;
           E : inout  STD_LOGIC;
			  doi: in std_logic;
           RS : out  STD_LOGIC;
           RW : out  STD_LOGIC;
           SF_CE0 : out  STD_LOGIC;
           DB : out  STD_LOGIC_VECTOR (3 downto 0));
end implementacion;

architecture Behavioral of implementacion is
	COMPONENT MicroProcesador
	PORT(
		data : IN std_logic_vector(15 downto 0);
		direccion : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;
		doi : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	COMPONENT pantalla_proyectoFinal
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		binario : IN std_logic_vector(15 downto 0);    
		E : INOUT std_logic;      
		RS : OUT std_logic;
		RW : OUT std_logic;
		SF_CE0 : OUT std_logic;
		DB : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal output: std_logic_vector(15 downto 0);

begin

	Inst_MicroProcesador: MicroProcesador PORT MAP(
		data => "0000000000000000",
		direccion => "00000000",
		clk => clk,
		doi => doi,
		output => output
	);
	
	Inst_pantalla_proyectoFinal: pantalla_proyectoFinal PORT MAP(
		clk => clk,
		reset => resetLCD,
		E => E,
		binario => output,
		RS => rs,
		RW => rw,
		SF_CE0 => SF_CE0,
		DB => db
	);
	
end Behavioral;

