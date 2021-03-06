----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:56 06/01/2014 
-- Design Name: 
-- Module Name:    toplevel - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity toplevel is
    Port ( clk : in  STD_LOGIC;
           ledred : out  STD_LOGIC;
           ledgreen : out  STD_LOGIC);
end toplevel;

architecture Behavioral of toplevel is
	signal counter : unsigned(25 downto 0) := (others => '0');
begin

	ledred <= counter(25);
	ledgreen <= counter(24);

	process(clk)
	begin
		if clk'event and clk='1' then
			counter <= counter + 1;
		end if;
	
	end process;

end Behavioral;

