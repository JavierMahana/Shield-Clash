missileSound = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(missileSound, x, y, 0);
audio_emitter_falloff(missileSound, 1, 50, 2);

while(orderSfx == lastSfx)
{
	orderSfx = irandom(7);
}
switch(orderSfx)
{
	case 0: currentSound = sfx_shieldDO;
			break;
	case 1: currentSound = sfx_shieldRE;
			break;
	case 2: currentSound = sfx_shieldMI;
			break;
	case 3: currentSound = sfx_shieldFA;
			break;
	case 4: currentSound = sfx_shieldSOL;
			break;
	case 5: currentSound = sfx_shieldLA;
			break;
	case 6: currentSound = sfx_shieldSI;
	break;
	default: currentSound = sfx_shieldDO;
}

audio_play_sound_on(missileSound, currentSound, true, 50);
lastSfx = orderSfx;