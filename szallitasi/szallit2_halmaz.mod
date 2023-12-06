# 18. feladat
set Gyarak;
set Boltok;

param Igeny{Boltok};
param Gyartasi_kapacitas{Gyarak};
param Koltsegek{Gyarak, Boltok};

var szallitasi_mennyiseg{Gyarak, Boltok} >= 0, integer;

s.t. Gyarak_megszoritas {g in Gyarak} : sum {b in Boltok} szallitasi_mennyiseg[g, b] = Gyartasi_kapacitas[g];
s.t. Boltok_megszoritas {b in Boltok} : sum {g in Gyarak} szallitasi_mennyiseg[g, b] = Igeny[b];

minimize szallitasi_koltseg : sum {g in Gyarak, b in Boltok} szallitasi_mennyiseg[g, b] * Koltsegek[g, b];

data;

set Gyarak := R1 R2 R3;
set Boltok := B1 B2 B3 B4;

param Igeny :=
B1	20
B2	16
B3	42
B4	42
;

param Gyartasi_kapacitas :=
R1	30
R2	40
R3	50
;

param Koltsegek :
	B1	B2	B3	B4 :=
R1	8	2	4	7
R2	7	4	3	2
R3	2	5	5	9 
;

end;
