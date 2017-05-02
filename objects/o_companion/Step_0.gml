/// @description Update the companion location
if (o_input.companion) {
	state = companion_approach_state;
}

script_execute(state);