# Feladat

# Sets and parameters
set Hozzavalok;
set Froccs;
param HowMany {Froccs, Hozzavalok};
param Price {Froccs};
param Use {Hozzavalok};

# Változók
var Sale{Froccs} integer, >= 0;

# Korlátozások
s.t. UseIngridients {i in Hozzavalok} : sum{f in Froccs} HowMany[f,i] * Sale[f] <= Use[i];

# Célfüggvény
maximize Income : sum{f in Froccs} Sale[f] * Price[f];
 
# Data rész - itt fontos a DATA; kulcsszó is
data;
# utána jönnek maguk az adatok
set Hozzavalok := Bor, Szoda;
set Froccs := NF, KF, HL, HM, KR, PU, HU, LF, SF, VHM, KFT;
param Price := 
NF		330
KF		200
HL		210
HM		470
KR		1500
PU		900
HU		600
LF		250
SF		300
VHM		400
KFT		420
;
param HowMany :
		Bor		Szoda :=
NF		2		1
KF		1		1
HL		1		2
HM		3		2
KR		9		1
PU		6		3
HU		4		1
LF		1		4
SF		1		9
VHM		2		3
KFT		1		3
;

param Use :=
Bor 1000
Szoda 1500
;