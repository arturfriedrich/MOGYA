# Feladatle�r�s

#Megold�s
var tibor binary;
var david binary;
var botond binary;
var bence binary;
var mark binary;
var balazs binary;

# Korl�toz�sok
s.t. frontend: david + mark >= 1;
s.t. backend: tibor + bence >= 1;
s.t. database: botond + bence + balazs >= 1;
s.t. css: tibor + david + bence >= 1;
s.t. agility: botond + mark >= 1;
s.t. devops: bence + balazs >= 1;
s.t. fo: 3 <= tibor + david + botond + bence + mark + balazs <= 4;

# C�lf�ggv�ny
maximize hangulat: 0*tibor + 8*david + -2*botond + 4*bence + 3*mark + -10*balazs;