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
         input_increase_PC : IN  std_logic_vector(1 downto 0);
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
   signal input_increase_PC : std_logic_vector(1 downto 0) := (others => '0');
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
          input_increase_PC => input_increase_PC,
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
	--GUARDAR EN PC 0
		clk <= '0';
		input_increase_PC<="01";
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--ESCRIBIR EN MAR EL VALOR DE PC
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--LEER EL VALOR DE MAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--Guardar en MBR lo que esta en la RAM en la posicion del MAR
		clk <= '0';
		input_From_Ram<="1010000000000001";
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--GUARDAR EN IR LO QUE ESTA EN MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--MANDAR LA INSTRUCCION DEL IR A LA CU
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--AUMENTAR EL VALOR DEL PC O CAMBIAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--ESCRIBIR EN MAR EL VALOR DE PC
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--LEER EL VALOR DE MAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--Guardar en MBR lo que esta en la RAM en la posicion del MAR
		clk <= '0';
		input_From_Ram<="1010000000000001";
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--GUARDAR EN IR LO QUE ESTA EN MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--MANDAR LA INSTRUCCION DEL IR A LA CU
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--AUMENTAR EL VALOR DEL PC O CAMBIAR
		input_increase_PC<="10";
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--ESCRIBIR EN MAR EL VALOR DE PC
		input_increase_PC<="01";
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--LEER EL VALOR DE MAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--Guardar en MBR lo que esta en la RAM en la posicion del MAR
		clk <= '0';
		input_From_Ram<="1010000000000001";
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--GUARDAR EN IR LO QUE ESTA EN MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--MANDAR LA INSTRUCCION DEL IR A LA CU
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--AUMENTAR EL VALOR DEL PC O CAMBIAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--ESCRIBIR EN MAR EL VALOR DE PC
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--LEER EL VALOR DE MAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--Guardar en MBR lo que esta en la RAM en la posicion del MAR
		clk <= '0';
		input_From_Ram<="1010000000000001";
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--GUARDAR EN IR LO QUE ESTA EN MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--MANDAR LA INSTRUCCION DEL IR A LA CU
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--AUMENTAR EL VALOR DEL PC O CAMBIAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		input_PC_Branch<="00011111";
		enable_Write_PC<='1';
		wait for clk_period/2;
	-------------------------
	--ESCRIBIR EN MAR EL VALOR DE PC
		clk <= '0';
		enable_Write_PC<='0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--LEER EL VALOR DE MAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--Guardar en MBR lo que esta en la RAM en la posicion del MAR
		clk <= '0';
		input_From_Ram<="1011111111111101";
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--GUARDAR EN IR LO QUE ESTA EN MBR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--MANDAR LA INSTRUCCION DEL IR A LA CU
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
	--AUMENTAR EL VALOR DEL PC O CAMBIAR
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	-------------------------
   end process;

END;
