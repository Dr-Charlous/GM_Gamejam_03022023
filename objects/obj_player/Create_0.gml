// Player Variables
spd = 2.4;
original_spd = spd;
hspd = 0;
vspd = 0;
facing = 1;
vertical_facing = 1;
gamepad_id = 0;
timer = 0;
death_time = 420; // in frames (1 seconde = 60 frames)

// Dash
actionkey = false;
can_dash = true;
is_dashing = false;
dash_spd = 12;
dash_distance = 11;

// Shockwave
can_shockwave = true;
is_shockwaving = false;
shockwave_time = 40;
shockwave_spd = 2.5; // speed of the character in shockwave state

// Shoot
can_shoot = true;
is_shooting = false;
shoot_time = 26;
shoot_spd = 2.05; // speed of the character in shoot state

// Assassin
assassin_spd = 3; // speed of the character in assassin state

// States
enum PlayerState {
	Walk,
	Dead,
	Assassin,
	ShockWave,
	Shoot
}

state = PlayerState.Walk;
last_state = PlayerState.Walk;

state_array[PlayerState.Walk] = state_player_walk;
state_array[PlayerState.Dead] = state_player_dead;
state_array[PlayerState.Assassin] = state_player_assassin;
state_array[PlayerState.ShockWave] = state_player_shockwave;
state_array[PlayerState.Shoot] = state_player_shoot;