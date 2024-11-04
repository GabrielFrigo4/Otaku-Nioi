function escadaria(){
	if(instance_exists(GC_game))
	{
		if(GC_game.chave)
		{
			if(!instance_exists(obj_inimigo) && room = room_tutorial && global.jogo = room_tutorial)
			{
				global.jogo = room_fase1;
				room = room_menu;
			}
			else if(!instance_exists(obj_inimigo) && room = room_tutorial)
			{
				room = room_menu;
			}
			else if(!instance_exists(obj_inimigo))
			{
				room_goto_next();
				global.moeda += GC_game.moeda;
				global.hp += GC_game.hpPerido;
			}
		}
		else
		{
			audio_play_sound(sound_bateuForte,10,false);
		}
	}
	else
	{
		if(GC_loja.chave)
		{
			if(!instance_exists(obj_inimigo))
			{
				room_goto_next();
				global.moeda += GC_loja.moeda;
				global.hp += GC_loja.hpPerido;
			}
		}
		else
		{
			audio_play_sound(sound_bateuForte,10,false);
		}
	}
}

function sound_regular(){
	global.effect = slider_effect.value;
	global.music = slider_music.value;
	global.volume = slider_volume.value;
	
	audio_sound_gain(sound_musicMenu,global.music * global.volume,0);
	audio_sound_gain(sound_musicGame,global.music * global.volume,0);
	audio_sound_gain(sound_musicaAntOtaku,global.music * global.volume,0);
	audio_sound_gain(sound_derrota,global.music * global.volume,0);
	audio_sound_gain(sound_vitoria,global.music * global.volume,0);
	audio_sound_gain(sound_faseBoss,global.music * global.volume,0);
	audio_sound_gain(sound_move,global.effect * global.volume,0);
	audio_sound_gain(sound_morreuOtaku,global.effect * global.volume,0);
	audio_sound_gain(sound_bateu,global.effect * global.volume,0);
	audio_sound_gain(sound_bateuForte,global.effect * global.volume,0);
	audio_sound_gain(sound_moeda,global.effect * global.volume,0);
	audio_sound_gain(sound_bau,global.effect * global.volume,0);
	audio_sound_gain(sound_chave,global.effect * global.volume,0);
	audio_sound_gain(sound_golpe,global.effect * global.volume,0);
	audio_sound_gain(sound_golpado,global.effect * global.volume,0);
	audio_sound_gain(sound_explosao,global.effect * global.volume,0);
	audio_sound_gain(sound_explosaoF,global.effect * global.volume,0);
	audio_sound_gain(sound_bateuEscudo,global.effect * global.volume,0);
	audio_sound_gain(sound_otaku,global.volume,0);
	audio_sound_gain(sound_otakuHunter,global.volume,0);
	audio_sound_gain(sound_espadada,global.volume,0);
	audio_sound_gain(sound_otakuHunter2,global.volume,0);
	audio_sound_gain(sound_otakuHunter3,global.volume,0);
}

function animacao(){
	/// @arg dist
	/// @arg vel
	
	var _dist = argument[0];
	var _vel = argument[1];
	
	draw_sprite_ext(sprite_index,image_index,x,y - anima,1,1,0,c_white,1);
	
	if(!global.pause)
	{
		if(anima < _dist && subindo)
		{
			anima += _vel;
		}
		if(anima >= _dist && subindo)
		{
			anima = _dist;
			subindo = false;
		}
		if(anima > 0 && !subindo)
		{
			anima -= _vel;
		}
			if(anima <= 0 && !subindo)
		{
			anima = 0;
			subindo = true;
		}
	}
}

function bau_madeira(){
	/// @arg id
	var _id = argument[0];
	
	if(_id.aberto)
	{
		audio_play_sound(sound_bateuForte,10,false);
	}
	else
	{
		audio_play_sound(sound_bau,10,false);
		GC_game.moeda += 5*irandom_range(5,7) + global.aprimoramentoBau;
		_id.aberto = true;
	}
}

function bau_ferro(){
	/// @arg id
	var _id = argument[0];
	
	if(_id.aberto)
	{
		audio_play_sound(sound_bateuForte,10,false);
	}
	else if(obj_player.chave && !_id.aberto)
	{
		audio_play_sound(sound_bau,10,false);
		GC_game.moeda += 5*irandom_range(10,15) + global.aprimoramentoBau;
		_id.aberto = true;
	}
	else
	{
		audio_play_sound(sound_bateuForte,10,false);
	}
}

function lojinha(){
	global.lojinha = true;
}

function ganhamos(){
	audio_play_sound(sound_golpado,10,false);
	audio_play_sound(sound_vitoria,10,true);
	audio_stop_sound(sound_faseBoss);
	var golpe = instance_create_layer(obj_boss.x,obj_boss.y,"Efeitos",obj_golpado);
	golpe.image_xscale = 2;
	golpe.image_yscale = 2;
	instance_destroy(obj_boss);
	global.morreu = true;
}

function perdemos(){
	audio_play_sound(sound_golpado,10,false);
	audio_play_sound(sound_derrota,10,true);
	audio_stop_sound(sound_musicGame);
	audio_stop_sound(sound_faseBoss);
	if(obj_player.image_xscale = -1)
	{
		obj_player.x -= 48;
	}
	instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_playerMorto);
	instance_create_layer(obj_player.x,obj_player.y,"Efeitos",obj_golpado);
	instance_destroy(obj_player);
	global.morreu = true;
}