if (keyboard_check(ord("R")))
{
	game_restart()
}

if (keyboard_check(ord("T")))
{
	game_end()
}

if (keyboard_check(ord("Y")))
{
	global.potato += 10
}

if (keyboard_check(ord("U")))
{
	obj_plot.watered = false
	obj_plot.water_phase ++
	obj_plot.water_limit ++
}


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

/*alpha = global.min / 100
depth = -100*/

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
