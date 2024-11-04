if(!global.pause)
{
	image_speed = 0.03;
	if(hp <= 0)
	{
		instance_destroy();
		audio_play_sound(sound_morreuOtaku,10,false);
		instance_create_depth(x,y,201,obj_inimigoMorto);
		instance_create_layer(x,y + 6,"Efeitos",obj_sangue);
		GC_game.moeda += 5 + global.aprimoramentoOtaku;
	}
}
else
{
	image_speed = 0;
}