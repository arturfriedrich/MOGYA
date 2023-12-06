# 2. feladat

# A sorok és az oszlopok címei lesznek a set-ek
set Gyarak;
set Boltok;

# Az utolsó sor és az utolsó oszlop külön param, valamint a tartalom is egy 2D param
param Gyartasi_kapacitas{Gyarak};
param Igeny{Boltok};
param Koltsegek{Gyarak, Boltok};

# Ez a változó megadja a szállítást
var szallitas{Gyarak, Boltok} >= 0, integer;

# Végig megyünk a halmazokon
s.t. Gyarak_megszoritas {g in Gyarak} : sum {b in Boltok} szallitas[g, b] = Gyartasi_kapacitas[g];
s.t. Boltok_megszoritas {b in Boltok} : sum {g in Gyarak} szallitas[g, b] = Igeny[b];

# Amikor a halmaz bizonyos eemeire kell csak megszorítást írni, használjuk a következõt - "AZ ELEM NEVE"
s.t. Kolozsvar_Gyor_utvonal : szallitas["Kolozsvar", "Gyor"] <= 100;

minimize szallitasikoltseg : sum {g in Gyarak, b in Boltok} szallitas[g, b]*Koltsegek[g, b];

data;
set Gyarak:= Kolozsvar Marosvasarhely Temesvar;
set Boltok:= Budapest Gyor Szeged;

param Gyartasi_kapacitas:=
Kolozsvar		1000
Marosvasarhely	850
Temesvar		1350
;

param Igeny:=
Budapest	1100
Gyor		800
Szeged		1300
;

param Koltsegek:
				Budapest	Gyor	Szeged:=
Kolozsvar 		10			12		5
Marosvasarhely	16			10		9
Temesvar		14			18		20
;