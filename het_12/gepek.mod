# Változók
var A integer, >= 0;
var B integer, >= 0;
var C integer, >= 0;
var D integer, >= 0;

# Megszorítások
s.t. darabologep : 1*A + 2*B + 1*C + 2*D <= 2000;
s.t. forgacsologep : 0*A + 1*B + 2*C + 2*D = 1200;
s.t. hegesztogep : 3*A + 2*B + 1*C + 2*D <= 3000;
s.t. AesBlegalabbCesD : A + B >= C + D;
s.t. BketszerannyiC : B = C*2;

# Célfüggvény
minimize kapactas : 2000-(1*A + 2*B + 1*C + 2*D) + 1200 - (0*A + 1*B + 2*C + 2*D) + 3000 - (3*A + 2*B + 1*C + 2*D);

end;