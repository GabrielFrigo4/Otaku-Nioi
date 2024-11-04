var middleX = room_width/2;

move = lerp(move, _houver * room_width, 0.1);

//menu
bPlay.x =  160 - move;
bTutorial.x = 160 - move;
bOptions.x = room_width - 320 - move;
bExit.x = room_width - 320 - move;
//textBoxSeed.x = room_width - 150 - move;

//opções
bReturnOptions.x = 32 + room_width - move;
slider_volume.x = middleX - 128 + room_width - move;
slider_effect.x = middleX - 128 + room_width - move;
slider_music.x = middleX - 128 + room_width - move;

//tutorial
bReturnTutorial.x = 32 - room_width - move;
bPlayTutorial.x = middleX - 135 - room_width - move;
tTutorial.x = middleX - room_width - move;

sound_regular();