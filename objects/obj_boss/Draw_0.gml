if(instance_exists(obj_player))
{
	if(obj_player.fedido > 0)
	{
		draw_self();
	}
	else
	{
		if(atacado){shader_set(sha_flash); atacado = false}
		draw_self();
		shader_reset();
	}
}
else
{
	draw_self();
	shader_reset();
}

draw_rectangle_color(room_width/2 - 100,8,room_width/2 + 100,40,c_red,c_red,c_red,c_red,0);
draw_rectangle_color(room_width/2 - 100,8,(room_width/2 - 100) + 200 * hp/maxHp,40,c_green,c_green,c_green,c_green,0);
draw_rectangle_color(room_width/2 - 100,8,room_width/2 + 100,40,c_black,c_black,c_black,c_black,1);

draw_set_font(font_normal)
draw_set_color(c_black)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
	draw_text(room_width/2,26,"CEO da Hololive");
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)
draw_set_font(asset_font)