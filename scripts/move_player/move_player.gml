function move_player(){
	if( hspd != 0 or vspd != 0) {
		var _chara_spd = spd;
		var _dir = point_direction(0, 0, hspd, vspd);
		
		hspd = lengthdir_x(_chara_spd, _dir);
		vspd = lengthdir_y(_chara_spd, _dir);
			
		x += hspd;
		y += vspd;
	}
}