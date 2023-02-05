if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	with (other) bullet_die();
	knockback(6, other.direction);
	screen_shake(0.3,3);
	facing = 0.6;
	if health_points > 0
		health_points--;
}