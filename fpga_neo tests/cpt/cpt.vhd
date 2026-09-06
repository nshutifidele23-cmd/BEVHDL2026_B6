library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


Entity cpt is 
	port (clk: in std_logic;
			rst: in std_logic;
			led: out std_logic_vector (3 downto 0));
end cpt;

architecture bhv of cpt is

signal led_signal : std_logic_vector (3 downto 0);
	signal cpt : std_logic;

	begin

	process (clk,rst)
	
	
	variable temp : integer range 0 to 50000000;
	
	begin
	
	if (rst = '0') then
		cpt<= '0';
		temp := 0;
	
	elsif (rising_edge(clk)) then
	
	
		
		if (temp = 50000000) then
			temp := 0;
			cpt <= '1';
		else
			temp := temp+1;
			cpt <= '0';
			
		end if;
			
	
	end if;
	
	
   end process;
	
	
	
	process (clk,cpt,rst)
	
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
		
	

end bhv;