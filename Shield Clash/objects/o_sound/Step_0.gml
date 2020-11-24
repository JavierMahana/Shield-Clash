if(room != r_MainMenu)
{
	if !(instance_exists(o_player)) 
	{
		if (!audio_is_playing(music_death))
		{
			audio_stop_all();			
			alarm_set(1,1);
		}		
	}		
	else if (!audio_is_playing(music_build))
	{
		if (!audio_is_playing(music_loop))
		{
			alarm_set(0,1);
		}
	}
	
}

	