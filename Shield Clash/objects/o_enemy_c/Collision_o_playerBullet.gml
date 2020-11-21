// Flash
var pd = point_direction(x, y, other.x, other.y);
var dd = angle_difference(image_angle, pd);
bulletDirection -= min(abs(dd), 10) * sign(dd);
flashAlpha = 1;

	
// health
_health -= 1;
instance_destroy(other);

if(_health <= 0)
{
	audio_falloff_set_model(audio_falloff_linear_distance_clamped);
	audio_emitter_position(sfx_enemyDeath, x, y, 0);
	audio_emitter_falloff(sfx_enemyDeath, 100, 500, 1);
	audio_play_sound_on(sfx_enemyDeath, sfx_enemyDeath, false, 10);
	deadCount = 10;
	dead = true;
}