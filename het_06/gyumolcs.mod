# Feladatle�r�s

#Megold�s
var lekvar >= 0, integer;
var befott >= 0, integer;

# Korl�toz�sok
s.t. gyumolcs: 80*lekvar + 40*befott <= 12000;
s.t. cukor: 40*lekvar + 40*befott <= 8000;

# C�lf�ggv�ny
maximize nyereseg: 100*lekvar + 80*befott;