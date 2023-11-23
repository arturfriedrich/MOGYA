/*
Van egy fon�g�p�nk, ami napi 18 �r�t haszn�lhat�, �s egy sz�v�g�p�nk,
ami napi 3 �r�t. N�gy term�ket k�sz�thet�nk: FonalA, FonalB, Sz�vetA, Sz�vetB. Az al�bbi t�bl�zat tartalmazza, hogy az egyes term�kekb�l 1 doboz
mennyi munk�t ig�nyel a fon�- �s sz�v�g�pen, �s hogy mennyi�rt adhat� el.
Hat�rozzuk meg szimplex m�dszerrel, hogy melyikb�l mennyit �rdemes k�sz�teni. Minden optim�lis b�zisra n�zz�k meg, hogy az �rak illetve rendelkez�sre
�ll� g�pid�k milyen v�ltoz�sa eset�n maradnak optim�lisak (ha egyetlen adat
v�ltozik).

			A		B		C		D		napi_hasznalat
fonogep		10		4		3		2		18
szovetgep	2		0.5		0		0		3
ar			12		4		2		1

#v�ltoz�k
var A >=0,integer;
var B >=0,integer;
var C >=0,integer;
var D >=0,integer;


#korl�toz�sok
s.t. fonogep:10*A + 4*B + 3*C + 2*D<=18; 
s.t. szovetgep:2*A + 0.5*B + 0*C + 0*D<=3; 
#c�lf�ggv�ny
maximize bevetel:12*A + 4*B + 2*C + 1*D; 
*/

#sets and params
set szovetek;
set gepek; 
param napi_ora{gepek};
param ar{szovetek};
param ora_hasznalat{gepek,szovetek};
#v�ltoz�k
var eladott_szovetek{szovetek} >=0,integer;



#korl�toz�sok
s.t.gepek_napi_oraja{g in gepek}:sum{s in szovetek}eladott_szovetek[s]*ora_hasznalat[g,s]<=napi_ora[g];


#c�lf�ggv�nys
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