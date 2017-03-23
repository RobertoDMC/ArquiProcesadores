LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY micro_test IS
END micro_test;
 
ARCHITECTURE behavior OF micro_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MicroProcesador
    PORT(
         data : IN  std_logic_vector(15 downto 0);
         direccion : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         doi : IN  std_logic;
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(15 downto 0) := (others => '0');
   signal direccion : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal doi : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MicroProcesador PORT MAP (
          data => data,
          direccion => direccion,
          clk => clk,
          doi => doi,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		doi<='1';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

END;
