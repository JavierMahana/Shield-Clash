/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.player_shieldDirection = point_direction(x, y, mouse_x, mouse_y);
if(_onDodge)
{
	Particulas();
	part_particles_create(global.particleSystem, global.player_x, global.player_y, global.particulaDash, 1);
	if (_horImp != 0)
	{
			sprite_index = Knight_Sdodge;
			if (_horImp == 1)
			{
				 image_xscale = -1;
			}		
	}
	else if (_verImp != 0)
	{
		if(_verImp == 1)
		{
			sprite_index = Knight_Ddodge
		}
		else
		{
			sprite_index = Knight_Udodge;
		}
	}
}
else
{
	sprite_index = Knight_idle;	
}
