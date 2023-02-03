function get_gamepad_id(){
var _maxpads = gamepad_get_device_count();
	for (var i = 0; i < _maxpads; i++)
	{
	    if (gamepad_is_connected(i))
	    {
	        gamepad_id = i;
			break;
	    }
	}
}