LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sumador_test IS
END sumador_test;
 
ARCHITECTURE behavior OF sumador_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador
    PORT(
         RA : IN  std_logic_vector(7 downto 0);
         RB : IN  std_logic_vector(7 downto 0);
         AC : OUT  std_logic_vector(7 downto 0);
         c : OUT  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RA : std_logic_vector(7 downto 0) := (others => '0');
   signal RB : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal AC : std_logic_vector(7 downto 0);
   signal c : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumador PORT MAP (
          RA => RA,
          RB => RB,
          AC => AC,
          c => c,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		RA<="00000001";
		RB<="00000101";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		RA<="00000001";
		RB<="11111110";
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		RA<="11111111";
		RB<="00000001";
		wait for clk_period/2;
   end process;
END;
