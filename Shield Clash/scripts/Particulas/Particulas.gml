// Script que genera particula, oh wow!
function Particulas()
{
	// Al usar Dodge
	if(instance_exists(o_player)) 
	{
		if (o_player._onDodge)
		{
			var particula0 = part_type_create();
			// particula a usar
			part_type_shape( particula0, pt_shape_flare);
			// duracion de la particula (STEPS)
			part_type_life(particula0, 10,20);
			// efecto de disipación
			part_type_alpha3(particula0, 0.5, 1, 0);
			// color
			part_type_color3(particula0, c_blue, (c_blue + c_white), c_white);
			// tamaño(importa)
			part_type_size(particula0, 0.05,0.75,0.01,0);
			global.particulaDash = particula0;
		}
	}
	// Al impactar un enemigo
	if(place_meeting(self.x, self.y, o_enemy))
	{
		var particula1 = part_type_create();
		// particula a usar
		part_type_shape( particula1, pt_shape_explosion);
		// duracion de la particula (STEPS)
		part_type_life(particula1, 10,20);
		// efecto de disipación
		part_type_alpha3(particula1, 0.5, 1, 0);
		// color
		part_type_colour_rgb(particula1, 100, 100, 200, 200, 255, 255);
		// tamaño(importa)
		part_type_size(particula1, 0.05,0.5,0.05,0);
		global.particulaHit = particula1;	
	}
	// Bala en movimiento
	if (!place_meeting(self.x, self.y, o_enemy))
	{
		var particula2 = part_type_create();
		// particula a usar
		part_type_shape( particula2, pt_shape_pixel);
		// duracion de la particula (STEPS)
		part_type_life(particula2, 10,20);
		// efecto de disipación
		part_type_alpha3(particula2, 0.5, 1, 1);
		// color
		part_type_colour_rgb(particula2, 100, 100, 200, 200, 255, 255);
		// tamaño(importa)
		part_type_size(particula2, 0,1,0.1,0);
		global.particulaBullet = particula2;	
	}

}