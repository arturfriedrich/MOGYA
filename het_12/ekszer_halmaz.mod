/*
Egy ékszerésznél 20 dkg arany, 20 db gyémánt és 40 db zafír van
raktáron. Háromféle ékszert készíthet ezekbõl: 1 db gyémánt 2 db zafírral és
3 dkg arannyal, ennek ára 1 millió forint, 2 db gyémánt 3 db zafírral és 1
dkg arannyal (4 millió), vagy 3 db gyémánt 1 db zafírral és 2 dkg arannyal
(5 millió). Hogyan érheti el a legnagyobb bevételt? 

		arany		gyemant		zafir		ar
elso		3			1			2			3000000
masodik	1			2			3			4000000
harmadik	2			3			1			5000000
deka	20			20			40



#változók
var elso integer,>=0;
var masodik integer,>=0;
var harmadik integer,>=0;


#korlátozások
s.t. arany_darab:3*elso + 1*masodik + 2*harmadik <=20;
s.t. gyemant_darab:1*elso + 2*masodik + 3*harmadik <=20;
s.t. zafir_darab:2*elso + 3*masodik + 1*harmadik <=40;
#célfüggvény
maximize bevetel: 1000000*elso + 4000000*masodik + 5000000*harmadik;
*/

#sets and params 
set nemesfem;
set ekszer;
param ar{ekszer};
param deka{nemesfem};
param osszetetel{ekszer,nemesfem};
#változók
var eladott_ekszer{ekszer} >=0,integer;

#korlátozások
s.t. deka_keszlet {n in nemesfem}:sum{e in ekszer} eladott_ekszer[e]*osszetetel[e,n]<=deka[n];

#célfüggvény
maximize bevetel: sum{e in ekszer} eladott_ekszer[e]*ar[e];

#data
data;
set nemesfem:=arany gyemant zafir;
set ekszer:=elso masodik harmadik;
param ar:=
elso		1000000
masodik		4000000
harmadik	5000000
;
param deka:=
arany		20
gyemant		20
zafir		40
;
param osszetetel:
			arany		gyemant		zafir:=
elso		3			1			2
masodik		1			2			3
harmadik	2			3			1
;
end;