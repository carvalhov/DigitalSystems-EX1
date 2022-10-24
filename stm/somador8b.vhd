library ieee;
use ieee.std_logic_1164.all;

entity somador
port(
     -- port inputs
     A, B  : in std_logic;
     cin         : in std_logic; 
     
     -- port outputs
     S           : Out std_logic;
     cout         : in std_logic
);
end somador;

architecture Behavioral of somador is
   begin  
     S <= (X xor Y xor Cin);
     Cout <= (X and Y) or (X and Cin) or (Y and Cin);  
end Behavioral;


library ieee;
use ieee.std_logic_1164.all;

entity somador8b
port(
     -- port inputs
     A, B  : in std_logic_vector(7 downto 0);
     cin         : in std_logic; 
     
     -- port outputs
     sum          : Out std_logic_vector(7 downto 0);
     cout         : in std_logic
);
end somador8b;

architecture Behavioral of somador8b is
     -- carry out ou 'mais-um' 
     signal carry : std_logic_vector(6 downto 0);

     component somador is 
          port(
          -- port inputs
          A, B  : in std_logic;
          cin         : in std_logic; 

          -- port outputs
          sum          : Out std_logic;
          cout         : in std_logic
     );
     end somador;
     begin
          a0:somador port map (A(0),B(0),cin,sum(0),carry(0));
          a1:somador port map (A(1),B(1),cary(0),sum(1),carry(1));
          a2:somador port map (A(2),B(2),cary(1),sum(2),carry(2));
          a3:somador port map (A(3),B(3),cary(2),sum(3),carry(3));
          a4:somador port map (A(4),B(4),cary(3),sum(4),carry(4));
          a5:somador port map (A(5),B(5),cary(4),sum(5),carry(5));
          a6:somador port map (A(6),B(6),cary(5),sum(6),carry(6));
          a7:somador port map (A(7),B(7),cary(6),sum(7),cout);
     
end Behavioral;
