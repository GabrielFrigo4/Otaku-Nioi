if(!tempo && image_alpha < 1)
{
	image_alpha += 0.01;
}
else if(tempo && image_alpha > 0)
{
	image_alpha -= 0.01;
}