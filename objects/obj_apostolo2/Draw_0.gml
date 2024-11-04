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