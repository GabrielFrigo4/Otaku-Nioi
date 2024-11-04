audio_stop_all();
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_index(back_id, 0);
instance_create_layer(room_width - 450, room_height - 340,"Instances",obj_inimigoDosOtakus2);