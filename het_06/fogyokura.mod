# Feladatle�r�s

#Megold�s
var citrom >= 0, integer;
var alma >= 0, integer;

# Korl�toz�sok
s.t. vitamin: 300*citrom + 100*alma >= 500;
s.t. vas: 0.2*citrom + 0.5*alma >= 1.2;
s.t. kaloria: 50*citrom + 80*alma <= 400;

# C�lf�ggv�ny
minimize piac: 60*citrom + 40*alma;