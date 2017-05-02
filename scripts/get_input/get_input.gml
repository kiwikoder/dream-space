/// get_input()

// Movement input
up = keyboard_check(ord("W"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));

// Menu navigation input
up_pressed = keyboard_check_pressed(vk_up);
right_pressed = keyboard_check_pressed(vk_right);
left_pressed = keyboard_check_pressed(vk_left);
down_pressed = keyboard_check_pressed(vk_down);

// Action and back input
action = keyboard_check_pressed(ord("X"));
quit = keyboard_check_pressed(ord("Q"));
companion = keyboard_check_pressed(ord("T"));
menu = keyboard_check_pressed(ord("C"));