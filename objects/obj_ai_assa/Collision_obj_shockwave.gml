if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	screen_shake(0.4,2);
	knockback(5, point_direction(obj_player.x, obj_player.y, x, y));
	if health_points > 0
		health_points--;
}