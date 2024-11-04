var _houver = get_hover();
var _click = _houver && mouse_check_button_pressed(mb_left);

hover = lerp(hover,_houver,0.1);

if(_click && !clicked){
	clicked = true;
	keyboard_string = text;
}

if(clicked && keyboard_check_pressed(vk_enter)){
	clicked = false;
}

if(clicked && sizeMax >= string_length(keyboard_string)){
	text = keyboard_string;
}
else if(clicked){
	keyboard_string = text;
}

if(string_length(text) > sizeMax){
	var tam = string_length(text) - sizeMax;
	text = string_delete(text,sizeMax,tam)
}