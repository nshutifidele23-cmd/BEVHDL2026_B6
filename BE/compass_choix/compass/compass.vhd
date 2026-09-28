library IEEE;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

Entity compass is
	port (clk : in std_logic;
			rst : in std_logic;
			btn : in std_logic;
			pwm : out std_logic;
			echant : out std_logic;
			registre : out std_logic_vector (8 downto 0)
	);
end compass;

architecture bhv of compass is

signal signal_registre : std_logic_vector (8 downto 0) := "000000000";
signal augmente : integer range 0 to 39 := 1;
type state_type is (idle,compte);
signal  cpt : std_logic;
signal pwm_signal : std_logic;
signal echant_signal : std_logic;
signal ep : state_type;
signal es : state_type;


begin

process (clk, rst) 
variable timer: integer range 0 to 1800000;
begin
if (rst = '0') then
	timer := 0;
	cpt <= '0';

elsif (rising_edge(clk)) then --frequence 27HZ max
	
	if (timer = 1800000) then
		timer := 0;
	else 
	timer := timer + 1;
	end if;
	if (timer < 50000*augmente) then
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

process (clk,rst) --auugmenter duty cycle
--variable etat_btn : std_logic := '1';
variable timer_2: integer range 0 to 25000000;
begin
if (rst = '0') then
	--etat_btn := '1';
	augmente <= 1;
	timer_2 := 0;

elsif (rising_edge(clk)) then
	--if (btn = '0' and etat_btn = '1') then
	if (btn = '0') then
		if (timer_2 = 250000) then
			timer_2 := 0;
			if (augmente < 39) then
				augmente <= augmente+ 1;
			end if;
		else
			timer_2 := timer_2 + 1;
	end if;
	end if;
	--etat_btn := btn;
end if;
end process;

process (clk,rst) --process signal echantillonage

variable timer_3: integer range 0 to 5000;

begin
if (rst = '0') then
	timer_3 := 0;
	echant_signal <= '0';

elsif (rising_edge(clk)) then --frequence echantilonage periode : 4ms


	if (timer_3 = 5000) then
			timer_3 := 0;
			
	else 
		timer_3 := timer_3 + 1;
	end if;
	
	
	if (timer_3 >= 800 and timer_3 <= 2500) then
		echant_signal <= '1';
		
	else
		echant_signal <= '0';
		
	end if;

end if;
end process;


process (clk,rst)  --remplir registre

variable compar: unsigned(8 downto 0);
variable compte: integer range 0 to 359;
variable echant_prev : std_logic;
begin

if (rst = '0') then
	signal_registre <= "000000000";
	compar := "000000000";
	echant_prev := '0'; 
	compte := 0;

elsif (rising_edge(clk)) then --frequence echantilonage periode 
	
	if (echant_signal = '1' and echant_prev = '0') then --detecter le front
		
		if (pwm_signal = '1') then
			compar := "000000001";
		else
			compar := "000000000";
		end if;
		
			
		if (compte = 359) then
			compte := 0;
			signal_registre <= "000000000";
			registre <= "000000000";
			
		else
			compte := compte + 1;
			signal_registre <= std_logic_vector(unsigned(signal_registre) + compar);
		end if;

	end if;
	
	 echant_prev := echant_signal;

end if;

registre <= signal_registre;
end process;


echant <= echant_signal;
pwm <= pwm_signal;

end bhv;