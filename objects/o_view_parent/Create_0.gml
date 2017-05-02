/// @description Initialize the view parent

// Create the target
target = ds_map_create();
target[? "x"] = 0;
target[? "y"] = 0;

// Create screenshake
screenshake = 0;

// View speed as percentage
spd = .2;

// Enable the use of views
view_enabled = true;

// Make view 0 visible
view_set_visible(0, true);

// Set the port bounds of view 0
view_set_wport(0, 1280);
view_set_hport(0, 960);
//view_set_wport(0, 640);
//view_set_hport(0, 480);

// Build a camera
camera = camera_create_view(0, 0, 640, 480, 0, o_player, -1, -1, 32, 32);

view_set_camera(0, camera);