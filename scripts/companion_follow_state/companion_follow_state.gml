var max_y = o_player.y - 14;
var min_y = o_player.y - 18;

// Follow player
x += ((o_player.x - 16) - x) * .1;
if (y < min_y || y > max_y) {
	y += ((o_player.y - 16) - y) * .1;
}
	
// Change direction to down
if (y <= min_y) {
    dir = 0;
}

// Change direction to up    
if (y >= max_y) {
    dir = 1;
}
    
// Float down
if (dir == 0 && y <= max_y) {
    y = min(max_y, y + ((max_y - min_y) * .03));
}
    
// Float up
if (dir == 1 && y >= min_y) {
    y = max(min_y, y + ((min_y - max_y) * .03));
}