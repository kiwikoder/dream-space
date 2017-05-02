///view_follow_player_state()

// Set the target
if (instance_exists(o_player)) {
    target[? "x"] = o_player.x + 8;
    target[? "y"] = o_player.y + 8;
}