/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
<<<<<<< HEAD
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
=======

missileSound = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(missileSound, x, y, 0);
audio_emitter_falloff(missileSound, 0, 100, 2);

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
>>>>>>> ramajoaco
}

audio_play_sound_on(missileSound, currentSound, false, 50);
lastSfx = orderSfx;