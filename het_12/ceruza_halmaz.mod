/*
Egy írószer-üzletben piros, zöld, és kék színû ceruzákat árulnak. A vezetõség úgy dönt, hogy a maradék készletbõl nem egyesével, hanem kettesével
árulja ceruzákat: egy csomagban mindig különbözõ színûek lesznek. A piroszöld, piros-kék, zöld-kék csomag ára rendre 50, 60 ill. 70 Ft. Az egyes színekbõl
jelenleg 10-10 darab van már csak raktáron. Melyik készletbõl mennyit kell
eladniuk, hogy a bevétel a lehetõ legtöbb legyen? (Nem kötelezõ kiárusítani
a teljes raktárkészletet!)

				piros		zold		kek		ar
piros_zold		1			1		0		50
piros_kek		1			0		1		60
zold_kek			0			1		1		70
darabszam		10			10		10

#változók
var piros_zold; 
var piros_kek;
var zold_kek;
#korlátozások
s.t. piros : piros_zold + piros_kek <=10;
s.t. zold : piros_zold + zold_kek <=10;
s.t. kek : zold_kek + piros_kek <=10;
#célfüggvény
maximize bevetel:50*piros_zold + 60*piros_kek + 70*zold_kek;
*/

#sets and params 
set szinek;
set kombinaciok;
param darabszam{szinek};
param arak{kombinaciok};
param vaneBenne{kombinaciok,szinek};

#változók
var eladott_kombinaciok{kombinaciok} >=0,integer;

#korlátozások
s.t. szin_darabok{s in szinek}:sum{k in kombinaciok}eladott_kombinaciok[k]*vaneBenne[k,s]<=darabszam[s];

#célfüggvény
maximize bevetel:sum{k in kombinaciok} eladott_kombinaciok[k]*arak[k];

#data
data;
set szinek:= piros zold kek;
set kombinaciok:= piros_zold piros_kek zold_kek;
param darabszam:=
piros	10
zold	10
kek		10
;
param arak:=
piros_zold	50
piros_kek	60
zold_kek	70
;
param vaneBenne:
				piros		zold		kek:=
piros_zold		1			1			0
piros_kek		1			0			1
zold_kek			0			1		1
;
end;