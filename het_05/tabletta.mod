# Feladatle�r�s

#Megold�s
var spenotos integer, >= 0;
var epres integer, >= 0;

# Korl�toz�sok
s.t. siker: 10*spenotos + 7*epres >= 60;
s.t. adag: spenotos + epres <= 8;
s.t. osszetetel: epres >= spenotos;

# C�lf�ggv�ny
minimize osszeg: 2000*spenotos + 1500*epres;