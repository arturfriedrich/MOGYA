# Változók
var piroszold >= 0, integer;
var piroskek >= 0, integer;
var zoldkek >= 0, integer;

# Megszorítások
s.t. piros : 1*piroszold + 1*piroskek <= 10;
s.t. kek : 1*piroskek + 1*zoldkek <= 10;
s.t. zold : 1*piroszold + 1*zoldkek <= 10;


# Célfüggvény
maximize bevetel : piroszold*50 + piroskek*60 + zoldkek*70;

end;