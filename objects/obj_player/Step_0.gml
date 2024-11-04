var left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

if(moved = 0)
{
	Cvelh = 0;
	Cvelv = 0;
}

velh = (right - left) * max_vel;

if(velh != 0 && moved = 0)
{
	if(image_xscale != sign(velh) && image_xscale = 1)
	{
		x += 48;
	}
	else if(image_xscale != sign(velh) && image_xscale = -1)
	{
		x -= 48;
	}
	image_xscale = sign(velh);
	moved = move;
	Cvelh = velh;
	audio_play_sound(sound_move,10,false);
}

velv = (down - up) * max_vel;

if(velv != 0 && moved = 0)
{
	moved = move;
	Cvelv = velv;
	audio_play_sound(sound_move,10,false);
}

if(!global.pause && !global.lojinha && !global.morreu)
{
	image_speed = 0.03;
	//colisão H
	var colider;

	colider = instance_place(x + sign(Cvelh),y,obj_obstaculo);
	if(colider != noone)
	{
		colider.velh = Cvelh;
		Cvelh = 0;
		audio_play_sound(sound_bateu,10,false);
	}

	colider = instance_place(x + sign(Cvelh),y,obj_inimigosGerais);
	if(colider != noone)
	{
		audio_play_sound(sound_golpe,10,false);
		var obj = instance_create_layer(x + 48*sign(Cvelh),y + 26,"Efeitos",obj_golpe);
		obj.image_xscale = image_xscale;
		colider.hp -= global.dano;
		colider.atacado = true;
		Cvelh = 0;
	}
	
	colider = instance_place(x + sign(Cvelh),y,obj_apostoloGeral);
	if(colider != noone)
	{
		if(!colider.escudo)
		{
			colider.hp -= global.dano;
			colider.atacado = true;
			audio_play_sound(sound_golpe,10,false);
			var obj = instance_create_layer(x + 48*sign(Cvelh),y + 26,"Efeitos",obj_golpe);
			obj.image_xscale = image_xscale;
		}
		else
		{
			audio_play_sound(sound_bateuEscudo,10,false);
		}
		Cvelh = 0;
	}

	if(place_meeting(x+Cvelh,y,obj_chao))
	{
		if(instance_place(x+Cvelh,y,obj_escadaria) != noone)
		{
			escadaria();
		}
		else if(instance_place(x+Cvelh,y,obj_bauMadeira) != noone)
		{
			bau_madeira(instance_place(x+Cvelh,y,obj_bauMadeira));
		}
		else if(instance_place(x+Cvelh,y,obj_bauFerro) != noone)
		{
			bau_ferro(instance_place(x+Cvelh,y,obj_bauFerro));
		}
		else if(instance_place(x+Cvelh,y,obj_lojinha) != noone)
		{
			lojinha();
		}
		else
		{
			audio_play_sound(sound_bateuForte,10,false);
		}
	
	
		while(!place_meeting(x+sign(Cvelh),y,obj_chao))
		{
			x += sign(Cvelh);
		}
		Cvelh = 0;
	}
	x += Cvelh;

	//colisão V
	colider = instance_place(x,y + sign(Cvelv),obj_obstaculo);
	if(colider != noone)
	{
		colider.velv = Cvelv;
		Cvelv = 0;
		audio_play_sound(sound_bateu,10,false);
	}

	colider = instance_place(x,y + sign(Cvelv),obj_inimigosGerais);
	if(colider != noone)
	{
		audio_play_sound(sound_golpe,10,false);
		var obj = instance_create_layer(x + 24 * image_xscale,y + 26 + 28*sign(Cvelv),"Efeitos",obj_golpe);
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
		colider.hp -= global.dano;
		colider.atacado = true;
		Cvelv = 0;
	}
	
	colider = instance_place(x,y + sign(Cvelv),obj_apostoloGeral);
	if(colider != noone)
	{
		if(!colider.escudo)
		{
			colider.hp -= global.dano;
			colider.atacado = true;
			audio_play_sound(sound_golpe,10,false);
			var obj = instance_create_layer(x + 24 * image_xscale,y + 26 + 28*sign(Cvelv),"Efeitos",obj_golpe);
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
		}
		else
		{
			audio_play_sound(sound_bateuEscudo,10,false);
		}
		Cvelv = 0;
	}

	if(place_meeting(x,y+Cvelv,obj_chao))
	{
		if(instance_place(x,y+Cvelv,obj_escadaria) != noone)
		{
			escadaria();
		}
		else if(instance_place(x,y+Cvelv,obj_bauMadeira) != noone)
		{
			bau_madeira(instance_place(x,y+Cvelv,obj_bauMadeira));
		}
		else if(instance_place(x,y+Cvelv,obj_bauFerro) != noone)
		{
			bau_ferro(instance_place(x,y+Cvelv,obj_bauFerro));
		}
		else if(instance_place(x,y+Cvelv,obj_lojinha) != noone)
		{
			lojinha();
		}
		else
		{
			audio_play_sound(sound_bateuForte,10,false);
		}
	
		while(!place_meeting(x,y+sign(Cvelv),obj_chao))
		{
			y += sign(Cvelv);
		}
		Cvelv = 0;
	}
	y += Cvelv;

	if(moved > 0){moved -= max_vel}
	else if(moved = 0)
	{
		if(x != 0)
		if(x  % 48 != 0)
		{
			x = round(x/48) * 48;
		}
		
		if(y != 0)
		if(y % 48 != 0)
		{
			y = round(y/48) * 48;
		}
	}
}
else
{
	image_speed = 0;
}