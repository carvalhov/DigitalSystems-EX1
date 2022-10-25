library ieee;
use ieee.std_logic_1164.all;

entity subtrator8b
port(
     -- port inputs
     EntA, EntB  : in std_logic_vector(7 downto 0);
     cin         : in std_logic; 
     
     -- port outputs
     S           : Out std_logic_vector(7 downto 0);
     cout         : in std_logic
);
end subtrator8b;

  -- Lembrar que o comparador está relacionado ao subtrator 
  -- if A >= B:  S = (A - B)    else:  S = (B - A) 
  
architecture Behavioral of subtrator8b is

  
  
end Behavioral;
