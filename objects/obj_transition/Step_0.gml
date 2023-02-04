/// Progress the transition


// Make sure the depth is lower than the player's
depth = obj_player.depth - 1;

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent - max((percent/12),0.005));
	}
	else
	{
		percent = min(1,percent + max(((1 - percent)/12),0.005));
	}
	
	if (percent == 1) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				if (intro)
					instance_destroy();
				else 
					room_restart();
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}