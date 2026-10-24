library ieee;
use ieee.std_logic_1164.all;

entity mux8_1 is
    port (
        d   : in  std_logic_vector(7 downto 0);
        sel : in  std_logic_vector(2 downto 0);
        y   : out std_logic
    );
end entity mux8_1;

architecture bhv of mux8_1 is
begin
    process(d, sel)
    begin
        case sel is
            when "000" => y <= d(0);
            when "001" => y <= d(1);
            when "010" => y <= d(2);
            when "011" => y <= d(3);
            when "100" => y <= d(4);
            when "101" => y <= d(5);
            when "110" => y <= d(6);
            when "111" => y <= d(7);
            when others => y <= '0';
        end case;
    end process;
end architecture bhv;
