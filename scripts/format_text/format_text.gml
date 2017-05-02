///format_text(text_array, width)
//format_text(text_array, width, font)
var text_array = argument0;
var width = argument1;
//var font = argument2;

// Set the font
//draw_set_font(font);

// Get the number of pages
var array_size = array_length_1d(text_array);
var last_space = 0;

// Loop through the pages
for (var i = 0; i < array_size; i++) {
	// Set count to zero
	var count = 0;
	
	// Loop through the characters
	var char = string_char_at(text_array[i], count);
	while (char != "") {
		var str = string_copy(text_array[i], 1, count);
		var str_width = string_width(str);
		
		// Update the last space
		if (char == " ") last_space = count;
		
		// Check the width
		if (str_width > width) {
			// Remove the space
			text_array[@ i] = string_delete(text_array[i], last_space, 1);
			
			text_array[@ i] = string_insert("\r", text_array[i], last_space);
		}
		
		// Increment count
		count++;
		char = string_char_at(text_array[@ i], count);
	}
}

return text_array;