if(atacado){shader_set(sha_flash); atacado = false}
if(fedido > 0 && !global.morreu && !global.pause)
{
	shader_set(sha_fedor); 
	shader_set_uniform_f(uniTime, current_time);
	var tex = sprite_get_texture(sprite_index,image_index);
	shader_set_uniform_f(uniTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));
	fedido--;
	draw_self();
}
else
{
	if(atacado){shader_set(sha_flash); atacado = false}
	draw_self();
	shader_reset();
}