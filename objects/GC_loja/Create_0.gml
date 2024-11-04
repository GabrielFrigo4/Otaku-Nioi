var middleX = room_width/2;
var middleY = room_height/2;
global.pause = false;
global.morreu = false;
global.lojinha = false;
moveW = 0;
move = 0;
lmove = 0;
chave = false;
moeda = 0;
perdemo = false;
hpPerido = 0;

timer = 60;

audio_stop_sound(sound_musicMenu);
audio_stop_sound(sound_musicaAntOtaku);
audio_stop_sound(sound_vitoria);
audio_stop_sound(sound_derrota);
if(!audio_is_playing(sound_musicGame))
audio_play_sound(sound_musicGame,10,true);

//menu
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

//loja
if(room = room_loja)
{
	lImagem = instance_create_layer(middleX,middleY + room_height,"Menu",obj_lojaMenu);
	lVida = create_button(middleX - 230,  room_height + middleY - 220, 140, 80, spr_buttonStyleAnt, font_big, -1, "VIDA", on_lvida);
	lCura = create_button(middleX + 90,  room_height + middleY - 220, 140, 80, spr_buttonStyleAnt, font_big, -1, "CURA", on_lregenerar);
	lTempo = create_button(middleX + 90, room_height + middleY - 40, 140, 80, spr_buttonStyleAnt, font_big, -1, "TEMPO", on_ltempo);
	lDano = create_button(middleX - 230, room_height + middleY - 40, 140, 80, spr_buttonStyleAnt, font_big, -1, "DANO", on_ldano);
	lBau = create_button(middleX + 90, room_height + middleY + 130, 140, 80, spr_buttonStyleAnt, font_big, -1, "BAU", on_melhoriaBau);
	lOtaku = create_button(middleX - 230, room_height + middleY + 130, 140, 80, spr_buttonStyleAnt, font_big, -1, "OTAKU", on_melhoriaOtaku);
	lExit = create_button(middleX - 70, room_height + middleY + 200, 140, 80, spr_buttonStyleAnt, font_big, -1, "SAIR", on_exitLoja);
}
else
{
	lImagem = instance_create_layer(middleX,middleY + room_height,"Menu",obj_lojaMenu);
	lImagem.image_index = 1;
	lVida = create_button(middleX - 230,  room_height + middleY - 220, 140, 80, spr_buttonStyleAnt, font_big, -1, "VIDA", on_lvida);
	lCura = create_button(middleX + 90,  room_height + middleY - 220, 140, 80, spr_buttonStyleAnt, font_big, -1, "CURA", on_lregenerar);
	lTempo = create_button(middleX + 90, room_height + middleY - 40, 140, 80, spr_buttonStyleAnt, font_big, -1, "TEMPO", on_ltempo);
	lDano = create_button(middleX - 230, room_height + middleY - 40, 140, 80, spr_buttonStyleAnt, font_big, -1, "DANO", on_ldano);
	lExit = create_button(middleX - 70, room_height + middleY + 200, 140, 80, spr_buttonStyleAnt, font_big, -1, "SAIR", on_exitLoja);
}