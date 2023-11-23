# Változók
var ekszer1 >= 0, integer;
var ekszer2 >= 0, integer;
var ekszer3 >= 0, integer;

# Megszorítások
s.t. arany : 3*ekszer1 + 1*ekszer2 + 2*ekszer3 <= 20;
s.t. gyemant : 1*ekszer1 + 2*ekszer2 + 3*ekszer3 <= 20;
s.t. zafir : 2*ekszer1 + 3*ekszer2 + 1*ekszer3 <= 40;

# Célfüggvény
maximize bevetel : ekszer1*1 + ekszer2*4 + ekszer3*5;

end;