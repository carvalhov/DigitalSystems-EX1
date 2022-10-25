library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND8b is
port(
     -- Port inputs 
     A, B : in std_logic_vector(7 downto 0);
     -- Port Outputs
     -- S0 é a saída de Op_Code 00 
     S0          : out std_logic_vector(7 downto 0) 
);
     
end AND8b;

architecture Behavioral of AND8b is
  begin
       
    S0 <= A AND B;
     
end Behavioral;
  

