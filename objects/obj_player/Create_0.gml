// Player Variables
spd = 2.4;

// States
enum PlayerState {
	Idle,
	Walk
}

state = PlayerState.Idle;

state_array[PlayerState.Idle] = state_player_idle;
state_array[PlayerState.Walk] = state_player_walk;