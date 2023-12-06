var B1R1 >= 0, integer;
var B2R1 >= 0, integer;
var B3R1 >= 0, integer;
var B4R1 >= 0, integer;

var B1R2 >= 0, integer;
var B2R2 >= 0, integer;
var B3R2 >= 0, integer;
var B4R2 >= 0, integer;

var B1R3 >= 0, integer;
var B2R3 >= 0, integer;
var B3R3 >= 0, integer;
var B4R3 >= 0, integer;

s.t. R1 : B1R1 + B2R1 + B3R1 + B4R1 = 30;
s.t. R2 : B1R2 + B2R2 + B3R2 + B4R2 = 40;
s.t. R3 : B1R3 + B2R3 + B3R3 + B4R3 = 50;

s.t. B1 : B1R1 + B1R2 + B1R3 = 20;
s.t. B2 : B2R1 + B2R2 + B2R3 = 16;
s.t. B3 : B3R1 + B3R2 + B3R3 = 42;
s.t. B4 : B4R1 + B4R2 + B4R3 = 42;

minimize szallitasi_koltseg : 8*B1R1 + 2*B2R1 + 4*B3R1 + 7*B4R1 + 7*B1R2 + 4*B2R2 + 3*B3R2 + 2*B4R2 + 2*B1R3 + 5*B2R3 + 5*B3R3 + 9*B4R3;