/*
Egy �r�szer-�zletben piros, z�ld, �s k�k sz�n� ceruz�kat �rulnak. A vezet�s�g �gy d�nt, hogy a marad�k k�szletb�l nem egyes�vel, hanem kettes�vel
�rulja ceruz�kat: egy csomagban mindig k�l�nb�z� sz�n�ek lesznek. A pirosz�ld, piros-k�k, z�ld-k�k csomag �ra rendre 50, 60 ill. 70 Ft. Az egyes sz�nekb�l
jelenleg 10-10 darab van m�r csak rakt�ron. Melyik k�szletb�l mennyit kell
eladniuk, hogy a bev�tel a lehet� legt�bb legyen? (Nem k�telez� ki�rus�tani
a teljes rakt�rk�szletet!)

				piros		zold		kek		ar
piros_zold		1			1		0		50
piros_kek		1			0		1		60
zold_kek			0			1		1		70
darabszam		10			10		10

#v�ltoz�k
var piros_zold; 
var piros_kek;
var zold_kek;
#korl�toz�sok
s.t. piros : piros_zold + piros_kek <=10;
s.t. zold : piros_zold + zold_kek <=10;
s.t. kek : zold_kek + piros_kek <=10;
#c�lf�ggv�ny
maximize bevetel:50*piros_zold + 60*piros_kek + 70*zold_kek;
*/

#sets and params 
set szinek;
set kombinaciok;
param darabszam{szinek};
param arak{kombinaciok};
param vaneBenne{kombinaciok,szinek};

#v�ltoz�k
var eladott_kombinaciok{kombinaciok} >=0,integer;

#korl�toz�sok
s.t. szin_darabok{s in szinek}:sum{k in kombinaciok}eladott_kombinaciok[k]*vaneBenne[k,s]<=darabszam[s];

#c�lf�ggv�ny
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