var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_index(back_id, 1);
audio_play_sound(sound_otakuHunter3,10,false);
instance_create_layer(room_width/2,room_height,"Instances",obj_creditos)
instance_destroy();