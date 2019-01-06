library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity akkumulator is 

	port (
		d	: in std_logic_vector(3 downto 0); -- Daten-Eingang
      ld : in std_logic; -- MUX Steuereingang: 0(gedrückt)=Ergebnis durchschalten, 1(nicht gedrückt)= Dateneingang durchschalten
		sub : in std_logic; -- 0=+, 1=-
		e	: in std_logic; -- enable Auffangregister 0(gedrückt)= enabled
		clk : in std_logic; -- Takt

		c : out std_logic; -- LEDG(4) carry out
		q : out std_logic_vector(3 downto 0); -- LEDG(3..0) Daten-Ausgang
		
		-- debug pins:
		z_out : out std_logic_vector(4 downto 0)	-- LEDR(4..0), z4 = carry
		
	
		);
end entity akkumulator;


architecture arch of akkumulator is
signal auffangregister : std_logic_vector(4 downto 0);
signal z: signed(4 downto 0);
begin	
	akku_proc: process(clk)	
	begin		
		if (rising_edge(clk) and e = '0') then
			if (ld = '1') then 
				auffangregister <= '0' & d;				
			else
				auffangregister <= std_logic_vector(z);	
			end if;
			q <= auffangregister(3 downto 0);
			c <= auffangregister(4);
		end if;		
	end process akku_proc;		
	
	z <= signed('0' & d) + signed('0' & auffangregister(3 downto 0)) when sub = '0' 
		else signed('0' & d) - signed('0' & auffangregister(3 downto 0));
	z_out <= std_logic_vector(z);	
end arch;
