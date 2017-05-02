/// @description Activate the dialog

if (!instance_exists(dialog)) {
	dialog = instance_create_layer(0, 0, "Instances", dialog_object);
	
	// Check if dialog object
	if (dialog.object_index == o_dialog) {
		dialog.text = text;
		dialog.portrait = portrait;
		
		// Format the text
		with (dialog) event_user(FORMAT_TEXT);
		other.state = player_talking_state;
	}
}