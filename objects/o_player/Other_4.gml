/// @description Insert description here

if (instance_exists(o_start_position)) {
	with (o_start_position) {
		if (last_room == other.last_room) {
			other.x = x;
			other.y = y;
		}
	}
}

// Update the last room
last_room = room;

// Set the player's state
if (state == player_wait_state) {
    state = player_move_state;
    room_persistent = false;
    persistent = true;
}

// Create the view
if (!instance_exists(o_view)) {
	instance_create_layer(x, y, "Instances", o_view);
}

// Create the resource ui
if (!instance_exists(o_resources)) {
	instance_create_layer(x, y, "Instances", o_resources);
}

// Create the companion
if (!instance_exists(o_companion)) {
	instance_create_layer(x-16, y-16, "Instances", o_companion);
}