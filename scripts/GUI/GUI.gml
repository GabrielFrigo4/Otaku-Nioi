function get_hover(){
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	
	return point_in_rectangle(_mouseX, _mouseY, x, y, x + width, y + height);
}

function create_button(){
	/// @arg x
	/// @arg y
	/// @arg width
	/// @arg height
	/// @arg style
	/// @arg font
	/// @arg color
	/// @arg text
	/// @arg script
	
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _style = argument[4];
	var _font = argument[5];
	var _color = argument[6];
	var _text = argument[7];
	var _script = argument[8];
	
	var _button = instance_create_layer(_x,_y, "Menu", obj_button);
	
	with(_button){
		width = _width;
		height = _height;
		style = _style;
		font = _font;
		if(_color >= 0){ color = _color; }
		text = _text;
		script = _script;
	}
	
	return _button;
}

function create_slider(){
	/// @arg x
	/// @arg y
	/// @arg width
	/// @arg height
	/// @arg styleBar
	/// @arg styleButton
	/// @arg font
	/// @arg color
	/// @arg text
	/// @arg value
	
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _styleBar = argument[4];
	var _styleButton = argument[5];
	var _font = argument[6];
	var _color = argument[7];
	var _text = argument[8];
	var _value = argument[9];
	
	var _slider = instance_create_layer(_x,_y, "Menu", obj_slider);
	
	with(_slider){
		width = _width;
		height = _height;
		styleBar = _styleBar;
		styleButton = _styleButton;
		font = _font;
		if(_color >= 0){ color = _color; }
		text = _text;
		value = _value;
	}
	
	return _slider;
}
	
function create_textBox(){
	/// @arg x
	/// @arg y
	/// @arg width
	/// @arg style
	/// @arg font
	/// @arg color
	/// @arg text
	
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _style = argument[3];
	var _font = argument[4];
	var _color = argument[5];
	var _text = argument[6];
	
	var _textBox = instance_create_layer(_x,_y, "Menu", obj_textBox);
	
	with(_textBox){
		width = _width;
		style = _style;
		font = _font;
		if(_color >= 0){ color = _color; }
		text = _text;
		
		if(font_exists(font)){
			sizeMax = floor(_width/10 * 12/font_get_size(font));
		}
		else{
			sizeMax = floor(_width/10);
		}
		
		if(font_exists(font)){
			height = font_get_size(font) * 2;
		}
		else{
			height = 12 * 2;
		}
	}
	
	return _textBox;
}