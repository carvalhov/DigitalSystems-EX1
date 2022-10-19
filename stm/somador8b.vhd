library ieee;
use ieee.std_logic_1164.all;

entity somador8b
port(
     -- port inputs
     EntA, EntB  : in std_logic_vector(7 downto 0);
     cin         : in std_logic; 
     
     -- port outputs
     S           : Out std_logic_vector(7 downto 0);
     cout         : in std_logic
);
end somador8b;
