# Változók
var A integer, >= 0;
var B integer, >= 0;
var C integer, >= 0;
var D integer, >= 0;

set Termekek;
set Gepek;

param Kapacitasok{Gepek};
param GepIdo{Gepek, Termekek};

# Megszorítások


# Célfüggvény
minimize kapacitas : 

data;

set Gepek := Darabologep Forgacsologep Hegesztogep;
param Kapacitasok :=
Darabologep		2000
Forgacsologep	1200
Hegesztogep		3000
;

set Termekek := A B C D;
param GepIdo :
				A	B	C	D :=
Darabologep		1	2	1	2
Forgacsologep	0	1	2	2
Hegesztogep		3	2	1	2
;

end;