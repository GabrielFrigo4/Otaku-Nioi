function IAboss(){
	if(ataqueRandom = 0)
	{
		ataqueBosNormal(48*irandom_range(11,22),48*irandom_range(1,17));
	}
	
	if(ataquesAlvo = 0)
	{
		if(obj_player.image_xscale = 1)
			ataqueBosNormal(round(obj_player.x/48) * 48,round(obj_player.y/48) * 48);
		else
			ataqueBosNormal(round(obj_player.x/48) * 48 - 48,round(obj_player.y/48) * 48);
	}
	
	if(ataqueRandomF = 0)
	{
		repeat(3)
		ataqueBosFedido(48*irandom_range(12,21),48*irandom_range(2,16));
	}
	
	if(superAtaque = 0)
	{
		repeat(12)
		ataqueBosNormal(48*irandom_range(11,22),48*irandom_range(1,17));
	}
	
	if(superAtaquesAlvoH = 0)
	{
		var _X = 11;
		repeat(12)
		{
			ataqueBosNormal(48*_X,round(obj_player.y/48) * 48);
			_X++;
		}
	}
	
	if(superAtaquesAlvo = 0)
	{
		var _Y = 1;
		repeat(17)
		{
			if(obj_player.image_xscale = 1)
				ataqueBosNormal(round(obj_player.x/48) * 48,48*_Y);
			else
				ataqueBosNormal(round(obj_player.x/48) * 48 - 48,48*_Y);
			_Y++;
		}
	}
	
	if(superAtaqueF = 0)
	{
		repeat(12)
		ataqueBosFedido(48*irandom_range(12,21),48*irandom_range(2,16));
	}
	
	if(superAtaquesAlvoFH = 0)
	{
		var _X = 12;
		repeat(10)
		{
			ataqueBosFedido(48*_X,round(obj_player.y/48) * 48);
			_X++;
		}
	}
	
	if(superAtaquesAlvoF = 0)
	{
		var _Y = 2;
		repeat(15)
		{
			if(obj_player.image_xscale = 1)
				ataqueBosFedido(round(obj_player.x/48) * 48,48*_Y);
			else
				ataqueBosFedido(round(obj_player.x/48) * 48 - 48,48*_Y);
			_Y++;
		}
	}
}

function ataqueBosNormal(){
	/// @arg x
	/// @arg y
	
	var _x = argument[0];
	var _y = argument[1];
	instance_create_layer(_x,_y,"Instances",obj_ataqueBoss);
}

function ataqueBosFedido(){
	/// @arg x
	/// @arg y
	
	var _x = argument[0];
	var _y = argument[1];
	instance_create_layer(_x,_y,"Instances",obj_ataqueBossFedor);
}