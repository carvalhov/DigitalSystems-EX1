-- Controlador
library ieee;
use ieee.std_logic_1164.all;

entity controlador is

	port(
		clk	 : in	std_logic;
		reset	 : in	std_logic;
		control: in std_logic_vector(1 downto 0); -- Saída do registrador opcode
		result : in std_logic; -- Resultado da comparação de A e B
		ld	 : out	std_logic;
		output : out	std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of controlador is

	-- Build an enumerated type for the state machine
	type state_type is (Eln, Eload, EdecodeOpcode, Eand, Esoma, EsubAB, EsubBA, Exor);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= Eln;
		elsif (rising_edge(clk)) then
			case state is
				when Eln=>
					state <=Eload;
				when Eload=>
					state <= EdecodeOpcode;
				when EdecodeOpcode =>
					if control = "00" then 
					   state <= Eand;
					elsif control = "01" then 
						state <= Esoma;
					elsif control = "10" then 
						if result = '1' then
						  state <= EsubAB;
						else
					     state <= EsubBA;
						end if; 
					elsif control = "11" then 
						state <= Exor;
					end if;
				when others =>
					state <= Eload;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when Eand =>
				output <= "000";
			when Esoma =>
				output <= "001";
			when EsubAB =>
				output <= "010";
			when EsubBA =>
				output <= "110";
			when Exor => 
				output <= "011";
			when others =>
				output <= null;
		end case;
	end process;

end rtl;
