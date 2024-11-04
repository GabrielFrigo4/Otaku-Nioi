var button_x,button_y,button_radius;

button_x = x + width*value;
button_y = y + height/2;
button_radius = height;

if(mouse_check_button_pressed(mb_left))
{
     if(point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), button_x, button_y, button_radius))
     {
        selected = true;
     }
}
else if(point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), button_x, button_y, button_radius))
{
	rang = true;
}
else
{
	rang = false;
}

if(!mouse_check_button(mb_left))
{
    selected = false;
}
if(selected)
{
    value = (mouse_x-x)/width;
    value = clamp(value,0,max_value);
}