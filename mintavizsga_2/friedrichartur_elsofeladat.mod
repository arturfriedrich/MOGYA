# 1. feladat

# Felvessz�k az �sszes gy�r �s bolt k�z�tt a v�ltot�kat
var Kolozsvar_Budapest >= 0, integer;
var Kolozsvar_Gyor >= 0, integer;
var Kolozsvar_Szeged >= 0, integer;

var Marosvasarhely_Budapest >= 0, integer;
var Marosvasarhely_Gyor >= 0, integer;
var Marosvasarhely_Szeged >= 0, integer;

var Temesvar_Budapest >= 0, integer;
var Temesvar_Gyor >= 0, integer;
var Temesvar_Szeged >= 0, integer;

# Megadjuk, hogy adott gy�rb�l hova sz�ll�tunk �s annak a gy�rnak mennyi a maximum gy�rt�si kapacit�sa
s.t. Kolozsvar : Kolozsvar_Budapest + Kolozsvar_Gyor + Kolozsvar_Szeged = 1000;
s.t. Marosvasarhely : Marosvasarhely_Budapest + Marosvasarhely_Gyor + Marosvasarhely_Szeged = 850;
s.t. Temesvar : Temesvar_Budapest + Temesvar_Gyor + Temesvar_Szeged = 1350;

# Megadjuk, hogy adott boltba honna sz�ll�tunk �s annak a boltnak mekkora az ig�nye
s.t. Budapest : Kolozsvar_Budapest + Marosvasarhely_Budapest + Temesvar_Budapest = 1100;
s.t. Gyor : Kolozsvar_Gyor + Marosvasarhely_Gyor + Temesvar_Gyor = 800;
s.t. Szeged : Kolozsvar_Szeged + Marosvasarhely_Szeged + Temesvar_Szeged = 1300;

# Nagyon fontos, hogy a Kolozsv�r-Gy�r �tvonalon �SSZESEN nem sz�ll�thatunk 100-n�l t�bb
# bizgenty�t, mert akkor b�ntet�st kellene fizetn�nk, ami elvinn� az �sszes bev�tel�nket.
s.t. Kolozsvar_Gyor_utvonal: Kolozsvar_Gyor <=100;

# Minimaliz�ni szeretn�nk a sz�ll�t�si k�lts�get, illetve megszorozzuk az �sszes �tat a k�lt�sggel �s �sszeadjuk �ket
minimize szallitasi_koltseg : 10*Kolozsvar_Budapest + 12*Kolozsvar_Gyor + 5*Kolozsvar_Szeged + 16*Marosvasarhely_Budapest + 10*Marosvasarhely_Gyor + 9*Marosvasarhely_Szeged + 14*Temesvar_Budapest + 18*Temesvar_Gyor + 20*Temesvar_Szeged;