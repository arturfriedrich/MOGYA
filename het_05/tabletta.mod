# Feladatleírás

#Megoldás
var spenotos integer, >= 0;
var epres integer, >= 0;

# Korlátozások
s.t. siker: 10*spenotos + 7*epres >= 60;
s.t. adag: spenotos + epres <= 8;
s.t. osszetetel: epres >= spenotos;

# Célfüggvény
minimize osszeg: 2000*spenotos + 1500*epres;