function on_play(){
	room = global.jogo;
}
	
function on_options(){
	GC_._houver = 1;
}

function on_return(){
	GC_._houver = 0;
}
	
function on_exit(){
	game_end();
}

function on_tutorial(){
	GC_._houver = -1;
}

function on_playTutorial(){
	if(room_filminho != global.jogo)
	room = room_tutorial;
	else
	room = room_filminho;
}

function on_desPausar(){
	global.pause = false;
}

function on_menu(){
	room = room_menu;
}

function on_adeus(){
	zerar();
	audio_stop_all();
	room = room_filminhoFim;
}

function on_restart(){
	room = global.jogo;
}

function on_exitLoja(){
	global.lojinha = false;
}

function on_lvida(){
	if(global.moeda >= 250)
	{
		audio_play_sound(sound_moeda,10,false);
		global.moeda -= 250;
		global.maxHp += 2;
		global.hp += 2;
	}
}

function on_lregenerar(){
	if(global.moeda >= 75 && global.hp < global.maxHp)
	{
		audio_play_sound(sound_moeda,10,false);
		global.moeda -= 75;
		global.hp += 2;
		global.hp = clamp(global.hp,0,global.maxHp);
	}
}

function on_ldano(){
	if(global.moeda >= 350)
	{
		audio_play_sound(sound_moeda,10,false);
		global.moeda -= 350;
		global.dano += 1;
	}
}

function on_ltempo(){
	if(global.moeda >= 250)
	{
		audio_play_sound(sound_moeda,10,false);
		global.moeda -= 250;
		global.tempoExtra += 5;
	}
}

function on_melhoriaBau(){
	if(global.moeda >= 225)
	{
		audio_play_sound(sound_moeda,10,false);
		global.moeda -= 225;
		global.aprimoramentoBau += 50;
	}
}

function on_melhoriaOtaku(){
	if(global.moeda >= 225)
	{
		audio_play_sound(sound_moeda,10,false);
		global.moeda -= 225;
		global.aprimoramentoOtaku += 5;
	}
}

function zerar(){
	var _file = file_text_open_write(working_directory + "\datavar.txt");
	file_text_write_real(_file,0);
	file_text_close(_file);

	global.jogo = room_filminho;
	global.pause = false;
	global.moeda = 0;
	global.dano = 1;
	global.maxHp = 4;
	global.hp = global.maxHp;
	global.tempoExtra = 0;
	global.aprimoramentoOtaku = 0;
	global.aprimoramentoBau = 0;
}