#fröccs

#változók
var NF >=0,integer;		#nagyfröccs
var KF >=0,integer;		#kisfröccs
var LF >=0,integer;		#lakófröccs
var HL >=0,integer;		#hosszúlépés
var HM >=0,integer;		#házmester
var VHM >=0,integer;	#viceházmester
var KR >=0,integer;		#krúdyfröccs
var SF >=0,integer;		#sóherfröccs
var PU >=0,integer;		#puskásfröcss
var HU >=0,integer;		#házi úr

#korlátozások
s.t. bor: 1*KF+2*NF+1*HL+3*HM+2*VHM+9*KR+1*SF+6*PU+4*HU+1*LF <=1000;
s.t. szoda: 1*KF+1*NF+2*HL+2*HM+3*VHM+1*KR+9*SF+3*PU+1*HU+4*LF <=1500;



#célfüggvények
maximize bevetel: 330*NF+200*KF+210*HL+470*HM+1500*KR+900*PU+600*HU+250*LF+300*SF+400*VHM;
