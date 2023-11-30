# Változók
var e1v1 >= 0, integer;
var e1v2 >= 0, integer;
var e1v3 >= 0, integer;
var e1v4 >= 0, integer;

var e2v1 >= 0, integer;
var e2v2 >= 0, integer;
var e2v3 >= 0, integer;
var e2v4 >= 0, integer;

var e3v1 >= 0, integer;
var e3v2 >= 0, integer;
var e3v3 >= 0, integer;
var e3v4 >= 0, integer;

s.t. elsoe : e1v1 + e1v2 + e1v3 + e1v4 <= 35;
s.t. masodike : e2v1 + e2v2 + e2v3 + e2v4 <= 50;
s.t. harmadike : e3v1 + e3v2 + e3v3 + e3v4 <= 40;

s.t. elsov : e1v1 + e2v1 + e3v1 >= 45;
s.t. masodikv : e1v2 + e2v2 + e3v2 >= 20;
s.t. harmadikv : e1v3 + e2v3 + e3v3 >= 30;
s.t. negyedikv : e1v4 + e2v4 + e3v4 >= 30;

minimize koltseg : 8*e1v1 + 6*e1v2 + 10*e1v3 + 9*e1v4 + 9*e2v1 + 12*e2v2 + 13*e2v3 + 7*e2v4 + 14*e3v1 + 9*e3v2 + 16*e3v3 + 5*e3v4;