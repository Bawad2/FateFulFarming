if (place_meeting(x, y, obj_player) && cooking = false)
{
	(keyboard_check_pressed(ord("E")))
	{
		cooking = true
		global.potato -= 1
		alarm[0] = 3600
	}
}