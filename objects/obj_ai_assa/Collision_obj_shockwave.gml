if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	facing = 0.6;
	knockback(5, point_direction(obj_player.x, obj_player.y, x, y));
	if health_points > 0
		health_points--;
}