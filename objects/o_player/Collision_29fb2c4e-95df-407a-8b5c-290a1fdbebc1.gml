/// @description Go to the next room

if (state != player_wait_state) {
    state = player_wait_state;
	var transition = instance_create_layer(0, 0, "Instances", o_fade_transition);
	transition.next_room = other.next_room;
}