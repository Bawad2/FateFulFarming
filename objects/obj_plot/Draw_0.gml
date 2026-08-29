draw_self();
//Highlight if selected
if selected { draw_sprite_ext( sprite_index, x, y, image_index, 2, 2,image_angle, c_teal, 1) } 


// Crops draw

if (planted = true)
{
	draw_sprite(spr_potato, water_phase, x, y)
}
else
{
	draw_sprite(spr_void, 0, x, y)
}


// Draw water sprite

if (watered = true)
{
	draw_sprite_stretched(spr_watered, 0, x, y,128,128)
}
