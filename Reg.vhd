library IEEE;
use IEEE.std_logic_1164.all;

entity reg is
	port(Clock,Reset : in  std_logic;
	     En          : in  std_logic;
	     Din         : in  std_logic_vector(15 downto 0);
	     Dout        : out std_logic_vector(15 downto 0));
end entity;

architecture reg_arch of reg is

begin
	REGISTER_PROCESS : process(Clock, Reset)
	begin
		if   (Reset='0') then
			Dout<=x"0000";
		elsif(rising_edge(Clock)) then
			if (En='1') then
				Dout<=Din;
			end if;
		end if;
	end process;
end architecture;