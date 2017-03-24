LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY implementacion_test IS
END implementacion_test;
 
ARCHITECTURE behavior OF implementacion_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT implementacion
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         resetLCD : IN  std_logic;
         E : INOUT  std_logic;
         doi : IN  std_logic;
         RS : OUT  std_logic;
         RW : OUT  std_logic;
         SF_CE0 : OUT  std_logic;
         DB : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal resetLCD : std_logic := '0';
   signal doi : std_logic := '0';

	--BiDirs
   signal E : std_logic;

 	--Outputs
   signal RS : std_logic;
   signal RW : std_logic;
   signal SF_CE0 : std_logic;
   signal DB : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: implementacion PORT MAP (
          clk => clk,
          reset => reset,
          resetLCD => resetLCD,
          E => E,
          doi => doi,
          RS => RS,
          RW => RW,
          SF_CE0 => SF_CE0,
          DB => DB
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		doi <= '1';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

END;
