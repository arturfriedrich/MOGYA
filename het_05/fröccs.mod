#fr�ccs

#v�ltoz�k
var NF >=0,integer;		#nagyfr�ccs
var KF >=0,integer;		#kisfr�ccs
var LF >=0,integer;		#lak�fr�ccs
var HL >=0,integer;		#hossz�l�p�s
var HM >=0,integer;		#h�zmester
var VHM >=0,integer;	#viceh�zmester
var KR >=0,integer;		#kr�dyfr�ccs
var SF >=0,integer;		#s�herfr�ccs
var PU >=0,integer;		#pusk�sfr�css
var HU >=0,integer;		#h�zi �r

#korl�toz�sok
s.t. bor: 1*KF+2*NF+1*HL+3*HM+2*VHM+9*KR+1*SF+6*PU+4*HU+1*LF <=1000;
s.t. szoda: 1*KF+1*NF+2*HL+2*HM+3*VHM+1*KR+9*SF+3*PU+1*HU+4*LF <=1500;



#c�lf�ggv�nyek
maximize bevetel: 330*NF+200*KF+210*HL+470*HM+1500*KR+900*PU+600*HU+250*LF+300*SF+400*VHM;
