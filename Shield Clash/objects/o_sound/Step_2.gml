if !audio_is_playing(music_build)
{
	if(!audio_is_playing(music_loop))
	{
		alarm_set(0,1);
	}
}