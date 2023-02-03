function init_player_input() {
	get_gamepad_id();
	var last_button_pressed = 0; // 0 -> Keyboard
								 // 1 -> Controller
	
	if gamepad_is_connected(gamepad_id) {
		// Controller Support
		hspd = round(gamepad_axis_value(gamepad_id, gp_axislh));
		vspd = round(gamepad_axis_value(gamepad_id, gp_axislv));
		// Set last button controller
		if (gp_axislh || gp_axislv)
			last_button_pressed = 1;
	}
	// Keyboard Support
	var rkey = keyboard_check(vk_right) or keyboard_check(ord("D")); // WASD
	var lkey = keyboard_check(vk_left) or keyboard_check(ord("Q"));
	var ukey = keyboard_check(vk_up) or keyboard_check(ord("Z"));
	var dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
	// Set last button keyboard
	if (rkey || lkey || ukey || dkey) 
		last_button_pressed = 0;
	if (last_button_pressed == 0) {
		hspd = (rkey - lkey);
		vspd = (dkey - ukey);
	}
}