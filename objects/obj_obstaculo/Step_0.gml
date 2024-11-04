if(moved = 0)
{
	Cvelh = 0;
	Cvelv = 0;
}

if(velh != 0 && moved = 0)
{
	moved = move;
	Cvelh = velh;
}

if(velv != 0 && moved = 0)
{
	moved = move;
	Cvelv = velv;
}

//colisão H
if(place_meeting(x+Cvelh,y,obj_chao) || place_meeting(x+Cvelh,y,obj_obstaculo) || place_meeting(x+Cvelh,y,obj_inimigosGerais))
{
	while(!place_meeting(x+sign(Cvelh),y,obj_chao) && !place_meeting(x+sign(Cvelh),y,obj_obstaculo) && !place_meeting(x+sign(Cvelh),y,obj_inimigosGerais))
	{
		x += sign(Cvelh);
	}
	Cvelh = 0;
}
x += Cvelh;

//colisão V
if(place_meeting(x,y+Cvelv,obj_chao) || place_meeting(x,y+Cvelv,obj_obstaculo) || place_meeting(x,y+Cvelv,obj_inimigosGerais))
{
	while(!place_meeting(x,y+sign(Cvelv),obj_chao) && !place_meeting(x,y+sign(Cvelv),obj_obstaculo) && !place_meeting(x,y+sign(Cvelv),obj_inimigosGerais))
	{
		y += sign(Cvelv);
	}
	Cvelv = 0;
}
y += Cvelv;

if(moved > 0){moved -= max_vel}
velv = 0
velh = 0