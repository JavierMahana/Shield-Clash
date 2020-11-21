/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.player_x = x;
global.player_y = y;
global.player_speed = _speed;


if (_verImp == 0 and _horImp == 0 and !_onDodge)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
}
#region StepSounds


if (not _onDodge)
{
	
	if  keyboard_check(ord("A")) or keyboard_check(ord("D")) or
		keyboard_check(ord("W")) or keyboard_check(ord("S")) 
	{	
		// Step sounds
		if(contadorPaso >= 15)
		{
			contadorPaso = 0;
		}
		else
		{			
			contadorPaso++;
		}
		if (contadorPaso == 0)
		{
				while(orderSfx == lastSfx)
			{
				orderSfx = irandom(8);
			}
		
			stepSound = audio_emitter_create();
			audio_falloff_set_model(audio_falloff_linear_distance);
			audio_emitter_position(stepSound, x, y, 0);
		
			switch(orderSfx)
			{
				case 0: currentSound = paso1;
						break;
				case 1: currentSound = paso2;
						break;
				case 2: currentSound = paso3;
						break;
				case 3: currentSound = paso4;
						break;
				case 4: currentSound = paso5;
						break;
				case 5: currentSound = paso6;
						break;
				case 6: currentSound = paso7;
						break;
				case 7: currentSound = paso8;
						break;
				default: currentSound = paso1;
			}
		
			audio_play_sound_on(stepSound, currentSound, false, 5);
			lastSfx = orderSfx;
			
		}		
		
	}
		
}
#endregion