/// @description Initialize the companion object
image_speed = 0;
facing = RIGHT;
state = companion_follow_state;
dir = 0;
dust = noone;

// Create the sprite array
sprite[RIGHT] = s_player_right;
sprite[UP] = s_player_up;
sprite[LEFT] = s_player_left;
sprite[DOWN] = s_player_down;