library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador8b is
port (
      -- Port inputs
      A, B               : in std_logic_vector(7 downto 0); 
      -- Port Output
      S    : out std_logic -- Output = 1 when A >= B else 0
 );
end comparador8b;
  
architecture Behavioral of comparador8b is
begin
      process(A, B)
			begin
            if (A >= B) then  -- AgB: A greater than B;    AeB: A equal B;  
                S <= '1' ;
            elsif (A < B) then        -- AlB: A lesser than B.
                S <= '0' ;     
            END IF;
      end process;
end Behavioral;
