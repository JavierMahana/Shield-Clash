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
		
	// particle effecs
			
	
	var Step = part_type_create();
	// particula a usar
	part_type_shape(Step,pt_shape_square);
	// escala
	part_type_scale(Step,0.01,0.01);
	// duracion de la particula (STEPS)
	part_type_life(Step, 7,10);
	// efecto de disipación
	part_type_alpha3(Step, 0.5, 1, 0);
	// color
	part_type_color1(Step, c_white);
	// velocidad
	part_type_speed(Step,0.1,0.5,0,0);
	// dirección
	part_type_direction(Step,0,359,0,true);
	// gravedad
	part_type_gravity(Step,0.2,90);
	// mezcla
	part_type_blend(Step,true);
	// el efecto
	part_particles_create(global.particleSystem, o_player.x, o_player.bbox_bottom, Step, 1);
		
	}
		
}
#endregion