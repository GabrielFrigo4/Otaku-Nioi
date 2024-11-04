if(styleBar >= 0 && sprite_exists(styleBar))
{
	var wspr = sprite_get_width(styleBar);
	var hspr = sprite_get_height(styleBar);
	
	//centro
	draw_sprite_ext(styleBar,2,x + wspr,y + hspr,(width - wspr*2)/wspr,(height - hspr*2)/hspr,0,c_white,1);
	draw_sprite_ext(styleBar,3,x + wspr,y + hspr,(width - wspr*2)/wspr*value,(height - hspr*2)/hspr,0,c_white,1);
	
	//laterais
	draw_sprite_ext(styleBar,1,x + wspr,y,(width - wspr*2)/wspr,1,0,c_white,1);
	draw_sprite_ext(styleBar,1,x + wspr,y + height - wspr,(width - wspr*2)/wspr,1,0,c_white,1);
	draw_sprite_ext(styleBar,1,x,y + hspr,1,(height - hspr*2)/hspr,0,c_white,1);
	draw_sprite_ext(styleBar,1,x + width - wspr,y + hspr,1,(height - hspr*2)/hspr,0,c_white,1);
	
	//bordas
	draw_sprite_ext(styleBar,0,x,y,1,1,0,c_white,1);
	draw_sprite_ext(styleBar,0,x + width,y,-1,1,0,c_white,1);
	draw_sprite_ext(styleBar,0,x,y + height,1,-1,0,c_white,1);
	draw_sprite_ext(styleBar,0,x + width,y + height,-1,-1,0,c_white,1);
}
else
{
	draw_set_color(c_ltgray);
	draw_roundrect(x - 1, y, x + width - 1, y + height - 2, 0);
	draw_set_color(c_lime);
	draw_roundrect(x - 1, y, x + width * value - 1, y + height - 2, 0);
	draw_set_color(c_dkgray);
	draw_roundrect(x - 1, y, x + width - 1, y + height - 2, 1);
}

if(styleButton >= 0 && sprite_exists(styleButton))
{
	var wspr = sprite_get_width(styleButton);
	var hspr = sprite_get_height(styleButton);
	
	if(selected)
	{ 
		draw_sprite_ext(styleButton, 3, x+width*value, y+height/2,height*2/wspr,height*2/hspr,0,c_white,1);
	}
	else if(rang)
	{ 
		draw_sprite_ext(styleButton, 2, x+width*value, y+height/2,height*2/wspr,height*2/hspr,0,c_white,1);
	}
	else
	{ 
		draw_sprite_ext(styleButton, 1, x+width*value, y+height/2,height*2/wspr,height*2/hspr,0,c_white,1);
	}
	draw_sprite_ext(styleButton, 0, x+width*value, y+height/2,height*2/wspr,height*2/hspr,0,c_white,1);
	draw_sprite_ext(styleButton, 4, x+width*value, y+height/2,height*2/wspr,height*2/hspr,0,c_white,1);
}
else
{
	if(selected){ draw_set_color(c_gray); }else if(rang){ draw_set_color(c_ltgray); }else{ draw_set_color(c_white); }
	draw_circle(x+width*value,y+height/2 - 1,height,0)
	draw_set_color(c_dkgray);
	draw_circle(x+width*value,y+height/2 - 1,height/2,0)
	draw_set_color(c_dkgray);
	draw_circle(x+width*value,y+height/2 - 1,height,1)
}

draw_set_color(color);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	if(font >= 0 && font_exists(font)){ draw_set_font(font); }
	draw_text(x+width/2, y-(height + 2),text)
	draw_set_font(asset_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);