function screen_shake(){
	/// descr@ scr_screen_shake(seconds, shake_amount);
	/// arg@ seconds_to_shake
	/// arg@ shake_amount
	
	var _time = argument0;
	var _amount = argument1;
	
	with(obj_camera) {
		// default
		if _amount == -1 {
			_amount = screen_shake_amount_initial;
		}
		is_screen_shaking = true;
		alarm[0] = room_speed * _time;
		screen_shake_amount = _amount;
	}
}