function init_player_input(){
	var rkey = keyboard_check(vk_right) or keyboard_check(ord("D")); // WASD
	var lkey = keyboard_check(vk_left) or keyboard_check(ord("Q"));
	var ukey = keyboard_check(vk_up) or keyboard_check(ord("Z"));
	var dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
	hspd = (rkey - lkey);
	vspd = (dkey - ukey);
}