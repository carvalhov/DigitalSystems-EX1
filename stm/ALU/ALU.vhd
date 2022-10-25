library IEEE;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity ALU is
  port
 (
	  -- Input ports
    A, B    : in  STD_LOGIC_VECTOR(7 downto 0);
    ALU_Sel	: in std_logic_vector(2 downto 0);
		
    -- Output ports
    ALU_OUT	: out STD_LOGIC_VECTOR(7 downto 0);
    Carryout    : out std_logic  -- Carryout flag
);
end ALU;

architecture Behavioral of ALU is  
  
signal ALU_Result : std_logic_vector (7 downto 0);
signal tmp: std_logic_vector (8 downto 0);

 begin
    process(A, B, ALU_Sel)
		  begin
			case(ALU_Sel) is
			  when "000" => -- Port AND
				 ALU_Result <= A AND B ;
				
			  when "010" => -- Componente Somador
				 ALU_Result <= A + B ;
				
			  when "100" => -- Componente subtrator (Lembrar que pode ser A-B ou B-A)
				 if (A >= B) then -- Comparador de A e B
					 ALU_Result <= A - B ;
				 else
					 ALU_Result <= B - A ;
				 end if;
			 
			  when "110" => -- Port XOR
				 ALU_Result <= A XOR B ;
				
			  when others => ALU_Result <= NULL; 
			  end case;

			ALU_Out <= ALU_Result; -- ALU out
			tmp <= ('0' & A) + ('0' & B);
			Carryout <= tmp(8); -- Carryout flag
   end process;
end Behavioral;       
