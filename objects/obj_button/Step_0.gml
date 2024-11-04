var _houver = get_hover();
var _click = _houver && mouse_check_button_pressed(mb_left);

hover = lerp(hover,_houver,0.1);
y = lerp(y, ystart - _houver * 8, 0.1);

if(_click && script >= 0){
	script_execute(script);
}