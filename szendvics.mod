# Feladatleírás

# Megoldás
var sonkas >= 0;
var szalamis >= 0;

# Korlátozások
s.t. szalami: 2*szalamis <= 100;
s.t. sonka: 1*sonkas <= 40;
s.t. tojas: 3*szalamis + 2*sonkas <= 170;
s.t. vaj: 3*szalamis + 4*sonkas <= 220;

# Célfüggvény
maximize szendvicsekszama: sonkas + szalamis;
end;