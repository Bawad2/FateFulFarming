if (mouse_check_button_pressed(mb_left))
{
    var inst = instance_position(mouse_x, mouse_y, obj_back_button);

    if (inst != noone)
    {
        room_goto(rm_credits);
    }
}