# Feladat

# Változók
var Ack1 >= 0, integer;
var Ack2 >= 0, integer;
var Ack3 >= 0, integer;

var Bau1 >= 0, integer;
var Bau2 >= 0, integer;
var Bau3 >= 0, integer;

# Korlátozások
s.t. AckSzallit : Ack1 + Ack2 + Ack3 <= 140;
s.t. BauSzallit : Bau1 + Bau2 + Bau3 <= 200;
s.t. Bolt1 : Ack1 + Bau1 <= 150;
s.t. Bolt2 : Ack2 + Bau2 <= 110;
s.t. Bolt3 : Ack3 + Bau3 <= 60;

# Célfüggvény
maximize profit : Ack1*(820-450-30-10) + Ack2*(950-450-40-12) + Ack3*(1050-450-50-20) + Bau1*(820-550-30-12) + Bau2*(950-550-40-15) + Bau3*(1050-550-50-18);