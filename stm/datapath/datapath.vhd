-- Datapath
library IEEE;
use IEEE.std_logic_1164.all;

entity datapath is

port(

		-- Input Ports 
    clk    : in std_logic;
    reset  : in std_logic; -- Pode ser condiserado o Clear: tranformar em um load/clear no controlador
    OpCode : in std_logic_vector(1 downto 0);  
    Ent_A  : in std_logic_vector(7 downto 0);       
    Ent_B  : in std_logic_vector(7 downto 0); 

		-- Output Ports
    Op     : out std_logic_vector(1 downto 0);  -- Saída do Registrador de OpCode para o controlador
    result : out std_logic;                     -- Resultado do comparador
    Saida  : out std_logic_vector(7 downto 0)   -- Saída da ALU

);
end datapath;
	
architecture behavioral of datapath is
   signal A       : std_logic_vector (7 downto 0);
   signal B       : std_logic_vector (7 downto 0);
COMPONENT ALU
  port
 (
	  -- Input ports
    A, B    : in  STD_LOGIC_VECTOR(7 downto 0);
    ALU_Sel	: in std_logic_vector(2 downto 0);
		
    -- Output ports
    ALU_OUT	: out STD_LOGIC_VECTOR(7 downto 0)
);
end COMPONENT ALU;

COMPONENT Reg2b
port(
    -- Input Ports 
    clk     : in std_logic; 
    reset   : in std_logic;
    ld      : in std_logic;
    X       : in std_logic_vector(1 downto 0);       
    -- Output Ports
    Y       :  out std_logic_vector(1 downto 0)
);
end COMPONENT Reg2b;
	
COMPONENT Reg8b
port(
    -- Input Ports 
    clk     : in std_logic;
    reset   : in std_logic;
    ld      : in std_logic;
    X       : in std_logic_vector(7 downto 0);       
    -- Output Ports
    Y:     out std_logic_vector(7 downto 0)
);
end COMPONENT Reg8b;
	
COMPONENT comparador_8b
port (
      -- Port inputs
      A, B   : in std_logic_vector(7 downto 0); 
      -- Port Output
      S      : out std_logic -- Output = 1 when A >= B else 0
);
end COMPONENT comparador_8b;	
BEGIN
  RegistradorA: Reg8b 
	portmap (
		clk => Clk;
		X => Ent_A;
		Y => A);
  RegistradorB: Reg8b 
	  portmap (
		clk => Clk;
		X => Ent_B;
		Y => B);
  Control_opcode: Reg2b 
	  portmap (
	 	clk => clk;
	  	X => Opcode;
	  	Y => Op);
  comparadorAB: comparador_8b
	  portmap(
	  	A => A;
		B => B;
		S => Result);
  ALU: ALU
	  portmap(
		A => A;
		B => B;
		ALU_Sel => ;-- Criar um sinal do controlador?
		ALu_OUT => Saida);

end behavioral;
