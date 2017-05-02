/// @description Draw the vignette

//draw_background_ext(b_dialogue_shadow, 0, 0, 1, 1, 0, c_white, .5);

// Draw the frame
draw_sprite(sprite_index, 0, pos_x, pos_y);

// Draw the portrait
draw_sprite(portrait, 0, portrait_x - 1, portrait_y);
draw_sprite(s_portrait_frame, 0, portrait_x - 4, portrait_y - 4);

// Set the font
//draw_set_font(font);
draw_set_halign(fa_left);

// Draw the text shadow
draw_text_ext_color(pos_x + margin + 3, pos_y + margin + 3, text_visible, -1, width - margin * 2, c_black, c_black, c_black, c_black, 1);

// Draw the text
draw_text_ext_color(pos_x + margin + 2, pos_y + margin + 2, text_visible, -1, width - margin * 2, c_white, c_white, c_white, c_white, 1);

// Add to the count
if (alarm[0] <= 0) {
	text_count += spd;
}