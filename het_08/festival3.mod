# Feladat

# Sets and parameters
set Festivals;
set Bands;
param performs{Bands,Festivals};

# Változók
var goto{Festivals} binary;

# Korlátozások
s.t. MustSeeEachBandAtLeastOne{b in Bands} : sum{f in Festivals} goto[f]*performs[b,f] >= 1;

# Célfüggvény
minimize FestivalsWeGo : sum{f in Festivals} goto[f];
 
# Data rész - itt fontos a DATA; kulcsszó is
data;
# utána jönnek maguk az adatok
set Festivals := RockMarathon, Sziget, Volt, Metalfest;
set Bands := Dalriada, Metallica, Eluveitie, Liva, IcedEarth, Virrasztok, IronMaiden;
param performs : 
			RockMarathon	Sziget		Volt	Metalfest :=
Dalriada	0				1			1		1
Metallica	1				1			0		0
Eluveitie	1				0			0		1
Liva		1				1			1		0
IcedEarth	0				1			1		1
Virrasztok	0				0			1		1
IronMaiden	1				1			0		1
;