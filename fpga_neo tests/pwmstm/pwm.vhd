library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity pwm is
	port (clk : in std_logic;
			rst : in std_logic;
			pwm : out std_logic
	);
end pwm;

architecture bhv of pwm is

type state_type is (idle,compte);
signal  cpt : std_logic;
signal pwm_signal : std_logic;
signal ep : state_type;
signal es : state_type;


begin

process (clk, rst) --creer 1khz
variable timer: integer range 0 to 50000;
begin
if (rst = '0') then
	timer := 0;
	cpt <= '0';

elsif (rising_edge(clk)) then
	
	if (timer = 50000) then
		timer := 0;
	else 
	timer := timer + 1;
	end if;
	if (timer > 25000) then
		cpt <= '1';
	else
		cpt <= '0';
	end if;

end if;

end process;

process (clk,rst) --faire avancer la machine a etat
begin
if (rst = '0') then
	ep <= idle;

elsif (rising_edge(clk)) then
	ep <= es;
end if;



end process;

process (ep,cpt) --process combinatoire
begin
case ep is
		when idle =>
			if (cpt = '1') then
				es <= compte;
			else
				es <= idle;
			end if;
		when compte =>
			if (cpt = '0') then
				es <= idle;
			else
				es <= compte;
			end if;
			
				
	end case;

end process;

process (ep) --process combinatoire pourles sorties
begin
	case ep is
		when idle =>
			pwm_signal <= '0';
		when compte =>
			pwm_signal <= '1';			
	end case;
			
end process;
pwm <= pwm_signal;
end bhv;