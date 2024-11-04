if(style >= 0 && sprite_exists(style))
{
	var wspr = sprite_get_width(style);
	var hspr = sprite_get_height(style);
	
	//centro
	draw_sprite_ext(style,2,x + wspr,y + hspr,(width - wspr*2)/wspr,(height - hspr*2)/hspr,0,c_white,1);
	draw_sprite_ext(style,3,x + wspr,y + hspr,(width - wspr*2)/wspr,(height - hspr*2)/hspr,0,c_white,hover);
	
	//laterais
	draw_sprite_ext(style,1,x + wspr,y,(width - wspr*2)/wspr,1,0,c_white,1);
	draw_sprite_ext(style,1,x + wspr,y + height - wspr,(width - wspr*2)/wspr,1,0,c_white,1);
	draw_sprite_ext(style,1,x,y + hspr,1,(height - hspr*2)/hspr,0,c_white,1);
	draw_sprite_ext(style,1,x + width - wspr,y + hspr,1,(height - hspr*2)/hspr,0,c_white,1);
	
	//bordas
	draw_sprite_ext(style,0,x,y,1,1,0,c_white,1);
	draw_sprite_ext(style,0,x + width,y,-1,1,0,c_white,1);
	draw_sprite_ext(style,0,x,y + height,1,-1,0,c_white,1);
	draw_sprite_ext(style,0,x + width,y + height,-1,-1,0,c_white,1);
}
else
{
	draw_set_color(merge_color(c_ltgray,c_white,hover));
	draw_roundrect(x - 1, y, x + width - 1, y + height - 2, 0);
	draw_set_color(c_dkgray);
	draw_roundrect(x - 1, y, x + width - 1, y + height - 2, 1);
}

draw_set_color(color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
	if(font >= 0 && font_exists(font)){ draw_set_font(font); }
	draw_text(x + width/2, y + height/2, text);
	draw_set_font(asset_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);