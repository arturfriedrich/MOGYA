# Feladatle�r�s

#Megold�s
var tura integer, >= 0;
var mini integer, >= 0;

# Korl�toz�sok
s.t. anyag: 3*tura + 2*mini <= 5400;
s.t. ertekesites_tura: tura <= 1000;
s.t. ertekesites_mini: mini <= 1200;
s.t. munkaido: 45*tura + 40*mini <= 35*40*60;

# C�lf�ggv�ny
maximize nyereseg: 32*tura + 24*mini;