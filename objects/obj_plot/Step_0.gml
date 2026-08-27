if (planted = false) && place_meeting(x, y, obj_player)
{
    if (keyboard_check_pressed(ord("E")) && global.potato > 0)
    {
        planted = true;
        global.potato -= 1;
		water_phase = 0
    }
}

if (planted = true) && place_meeting(x, y, obj_player) && (keyboard_check_pressed(ord("E"))) && water_limit < 2
{
    if (watered = false)
    {
		watered = true
		water_limit ++
		alarm[0] = 14400
		obj_player.sprite_index = spr_watering
		obj_player.alarm[0] = 150
    }
}

if (water_phase = 4) && keyboard_check_pressed(ord("E"))
{
	planted = false
	global.potato += 2
	water_phase = - 1
}





if (water_phase > 4)
{
	water_phase = 4
}