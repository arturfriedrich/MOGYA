# Fesztiválos feladat
# A jegyek azonos árúak az összes fesztiválra. Minél kevesebb 
# péznbõl szeretném meghallgatni legalább egyszer az összes zenekart.
# Legkevesebb hány fesztiválra kell elmennem, hogy ez teljesüljön?
#				F1	F2	F3	F4	F5
#Haggard		x		x	x	
#Stratovarius	x	x	x		x
#Epica			x	x		x	x
#Dalriada				x		x
#Apocalyptica				x	
#Liva				x	x	x	x
#Eluveite				x		x

# Megoldás
var F1 binary;
var F2 binary;
var F3 binary;
var F4 binary;
var F5 binary;

# Megszorítások, megmutatja melyik elõadó melyik fesztiválon játszik
s.t. Haggard: F1 + F3 + F4 >= 1;
s.t. Stratovarius: F1 +  F2 + F3 + F5 >= 1;
s.t. Epica: F1 +  F2 + F4 + F5 >= 1;
s.t. Dalriada: F3 +  F5 >= 1;
s.t. Apocalyptica: F4 >= 1;
s.t. Liva: F2 +  F3 + F4 + F5 >= 1;
s.t. Eluveite: F3 + F5 >= 1;

# Itt mindig az szerepel, amire kiváncsi vagyok
# A fesztiválok száma legyen minél kevesebb
minimize fesztivalokszama: F1+F2+F3+F4+F5;