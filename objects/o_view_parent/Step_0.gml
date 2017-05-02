/// @description Update the view position

//view_xport[0] = (x-view_wport[0]/2) + irandom_range(-screenshake, screenshake);
//view_yport[0] = (y-view_hport[0]/2) + irandom_range(-screenshake, screenshake);


var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;

//// Move the view towards the target point
var new_x = lerp(vpos_x, target[? "x"] - vpos_w, spd);
var new_y = lerp(vpos_y, target[? "y"] - vpos_h, spd);

camera_set_view_pos(view_camera[0], new_x, new_y);