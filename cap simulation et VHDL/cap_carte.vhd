library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;



--                        ______
--      clk            --|      |-- pwm (je vais pas l'utiliser c'est pour tester 1hZ, t_haut max = 36 ms)
--		  rst            --|      |-- echant (signal d'echantillon 100 khz)
--		  btn(start/stop)--|      |-- registre (registre 9 bit de l'angle 0-360°)
--      swich          --|      |--  start/stop (etat monocoup)
--                       |______|-- continu (etat continu)


Entity compass_choix_carte is
	port (clk : in std_logic;
			rst : in std_logic;
			btn : in std_logic;
			pwm : out std_logic;
			pwm_in : in std_logic;
			echant : out std_logic;
			switch : in std_logic;
			registre : out std_logic_vector (7 downto 0);
			start_stop : out std_logic;
			continu : out std_logic
	);
end compass_choix_carte;

architecture bhv of compass_choix_carte is

--ici je recopie les signals de sorties en signal interne pour les manipuler. 
--ex: sortie: registre, signal interne: signal_registre

signal temp_1s : std_logic;
signal echantillon : std_logic;
signal signal_registre : std_logic_vector (7 downto 0) := "00000000";
--signal augmente : integer range 0 to 39 := 1;
type state_type is (idle,continue,mono,attente_cont,attente_mono);
signal  cpt : std_logic;
signal pwm_signal : std_logic;
signal echant_signal : std_logic;
signal ep : state_type;
signal es : state_type;


begin


--je fabrique un PWM de test avec une frequence de 1hZ et un t_haut de 1ms
--le resultat du registre devrait etre 10 (en decimal)  

process (clk, rst)  
variable timer: integer range 0 to 3250000;
begin
if (rst = '0') then
--	timer := 0;
--	cpt <= '0';
pwm_signal <='0';
	--pwm<= '0';

elsif (rising_edge(clk)) then 

	--pwm_signal <= pwm_in;

	
	if (timer = 3250000) then
		timer := 0;
	else 
	timer := timer + 1;
	end if;
	if (timer < 150000) then
		pwm_signal <= '1';
	else
		pwm_signal <= '0';
end if;

end if;

end process;


--ici je cree une seconde qui sera utiliser comme delai entre les echantillons


process (clk, rst)  
variable timer_5: integer range 0 to 50000000;
begin
if (rst = '0') then
	timer_5 := 0;
	

elsif (rising_edge(clk)) then 
	
	if (timer_5 = 50000000) then
		timer_5 := 0;
		temp_1s <= '1';  --ceci est un flag qui sera lever pour faire savoir à l'etat continu que 1S est passé
		
	else 
	timer_5 := timer_5 + 1;
	temp_1s <= '0';
	end if;

end if;

end process;


--process sequentielle pour faire avancer la machine à etat


process (clk,rst) 
begin
if (rst = '0') then
	ep <= idle;

elsif (rising_edge(clk)) then
	ep <= es;
end if;
end process;


-- --------------->     idle  (do mono= 0, continu = 0)<--
--	|		   switch = 0 /     \switch = 1                  | 
-- |                  /       \                           | 
-- |             Continue    attente_mono                 |
-- |             (do:           \btn = 0                  |
-- |      1.continu = 1          \                        |
-- |      2. 360 echantillonage)  mono                    |
-- |           /                 (do:                     |
-- |          /                    1. start/stop = 1      |
-- |     Attente_continu           2. 360 echantillonage) |
-- |         |                         |                  |
-- ----------                           ------------------| 
--   temp_1s = 1

process (ep,btn, switch, echantillon, temp_1s)
begin
	es <= ep;
	case ep is
	when idle =>
			if (switch = '1') then
				es <= continue;
			elsif (switch = '0') then
				es <= attente_mono;
			else
				es <= idle;
			end if;
		when continue =>
			if (switch = '0') then
				es <= idle;
			elsif (echantillon = '1') then
				es <= attente_cont;
			else
				es <= continue;
			end if;
	when attente_mono =>
			if ( btn = '0') then
				es <= mono;
			elsif (switch = '1') then
				es <= idle;
			else
				es <= attente_mono;
			end if;		
		when mono =>
			if ( echantillon = '1') then
				es <= idle;
			else
				es <= mono;	
			end if;
		when attente_cont =>
			if ( temp_1s = '1') then
				es <= idle;
			else
				es <= attente_cont;
			end if;		
	end case;
end process;


--process combinatoire pourles sorties

process (ep) 
begin
	case ep is
		when continue =>
			continu <= '1';
			
		when mono =>
			start_stop <= '1';
	  	when idle =>
				continu <= '0';
				start_stop <= '0';
				
			
		when attente_mono =>
			continu <= '0';
			
		
		when attente_cont =>
			start_stop <= '0';
		when others    => null;
			
	
	end case;		
end process;



--process pour creer un signal d'echantillonage 100KHZ 


process (clk,rst) 
variable timer_3: integer range 0 to 5000;

begin
if (rst = '0') then
	timer_3 := 0;
	echant_signal <= '0';

elsif (rising_edge(clk)) then 

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


--process de remplissage du regitstre 9 bit

---  max = 360ms
--  <--------->
     --------         |              |--------
--  |        |________|______________|       |____ Pwm 
--  |   |    |        |              | 
--  |   |----|        |----          |
--  |___|    |________|    |____     |          signal d'echantillonage        
--  |<->|<-->|<------>|              |
--  16us       50us                  |
--      34 us                        | 
--  |                                | 
--  |<------------------------------>|

--               1S


process (clk,rst)  

variable compar: unsigned(7 downto 0);
variable compte: integer range 0 to 359;
variable echant_prev : std_logic;
begin

if (rst = '0') then
	signal_registre <= "00000000";
	registre <= "00000000";
	compar := "00000000";
	echant_prev := '0'; 
	compte := 0;

elsif (rising_edge(clk)) then
    if (ep = continue or ep = mono) then
          if (echant_signal = '1' and echant_prev = '0') then 
					if (pwm_in = '1') then
						  signal_registre <= signal_registre + 1;
						  --registre <= signal_registre;
						  echantillon <= '0';
					else
						if (signal_registre >  "00000000" )then
                    echantillon <= '1';
						 registre <= signal_registre;
						 end if;
					 end if;
					
            end if;
				 echant_prev := echant_signal;
     	

    else
        -- pas en train d'échantillonner : on remet à zéro 
        --compte := 0;
        echant_prev := '0';
        echantillon <= '0';
		  signal_registre <= "00000000";
    end if;
	  end if;
	
--echant <= echant_signal;
	
end process;

	--pwm <= pwm_in;


end bhv;