if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	knockback(5, point_direction(obj_player.x, obj_player.y, x, y));
	health_points--;
}