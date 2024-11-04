image_speed = 0.1;
mySistem = part_system_create();
myParticle = part_type_create();
part_type_shape(myParticle,pt_shape_square);
part_type_sprite(myParticle,spr_particula,false,false,true);
part_type_life(myParticle,16,20);
part_type_direction(myParticle,90,90,0,0);
part_type_speed(myParticle,2,3,-0.1,0);