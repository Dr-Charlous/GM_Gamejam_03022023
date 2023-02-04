// Player Variables
spd = 2.4;
hspd = 0;
vspd = 0;
facing = 1;
gamepad_id = 0;
timer = 0;
death_time = 420; // in frames (1 seconde = 60 frames)

// States
enum PlayerState {
	Idle,
	Walk,
	Dead
}

state = PlayerState.Idle;

state_array[PlayerState.Idle] = state_player_idle;
state_array[PlayerState.Walk] = state_player_walk;
state_array[PlayerState.Dead] = state_player_dead;