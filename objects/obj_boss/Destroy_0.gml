audio_play_sound(sound_morreuOtaku,10,false);
var obj = instance_create_depth(x,y,201,obj_bossMorto);
obj.image_xscale = 2;
obj.image_yscale = 2;
instance_create_layer(x,y + 6,"Efeitos",obj_sangue);