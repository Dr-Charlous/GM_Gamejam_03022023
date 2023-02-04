switch (room) {
    case levels_list[0]:
		instance_create_depth(240, 480, depth, obj_door);
        instance_create_depth(480, 240, depth, obj_door);
        break;
    case levels_list[1]:
        instance_create_depth(240, 480, depth, obj_door);
        instance_create_depth(480, 240, depth, obj_door);
        instance_create_depth(0, 240, depth, obj_door);
		break;
	case levels_list[2]:
		instance_create_depth(240, 480, depth, obj_door);
        instance_create_depth(0, 240, depth, obj_door);
        break;
	case levels_list[3]:
		instance_create_depth(240, 480, depth, obj_door);
        instance_create_depth(480, 240, depth, obj_door);
        instance_create_depth(240, 0, depth, obj_door);
        break;
	case levels_list[4]:
		instance_create_depth(240, 480, depth, obj_door);
        instance_create_depth(480, 240, depth, obj_door);
        instance_create_depth(240, 0, depth, obj_door);
        instance_create_depth(0, 240, depth, obj_door);
        break;
	case levels_list[5]:
		instance_create_depth(240, 480, depth, obj_door);
        instance_create_depth(240, 0, depth, obj_door);
        instance_create_depth(0, 240, depth, obj_door);
        break;
	case levels_list[6]:
		instance_create_depth(240, 0, depth, obj_door);
        instance_create_depth(480, 240, depth, obj_door);
        break;
	case levels_list[7]:
		instance_create_depth(240, 0, depth, obj_door);
        instance_create_depth(480, 240, depth, obj_door);
		instance_create_depth(240, 0, depth, obj_door);
        break;
	case levels_list[8]:
		instance_create_depth(240, 0, depth, obj_door);
        instance_create_depth(0, 240, depth, obj_door);
        break;
}