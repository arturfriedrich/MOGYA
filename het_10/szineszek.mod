/* Egy filmforgatásra van összesen 10 napunk, ennyi idõre kaptuk meg a helyszínt. A színészeink napi bérezést kapnak. Tudjuk, hogy melyik Scene forgatása mennyi idõt vesz igénybe. Illetve tudjuk, hogy mely színészünk mekkora bérezést kap egy napra, és hogy melyik színész melyik Scene-ben szerepel. Egy nap csupán 8 órát forgathatunk maximum.

 Szeretnénk a forgatási költségeinket minimalizálni.

Színészeink napidíjja-
A	180
B	280
C	250
D	230
E	450

Melyik színész melyik résznél forgat
	A	    	B	 	C	 	D		E      Jelenet forgatasi idõ
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

# Változók
var DoScene{Scenes, Days} binary;
var ActorsComeIn{Actors, Days} binary;

# Korlátozások
# 1. korlátozás - Maximális forgatási idõ naponta
s.t. MaxShootingHoursADay {d in Days}: sum{s in Scenes} DoScene[s, d]*time[s] <= hoursADay;
# 2. korlátozás - Forgat-e a színész aznap
s.t. IfActorActsADay {d in Days, s in Scenes, a in Actors : shooting[s, a] == 1} : DoScene[s, d] <= ActorsComeIn[a,d];
# 3. korlátozás - Minden jelenetet le kell forgatnom
s.t. DoAllScene {s in Scenes} : sum{d in Days} DoScene[s, d] = 1;

# Célfüggvény
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