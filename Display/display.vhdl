library ieee;
use ieee.std_logic_1164.ALL;

entity display is 
    port (
        entrada : in std_logic_vector (3 downto 0);
        saida : out std_logic_vector (6 downto 0)
    );
end entity;


architecture behaviour of display is
    signal A : std_logic := entrada(3);
    signal B : std_logic := entrada(2);
    signal C : std_logic := entrada(1);
    signal D : std_logic := entrada(0);

    alias a : std_logic is saida(0);
    alias b : std_logic is saida(1);
    alias c : std_logic is saida(2);
    alias d : std_logic is saida(3);
    alias e : std_logic is saida(4);
    alias f : std_logic is saida(5);
    alias g : std_logic is saida(6);
    
    begin
        a <= (not(A) and not(B) and not(C) and  (D)) or (not(A) and  (B) and not(C)  and not(D))  or ((A) and not(B) and (C) and not(D))  or ((A) and (B) and not(C) and (D));
        b <= (not(A) and  (B) and not(C) and  (D)) or (not(A) and  (B) and  (C)  and not(D))  or ((A) and  (C) and (D)) or ((A) and (B) and not(D));
        c <= (not(A) and not(B) and  (C) and not(D)) or ( (A) and  (B) and  (C))  or ((A) and  (B) and not(D));
        d <= (not(A) and not(B) and not(C) and  (D)) or (not(A) and (B) and not(C)   and not(D))  or ((B) and (C) and (D))  or ((A) and not(B) and (C) and not(D));
        e <= (not(A) and (D)) or (not(B) and not(C) and (D)) or (not(A) and (B) and (C));
        f <= (not(A) and not(B) and (D)) or (not(A) and not(B) and (C)) or (not(A) and (C) and (D)) or ((A) and (B) and not(C) and (D));
        g <= (not(A) and not(B) and not(C)) or (not(A) and (B) and (C) and (D)) or ((A) and (B) and not(C) and not(D));

end behaviour;
