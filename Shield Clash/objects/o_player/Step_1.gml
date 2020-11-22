/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);


if(_onDodge)
{
	var particula0 = part_type_create();
	// particula a usar
	part_type_shape( particula0, pt_shape_pixel);
	// duracion de la particula (STEPS)
	part_type_life(particula0, 10,20);
	// efecto de disipación
	part_type_alpha3(particula0, 0.5, 1, 0);
	// tamaño(importa)
	part_type_size(particula0, 0.05,0.05,0.01,1);	;
	part_particles_create(global.particleSystem, o_player.bbox_right, o_player.y, particula0, 1);
	part_particles_create(global.particleSystem, o_player.bbox_left, o_player.y, particula0, 1);
	if (_horImp != 0)
	{
			sprite_index = K_side_roll;
			if (_horImp == 1)
			{
				 image_xscale = -1;
			}		
	}
	else if (_verImp != 0)
	{
		if(_verImp == 1)
		{
			sprite_index = K_down_roll
		}
		else
		{
			sprite_index = K_up_roll;
		}
	}
	
}
else
{
	_lastSprite = sprite_index;	
}



