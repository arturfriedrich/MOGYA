# Fesztiv�los feladat
# A jegyek azonos �r�ak az �sszes fesztiv�lra. Min�l kevesebb 
# p�znb�l szeretn�m meghallgatni legal�bb egyszer az �sszes zenekart.
# Legkevesebb h�ny fesztiv�lra kell elmennem, hogy ez teljes�lj�n?
#				F1	F2	F3	F4	F5
#Haggard		x		x	x	
#Stratovarius	x	x	x		x
#Epica			x	x		x	x
#Dalriada				x		x
#Apocalyptica				x	
#Liva				x	x	x	x
#Eluveite				x		x

# Megold�s
var F1 binary;
var F2 binary;
var F3 binary;
var F4 binary;
var F5 binary;

# Megszor�t�sok, megmutatja melyik el�ad� melyik fesztiv�lon j�tszik
s.t. Haggard: F1 + F3 + F4 >= 1;
s.t. Stratovarius: F1 +  F2 + F3 + F5 >= 1;
s.t. Epica: F1 +  F2 + F4 + F5 >= 1;
s.t. Dalriada: F3 +  F5 >= 1;
s.t. Apocalyptica: F4 >= 1;
s.t. Liva: F2 +  F3 + F4 + F5 >= 1;
s.t. Eluveite: F3 + F5 >= 1;

# Itt mindig az szerepel, amire kiv�ncsi vagyok
# A fesztiv�lok sz�ma legyen min�l kevesebb
minimize fesztivalokszama: F1+F2+F3+F4+F5;