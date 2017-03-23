library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux_ALU is
    Port ( sumador : in  STD_LOGIC_VECTOR(15 downto 0);
           mod_Log : in  STD_LOGIC_VECTOR(15 downto 0);
           posicion : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end demux_ALU;

architecture Behavioral of demux_ALU is

begin
process(posicion, sumador, mod_Log)
begin
	case posicion is
	when "00" => output<=sumador;
	when "01" => output<=mod_Log;
  	when "10" => output<="0000000000000000";
	when others=>output<="0000000000000000";
	end case;
end process;
end Behavioral;

