if(destroy)
{
	instance_destroy();
	audio_play_sound(sound_moeda,10,0)
	GC_game.moeda += 10;
}