# Sets and parameters
set Boltok;
set Termelok;

# Sorok -> setek
# Oszlopok > param

param EladasiAr{Boltok};
param EladhatoMennyiseg{Boltok};
param JarulekosVeszteseg{Boltok};
param BeszerzettMennyiseg{Termelok};
param BeszerzesiKoltseg{Termelok};

param SzallitasiKoltseg{Boltok, Termelok};


# Változók
var EladottDarab{Boltok, Termelok} >= 0, integer;

# Korlátozások
s.t. SzallithatoMennyiseg{t in Termelok} : sum{b in Boltok} EladottDarab[b, t] <= BeszerzettMennyiseg[t];
s.t. EladottMennyiseg{b in Boltok} : sum{t in Termelok} EladottDarab[b, t] <= EladhatoMennyiseg[b];

# Célfüggvény
maximize profit : sum{t in Termelok, b in Boltok} (EladasiAr[b] - BeszerzesiKoltseg[t] - JarulekosVeszteseg[b] - SzallitasiKoltseg[b, t]) * EladottDarab[b, t];

data;
set Boltok := B1, B2, B3;
set Termelok := Ackermann, Bauer;

param EladasiAr := 
B1	820
B2	950
B3	1050
;

param EladhatoMennyiseg :=
B1	150
B2	110
B3	60
;

param JarulekosVeszteseg :=
B1	30
B2	40
B3	50
;

param BeszerzettMennyiseg :=
Ackermann	140
Bauer		200
;

param SzallitasiKoltseg :
	Ackermann	Bauer :=
B1	10			12
B2	12			15
B3	20			18
;

param BeszerzesiKoltseg :=
Ackermann	450
Bauer		550
;

end;