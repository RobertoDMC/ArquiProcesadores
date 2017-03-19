LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY modulo_Logico_test IS
END modulo_Logico_test;
 
ARCHITECTURE behavior OF modulo_Logico_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modulo_Logico
    PORT(
         RA : IN  std_logic_vector(7 downto 0);
         RB : IN  std_logic_vector(7 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         modLog : OUT  std_logic_vector(7 downto 0);
         comparador : OUT  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RA : std_logic_vector(7 downto 0) := (others => '0');
   signal RB : std_logic_vector(7 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal modLog : std_logic_vector(7 downto 0);
   signal comparador : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modulo_Logico PORT MAP (
          RA => RA,
          RB => RB,
          op => op,
          modLog => modLog,
          comparador => comparador,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="00";
		RA<="10100011";
		RB<="11110000";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="00";
		RA<="00000001";
		RB<="11111110";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="01";
		RA<="01010101";
		RB<="00000001";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="01";
		RA<="10000001";
		RB<="00000001";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="10";
		RA<="11111111";
		RB<="00000001";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="10";
		RA<="11111111";
		RB<="11001100";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="11";
		RA<="00000001";
		RB<="00000001";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		op<="11";
		RA<="11111111";
		RB<="00000001";
		wait for clk_period/2;
   end process;

END;
