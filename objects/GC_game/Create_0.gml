var middleX = room_width/2;
var middleY = room_height/2;
global.pause = false;
global.morreu = false;
global.lojinha = false;
moveW = 0;
move = 0;
chave = false;
moeda = 0;
perdemo = false;
hpPerido = 0;
ganhamo = false;

global.tempo = 999;
timer = 60;

boss = false
if(room = room_faseBoss)
{
	boss = true;
}

audio_stop_sound(sound_musicMenu);
audio_stop_sound(sound_musicaAntOtaku);
audio_stop_sound(sound_vitoria);
audio_stop_sound(sound_derrota);
if(room != room_faseBoss)
{
	if(!audio_is_playing(sound_musicGame))
	audio_play_sound(sound_musicGame,10,true);
}
else
{
	audio_stop_sound(sound_musicGame);
	audio_play_sound(sound_faseBoss,10,true);
}

bPlay = create_button(middleX - 80, -room_height + middleY - 280, 160, 80, spr_buttonStyleAnt, font_big, -1, "JOGAR", on_desPausar);
bRestart = create_button(middleX - 80, -room_height + middleY - 120, 160, 80, spr_buttonStyleAnt, font_big, -1, "REINICIAR", on_restart);
bMenu = create_button(middleX - 80, room_height + middleY + 40, 160, 80, spr_buttonStyleAnt, font_big, -1, "MENU", on_menu);
bExit = create_button(middleX - 80, room_height + middleY + 200, 160, 80, spr_buttonStyleAnt, font_big, -1, "SAIR", on_exit);

slider_volume = create_slider(room_width*2 - 454, middleY - 90, 256, 8, spr_sliderStyleBarAnt, spr_sliderStyleButtonAnt, font_big, c_black, "VOLUME GERAL", global.volume);
slider_effect = create_slider(room_width*2 - 454, middleY, 256, 8, spr_sliderStyleBarAnt, spr_sliderStyleButtonAnt, font_big, c_black, "VOLUME EFEITO", global.effect);
slider_music = create_slider(room_width*2 - 454, middleY + 90, 256, 8, spr_sliderStyleBarAnt, spr_sliderStyleButtonAnt, font_big, c_black, "VOLUME MÚSICA", global.music);
fundoSlider = instance_create_layer(room_width*2 - 328,middleY,"Menu",obj_planoFundoSlider);

tDinhero = instance_create_layer(328 - room_width,middleY,"Menu",obj_tDinhero);

mImagem = instance_create_layer(middleX,middleY + room_height,"Menu",obj_mensagemFim);
mMenu = create_button(middleX - 240,  room_height + middleY + 160, 160, 80, spr_buttonStyleAnt, font_big, -1, "MENU", on_menu);
mRestart = create_button(middleX - 80,  room_height + middleY + 160, 160, 80, spr_buttonStyleAnt, font_big, -1, "REINICIAR", on_restart);
mExit = create_button(middleX + 80, room_height + middleY + 160, 160, 80, spr_buttonStyleAnt, font_big, -1, "SAIR", on_exit);

mFilminho = create_button(middleX - 80,  room_height + middleY + 160, 160, 80, spr_buttonStyleAnt, font_big, -1, "ADEUS", on_adeus);