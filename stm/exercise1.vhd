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
	
component controlador
	port(
		clk	 : in	std_logic;
		reset	 : in	std_logic;
		control: in std_logic_vector(1 downto 0); -- Saída do registrador opcode
		result : in std_logic; -- Resultado da comparação de A e B
		ld	    : out	std_logic;
		output : out	std_logic_vector(2 downto 0)
	);
end component controlador;

component datapath
port(
		-- Input Ports 
    clk    : in std_logic;
    reset  : in std_logic; -- Pode ser condiserado o Clear: tranformar em um load/clear no controlador
	 in_ld1  : in std_logic;
	 in_ld1  : in std_logic;
    OpCode : in std_logic_vector(1 downto 0);  
    Ent_A  : in std_logic_vector(7 downto 0);       
    Ent_B  : in std_logic_vector(7 downto 0);
	 ALU_control: in std_logic_vector(2 downto 0);   

		-- Output Ports
    Op     : out std_logic_vector(1 downto 0);  -- Saída do Registrador de OpCode para o controlador
    result : out std_logic;                     -- Resultado do comparador
    Saida  : out std_logic_vector(7 downto 0)   -- Saída da ALU
);
end component datapath;

