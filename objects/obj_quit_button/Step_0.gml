if (mouse_check_button_pressed(mb_left))
{
    var inst = instance_position(mouse_x, mouse_y, obj_quit_button);

    if (inst != noone)
    {
        game_end()
    }
}