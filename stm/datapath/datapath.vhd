-- Datapath
library IEEE;
use IEEE.std_logic_1164.all;

entity datapath is

port(

		-- Input Ports 
    clk    : in std_logic;
    reset  : in std_logic;
    OpCode : in std_logic_vector(1 downto 0);  
    Ent_A  : in std_logic_vector(7 downto 0);       
    Ent_B  : in std_logic_vector(7 downto 0); 

		-- Output Ports
    Op     : out std_logic_vector(1 downto 0);  -- Saída do Registrador de OpCode para o controlador
    result : out std_logic;                     -- Resultado do comparador
    Saída  : out std_logic_vector(7 downto 0)   -- Saída da ALU

);
end datapath;
	
architecture behavioral of datapath is
	
	
end behavioral;
