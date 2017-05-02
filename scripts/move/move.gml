/// move(hspd, vspd)
var hspd = argument0;
var vspd = argument1;

// Horizontal movement
if (!place_meeting(x+hspd, y, o_solid)) {
    x += hspd;
} else {
	var solid_id = instance_place(x+hspd, y, o_solid);
	var dist = distance_to_object(solid_id);
	x += --dist * sign(hspd);
}

// Vertical movement
if (!place_meeting(x, y+vspd, o_solid)) {
    y += vspd;
} else {
	var solid_id = instance_place(x, y+vspd, o_solid);
	var dist = distance_to_object(solid_id);
	y += --dist * sign(vspd);
}

var dir = point_direction(0, 0, hspd, vspd);
var moved = x != xprevious || y != yprevious;

// Update the sprite
if (!moved) {
    image_speed = 0;
	facing = get_facing(dir);
} else {
    image_speed = .2;
    facing = get_facing(dir);
}

// Return true if we are able to move
return moved;