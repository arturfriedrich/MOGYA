# Feladat
# Keresked�nk az aut�kkal, a h�tv�g�re min�l t�bb p�nzt szeretn�nk
# Kedzeti t�k�m - 200 000 Ft
# Gar�zsok sz�ma 4, �s nem hagyhatom kint az aut�kat

#			Hetfo	Kedd	Szerda	Csutortok		Pentek
#Wartburg	60000	65000	61000	66000		60000
#Lada		50000	55000	63000	60000		52000
#Kispolski	30000	32000	33000	30000		27000
#Trabant	70000	65000	77000	85000		100000
#Skoda		65000	70000	75000	90000		70000

# Sets and parameters
set Cars;
param numberOfDays;
set Days := 1..numberOfDays;
param price{Cars, Days};
param initialBudget;
param garageCount;

# V�ltoz�k
var buy{Cars, Days} integer;

# Korl�toz�sok
# Egyik nap sem k�lthetek t�bbet mint amennyim van --- Nem mehetek m�nuszba.
s.t. MustHavePositiveBalanceAtTheEndOfEachDays{d in Days} : initialBudget - sum{d2 in 1..d, c in Cars} buy[c,d2]*price[c,d2] >= 0;
# Nem lehet t�bb aut�m, mint amennyi bef�r a gar�zsokba.
s.t. CannotHaveMoreCarsThanGarageSpace{d in Days} : sum{d2 in 1..d, c in Cars} buy[c,d2] <= garageCount;
# Csak olyan aut�t tudok eladni, amivel rendelkezem.
s.t. CannotSellWhatWeDontHave{d in Days, c in Cars} : sum{d2 in 1..d}buy[c,d2] >= 0;

# (-1)*buy[c,d2] <= sum{d2 in 1..(d-1)}buy[c,d2]
# 			0	<= sum{d2 in 1..(d-1)}buy[c,d2] + buy[c,d2]

# C�lf�ggv�ny
maximize bevetel : initialBudget - sum{c in Cars, d in Days} price[c,d] * buy[c,d];

data;
set Cars := Wartburg, Lada, Kispolski, Trabant, Skoda;
param initialBudget := 200000;
param garageCount := 4;
param numberOfDays := 5;
param price :
			1		2		3		4			5 :=
Wartburg	60000	65000	61000	66000		60000
Lada		50000	55000	63000	60000		52000
Kispolski	30000	32000	33000	30000		27000
Trabant		70000	65000	77000	85000		100000
Skoda		65000	70000	75000	90000		70000
;

end;