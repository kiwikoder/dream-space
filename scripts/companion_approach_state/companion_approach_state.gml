// Hide mouse cursor
window_set_cursor(cr_none);

// Create fairy dust object
if (!instance_exists(o_fairy_dust)) {
	dust = instance_create_depth(x, y, 50, o_fairy_dust);
}

// Companion moves to action state
if (point_distance(x, y, mouse_x, mouse_y) < 1) {
	state = companion_action_state;
} else {
	// Companion follows mouse movement
	x = lerp(x, mouse_x, .2);
	y = lerp(y, mouse_y, .2);

	// Fairy dust object follows companion
	with (o_fairy_dust) {
		x = other.x;
		y = other.y;
	}
}