if(jogouTutorial == 1){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
		draw_set_font(font_big);
		draw_text(room_width/2 - move,room_height - 70,"programado por: Gabriel Frigo");
		draw_text(room_width/2 - move, room_height - 30,"desenhado por: Lucas Frigo");
		draw_text(room_width*3/2 - move,room_height - 70,"Caso você saia do jogo o avanço, além da primeira fase será perdido");
		draw_text(room_width*3/2 - move, room_height - 30,"Para ver a introdução novamente, aperte End e saia do jogo");
		draw_set_font(asset_font);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}