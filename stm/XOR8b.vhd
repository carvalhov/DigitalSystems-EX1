library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR8b is
port(
     -- Port inputs 
     EntA, EntB : in std_logic_vector(7 downto 0)
     
     -- Port Outputs
     -- S4 é a saída de Op_Code: '11' 
     S4          : out std_logic_vector(7 downto 0) 
);
end XOR8b;
     
architecture Behavioral of XOR8b is
     
     -- Usar função map?
     -- Esquema lógico 
     -- S0[0] <= A[0] xor B[0];
     -- S0[1] <= A[1] xor B[1]; 
     -- idem ...
  
end Behavioral;
