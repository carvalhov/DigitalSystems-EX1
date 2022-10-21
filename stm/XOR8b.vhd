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
     
     begin 
          
     S4 <= A xor B;
  
end Behavioral;
