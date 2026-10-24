-- Problem 3: 7-segment display for a, b, c, d, f, g
-- Segment output order: display(7 downto 0) = a b c d e f g dp
-- Active-high outputs: '1' turns a segment on.
library ieee;
use ieee.std_logic_1164.all;

entity problem3_7seg is
    port (
        en      : in  std_logic;
        dat     : in  std_logic_vector(3 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity problem3_7seg;

architecture bhv of problem3_7seg is
begin
    process(en, dat)
    begin
        if en = '0' then
            display <= "00000000";        -- all segments off
        else
            case dat is
                when "0000" => display <= "11111010"; -- a
                when "0001" => display <= "00111110"; -- b
                when "0010" => display <= "00011010"; -- c
                when "0011" => display <= "01111010"; -- d
                when "0100" => display <= "10001110"; -- f
                when "0101" => display <= "11110110"; -- g (7-segment approximation)
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;
