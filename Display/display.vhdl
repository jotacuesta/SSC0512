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

    alias s_a : std_logic is saida(6);
    alias s_b : std_logic is saida(5);
    alias s_c : std_logic is saida(4);
    alias s_d : std_logic is saida(3);
    alias s_e : std_logic is saida(2);
    alias s_f : std_logic is saida(1);
    alias s_g : std_logic is saida(0);
    
    begin
        s_a <= (not(A) and not(B) and not(C) and D) or (not(A) and (B) and not(C) and not(D)) or ((A) and not(B) and (C) and (D))  or ((A) and (B) and not(C) and (D));
        s_b <= (not(A) and  (B) and not(C) and  (D)) or ((B) and (C)  and not(D))  or ((A) and  (C) and (D)) or ((A) and (B) and not(D));
        s_c <= (not(A) and not(B) and  (C) and not(D)) or ( (A) and  (B) and  (C))  or ((A) and  (B) and not(D));
        s_d <= (not(A) and not(B) and not(C) and  (D)) or (not(A) and (B) and not(C) and not(D))  or ((B) and (C) and (D))  or ((A) and not(B) and (C) and not(D));
        s_e <= (not(A) and (D)) or (not(B) and not(C) and (D)) or (not(A) and (B) and not(C));
        s_f <= (not(A) and not(B) and (D)) or (not(A) and not(B) and (C)) or (not(A) and (C) and (D)) or ((A) and (B) and not(C) and (D));
        s_g <= (not(A) and not(B) and not(C)) or (not(A) and (B) and (C) and (D)) or ((A) and (B) and not(C) and not(D));

end behaviour;