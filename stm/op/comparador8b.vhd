library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparador8b is
port (
      -- Port inputs
      A, B               : in std_logic_vector(7 downto 0); 
      -- Port Output
      -- AgB: A greater than B;    AeB: A equal B;    AlB: A lesser than B.
      S    : out std_logic -- Output = 1 when A >= B else 0
 );
end comparador8b;
  
architecture Behavioral of comparador8b is
      signal: result     : std_logic;
begin
      process(A, B)
            IF (A>B or A=B) THEN  -- AgB: A greater than B;    AeB: A equal B;  
                        result <= '1';
            ELSE (A<B) THEN        -- AlB: A lesser than B.
                        result <= '0';     
            END IF;
            s <= result;
      end process;
end Behavioral;
