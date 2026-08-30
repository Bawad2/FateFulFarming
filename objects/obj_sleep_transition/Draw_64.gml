// Draw black screen
draw_set_color(c_black);
draw_set_alpha(alpha);

draw_rectangle(
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height(),
    false
);


// Draw Day number
if (state == 1)
{
    draw_set_alpha(1);
    draw_set_color(c_white);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        display_get_gui_width() / 2,
        display_get_gui_height() / 2,
        "Day " + string(global.day)
    );
}


// Reset drawing settings
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);