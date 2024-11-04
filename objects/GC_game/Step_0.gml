var middleY = room_height/2;

global.hp = clamp(global.hp,0,global.maxHp);

if(!global.morreu)
{
	moveW = lerp(moveW, global.pause * room_width, 0.1);
	
	bPlay.ystart = -room_height + middleY - 280 + global.pause * room_height;
	bRestart.ystart = -room_height + middleY - 120 + global.pause * room_height;
	bMenu.ystart = room_height + middleY + 40 - global.pause * room_height;
	bExit.ystart = room_height + middleY + 200 - global.pause * room_height;
	
	slider_volume.x = room_width*2 - 454 - moveW;
	slider_effect.x = room_width*2 - 454 - moveW;
	slider_music.x = room_width*2 - 454 - moveW;
	fundoSlider.x = room_width*2 - 328 - moveW;
	
	tDinhero.x = 328 - room_width + moveW;
	
	sound_regular();
}
else if(!ganhamo)
{
	move = lerp(move, room_height, 0.1);
	
	moveW = lerp(moveW, 0, 0.1);
	
	bPlay.ystart = -room_height + middleY - 280;
	bRestart.ystart = -room_height + middleY - 120;
	bMenu.ystart = room_height + middleY + 40;
	bExit.ystart = room_height + middleY + 200;
	
	slider_volume.x = room_width*2 - 454 - moveW;
	slider_effect.x = room_width*2 - 454 - moveW;
	slider_music.x = room_width*2 - 454 - moveW;
	fundoSlider.x = room_width*2 - 328 - moveW;
	
	mRestart.ystart = room_height + middleY + 160 - room_height;
	mMenu.ystart = room_height + middleY + 160 - room_height;
	mExit.ystart = room_height + middleY + 160 - room_height;
	mImagem.y =  room_height + middleY - move;
	mImagem.image_index = 1;
}
else
{
	move = lerp(move, room_height, 0.1);
	
	moveW = lerp(moveW, 0, 0.1);
	
	bPlay.ystart = -room_height + middleY - 280;
	bRestart.ystart = -room_height + middleY - 120;
	bMenu.ystart = room_height + middleY + 40;
	bExit.ystart = room_height + middleY + 200;
	
	slider_volume.x = room_width*2 - 454 - moveW;
	slider_effect.x = room_width*2 - 454 - moveW;
	slider_music.x = room_width*2 - 454 - moveW;
	fundoSlider.x = room_width*2 - 328 - moveW;
	
	mFilminho.ystart = room_height + middleY + 160 - room_height;
	mImagem.y =  room_height + middleY - move;
	mImagem.image_index = 0;
}

if(!global.pause && !global.morreu)
{
	if(timer = 0 && obj_player.fedido = 0)
	{
		global.tempo--;
		timer = 60;
	}
	else if(timer = 0 && obj_player.fedido > 0)
	{
		global.tempo--;
		timer = 30;
	}
	else
	{
		timer--;
	}
}