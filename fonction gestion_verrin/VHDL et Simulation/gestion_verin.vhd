library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;

Entity gestion_verin is
	port (clk : in std_logic;
			rst : in std_logic;
			pwm : out std_logic;
			angle_barre_sortie : out std_logic_vector (31 downto 0);
			cs  : out std_logic;
			clk_adc : out std_logic;
			dout    : in  std_logic;
			sens    : in  std_logic
	);
end gestion_verin;

architecture bhv of gestion_verin is


signal pwm_signal : std_logic;
signal freq : std_logic_vector (31 downto 0);
signal duty : std_logic_vector (31 downto 0);
signal counter : std_logic_vector (31 downto 0);
signal butee_g : std_logic_vector (31 downto 0);
signal butee_d : std_logic_vector (31 downto 0);
signal fin_course_g : std_logic;
signal fin_course_d : std_logic;
signal start_conv: std_logic;
signal fin_conversion: std_logic;
signal angle_barre : std_logic_vector (31 downto 0);
type state_type is (idle,conversion);
signal  cpt : std_logic;
signal signal_1M : std_logic;
signal ep : state_type;
signal es : state_type;
signal angle_mem : std_logic_vector (31 downto 0);



begin

freq    <= x"0000C350";
duty    <= x"00006000";
butee_g <= x"00000010";
butee_d <= x"00000F00";


--divide pwm

divide: process (clk, rst) 
begin

if (rst = '0') then
	counter <= (others => '0');

elsif (rising_edge(clk)) then 
	
	if (counter >= freq) then
		counter <= (others => '0');
	else 
	counter <= counter + 1;
	end if;
	end if;
end process divide;

--compare pwm

compare: process (clk, rst)
begin

	if (rst = '0') then
		pwm_signal <= '0';
	
	elsif (rising_edge(clk)) then
		if counter >= duty then
			pwm_signal <= '0';
		elsif counter = x"00000000" then
			pwm_signal <= '1';
		end if;
	end if;
end process compare;


--controle butees

controle_butees: process (clk, rst)
begin

	if (rst = '0') then
			fin_course_g <= '0';
			fin_course_d <= '0';
	elsif (rising_edge(clk)) then
		if (angle_mem < butee_g) then
			fin_course_g <= '1';
			fin_course_d <= '0';
		elsif (angle_mem > butee_d) then
			fin_course_d <= '1';
			fin_course_g <= '0';
		else
				fin_course_g <= '0';
				fin_course_d <= '0';
		end if;
	end if;
end process controle_butees;


--generation start_conv (100ms)

gene_start_conv: process (clk,rst)

variable timer : integer range 0 to 4999999;

begin
	if (rst = '0') then
			start_conv <= '0';
			timer := 0;
	elsif (rising_edge(clk)) then 

		if (timer = 4999999) then
				timer := 0;
				start_conv <= '1';
		else 
			timer := timer + 1;
			start_conv <= '0';
		end if;
	
	end if;		
end process gene_start_conv;


--generation 1M

gene_1M: process (clk,rst) 
variable timer_3 : integer range 0 to 49;

begin
if (rst = '0') then
	timer_3 := 0;
	signal_1M <= '0';

elsif (rising_edge(clk)) then 

	if (timer_3 = 49) then
			timer_3 := 0;			
	else 
		timer_3 := timer_3 + 1;
	end if;
	
	if (timer_3 >= 8 and timer_3 <= 25) then
		signal_1M <= '1';
	else
		signal_1M <= '0';
	end if;
end if;
end process gene_1M;



--process sequentielle pour faire avancer la machine à etat


process (clk,rst) 
begin
if (rst = '0') then
	ep <= idle;

elsif (rising_edge(clk)) then
	ep <= es;
end if;
end process;




pilote_adc: process (ep,start_conv,fin_conversion)
begin
	case ep is
	when idle =>
			if (start_conv = '1') then
				es <= conversion;
			else
				es <= idle;
			end if;
		when conversion =>
			if (fin_conversion = '1') then
				es <= idle;
			else
				es <= conversion;
			end if;		
	end case;
end process pilote_adc;




process (clk, rst)
variable compte : integer range 0 to 15;
variable signal_1M_prev : std_logic;
variable reg : std_logic_vector (11 downto 0);
begin
if (rst = '0') then
    compte := 0;
    signal_1M_prev := '0';
    reg := (others => '0');
    fin_conversion <= '0';
    angle_mem <= (others => '0');
elsif (rising_edge(clk)) then
    fin_conversion <= '0';
    if (ep = conversion) then
        if (signal_1M = '1' and signal_1M_prev = '0') then
            reg := reg(10 downto 0) & dout;      -- rec_dec
            if (compte = 14) then                -- compt_fronts
                compte := 0;
                fin_conversion <= '1';
                angle_mem <= x"00000" & reg;
            else
                compte := compte + 1;
            end if;
        end if;
        signal_1M_prev := signal_1M;
    else
        compte := 0;
        signal_1M_prev := '0';
    end if;
end if;
end process;


pwm <= '0' when (fin_course_g = '1' and sens = '0') or
                (fin_course_d = '1' and sens = '1')
       else pwm_signal;
angle_barre_sortie <= angle_mem;
cs   <= '0' when ep = conversion else '1';
clk_adc <= signal_1M when ep = conversion else '0';
end bhv;