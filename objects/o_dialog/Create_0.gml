/// @description Initialize the dialog object

text[0] = "Test, dialog... TESTING";
text[1] = "GNITSET ...golaid ,tseT"

text_visible = "";
text_page = 0;
text_count = 0;
cutscene = noone;
width = sprite_width;
spd = .5;
margin = 4;
portrait = s_default_portrait;
portrait_x = (display_get_gui_width() - sprite_get_width(portrait)) - 42;
portrait_y = (display_get_gui_height() - sprite_get_height(portrait)) - 6;
enabled = true;

// Position
pos_x = 42;
pos_y = (display_get_gui_height() - sprite_height) - 4;