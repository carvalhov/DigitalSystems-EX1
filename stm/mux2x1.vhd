library ieee;

use ieee.std_logic_1164.all;

entity mux2x1 is
        port
        (
          -- Input ports
          S3_1, S3_2 : in std_logic_vector(7 downto 0);
          switch : in std_logic;

          -- Output ports
          S3 : out std_logic_vector(7 downto 0)
        );
end mux2x1;

-- switch é a saída do comparador A >= B, adicionar componente
  
architecture behaviour of mux2x1 is
begin
  process (w0, w1, s)
  begin
    if switch = ‘0’ then
      S3 <= S3_1;
    else
      s3 <= S3_2;
    end if;
  end process;
end behaviour;
