# Feladat

# V�ltoz�k
var RockMarathon binary;
var Sziget binary;
var Volt binary;
var Metalfest binary;
var Festival5 binary;

# Korl�toz�sok
s.t. Dalriada : Sziget + Volt + Metalfest + Festival5 >= 1;
s.t. Metallica : RockMarathon + Sziget + Festival5 >= 1;
s.t. Eluveitie : RockMarathon + Metalfest + Festival5 >= 1;
s.t. Liva : RockMarathon + Sziget + Volt + Festival5 >= 1;
s.t. IcedEarth : Sziget + Volt + Metalfest + Festival5 >= 1;
s.t. Virrasztok : Volt + Metalfest + Festival5 >= 1;
s.t. IronMaiden : RockMarathon + Sziget + Metalfest + Festival5 >= 1;

# C�lf�ggv�ny
 minimize Festivals : RockMarathon + Sziget + Volt + Metalfest + Festival5;