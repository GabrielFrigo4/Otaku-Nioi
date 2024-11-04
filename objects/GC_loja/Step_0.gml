var middleY = room_height/2;

if(!global.morreu && !global.lojinha)
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
	
	lmove = lerp(lmove, 0, 0.1);
	
	if(room = room_loja)
	{
		lVida.ystart = room_height + middleY - 220;
		lCura.ystart = room_height + middleY - 220;
		lTempo.ystart = room_height + middleY - 40;
		lDano.ystart = room_height + middleY - 40;
		lBau.ystart = room_height + middleY + 130;
		lOtaku.ystart = room_height + middleY + 130;
		lExit.ystart = room_height + middleY + 200;
		lImagem.y =  room_height + middleY - lmove;
	}
	else
	{
		lVida.ystart = room_height + middleY - 220;
		lCura.ystart = room_height + middleY - 220;
		lTempo.ystart = room_height + middleY - 40;
		lDano.ystart = room_height + middleY - 40;
		lExit.ystart = room_height + middleY + 200;
		lImagem.y =  room_height + middleY - lmove;
	}
	
	sound_regular();
}
else if(!global.morreu)
{
	lmove = lerp(lmove, room_height, 0.1);
	
	moveW = lerp(moveW, 0, 0.1);
	
	bPlay.ystart = -room_height + middleY - 280;
	bRestart.ystart = -room_height + middleY - 120;
	bMenu.ystart = room_height + middleY + 40;
	bExit.ystart = room_height + middleY + 200;
	
	slider_volume.x = room_width*2 - 454 - moveW;
	slider_effect.x = room_width*2 - 454 - moveW;
	slider_music.x = room_width*2 - 454 - moveW;
	fundoSlider.x = room_width*2 - 328 - moveW;
	
	tDinhero.x = 328 - room_width + moveW;
	
	if(room = room_loja)
	{
		lVida.ystart = room_height + middleY - 220 - room_height;
		lCura.ystart = room_height + middleY - 220 - room_height;
		lTempo.ystart = room_height + middleY - 40 - room_height;
		lDano.ystart = room_height + middleY - 40 - room_height;
		lBau.ystart = room_height + middleY + 130 - room_height;
		lOtaku.ystart = room_height + middleY + 130 - room_height;
		lExit.ystart = room_height + middleY + 200 - room_height;
		lImagem.y =  room_height + middleY - lmove;
	}
	else
	{
		lVida.ystart = room_height + middleY - 220 - room_height;
		lCura.ystart = room_height + middleY - 220 - room_height;
		lTempo.ystart = room_height + middleY - 40 - room_height;
		lDano.ystart = room_height + middleY - 40 - room_height;
		lExit.ystart = room_height + middleY + 200 - room_height;
		lImagem.y =  room_height + middleY - lmove;
	}
}
else
{
	move = lerp(move, room_height, 0.1);
	
	mRestart.ystart = room_height + middleY + 160 - room_height;
	mMenu.ystart = room_height + middleY + 160 - room_height;
	mExit.ystart = room_height + middleY + 160 - room_height;
	mImagem.y =  room_height + middleY - move;
	mImagem.image_index = 1;
	
	lmove = lerp(lmove, 0, 0.1);
	
	if(room = room_loja)
	{
		lVida.ystart = room_height + middleY - 220;
		lCura.ystart = room_height + middleY - 220;
		lTempo.ystart = room_height + middleY - 40;
		lDano.ystart = room_height + middleY - 40;
		lBau.ystart = room_height + middleY + 130;
		lOtaku.ystart = room_height + middleY + 130;
		lExit.ystart = room_height + middleY + 200;
		lImagem.y =  room_height + middleY - lmove;
	}
	else
	{
		lVida.ystart = room_height + middleY - 220;
		lCura.ystart = room_height + middleY - 220;
		lTempo.ystart = room_height + middleY - 40;
		lDano.ystart = room_height + middleY - 40;
		lExit.ystart = room_height + middleY + 200;
		lImagem.y =  room_height + middleY - lmove;
	}
}