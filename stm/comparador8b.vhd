library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador8b is
port (
      -- Port inputs
      clock     : in std_logic; 
      EntA,EntB : in std_logic_vector(7 downto 0); 
      -- Port Output
      Output    : out std_logic -- Output = 0 when A = B 
 );
end comparador8b;
  
architecture Behavioral of comparador8b is

  
end Behavioral;
