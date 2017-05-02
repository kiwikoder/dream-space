/// @description Manage the text to be drawn on the screen

get_visible_text(room_speed / 3);

// Handle input
if (o_input.action) {
	// Get the text length
	var text_length = string_length(text[text_page]);
	
	// Check if at the end of pages
	if (text_count > text_length) {
		// Go to the next page
		text_page++;
		text_count = 0;
		text_visible = "";
		
		if (text_page > array_length_1d(text) - 1) {
			if (cutscene != noone) {
				cutscene.action++;
			}
			instance_destroy();
		}
	} else {
		// Advance the count to the end of the text
		text_count = text_length;
	}
}