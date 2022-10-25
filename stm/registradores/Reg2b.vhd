library IEEE;
use IEEE.std_logic_1164.all;

entity Reg2b is

port(

		-- Input Ports 
    clk     : in std_logic;
	  reset   : in std_logic;
    X       : in std_logic_vector(1 downto 0);       

		-- Output Ports
    Y       :     out std_logic_vector(1 downto 0)

);
end Reg2b;
	
architecture behavioral of Reg2b is
	process(Clk, reset, ld)
	begin
		if(reset = '1') then 
			Y <= Null ;
		elsif(risind_edge(clk) and load = '1') then 
		   Y <= X ;
	   end if;
	end process;
end behavioral;
