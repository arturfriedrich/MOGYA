# V�ltoz�k
var szovetA >= 0, integer;
var szovetB >= 0, integer;
var fonalA >= 0, integer;
var fonalB >= 0, integer;

# Megszor�t�sok
s.t. fonogep : 10*szovetA + 4*szovetB + 3*fonalA + 2*fonalB <= 18;
s.t. szovogep : 2*szovetA + 0.5*szovetB + 0*fonalA + 0*fonalB <= 3;

# C�lf�ggv�ny
maximize bevetel : 12*szovetA + 4*szovetB + 2*fonalA + 1*fonalB;

end;