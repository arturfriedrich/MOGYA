# Feladatle�r�s

# Megold�s
var sonkas >= 0;
var szalamis >= 0;

# Korl�toz�sok
s.t. szalami: 2*szalamis <= 100;
s.t. sonka: 1*sonkas <= 40;
s.t. tojas: 3*szalamis + 2*sonkas <= 170;
s.t. vaj: 3*szalamis + 4*sonkas <= 220;

# C�lf�ggv�ny
maximize szendvicsekszama: sonkas + szalamis;
end;