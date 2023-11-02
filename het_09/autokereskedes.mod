# Feladat
# Kereskedünk az autókkal, a hétvégére minél több pénzt szeretnénk
# Kedzeti tõkém - 200 000 Ft
# Garázsok száma 4, és nem hagyhatom kint az autókat

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

# Változók
var buy{Cars, Days} integer;

# Korlátozások
# Egyik nap sem költhetek többet mint amennyim van --- Nem mehetek mínuszba.
s.t. MustHavePositiveBalanceAtTheEndOfEachDays{d in Days} : initialBudget - sum{d2 in 1..d, c in Cars} buy[c,d2]*price[c,d2] >= 0;
# Nem lehet több autóm, mint amennyi befér a garázsokba.
s.t. CannotHaveMoreCarsThanGarageSpace{d in Days} : sum{d2 in 1..d, c in Cars} buy[c,d2] <= garageCount;
# Csak olyan autót tudok eladni, amivel rendelkezem.
s.t. CannotSellWhatWeDontHave{d in Days, c in Cars} : sum{d2 in 1..d}buy[c,d2] >= 0;

# (-1)*buy[c,d2] <= sum{d2 in 1..(d-1)}buy[c,d2]
# 			0	<= sum{d2 in 1..(d-1)}buy[c,d2] + buy[c,d2]

# Célfüggvény
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