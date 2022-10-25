-- Okay 
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port
 (
	  -- Input ports
    A, B    : in  STD_LOGIC_VECTOR(7 downto 0);
    ALU_Sel	: in std_logic_vector(2 downto 0);
		
    -- Output ports
    ALU_OUT	: out STD_LOGIC_VECTOR(7 downto 0)
);
end ALU;

architecture Behavioral of ALU is  
  
signal ALU_Result : std_logic_vector (7 downto 0);

 begin
    process(A, B, ALU_Sel)
		  begin
			case(ALU_Sel) is
			  when "000" => -- Port AND
				 ALU_Result <= A AND B ;
				
			  when "010" => -- Componente Somador
				 ALU_Result <=  std_logic_vector(unsigned(A) + unsigned(B)) ;
				
			  when "100" => -- Componente subtrator A - B 
				 ALU_Result <=  std_logic_vector(unsigned(A) - unsigned(B)) ;
			 
			  when "110" => -- Port XOR
				 ALU_Result <= A XOR B ;
				 
			  when "101" => -- Componente subtrator B - A 
				 ALU_Result <=  std_logic_vector(unsigned(B) - unsigned(A)) ;
					 
			  when others => ALU_Result <= NULL; 
			  end case;

			ALU_Out <= ALU_Result; -- ALU out
   end process;
end Behavioral;       
