outside_bounds();

doing = irandom_range(0,100);

randomize();
var path = path_add();

if !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall ,false ,false) and !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall_switch ,false ,false) {
	if collision_circle(x, y, range_view, obj_player, false, false) {
		if mp_grid_path(grid, path, x, y, obj_player.x, obj_player.y, 1) {
			path_start(path, spd, 0, 0);
		}
	}
	if (collision_circle(x,y,range_attack,obj_player,false,false) and can_shoot) {
		var BulletIns = instance_create_layer(x,y,"Instances",obj_bullet_assa);
		with(BulletIns) {
			health_points = other.health_points
			direction = point_direction(other.x, other.y, obj_player.x, obj_player.y);
			sprite_index = other.sprite_index;
			facing = other.facing;
			tag = "enemy_assa";
			spd = other.spd*4;
			audio_play_sound(snd_bullet,1,false);
		}
		instance_destroy();
	}
} else if doing = 0 {
	var range_x = irandom_range(1, 15);
	var range_y = irandom_range(1, 15);
	if mp_grid_path(grid, path, x, y, range_x*room_width div 16, range_y*room_width div 16, 1) and !instance_place(range_x*room_width div 16,range_y*room_width div 16,obj_wall) {
		path_start(path, spd, 0, 0);
	}
}
	
// If Dead
if health_points <= 0 {
	sprite_index = spr_1eyed_death;
	var my_corpse = instance_create_layer(x,y,"Instances",obj_dead);
	with(my_corpse) {
		sprite_index = spr_1eyed_death;
		state = 2;
		alarm[0] = 180;
		audio_play_sound(snd_death,1,false);
	}
	instance_destroy();
} else {
	if (hspd!= 0 || vspd != 0) {
		// Face right direction
		if hspd != 0
			facing = sign(hspd);
		if (hspd >= vspd) {
			// Walk Animation
			sprite_index = spr_1eyed_side_walk;
			if sign(hspd) > 0
				facing = -1;
			else
				facing = 1;
		} else {
			if sign(vspd) > 0
				sprite_index = spr_1eyed_front_walk;
			else
				sprite_index = spr_1eyed_back_walk;
		}
	} else {
		// Idle Animation
		sprite_index = spr_1eyed_back_idle;
	}
}

// Player Collision
if (distance_to_object(obj_player)) < 10 {
	if (obj_player.spd == obj_player.dash_spd) {
	if (!invincible) {
		invincible = true;
		alarm[INVINCIBILITY] = invincibility_time;
		screen_shake(0.3,5);
		facing = 0.6;
		if health_points > 0
			health_points--;
		}
	}	
}

// Normal Facing
facing = lerp(facing, sign(facing), 0.3);