target_room = 0;

// Down
if (x == 240 && y == 480) {
	target_room = 3;
}

// Right
if (x == 480 && y == 240) {
	target_room = 1;
}

// Up
if (x == 240 && y == 0) {
	target_room = -3;
}

// Left
if (x == 0 && y == 240) {
	target_room = -1;
}