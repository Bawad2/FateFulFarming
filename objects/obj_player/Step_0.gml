//depth setting
depth = -100;

press_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
press_left = keyboard_check(vk_left) or keyboard_check(ord("Q")) || keyboard_check(ord("A"));
press_up = keyboard_check(vk_up) or keyboard_check(ord("Z")) || keyboard_check(ord("W"));
press_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

move_h = press_right - press_left;
move_v = press_down - press_up


hspeed = move_h * walkspd;
vspeed = move_v * walkspd;



if (hspeed != 0) || (vspeed != 0)
{
	sprite_index = spr_walking_player
	moving = true
	alarm[0] = 20
}
else
{
	sprite_index = spr_player
	moving = false
}



if (sprite_index != spr_car)
{
	var _mouse_angle = point_direction(x, y, mouse_x, mouse_y)
	image_angle = _mouse_angle
}

if (place_meeting(x + hspeed, y, obj_invisible_wall))
{
    while (!place_meeting(x + sign(hspeed), y, obj_invisible_wall))
    {
        x += sign(hspeed);
    }
    hspeed = 0;
}

if (place_meeting(x, y + vspeed, obj_invisible_wall))
{
    while (!place_meeting(x, y + sign(vspeed), obj_invisible_wall))
    {
        y += sign(vspeed);
    }
    vspeed = 0;
}





if (place_meeting(x + hspeed, y, obj_gate)) && (obj_gate.close = true)
{
    while (!place_meeting(x + sign(hspeed), y, obj_gate))&& (obj_gate.close = true)
    {
        x += sign(hspeed);
    }
    hspeed = 0;
}

if (place_meeting(x, y + vspeed, obj_gate)) && (obj_gate.close = true)
{
    while (!place_meeting(x, y + sign(vspeed), obj_gate)) && (obj_gate.close = true)
    {
        y += sign(vspeed);
    }
    vspeed = 0;
}



if (place_meeting(x, y, obj_house_detect))
{
	obj_house.sprite_index = spr_void
	obj_bed.sprite_index = spr_bed
	obj_landline.sprite_index = spr_landline
}
else
{
	obj_house.sprite_index = spr_house_ext
	obj_bed.sprite_index = spr_void
	obj_landline.sprite_index = spr_void
}

if ( global.min >= 8)
{
	if (place_meeting(x, y, obj_bed)) && (keyboard_check_pressed(ord("E")))
	{
		obj_plot.day ++
		global.day_ ++
		obj_plot.water_limit = 0
	}
}

if (place_meeting(x, y, obj_dropoff)) && (keyboard_check_pressed(ord("E")))
{
	if (global.potato > 0)
	{
		global.potato -= 1
		global.money ++
	}
}



if (place_meeting(x, y, obj_goto_farm))
{
	room_goto(rm_farm)
}

if (place_meeting(x, y, obj_goto_farm))
{
	room_goto(rm_farm)
}