LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY ALU_test IS
END ALU_test;
 
ARCHITECTURE behavior OF ALU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         RA : IN  std_logic_vector(15 downto 0);
         RB : IN  std_logic_vector(15 downto 0);
         operacion : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         RC : OUT  std_logic_vector(15 downto 0);
         C : OUT  std_logic;
         compare : OUT  std_logic_vector(1 downto 0);
         rw_AC : OUT  std_logic;
         clk_AC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RA : std_logic_vector(15 downto 0) := (others => '0');
   signal RB : std_logic_vector(15 downto 0) := (others => '0');
   signal operacion : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal RC : std_logic_vector(15 downto 0);
   signal C : std_logic;
   signal compare : std_logic_vector(1 downto 0);
   signal rw_AC : std_logic;
   signal clk_AC : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant clk_AC_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          RA => RA,
          RB => RB,
          operacion => operacion,
          clk => clk,
          RC => RC,
          C => C,
          compare => compare,
          rw_AC => rw_AC,
          clk_AC => clk_AC
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		RA  <= "0000000000000001";
		RB  <= "0000000000000011";
		operacion<= "000";
		wait for clk_period/2;
   end process;

END;
