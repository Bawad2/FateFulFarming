// Room changing when click

if (mouse_check_button_pressed(mb_left))
{
    var inst = instance_position(mouse_x, mouse_y, obj_menu_button);

    if (inst != noone)
    {
		game_restart()
    }
}