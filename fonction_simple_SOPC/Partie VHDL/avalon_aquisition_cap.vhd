library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;



--                        ______
--      clk_50M            --|      |-- pwm (je vais pas l'utiliser c'est pour tester 1hZ, t_haut max = 36 ms)
--		  raz_n            --|      |-- echant (signal d'echantillon 100 khz)
--		  start_stop(start/stop)--|      |-- data_compas (data_compas 9 bit de l'angle 0-360°)
--      swich          --|      |--  start/stop (etat monocoup)
--                       |______|-- signal_continu (etat signal_continu)


Entity avalon_aquisition_cap is
	port (clk_50M : in std_logic;
			raz_n : in std_logic;
			start_stop : in std_logic;
			in_pwm : in std_logic;
			continu : in std_logic;
			data_compas : out std_logic_vector (8 downto 0);
			data_valid : out std_logic;
			writedata : in std_logic_vector (31 downto 0);
			readdata : out std_logic_vector (31 downto 0);
			address: std_logic_vector (1 downto 0);
			chipselect : in  std_logic;
         write_n: in  std_logic
	);
end avalon_aquisition_cap;

architecture bhv of avalon_aquisition_cap is

--ici je recopie les signals de sorties en signal interne pour les manipuler. 
--ex: sortie: data_compas, signal interne: signal_data_compas

signal control : std_logic_vector(1 downto 0);
signal sig_data_valid : std_logic;
signal echant : std_logic;
signal signal_start : std_logic;
signal signal_continu : std_logic;
signal temp_1s : std_logic;
signal echantillon : std_logic;
signal signal_data_compas : std_logic_vector (8 downto 0) := "000000000";
signal data_compas_reg : std_logic_vector(8 downto 0) := (others => '0'); --le latched de data compass
--signal augmente : integer range 0 to 39 := 1;
type state_type is (idle,signal_continue,mono,attente_cont,attente_mono);
signal  cpt : std_logic;
signal pwm_signal : std_logic;
signal echant_signal : std_logic;
signal ep : state_type;
signal es : state_type;


begin




process_Read: PROCESS(address, start_stop, continu, raz_n, data_compas_reg, sig_data_valid)
BEGIN
    case address is
        when "00" =>
            readdata <= x"0000000" & "0" & start_stop & continu & raz_n;
        when "01" =>
            readdata <= x"00000" & "00" & sig_data_valid & data_compas_reg;
        when others =>
            readdata <= (others => '0');
    end case;
END PROCESS process_Read;


--ici je cree une seconde qui sera utiliser comme delai entre les echantillons

process (clk_50M, raz_n)  
variable timer_5: integer range 0 to 50000000;
begin
if (raz_n = '0') then
	timer_5 := 0;
	

elsif (rising_edge(clk_50M)) then 
	
	if (timer_5 = 50000000) then
		timer_5 := 0;
		temp_1s <= '1';  --ceci est un flag qui sera lever pour faire savoir à l'etat signal_continu que 1S est passé
		
	else 
	timer_5 := timer_5 + 1;
	temp_1s <= '0';
	end if;

end if;

end process;


--process sequentielle pour faire avancer la machine à etat


process (clk_50M,raz_n) 
begin
if (raz_n = '0') then
	ep <= idle;

elsif (rising_edge(clk_50M)) then
	ep <= es;
end if;
end process;


-- --------------->     idle  (do mono= 0, signal_continu = 0)<--
--	|		   continu = 0 /     \continu = 1                  | 
-- |                  /       \                           | 
-- |             signal_continue    attente_mono                 |
-- |             (do:           \start_stop = 0                  |
-- |      1.signal_continu = 1          \                        |
-- |      2. 360 echantillonage)  mono                    |
-- |           /                 (do:                     |
-- |          /                    1. start/stop = 1      |
-- |     Attente_signal_continu           2. 360 echantillonage) |
-- |         |                         |                  |
-- ----------                           ------------------| 
--   temp_1s = 1

process (ep,start_stop, continu, echantillon, temp_1s)
begin
	es <= ep;
	case ep is
	when idle =>
			if (continu = '1') then
				es <= signal_continue;
			elsif (continu = '0') then
				es <= attente_mono;
			else
				es <= idle;
			end if;
		when signal_continue =>
			if (continu = '0') then
				es <= idle;
			elsif (echantillon = '1') then
				es <= attente_cont;
			else
				es <= signal_continue;
			end if;
	when attente_mono =>
			if ( start_stop = '0') then
				es <= mono;
			elsif (continu = '1') then
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
		when signal_continue =>
			signal_continu <= '1';
			
		when mono =>
			signal_start <= '1';
	  	when idle =>
				signal_continu <= '0';
				signal_start <= '0';
				
			
		when attente_mono =>
			signal_continu <= '0';
			
		
		when attente_cont =>
			signal_start <= '0';
		when others    => null;
			
	
	end case;		
end process;



--process pour creer un signal d'echantillonage 100KHZ 


process (clk_50M,raz_n) 
variable timer_3: integer range 0 to 5000;

begin
if (raz_n = '0') then
	timer_3 := 0;
	echant_signal <= '0';

elsif (rising_edge(clk_50M)) then 

	if (timer_3 = 5000) then
			timer_3 := 0;			
	else 
		timer_3 := timer_3 + 1;
	end if;
	
	--if (timer_3 >= 800 and timer_3 <= 2500) then
	if (timer_3 <= 2500) then
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


process (clk_50M,raz_n)  

variable compar: unsigned(8 downto 0);
variable compte: integer range 0 to 359;
variable echant_prev : std_logic;
variable in_pwm_prev : std_logic;
variable compte_front : std_logic := '0';
variable armed : std_logic := '0';
begin

if (raz_n = '0') then
	signal_data_compas <= "000000000";
	data_compas_reg <= "000000000";
	--data_compas <= "000000000";
	compar := "000000000";
	echantillon <= '0';
	echant_prev := '0'; 
	in_pwm_prev := '0';
	sig_data_valid <= '0';
	compte_front := '0';                    
   armed := '0';


elsif (rising_edge(clk_50M)) then
    if (ep = signal_continue or ep = mono) then
          if (echant_signal = '1' and echant_prev = '0') then
				if (in_pwm = '0') then
						armed := '1';
				end if;
					if (in_pwm = '1' and in_pwm_prev = '0' and armed = '1') then
						compte_front := '1';
						signal_data_compas <= "000000000";
					elsif  (in_pwm = '0' and in_pwm_prev = '1') then
						compte_front := '0';
					elsif (compte_front = '1') then
							signal_data_compas <= signal_data_compas + 1;
					end if;
					in_pwm_prev := in_pwm;
					
					if (compte_front = '1') then
						  --signal_data_compas <= signal_data_compas + 1;
						  --data_compas <= signal_data_compas;
						  echantillon <= '0';
						  sig_data_valid <= '0';
					else
						if (signal_data_compas >  "000000000" )then
                    echantillon <= '1';
						  sig_data_valid <= '1';
						 --data_compas <= signal_data_compas;
						 data_compas_reg <= signal_data_compas;
						 end if;
					 end if;
					
            end if;
				 echant_prev := echant_signal;
     	

    else
        -- pas en train d'échantillonner : on remet à zéro 
        --compte := 0;
		  armed := '0';
        echant_prev := '0';
        echantillon <= '0';
		  
		  
		  compte_front := '0';                    
        signal_data_compas <= "000000000"; 
		 
		 
    end if;
	  end if;

	
end process;

 data_valid <= sig_data_valid;
 data_compas <= data_compas_reg;

end bhv;