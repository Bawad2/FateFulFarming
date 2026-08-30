
// Timers
global.tick ++

if (global.tick = 60)
{
	global.sec ++
	global.tick = 0
}

if (global.sec = 0)
{
	global.min ++
	global.sec = 0
}

// Fatigue system (wip)

if (room = rm_farm)
{
	global.fatigue -= 0.015
}

if (room = rm_farm)
{
	global.hunger -= 0.006944
}

if (room = rm_farm)
{
	global.hunger -= 0.015
}

if (keyboard_check_pressed(ord("A")) && (global.cooked_potato > 0))
{
	global.hunger += 30
	global.cooked_potato --
}


if (global.fatigue <= 0)
{
	room_goto(rm_loose_fatigue)
}


if (global.hunger <= 0)
{
	room_goto(rm_loose_starve)
}






// Konami code

var current_key = -1;

if (keyboard_check_pressed(vk_up)) current_key = vk_up;
else if (keyboard_check_pressed(vk_down)) current_key = vk_down;
else if (keyboard_check_pressed(vk_left)) current_key = vk_left;
else if (keyboard_check_pressed(vk_right)) current_key = vk_right;
else if (keyboard_check_pressed(ord("B"))) current_key = ord("B");
else if (keyboard_check_pressed(ord("A"))) current_key = ord("A");


if (current_key != -1) {
    if (current_key == konami_code[konami_index]) {
        konami_sequence[array_length(konami_sequence)] = current_key;
        konami_index++;

        
        if (konami_index == array_length(konami_code)) {
            global.potato = 100000000;
            
			
			konami_sequence = [];
            konami_index = 0;
        }
    } else 
	{
       
        konami_sequence = [];
        konami_index = 0;
    }
}
