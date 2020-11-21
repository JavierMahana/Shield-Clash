// cantidad máxima de sonidos permitidos
audio_channel_num(100);
audio_group_load(sfx_shieldgroup);
audio_group_load(pasito);
audio_group_load(EnemySounds);
if !audio_is_playing(music_build) 
{
	audio_stop_all();
	audio_play_sound(music_build, 100, false);
}
alarm[0] = -1;