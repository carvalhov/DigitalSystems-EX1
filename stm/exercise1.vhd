library IEEE;
use IEEE.std_logic_1164.all;

entity exercicio1 is

port(

		-- Input Ports 
    clk    : in std_logic;
    reset  : in std_logic;
    OpCode : in std_logic_vector(1 downto 0);  
    Ent_A  : in std_logic_vector(7 downto 0);       
    Ent_B  : in std_logic_vector(7 downto 0); 

		-- Output Ports
    S:     out std_logic_vector(7 downto 0)

);
end exercicio1;
	
architecture behavioral of exercicio1 is
	
	
end Behavioral;
