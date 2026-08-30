// Cooking

if (place_meeting(x, y, obj_player) && cooking = false && global.potato > 0)
{
	if (keyboard_check_pressed(ord("E")))
	{
		cooking = true
		global.potato -= 1
		alarm[0] = 1200
	}
}

// Sprite changing

if (cooking)
{
	sprite_index = spr_cooking_station_on
}
else
{
	sprite_index = spr_cooking_station_off
}