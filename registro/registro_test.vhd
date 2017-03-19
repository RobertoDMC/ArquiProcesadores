LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY registro_test IS
END registro_test;
 
ARCHITECTURE behavior OF registro_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         rw : IN  std_logic;
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rw : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro PORT MAP (
          input => input,
          clk => clk,
          rw => rw,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		rw<='1';
		input<="00000001";
		wait for clk_period/2;
		clk <= '1';
		rw<='1';
		input<="00000001";
		wait for clk_period/2;
		clk <= '0';
		rw<='0';
		input<="00000010";
		wait for clk_period/2;
		clk <= '1';
		rw<='0';
		input<="00000010";
		wait for clk_period/2;
		clk <= '0';
		rw<='1';
		input<="00000011";
		wait for clk_period/2;
		clk <= '1';
		rw<='1';
		input<="00000011";
		wait for clk_period/2;
		clk <= '0';
		rw<='0';
		input<="00000010";
		wait for clk_period/2;
		clk <= '1';
		rw<='0';
		input<="00000010";
		wait for clk_period/2;
   end process;
 
END;
