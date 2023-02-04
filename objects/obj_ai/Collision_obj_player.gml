if (other.spd == other.dash_spd) {
	if (!invincible) {
		invincible = true;
		alarm[INVINCIBILITY] = invincibility_time;
		if health_points > 0
			health_points--;
	}
}