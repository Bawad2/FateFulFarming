if (planted = true)
{
	draw_sprite(spr_potato, water_phase, x, y)
}
else
{
	draw_sprite(spr_void, 0, x, y)
}

if (watered = true)
{
	draw_sprite(spr_watered, 0, x, y)
}
else
{
	draw_sprite(spr_void, 0, x, y)
}