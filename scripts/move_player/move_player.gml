function move_player(){
	if( hspd != 0 or vspd != 0) {
		if state == PlayerState.Assassin {
			if (spd != dash_spd)
				spd = assassin_spd;
		} else if state == PlayerState.ShockWave {
			spd = shockwave_spd;
		} else if state == PlayerState.Shoot {
			spd = shoot_spd;
		} else {
			spd = original_spd;
		}
		var _chara_spd = spd;
		var _dir = point_direction(0, 0, hspd, vspd);
		
		hspd = lengthdir_x(_chara_spd, _dir);
		vspd = lengthdir_y(_chara_spd, _dir);
			
		x += hspd;
		y += vspd;
	}
}