/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_orderSfx = irandom(6);
switch(_orderSfx)
{
	case 0: audio_play_sound(sfx_shield1,10,false);
			break;
	case 1: audio_play_sound(sfx_shield2,10,false);
			break;
	case 2: audio_play_sound(sfx_shield3,10,false);
			break;
	case 3: audio_play_sound(sfx_shield4,10,false);
			break;
	case 4: audio_play_sound(sfx_shield5,10,false);
			break;
	case 5: audio_play_sound(sfx_shield6,10,false);
			break;
	default: audio_play_sound(sfx_shield1,10,false);
}
