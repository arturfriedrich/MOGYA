/*
Egy �kszer�szn�l 20 dkg arany, 20 db gy�m�nt �s 40 db zaf�r van
rakt�ron. H�romf�le �kszert k�sz�thet ezekb�l: 1 db gy�m�nt 2 db zaf�rral �s
3 dkg arannyal, ennek �ra 1 milli� forint, 2 db gy�m�nt 3 db zaf�rral �s 1
dkg arannyal (4 milli�), vagy 3 db gy�m�nt 1 db zaf�rral �s 2 dkg arannyal
(5 milli�). Hogyan �rheti el a legnagyobb bev�telt? 

		arany		gyemant		zafir		ar
elso		3			1			2			3000000
masodik	1			2			3			4000000
harmadik	2			3			1			5000000
deka	20			20			40



#v�ltoz�k
var elso integer,>=0;
var masodik integer,>=0;
var harmadik integer,>=0;


#korl�toz�sok
s.t. arany_darab:3*elso + 1*masodik + 2*harmadik <=20;
s.t. gyemant_darab:1*elso + 2*masodik + 3*harmadik <=20;
s.t. zafir_darab:2*elso + 3*masodik + 1*harmadik <=40;
#c�lf�ggv�ny
maximize bevetel: 1000000*elso + 4000000*masodik + 5000000*harmadik;
*/

#sets and params 
set nemesfem;
set ekszer;
param ar{ekszer};
param deka{nemesfem};
param osszetetel{ekszer,nemesfem};
#v�ltoz�k
var eladott_ekszer{ekszer} >=0,integer;

#korl�toz�sok
s.t. deka_keszlet {n in nemesfem}:sum{e in ekszer} eladott_ekszer[e]*osszetetel[e,n]<=deka[n];

#c�lf�ggv�ny
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