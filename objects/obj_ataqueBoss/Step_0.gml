if(!global.pause)
{
	if(!imag)
	{
		image_speed = 0.2;
	}
	else
	{
		image_speed = 0.9;
	}
	
	if(image_alpha > 0 && !imag)
	{
		image_alpha -= 0.0256;
	}

	if(image_alpha <= 0)
	{
		imag = true;
		image_speed = 0.9;
		image_alpha = 1;
		image_index = 8;
		audio_play_sound(sound_explosao,10,false);
	}

	if(instance_exists(obj_player) && !global.morreu)
	if(imag && !dano && place_meeting(x,y,obj_player))
	{
		GC_game.hpPerido -= 2;
		dano = true;
	}
}
else
{
	image_speed = 0;
}