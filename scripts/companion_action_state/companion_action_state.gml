///companion_state_state()

if (!instance_exists(o_fairy_dust)) {
	dust = instance_create_depth(x, y, 50, o_fairy_dust);
}

x = mouse_x;
y = mouse_y;

with (o_fairy_dust) {
	x = other.x;
	y = other.y;
}

if (o_input.quit) {
	instance_destroy(dust);
	
	window_set_cursor(cr_default);
	state = companion_follow_state;
}