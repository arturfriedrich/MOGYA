# 2. feladat
set Gyarak;
set Boltok;

param Igeny{Boltok};
param Kapacitas{Gyarak};
param Koltsegek{Gyarak, Boltok};

var szallitas{Gyarak, Boltok} >= 0, integer;

s.t. Gyarak_megszoritas {g in Gyarak} : sum{b in Boltok} szallitas[g, b] = Kapacitas[g];
s.t. Boltok_megszoritas {b in Boltok} : sum{g in Gyarak} szallitas[g, b] = Igeny[b];

s.t. rablobandak : szallitas["Temesvar", "Gyor"] + szallitas["Temesvar", "Pecs"] <= 100;

minimize szallitasi_koltseg : sum {g in Gyarak, b in Boltok} szallitas[g, b] * Koltsegek[g, b];

data;
set Gyarak:= Kolozsvar Marosvasarhely Temesvar;
set Boltok:= Budapest Gyor Szeged Pecs;

param Igeny := 
Budapest	1100
Gyor		800
Szeged		1300
Pecs		1300
;

param Kapacitas := 
Kolozsvar		1000
Marosvasarhely	2000
Temesvar		1500
;

param Koltsegek :
				Budapest	Gyor	Szeged	Pecs :=
Kolozsvar		10			12		5		8
Marosvasarhely	16			10		9		2
Temesvar		14			18		20		13
;