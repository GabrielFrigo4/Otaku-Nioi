if(!global.pause)
{
	if(!imag)
	{
		image_speed = 0.2;
	}
	else
	{
		image_speed = 0.3;
	}
	
	if(image_alpha > 0 && !imag)
	{
		image_alpha -= 0.0256;
	}

	if(image_alpha <= 0)
	{
		imag = true;
		image_speed = 0.3;
		image_alpha = 1;
		image_index = 8;
		instance_create_layer(x,y,"Instances",obj_fedor).tempo = irandom_range(360,480);
		instance_create_layer(x+48,y,"Instances",obj_fedor).tempo = irandom_range(360,480);
		instance_create_layer(x-48,y,"Instances",obj_fedor).tempo = irandom_range(360,480);
		instance_create_layer(x,y+48,"Instances",obj_fedor).tempo = irandom_range(360,480);
		instance_create_layer(x,y-48,"Instances",obj_fedor).tempo = irandom_range(360,480);
		audio_play_sound(sound_explosaoF,10,false);
	}

	if(instance_exists(obj_player) && !global.morreu)
	if(imag && !dano && place_meeting(x,y,obj_player))
	{
		GC_game.hpPerido -= 1;
		dano = true;
	}
}
else
{
	image_speed = 0;
}