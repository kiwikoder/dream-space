/// @description Fade

if (image_alpha != target_image_alpha) {
    // Approach the target image alpha
    image_alpha = approach(image_alpha, target_image_alpha, .2);
} else {
    if (image_alpha == 1) {
        // Go to the next room
        target_image_alpha = 0;
        room_goto(next_room);
    } else {
        // Destroy the transition object
        instance_destroy();
    }
}