# V�ltoz�k
var piroszold >= 0, integer;
var piroskek >= 0, integer;
var zoldkek >= 0, integer;

# Megszor�t�sok
s.t. piros : 1*piroszold + 1*piroskek <= 10;
s.t. kek : 1*piroskek + 1*zoldkek <= 10;
s.t. zold : 1*piroszold + 1*zoldkek <= 10;


# C�lf�ggv�ny
maximize bevetel : piroszold*50 + piroskek*60 + zoldkek*70;

end;