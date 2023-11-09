/* Egy filmforgat�sra van �sszesen 10 napunk, ennyi id�re kaptuk meg a helysz�nt. A sz�n�szeink napi b�rez�st kapnak. Tudjuk, hogy melyik Scene forgat�sa mennyi id�t vesz ig�nybe. Illetve tudjuk, hogy mely sz�n�sz�nk mekkora b�rez�st kap egy napra, �s hogy melyik sz�n�sz melyik Scene-ben szerepel. Egy nap csup�n 8 �r�t forgathatunk maximum.

 Szeretn�nk a forgat�si k�lts�geinket minimaliz�lni.

Sz�n�szeink napid�jja-
A	180
B	280
C	250
D	230
E	450

Melyik sz�n�sz melyik r�szn�l forgat
	A	    	B	 	C	 	D		E      Jelenet forgatasi id�
1	1		0		0		0		1	1 
2	0		1		1		1		0	1.5 
3	1		0		0		1		1	2.3 
4	0		1		1		0		0	1.4 
5	0		0		1		1		0	1.7 

*/
# Sets and parameters
set Actors;
param Salary{Actors};

param SceneCount;
set Scenes := 1..SceneCount;

param DayCount;
set Days := 1..DayCount;

param shooting{Scenes, Actors};
param hoursADay;
param time{Scenes};

# V�ltoz�k
var DoScene{Scenes, Days} binary;
var ActorsComeIn{Actors, Days} binary;

# Korl�toz�sok
# 1. korl�toz�s - Maxim�lis forgat�si id� naponta
s.t. MaxShootingHoursADay {d in Days}: sum{s in Scenes} DoScene[s, d]*time[s] <= hoursADay;
# 2. korl�toz�s - Forgat-e a sz�n�sz aznap
s.t. IfActorActsADay {d in Days, s in Scenes, a in Actors : shooting[s, a] == 1} : DoScene[s, d] <= ActorsComeIn[a,d];
# 3. korl�toz�s - Minden jelenetet le kell forgatnom
s.t. DoAllScene {s in Scenes} : sum{d in Days} DoScene[s, d] = 1;

# C�lf�ggv�ny
minimize koltseg : sum{d in Days, a in Actors} ActorsComeIn[a, d]*Salary[a];

data;
set Actors := A, B, C, D, E;
param SceneCount := 5;
param DayCount := 10;
param hoursADay := 8;

param time :=
1		2
2		3.5
3		2.3
4		3.4
5		3.7
;

param Salary := 
A		180
B		280
C		250
D		230
E		450
;

param shooting :
	A		B	 	C	 	D		E :=
1	1		0		0		0		1
2	0		1		1		1		0
3	1		0		0		1		1
4	0		1		1		0		0
5	0		0		1		1		0
;

end;