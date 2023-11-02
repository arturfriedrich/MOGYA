# Feladat
#			Hetfo	Kedd	Szerda	Csutortok	Pentek
#Wartburg	60000	65000	61000	66000		52000
#Lada		50000	55000	63000	60000		52000
#Kispolski	30000	32000	33000	30000		27000
#Trabant	70000	65000	77000	85000		100000
#Skoda		65000	70000	75000	90000		70000

# Változók
var WH binary;
var WK binary;
var WSZ binary;
var WCS binary;
var WP binary;

var LH binary;
var LK binary;
var LSZ binary;
var LCS binary;
var LP binary;

var KH binary;
var KK binary;
var KSZ binary;
var KCS binary;
var KP binary;

var TH binary;
var TK binary;
var TSZ binary;
var TCS binary;
var TP binary;

var SH binary;
var SK binary;
var SSZ binary;
var SCS binary;
var SP binary;

# Korlátozások
s.t. hetfo : WH + LH + KH + TH + SH = 1;
s.t. kedd : WK + LK + KK + TK + SK = 1;
s.t. szerda : WSZ + LSZ + KSZ + TSZ + SSZ = 1;
s.t. csutortok : WCS + LCS + KCS + TCS + SCS = 1;
s.t. pentek : WP + LP + KP + TP + SP = 1;

s.t. wartburg : WH + WK + WSZ + WCS + WP = 1;
s.t. lada : LH + LK + LSZ + LCS + LP = 1;
s.t. kispolski : KH + KK + KSZ + KCS + KP = 1;
s.t. trabant : TH + TK + TSZ + TCS + TP = 1;
s.t. skoda : SH + SK + SSZ + SCS + SP = 1;
	
# Célfüggvény
 minimize koltseg : WH*60000 + LH*500000 + KH*30000 + TH*70000 + SH*65000 + WK*65000 + LK*55000 + KK*32000 + TK*65000 + SK*70000 + WSZ*61000 + LSZ*63000 + KSZ*33000 + TSZ*77000 + SSZ*75000 + WCS*66000 + LCS*60000 + KCS*30000 + TCS*85000 + SCS*90000 + WP*60000 + LP*52000 + KP*27000 + TP*100000 + SP*70000;
