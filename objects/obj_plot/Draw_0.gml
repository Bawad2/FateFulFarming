// Crops draw

if (planted)
{
	draw_sprite(spr_potato, water_phase, x, y)
}
else
{
	draw_sprite(spr_void, 0, x, y)
}


// Draw water sprite

if (watered)
{
	draw_sprite(spr_watered, 0, x, y)
}
else
{
	draw_sprite(spr_void, 0, x, y)
}