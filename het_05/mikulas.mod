# Feladatleírás

#Megoldás
var csomag1 binary;
var csomag2 binary;
var csomag3 binary;
var csomag4 binary;
var csomag5 binary;

# Korlátozások
s.t. narancs: csomag1 + csomag4 >= 1;
s.t. mogyoro: csomag1 + csomag2 >= 1;
s.t. gumicukor: csomag2 + csomag3 >= 1;
s.t. csoki: csomag2 + csomag4 + csomag5 >= 1;
s.t. kinder: csomag3 + csomag4 >= 1;
s.t. virgacs: csomag3 + csomag5 >= 1;

# Célfüggvény
minimize koltseg: 5*csomag1 + 10*csomag2 + 3*csomag3 + 4*csomag4 + 6*csomag5;