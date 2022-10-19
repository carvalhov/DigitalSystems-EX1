library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND8b is
port(
     -- Port inputs 
     EntA, EntB : in std_logic_vector(7 downto 0);
     -- Port Outputs
     -- S0 é a saída de Op_Code 00 
     S0          : out std_logic_vector(7 downto 0); 
);
end AND8b;
  

