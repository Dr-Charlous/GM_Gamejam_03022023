my_transition = instance_create_depth(x,y,depth,obj_transition);
my_transition.intro = false;
my_transition.target_room = other.target_room;
room_goto(obj_level_manager.levels_list[room + my_transition.target_room]);