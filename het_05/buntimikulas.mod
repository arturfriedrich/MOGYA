# Feladatleírás

#Megoldás
var csomag1 binary;
var csomag2 binary;
var csomag3 binary;
var csomag4 binary;
var csomag5 binary;

var maradekcsoki >= 0, integer;
var maradeknarancs >= 0, integer;
var maradekmogyoro >= 0, integer;
var maradekvirgacs >= 0, integer;
var maradekkinder >= 0, integer;
var maradekgumicukor >= 0, integer;

# Korlátozások
s.t. narancs: csomag1 + csomag4 - maradeknarancs = 1;
s.t. mogyoro: csomag1 + csomag2 - maradekmogyoro = 1;
s.t. gumicukor: csomag2 + csomag3 - maradekgumicukor = 1;
s.t. csoki: csomag2 + csomag4 + csomag5 - maradekcsoki = 1;
s.t. kinder: csomag3 + csomag4 - maradekkinder = 1;
s.t. virgacs: csomag3 + csomag5 - maradekvirgacs = 1;



# Célfüggvény
minimize koltseg: 5*csomag1 + 10*csomag2 + 3*csomag3 + 4*csomag4 + 6*csomag5 + (2*maradekcsoki + 3*maradeknarancs + 1*maradekmogyoro + 4*maradekvirgacs + 5*maradekkinder + 6*maradekgumicukor);