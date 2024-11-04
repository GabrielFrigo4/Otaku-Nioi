maxHp = 64
hp = maxHp;
atacado = false;
image_speed = 0.06;
escudo = true;
morreu = false;

#macro tempop 300;
tempinho = tempop;

ataqueRandom = 12;
ataquesAlvo = 48;
ataqueRandomF = 240;
superAtaque = 480;
superAtaquesAlvoH = 600;
superAtaquesAlvo = 750;
superAtaqueF = 900;
superAtaquesAlvoFH = 1200;
superAtaquesAlvoF = 1500;

esc = instance_create_layer(x,y,"Efeitos",obj_escudo);
esc.image_xscale = 2;
esc.image_yscale = 2;