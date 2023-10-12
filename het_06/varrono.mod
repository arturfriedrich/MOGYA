# Feladatleírás

#Megoldás
var ing >= 0, integer;
var szoknya >= 0, integer;

# Korlátozások
s.t. anyag: 3*ing + 4*szoknya <= 12;
s.t. ido: 5*ing + 2*szoknya = 10;
s.t. db: ing + szoknya >= 4;

# Célfüggvény
maximize profit: 4*ing + 3*szoknya;