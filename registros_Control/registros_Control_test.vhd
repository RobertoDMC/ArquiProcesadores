LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY registros_Control_test IS
END registros_Control_test;
 
ARCHITECTURE behavior OF registros_Control_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registros_Control
    PORT(
         input_From_Ram : IN  std_logic_vector(15 downto 0);
         input_PC_Branch : IN  std_logic_vector(7 downto 0);
         enable_Write_PC : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         direccion_RAM : OUT  std_logic_vector(7 downto 0);
         CU : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input_From_Ram : std_logic_vector(15 downto 0) := (others => '0');
   signal input_PC_Branch : std_logic_vector(7 downto 0) := (others => '0');
   signal enable_Write_PC : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal direccion_RAM : std_logic_vector(7 downto 0);
   signal CU : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registros_Control PORT MAP (
          input_From_Ram => input_From_Ram,
          input_PC_Branch => input_PC_Branch,
          enable_Write_PC => enable_Write_PC,
          clk => clk,
          reset => reset,
          direccion_RAM => direccion_RAM,
          CU => CU
        );

   -- Clock process definitions
   clk_process :process
   begin
		--ESCRIBE EN PC 000000
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		input_PC_Branch<="00000000";
		enable_Write_PC<='1';
		wait for clk_period/2;
		---------------------
		--LEE PC
		clk <= '0';
		enable_Write_PC<='0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		---------------------
		--Escribe en MAR el valor PC
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		---------------------
		--LEE el valor del MAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		----------------------
		--Escribe en MBR lo que contenia la RAM
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		input_from_ram<="0001000000000000";
		wait for clk_period/2;
		----------------------
		--LEE EL CONTENIDO DE MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		----------------------
		--ESCRBIR EN IR lo que tenia el MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		----------------------
		--MANDAR A LA CU el valor del IR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		----------------------
		--Aumentar el valor de PC en 1
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		----------------------
   end process;
END;
