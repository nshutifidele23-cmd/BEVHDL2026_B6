library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity btnstm is
	port (clk : in std_logic;
			rst : in std_logic;
			btn : in std_logic;
			led : out std_logic_vector (3 downto 0)
	);
end btnstm;

architecture bhv of btnstm is

type state_type is (idle,compte,arret);

signal led_signal : std_logic_vector (3 downto 0);
signal  cpt : std_logic;
signal ep : state_type;
signal es : state_type;


begin


process (clk,rst) --process pour faire 1HZ
	
	variable temp : integer range 0 to 50000000;
	
	begin
	
	if (rst = '0') then
		--cpt<= '0';
		temp := 0;
	
	elsif (rising_edge(clk)) then
	
		if (temp = 50000000) then
			temp := 0;
		else
			temp := temp+1;
			
		end if;
	end if;
end process;
	
	
process (clk,cpt,rst) --process pour compter jusqu'a 15
	
	begin
	if (rst = '0') then
		led_signal <= "0000";
	
	elsif (rising_edge(clk)) then
		if (cpt = '1') then
			led_signal <= led_signal + 1;
		
			if (led_signal = "1111") then
				led_signal <= "0000";
		
			end if;
		end if;
	end if;
		
	led <= led_signal;
	
end process;


--partie machine a etat

process (clk,rst) --process pour faire evoluer la machine a etat
begin
	if (rst = '0') then
		ep <= idle;
	elsif (rising_edge(clk)) then
		ep<=es;
	end if;
end process;

process(btn,ep)  --process combinattoire
begin

	case ep is
		when idle =>
			if (btn = '0') then
				es <= compte;
			else
				es <= idle;
			end if;
		when compte =>
			es <= arret;
			
		when arret =>
			if (btn = '1') then
				es <= idle;
			else
				es <= arret;
			end if;
				
	end case;
end process;
	
	
process (ep) --process combinatoire pourles sorties
begin
	case ep is
		when idle =>
			cpt <= '0';
		when compte =>
			cpt <= '1';
		when arret =>
			cpt <= '0';
			
	end case;
			
end process;

end bhv;