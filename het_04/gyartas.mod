# Feladatleírás

# Megoldás

# negatív terméket nem tudunk gyártani
var T1 >= 0;
var T2 >= 0;

# korlátozás
s.t. szerelesiido: 1*T1 + 2*T2 = 60;
s.t. gep1: 3*T1 + 4*T2 <= 130;
s.t. gep2: 4*T1 + 6*T2 <= 200;

# maximális árbevételre törekszünk
maximize arbevetel: 8*T1 + 10*T2;
end;