# Feladat
#			Hetfo	Kedd	Szerda	Csutortok	Pentek
#Wartburg	60000	65000	61000	66000		60000
#Lada		50000	55000	63000	60000		52000
#Kispolski	30000	32000	33000	30000		27000
#Trabant		70000	65000	77000	85000		100000
#Skoda		65000	70000	75000	90000		70000

# Sets and parameters
set Cars;
set Days;
param price{Cars, Days};

# Változók
var buy{Cars, Days} binary;

# Korlátozások
s.t. ExactlyOneCarEachDay{d in Days} : sum{c in Cars} buy[c,d] = 1;
s.t. ExactlyOneCar{c in Cars} : sum{d in Days} buy[c,d] = 1;

# Célfüggvény
minimize koltseg : sum{c in Cars, d in Days} price[c,d] * buy[c,d];

solve;
printf "\n\n";
for {c in Cars, d in Days : buy[c,d] == 1} {
	printf "%10s:\t%s-%d\n", c, d, price[c,d];
}

printf "\n\n";

data;
set Cars := Wartburg, Lada, Kispolski, Trabant, Skoda;
set Days := Hetfo, Kedd, Szerda, Csutortok, Pentek;
param price :
			Hetfo	Kedd	Szerda	Csutortok	Pentek :=
Wartburg	60000	65000	61000	66000		60000
Lada		50000	55000	63000	60000		52000
Kispolski	30000	32000	33000	30000		27000
Trabant		70000	65000	77000	85000		100000
Skoda		65000	70000	75000	90000		70000
;

end;