if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	with (other) bullet_die();
	screen_shake(0.3,3);
	knockback(6, other.direction);
	if health_points > 0
		health_points--;
}