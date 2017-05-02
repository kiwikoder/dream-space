/// @description Initialize the player object
spd = 10;
image_speed = 0;
facing = DOWN;
state = player_move_state;
last_room = room;
companion = 1;

// Create the sprite array
sprite[RIGHT] = s_player_right;
sprite[UP] = s_player_up;
sprite[LEFT] = s_player_left;
sprite[DOWN] = s_player_down;