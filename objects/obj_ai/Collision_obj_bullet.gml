if (!invincible) {
	invincible = true;
	alarm[INVINCIBILITY] = invincibility_time;
	with (other) bullet_die();
	knockback(6, other.direction);
	if health_points > 0
		health_points--;
}