outside_bounds();

doing = irandom_range(0,100);
hspd = sign(x - xprevious);
vspd = sign(y - yprevious);

randomize();
var path = path_add();

if !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall ,false ,false) and !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall_switch ,false ,false) {
	if (collision_circle(x,y,range_view,obj_player,false,false)) {
		if mp_grid_path(grid, path, x, y, x+(x-obj_player.x), y+(y-obj_player.y), 1) {
			path_start(path, spd, 0, 0);
		}
	}
} else if doing = 0 {
	var range_x = irandom_range(-range_view, range_view);
	var range_y = irandom_range(-range_view, range_view);
	var _dir = point_direction(0, 0, range_x, range_y);
	var nearest_x = lengthdir_x(range_view, _dir);
	var nearest_y = lengthdir_y(range_view, _dir);
	if mp_grid_path(grid, path, x, y, nearest_x, nearest_y, 1) {
		path_start(path, spd, 0, 0);
	}
}
if !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall ,false ,false) and !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall_switch ,false ,false) {
	if (collision_circle(x,y,range_attack,obj_player,false,false) and can_shoot) {
		var BulletIns = instance_create_layer(x,y,"Instances",obj_bullet_dis);
		with(BulletIns) {
			direction = point_direction(other.x, other.y, obj_player.x, obj_player.y);
			tag = "enemy_dis";
		}
		alarm[1] = cooldown_shoot;
		can_shoot = false;
	}
}
	
// If Dead
if health_points <= 0 {
	sprite_index = spr_3eyed_death;
	var my_corpse = instance_create_layer(x,y,"Instances",obj_dead);
	with(my_corpse) {
		sprite_index = spr_3eyed_death;
		state = 4;
		alarm[0] = 180;
	}
	instance_destroy();
} else {
	if (hspd!= 0 or vspd != 0) {
		// Face right direction
		if hspd != 0
			facing = sign(hspd);
		if (hspd >= vspd) {
			// Walk Animation
			sprite_index = spr_3eyes_side_walk;
			if sign(hspd) > 0
				facing = -1;
			else
				facing = 1;
		} else {
			if sign(vspd) > 0
				sprite_index = spr_3eyes_front_walk;
			else
				sprite_index = spr_3eyes_back_walk;
		}
	} else {
		// Idle Animation
		sprite_index = spr_3eyes_back_walk;
	}
}

// Player Collision
if (distance_to_object(obj_player)) < 10 {
	if (obj_player.spd == obj_player.dash_spd) {
	if (!invincible) {
		invincible = true;
		alarm[INVINCIBILITY] = invincibility_time;
		facing = 0.6;
		screen_shake(0.3,5);
		if health_points > 0
			health_points--;
		}
	}	
}

// Normal Facing
facing = lerp(facing, sign(facing), 0.3);