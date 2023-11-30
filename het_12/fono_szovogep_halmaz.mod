/*
Van egy fonógépünk, ami napi 18 órát használható, és egy szövõgépünk,
ami napi 3 órát. Négy terméket készíthetünk: FonalA, FonalB, SzövetA, SzövetB. Az alábbi táblázat tartalmazza, hogy az egyes termékekbõl 1 doboz
mennyi munkát igényel a fonó- és szövõgépen, és hogy mennyiért adható el.
Határozzuk meg szimplex módszerrel, hogy melyikbõl mennyit érdemes készíteni. Minden optimális bázisra nézzük meg, hogy az árak illetve rendelkezésre
álló gépidõk milyen változása esetén maradnak optimálisak (ha egyetlen adat
változik).

			A		B		C		D		napi_hasznalat
fonogep		10		4		3		2		18
szovetgep	2		0.5		0		0		3
ar			12		4		2		1

#változók
var A >=0,integer;
var B >=0,integer;
var C >=0,integer;
var D >=0,integer;


#korlátozások
s.t. fonogep:10*A + 4*B + 3*C + 2*D<=18; 
s.t. szovetgep:2*A + 0.5*B + 0*C + 0*D<=3; 
#célfüggvény
maximize bevetel:12*A + 4*B + 2*C + 1*D; 
*/

#sets and params
set szovetek;
set gepek; 
param napi_ora{gepek};
param ar{szovetek};
param ora_hasznalat{gepek,szovetek};
#változók
var eladott_szovetek{szovetek} >=0,integer;



#korlátozások
s.t.gepek_napi_oraja{g in gepek}:sum{s in szovetek}eladott_szovetek[s]*ora_hasznalat[g,s]<=napi_ora[g];


#célfüggvénys
maximize bevetel:sum{s in szovetek} eladott_szovetek[s]*ar[s];

#data
data;


set szovetek:=A B C D;
set gepek:=fonogep szovetgep; 
param napi_ora:=
fonogep		18
szovetgep	3
;
param ar:=
A	12
B	4
C	2
D	1
;
param ora_hasznalat:
			A		B		C		D:=
fonogep		10		4		3		2
szovetgep	2		0.5		0		0
;

end;