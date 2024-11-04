if(!global.pause && !global.morreu)
{
	image_speed = 0.03;
	if(hp <= 0)
	{
		morreu = true;
	}
	else
	{
		IAboss();
		if(ataqueRandom > 0)
		{
			ataqueRandom--;
		}
		else
		{
			ataqueRandom = 12;
		}
		
		if(ataquesAlvo > 0)
		{
			ataquesAlvo--;
		}
		else
		{
			ataquesAlvo = 48;
		}
		
		if(ataqueRandomF > 0)
		{
			ataqueRandomF--;
		}
		else
		{
			ataqueRandomF = 240;
		}
		
		if(superAtaque > 0)
		{
			superAtaque--;
		}
		else
		{
			superAtaque = 480;
		}
		
		if(superAtaquesAlvoH > 0)
		{
			superAtaquesAlvoH--;
		}
		else
		{
			superAtaquesAlvoH = 600;
		}
		
		if(superAtaquesAlvo > 0)
		{
			superAtaquesAlvo--;
		}
		else
		{
			superAtaquesAlvo = 750;
		}
		
		if(superAtaqueF > 0)
		{
			superAtaqueF--;
		}
		else
		{
			superAtaqueF = 900;
		}
		
		if(superAtaquesAlvoFH > 0)
		{
			superAtaquesAlvoFH--;
		}
		else
		{
			superAtaquesAlvoFH = 1200;
		}
		
		if(superAtaquesAlvoF > 0)
		{
			superAtaquesAlvoF--;
		}
		else
		{
			superAtaquesAlvoF = 1500;
		}
		
		if(tempinho > 0)
		{
			tempinho--;
		}
		else
		{
			if(instance_exists(obj_apostolo1))
			{
				obj_apostolo1.escudo = false;
				obj_apostolo2.escudo = true;
				obj_apostolo3.escudo = true;
				obj_apostolo4.escudo = true;
			}
			else if(instance_exists(obj_apostolo2))
			{
				obj_apostolo2.escudo = false;
				obj_apostolo3.escudo = true;
				obj_apostolo4.escudo = true;
			}
			else if(instance_exists(obj_apostolo3))
			{
				obj_apostolo3.escudo = false;
				obj_apostolo4.escudo = true;
			}
			else if(instance_exists(obj_apostolo4))
			{
				obj_apostolo4.escudo = false;
			}
			else if(escudo)
			{
				escudo = false;
			}	
		}
		
		esc.visible = escudo;
	}
}
else
{
	image_speed = 0;
}