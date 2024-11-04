var middleX = room_width/2;
var middleY = room_height/2;

_houver = 0;
move = 0;
global.pause = false;
global.lojinha = false;

var _file = file_text_open_read("./datavar.txt");
jogouTutorial = file_text_read_real(_file);
file_text_close(_file);

//Menu
if(jogouTutorial == 0)
{
	bPlay = create_button(160, middleY - 120, 160, 80, spr_buttonStyle, font_big, -1, "JOGAR", on_play);
	bTutorial = create_button(160, middleY + 80, 160, 80, spr_buttonStyle, font_big, -1, "TUTORIAL", on_tutorial);
	bOptions = create_button(room_width - 320, middleY - 120, 160, 80, spr_buttonStyle, font_big, -1, "OPÇÕES", on_options);
	bExit = create_button(room_width - 320, middleY + 80, 160, 80, spr_buttonStyle, font_big, -1, "SAIR", on_exit);
}
else
{
	bPlay = create_button(160, middleY - 120, 160, 80, spr_buttonStyleAnt, font_big, -1, "JOGAR", on_play);
	bTutorial = create_button(160, middleY + 80, 160, 80, spr_buttonStyleAnt, font_big, -1, "TUTORIAL", on_tutorial);
	bOptions = create_button(room_width - 320, middleY - 120, 160, 80, spr_buttonStyleAnt, font_big, -1, "OPÇÕES", on_options);
	bExit = create_button(room_width - 320, middleY + 80, 160, 80, spr_buttonStyleAnt, font_big, -1, "SAIR", on_exit);
}

//textBoxSeed = create_textBox(room_width - 150, room_height - 64, 106, spr_textBoxStyle, font_big, -1, "");

//Options
if(jogouTutorial == 0)
{
	bReturnOptions = create_button(32 + room_width, room_height - 95, 130, 70, spr_buttonStyle, font_big, -1, "VOLTAR", on_return);
	slider_volume = create_slider(middleX - 128 + room_width, middleY - 90, 256, 8, spr_sliderStyleBar, spr_sliderStyleButton, font_big, -1, "VOLUME GERAL", 0);
	slider_effect = create_slider(middleX - 128 + room_width, middleY, 256, 8, spr_sliderStyleBar, spr_sliderStyleButton, font_big, -1, "VOLUME EFEITO", 0);
	slider_music = create_slider(middleX - 128 + room_width, middleY + 90, 256, 8, spr_sliderStyleBar, spr_sliderStyleButton, font_big, -1, "VOLUME MÚSICA", 0);
}
else
{	
	bReturnOptions = create_button(32 + room_width, room_height - 95, 130, 70, spr_buttonStyleAnt, font_big, -1, "VOLTAR", on_return);
	slider_volume = create_slider(middleX - 128 + room_width, middleY - 90, 256, 8, spr_sliderStyleBarAnt, spr_sliderStyleButtonAnt, font_big, -1, "VOLUME GERAL", 0);
	slider_effect = create_slider(middleX - 128 + room_width, middleY, 256, 8, spr_sliderStyleBarAnt, spr_sliderStyleButtonAnt, font_big, -1, "VOLUME EFEITO", 0);
	slider_music = create_slider(middleX - 128 + room_width, middleY + 90, 256, 8, spr_sliderStyleBarAnt, spr_sliderStyleButtonAnt, font_big, -1, "VOLUME MÚSICA", 0);
}

//Tutorial
tTutorial = instance_create_layer(middleX - room_width,middleY,"Menu",obj_tutorial)
if(jogouTutorial == 0)
{
	bReturnTutorial = create_button(32 - room_width, room_height - 95, 130, 70, spr_buttonStyle, font_big, -1, "VOLTAR", on_return);
	bPlayTutorial = create_button(middleX - 135 - room_width, middleY + 320, 270, 80, spr_buttonStyle, font_big, -1, "JOGAR TUTORIAL", on_playTutorial);
	tTutorial.image_index = 0;
}
else
{	
	bReturnTutorial = create_button(32 - room_width, room_height - 95, 130, 70, spr_buttonStyleAnt, font_big, -1, "VOLTAR", on_return);
	bPlayTutorial = create_button(middleX - 135 - room_width, middleY + 320, 270, 80, spr_buttonStyleAnt, font_big, -1, "JOGAR TUTORIAL", on_playTutorial);
	tTutorial.image_index = 1;
}

alarm_set(0,1);
audio_stop_all();

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if(jogouTutorial == 0)
{
	layer_background_index(back_id, 0);
	audio_play_sound(sound_musicMenu,10,true);
}
else
{
	layer_background_index(back_id, 1);
	audio_play_sound(sound_musicaAntOtaku,10,true);
}
	
audio_sound_gain(sound_musicMenu,0,0);
audio_sound_gain(sound_musicGame,0,0);
audio_sound_gain(sound_musicaAntOtaku,0,0);
audio_sound_gain(sound_derrota,0,0);
audio_sound_gain(sound_vitoria,0,0);
audio_sound_gain(sound_faseBoss,0,0);
audio_sound_gain(sound_move,0,0);
audio_sound_gain(sound_morreuOtaku,0,0);
audio_sound_gain(sound_bateu,0,0);
audio_sound_gain(sound_bateuForte,0,0);
audio_sound_gain(sound_moeda,0,0);
audio_sound_gain(sound_bau,0,0);
audio_sound_gain(sound_chave,0,0);
audio_sound_gain(sound_golpe,0,0);
audio_sound_gain(sound_golpado,0,0);
audio_sound_gain(sound_otaku,0,0);
audio_sound_gain(sound_otakuHunter,0,0);
audio_sound_gain(sound_espadada,0,0);
audio_sound_gain(sound_explosao,0,0);
audio_sound_gain(sound_explosaoF,0,0);
audio_sound_gain(sound_bateuEscudo,0,0);
audio_sound_gain(sound_otakuHunter2,0,0);
audio_sound_gain(sound_otakuHunter3,0,0);