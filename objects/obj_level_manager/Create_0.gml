randomize();
levels_1 = [rm_level1];
levels_2 = [rm_level2A, rm_level2B, rm_level2C];
levels_3 = [rm_level3A, rm_level3B, rm_level3C, rm_level3D, rm_level3E];
		  
shuffle_array(levels_2);
shuffle_array(levels_3);

levels_list = [];
levels_list[0] = levels_1[0];
levels_list[1] = levels_2[0];
levels_list[2] = levels_3[0];
levels_list[3] = levels_2[1];
levels_list[4] = levels_2[2];
levels_list[5] = levels_3[1];
levels_list[6] = levels_3[2];
levels_list[7] = levels_3[3];
levels_list[8] = levels_3[4];