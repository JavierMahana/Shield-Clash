/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_orderSfx = irandom(6);


switch(_orderSfx)
{
	case 0: audio_play_sound(sfx_shieldDO,10,false);
			break;
	case 1: audio_play_sound(sfx_shieldFA,10,false);
			break;
	case 2: audio_play_sound(sfx_shieldLA,10,false);
			break;
	case 3: audio_play_sound(sfx_shieldMI,10,false);
			break;
	case 4: audio_play_sound(sfx_shieldRE,10,false);
			break;
	case 5: audio_play_sound(sfx_shieldSI,10,false);
			break;
	default: audio_play_sound(sfx_shieldSOL,10,false);
}
