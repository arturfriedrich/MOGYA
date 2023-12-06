# 1. feladat
var Kolozsvar_Budapest >= 0, integer;
var Kolozsvar_Gyor >= 0, integer;
var Kolozsvar_Szeged >= 0, integer;
var Kolozsvar_Pecs >= 0, integer;

var Marosvasarhely_Budapest >= 0, integer;
var Marosvasarhely_Gyor >= 0, integer;
var Marosvasarhely_Szeged >= 0, integer;
var Marosvasarhely_Pecs >= 0, integer;

var Temesvar_Budapest >= 0, integer;
var Temesvar_Gyor >= 0, integer;
var Temesvar_Szeged >= 0, integer;
var Temesvar_Pecs >= 0, integer;

s.t. Kolozsvar : Kolozsvar_Budapest + Kolozsvar_Gyor + Kolozsvar_Szeged + Kolozsvar_Pecs = 1000;
s.t. Marosvasarhely : Marosvasarhely_Budapest + Marosvasarhely_Gyor + Marosvasarhely_Szeged + Marosvasarhely_Pecs = 2000;
s.t. Temesvar : Temesvar_Budapest + Temesvar_Gyor + Temesvar_Szeged + Temesvar_Pecs = 1500;

s.t. Budapest : Kolozsvar_Budapest + Marosvasarhely_Budapest + Temesvar_Budapest = 1100;
s.t. Gyor : Kolozsvar_Gyor + Marosvasarhely_Gyor + Temesvar_Gyor = 800;
s.t. Szeged : Kolozsvar_Szeged + Marosvasarhely_Szeged + Temesvar_Szeged = 1300;
s.t. Pecs : Kolozsvar_Pecs + Marosvasarhely_Pecs + Temesvar_Pecs = 1300;

s.t. rablobandak : Temesvar_Gyor + Temesvar_Pecs <= 100;

minimize szallitasi_koltseg : 10*Kolozsvar_Budapest + 12*Kolozsvar_Gyor + 5*Kolozsvar_Szeged + 8*Kolozsvar_Pecs + 16*Marosvasarhely_Budapest + 10*Marosvasarhely_Gyor + 9*Marosvasarhely_Szeged + 2*Marosvasarhely_Pecs + 14*Temesvar_Budapest + 18*Temesvar_Gyor + 20*Temesvar_Szeged + 13*Temesvar_Pecs;