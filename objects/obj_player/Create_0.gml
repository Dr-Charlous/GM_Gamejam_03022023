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
dashkey = false;
can_dash = true;
is_dashing = false;
dash_spd = 12;
dash_distance = 11;

// Assassin
assassin_spd = 3;

// States
enum PlayerState {
	Idle,
	Walk,
	Dead,
	Assassin
}

state = PlayerState.Idle;
last_state = PlayerState.Walk;

state_array[PlayerState.Idle] = state_player_idle;
state_array[PlayerState.Walk] = state_player_walk;
state_array[PlayerState.Dead] = state_player_dead;
state_array[PlayerState.Assassin] = state_player_assassin;