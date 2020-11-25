// cantidad máxima de sonidos permitidos
audio_channel_num(128);
audio_group_load(sfx_shieldgroup);
audio_group_load(pasito);
audio_group_load(EnemySounds);
if room !=r_MainMenu 
{
	audio_stop_all();
	audio_play_sound(music_build, 100, false);
}
if room == r_MainMenu
{
	audio_stop_all();
	audio_play_sound(music_menu,100, true);
}
alarm[0] = -1;