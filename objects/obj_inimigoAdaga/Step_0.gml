if(!global.pause)
{
	image_speed = 0.03;
	if(hp <= 0)
	{
		if(image_xscale = -1){ x -= 48; }
		instance_destroy();
		audio_play_sound(sound_morreuOtaku,10,false);
		instance_create_depth(x,y,201,obj_inimigoMortoAdaga);
		instance_create_layer(x,y + 6,"Efeitos",obj_sangue);
		GC_game.moeda += 5 + global.aprimoramentoOtaku;;
	}
	Cvelv = 8;
	Cvelh = 8;
	var colidio = false;

	repeat(2)
	{
		if(place_meeting(x,y + Cvelv,obj_player))
		{
			colidio = true;
			if(temp <= 0)
			{
				var obj = instance_create_layer(x + 24 * image_xscale,y + 26 + 28*sign(Cvelv),"Efeitos",obj_golpeInimigo);
				obj.image_xscale = image_xscale;
				if(image_xscale = 1 && sign(Cvelv) = -1)
				{
				obj.image_angle = 90;
				}
					else if(sign(Cvelv) = -1)
				{
					obj.image_angle = 270;
				}
		
				if(image_xscale = 1 && sign(Cvelv) = 1)
				{
					obj.image_angle = 270;
				}
				else if(sign(Cvelv) = 1)
				{
					obj.image_angle = 90;
				}
				GC_game.hpPerido -= dano;
				obj_player.atacado = true;
				audio_play_sound(sound_golpe,10,false);
				temp = tempMax;
			}
		}

		if(place_meeting(x + Cvelh,y,obj_player))
		{
			colidio = true;
			if(temp <= 0)
			{
				if(image_xscale != sign(Cvelh) && image_xscale = 1)
				{
					x += 48;
				}
				else if(image_xscale != sign(Cvelh) && image_xscale = -1)
				{
					x -= 48;
				}
				image_xscale = sign(Cvelh);
			
				var obj = instance_create_layer(x + 48*sign(Cvelh),y + 26,"Efeitos",obj_golpeInimigo);
				obj.image_xscale = image_xscale;
				GC_game.hpPerido -= dano;
				obj_player.atacado = true;
				audio_play_sound(sound_golpe,10,false);
				temp = tempMax;
			}
		}
	
		Cvelv *= -1;
		Cvelh *= -1;
	}

	temp--;
	if(!colidio){temp = tempMax;}
}
else
{
	image_speed = 0;
}