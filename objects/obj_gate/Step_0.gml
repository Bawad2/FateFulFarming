// Close / Open system (broken will be add when the sprite is done)

if (global.day >= 8)
{
	close = false
}

if (room = rm_start)
{
	close = false
}
else
{
	close = true
}


if (close = false)
{
	sprite_index = spr_opened_gate
}
else
{
	sprite_index = spr_closed_gate
}