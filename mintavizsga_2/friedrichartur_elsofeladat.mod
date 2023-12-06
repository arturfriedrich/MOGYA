# 1. feladat

var Kolozsvar_Budapest >= 0, integer;
var Kolozsvar_Gyor >= 0, integer;
var Kolozsvar_Szeged >= 0, integer;

var Marosvasarhely_Budapest >= 0, integer;
var Marosvasarhely_Gyor >= 0, integer;
var Marosvasarhely_Szeged >= 0, integer;

var Temesvar_Budapest >= 0, integer;
var Temesvar_Gyor >= 0, integer;
var Temesvar_Szeged >= 0, integer;

s.t. Kolozsvar : Kolozsvar_Budapest + Kolozsvar_Gyor + Kolozsvar_Szeged = 1000;
s.t. Marosvasarhely : Marosvasarhely_Budapest + Marosvasarhely_Gyor + Marosvasarhely_Szeged = 850;
s.t. Temesvar : Temesvar_Budapest + Temesvar_Gyor + Temesvar_Szeged = 1350;

s.t. Budapest : Kolozsvar_Budapest + Marosvasarhely_Budapest + Temesvar_Budapest = 1100;
s.t. Gyor : Kolozsvar_Gyor + Marosvasarhely_Gyor + Temesvar_Gyor = 800;
s.t. Szeged : Kolozsvar_Szeged + Marosvasarhely_Szeged + Temesvar_Szeged = 1300;

s.t. Kolozsvar_Gyor_utvonal: Kolozsvar_Gyor <=100;

minimize szallitasi_koltseg : 10*Kolozsvar_Budapest + 12*Kolozsvar_Gyor + 5*Kolozsvar_Szeged + 16*Marosvasarhely_Budapest + 10*Marosvasarhely_Gyor + 9*Marosvasarhely_Szeged + 14*Temesvar_Budapest + 18*Temesvar_Gyor + 20*Temesvar_Szeged;