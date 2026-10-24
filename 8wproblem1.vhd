library ieee;
use ieee.std_logic_1164.all;

entity problem1 is
    port (
        a, b, c, d : in std_logic;
        out1 : out std_logic;
        out2 : out std_logic
    );
end entity problem1;

architecture bhv of problem1 is
begin
    out1 <= a and b and c and d;
    out2 <= a or b or c or d;
end architecture bhv;
