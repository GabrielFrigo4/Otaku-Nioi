if(!instance_exists(obj_inimigo) && !chave)
{
	chave = true;
}

if(global.tempo <= 0 && perdemo = false || global.hp + hpPerido <= 0 && perdemo = false)
{
	perdemos();
	perdemo = true;
}

if(boss && instance_exists(obj_boss) && ganhamo = false)
{
	if(obj_boss.morreu)
	{
		ganhamos();
		ganhamo = true;
	}
}