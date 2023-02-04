outside_bounds();

doing = irandom_range(0,100);
hspd = sign(x - xprevious);
vspd = sign(y - yprevious);

randomize();
var path = path_add();

if !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall ,false ,false) and !collision_line(x, y, obj_player.x ,obj_player.y ,obj_wall_switch ,false ,false) {
	
	if !charging {
		
		if (collision_circle(x, y, range_view, obj_player, false, false)) {
			
			if mp_grid_path(grid, path, x, y, obj_player.x, obj_player.y, 1) {
				path_start(path, spd, 0, 0);
			}
			
		}
		
		if collision_circle(x, y, range_attack, obj_player, false, false) {
			path_end();
			x_target_dash = obj_player.x;
			y_target_dash = obj_player.y;
			alarm[1] = 1.5*60;
			charging = true;
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
	
// If Dead
if health_points <= 0 {
	sprite_index = spr_player_dead;
	var my_corpse = instance_create_layer(x,y,"Instances",obj_dead);
	with(my_corpse) {
		sprite_index = spr_player_dead;
		state = 2;
		alarm[0] = 180;
	}
	instance_destroy();
} else {
	if (hspd!= 0 or vspd != 0) {
		// Face right direction
		if hspd != 0
			facing = sign(hspd);
		// Walk Animation
		sprite_index = spr_player_walk;
	} else {
		// Idle Animation
		sprite_index = spr_player_idle;
	}
}
