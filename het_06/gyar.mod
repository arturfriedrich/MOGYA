# Feladatleírás

#Megoldás
var T1 >= 0, integer;
var T2 >= 0, integer;

# Korlátozások
s.t. G1: 3*T1 + 4*T2 <= 130;
s.t. G2: 4*T1 + 6*T2 <= 200;
s.t. munkas: 1*T1 + 2*T2 <= 60;

# Célfüggvény
maximize profit: 8*T1 + 10*T2;