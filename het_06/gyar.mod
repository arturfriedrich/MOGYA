# Feladatle�r�s

#Megold�s
var T1 >= 0, integer;
var T2 >= 0, integer;

# Korl�toz�sok
s.t. G1: 3*T1 + 4*T2 <= 130;
s.t. G2: 4*T1 + 6*T2 <= 200;
s.t. munkas: 1*T1 + 2*T2 <= 60;

# C�lf�ggv�ny
maximize profit: 8*T1 + 10*T2;