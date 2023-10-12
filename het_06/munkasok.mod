# Feladatleírás

#Megoldás
var T1M1 binary;
var T1M2 binary;
var T1M3 binary;

var T2M1 binary;
var T2M2 binary;
var T2M3 binary;

var T3M1 binary;
var T3M2 binary;
var T3M3 binary;

# Korlátozások
s.t. T1: T1M1 + T2M1 + T3M1 = 1;
s.t. T2: T1M2 + T2M2 + T3M2 = 1;
s.t. T3: T1M3 + T2M3 + T3M3 = 1;

s.t. M1: T1M1 + T1M2 + T1M3 = 1;
s.t. M2: T2M1 + T2M2 + T2M3 = 1;
s.t. M3: T3M1 + T3M2 + T3M3 = 1;

# Célfüggvény
minimize koltseg: 2*T1M1 + 4*T1M2 + 3*T1M3 + 10*T2M1 + 5*T2M2 + 6*T2M3 + 4*T3M1 + 2*T3M2 + 1*T3M3;