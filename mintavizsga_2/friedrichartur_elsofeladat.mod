# 1. feladat

# Felvesszük az összes gyár és bolt között a váltotókat
var Kolozsvar_Budapest >= 0, integer;
var Kolozsvar_Gyor >= 0, integer;
var Kolozsvar_Szeged >= 0, integer;

var Marosvasarhely_Budapest >= 0, integer;
var Marosvasarhely_Gyor >= 0, integer;
var Marosvasarhely_Szeged >= 0, integer;

var Temesvar_Budapest >= 0, integer;
var Temesvar_Gyor >= 0, integer;
var Temesvar_Szeged >= 0, integer;

# Megadjuk, hogy adott gyárból hova szállítunk és annak a gyárnak mennyi a maximum gyártási kapacitása
s.t. Kolozsvar : Kolozsvar_Budapest + Kolozsvar_Gyor + Kolozsvar_Szeged = 1000;
s.t. Marosvasarhely : Marosvasarhely_Budapest + Marosvasarhely_Gyor + Marosvasarhely_Szeged = 850;
s.t. Temesvar : Temesvar_Budapest + Temesvar_Gyor + Temesvar_Szeged = 1350;

# Megadjuk, hogy adott boltba honna szállítunk és annak a boltnak mekkora az igénye
s.t. Budapest : Kolozsvar_Budapest + Marosvasarhely_Budapest + Temesvar_Budapest = 1100;
s.t. Gyor : Kolozsvar_Gyor + Marosvasarhely_Gyor + Temesvar_Gyor = 800;
s.t. Szeged : Kolozsvar_Szeged + Marosvasarhely_Szeged + Temesvar_Szeged = 1300;

# Nagyon fontos, hogy a Kolozsvár-Gyõr útvonalon ÖSSZESEN nem szállíthatunk 100-nál több
# bizgentyût, mert akkor büntetést kellene fizetnünk, ami elvinné az összes bevételünket.
s.t. Kolozsvar_Gyor_utvonal: Kolozsvar_Gyor <=100;

# Minimalizáni szeretnénk a szállítási költséget, illetve megszorozzuk az összes útat a költésggel és összeadjuk õket
minimize szallitasi_koltseg : 10*Kolozsvar_Budapest + 12*Kolozsvar_Gyor + 5*Kolozsvar_Szeged + 16*Marosvasarhely_Budapest + 10*Marosvasarhely_Gyor + 9*Marosvasarhely_Szeged + 14*Temesvar_Budapest + 18*Temesvar_Gyor + 20*Temesvar_Szeged;