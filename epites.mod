# Feladatle�r�s

#Megold�s
var A integer, >= 0;	# Csak eg�sz h�zat tudunk �p�teni
var B integer, >= 0;

# Korl�toz�sok
s.t. lemez: 4000*A + 5000*B <= 32000;
s.t. acel: 4*A + 3*B <= 24;
s.t. tetofedo: 300*A + 200*B <= 2000;
s.t. beton: 200*A + 100*B <= 1600;

# C�lf�ggv�ny
maximize nyereseg: 4000*A + 5000*B;