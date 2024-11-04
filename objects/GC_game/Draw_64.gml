draw_set_color(c_white);
draw_roundrect(8,room_height - 80, 120, room_height - 20, 0);
draw_set_color(c_dkgray);
draw_roundrect(8,room_height - 80, 120, room_height - 20, 1);

draw_set_color(c_white);
draw_roundrect(128,room_height - 70, 320, room_height - 30, 0);
draw_set_color(c_dkgray);
draw_roundrect(128,room_height - 70, 320, room_height - 30, 1);

draw_set_color(c_white);
draw_roundrect(room_width - 406, 16, room_width - 20, 62, 0);
draw_set_color(c_dkgray);
draw_roundrect(room_width - 406, 16, room_width - 20, 62, 1);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
	draw_set_font(font_moreBig);
	draw_text(64,room_height - 48,string(global.tempo));
	draw_set_font(asset_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_ext(spr_chave,chave,room_width - 300,y + 24,1,1,0,c_white,1);
draw_sprite_ext(spr_moeda,0,room_width - 256,y + 16,1,1,0,c_white,1);
draw_set_font(font_normal);
if(room = room_tutorial)
	draw_text(room_width - 216,y + 26, string(moeda));
else
	draw_text(room_width - 216,y + 26, string(global.moeda + moeda));
draw_text(room_width - 120,y + 26, "hp: " + string(global.hp + hpPerido) + "/" + string(global.maxHp));
draw_text(room_width - 400,y + 26, "dano: " + string(global.dano));
draw_text(136,room_height - 62, "tempo extra: " + string(global.tempoExtra));
draw_set_font(asset_font);

draw_set_color(c_white);