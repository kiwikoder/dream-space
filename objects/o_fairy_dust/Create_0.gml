/// @description Initialize the fairy dust object

// Create the fariy dust particle system
fairy_dust = part_system_create();
part_system_depth(fairy_dust, 50);

// Create a dust particle
dust = part_type_create();
part_type_shape(dust, pt_shape_pixel);
part_type_orientation(dust, 0, 0, 0, 0, 1);
part_type_size(dust, 1, 2, 0, 0);
part_type_speed(dust, 0.8, 1, 0, 0);
part_type_direction(dust, 225, 315, 0, 0);
part_type_gravity(dust, 0.02, 270);
part_type_color1(dust, 55295); // gold
part_type_alpha2(dust, 1,0);
part_type_blend(dust, 1);
part_type_life(dust, room_speed, room_speed * 2);

// Create the effect
dust_emitter = part_emitter_create(fairy_dust);