# Feladatleírás

#Megoldás
var lekvar >= 0, integer;
var befott >= 0, integer;

# Korlátozások
s.t. gyumolcs: 80*lekvar + 40*befott <= 12000;
s.t. cukor: 40*lekvar + 40*befott <= 8000;

# Célfüggvény
maximize nyereseg: 100*lekvar + 80*befott;