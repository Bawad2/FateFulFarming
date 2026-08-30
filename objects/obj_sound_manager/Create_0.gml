// Music def (muted for now)

if (room = rm_menu)
{
	audio_play_sound(msc_menu, 1, true)
}
else
{
	audio_stop_sound(msc_menu)
}


if (room = rm_start)
{
	audio_play_sound(msc_farm, 1, true)
}
else if (room = rm_end)
{
	audio_stop_sound(msc_farm)
}

if (room = rm_end)
{
	audio_play_sound(msc_end, 1, true)
}
else
{
	audio_stop_sound(msc_end)
}