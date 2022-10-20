library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND8b is
port(
     -- Port inputs 
     EntA, EntB : in std_logic_vector(7 downto 0);
     -- Port Outputs
     -- S0 é a saída de Op_Code 00 
     S0          : out std_logic_vector(7 downto 0) 
);
     
end AND8b;

architecture Behavioral of AND8b is
     
     -- Usar função map?
     -- Esquema lógico 
     -- S0[0] <= A[0] AND B[0];
     -- S0[1] <= A[1] AND B[1]; 
     -- idem ...
  
end Behavioral;
  

