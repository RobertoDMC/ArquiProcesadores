LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY regsitros_Control_test IS
END regsitros_Control_test;
 
ARCHITECTURE behavior OF regsitros_Control_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registros_Control
    PORT(
         input_From_Ram : in  STD_LOGIC_VECTOR (15 downto 0);
			input_PC_Branch: in STD_LOGIC_VECTOR(7 downto 0);
			enable_Write_PC: in STD_LOGIC;
			clk: in STD_LOGIC;
			reset : in STD_LOGIC;
         direccion_RAM : out  STD_LOGIC_VECTOR (7 downto 0);
         CU : out  STD_LOGIC_VECTOR (15 downto 0));
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal direccion_RAM : std_logic_vector(7 downto 0);
   signal CU : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registros_Control PORT MAP (
          input => input,
          clk => clk,
          direccion_RAM => direccion_RAM,
          CU => CU
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		input<= "00000001";
		wait for clk_period/2;
   end process;
 
END;
