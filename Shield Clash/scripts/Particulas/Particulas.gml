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
			part_type_shape( particula0, pt_shape_pixel);
			// duracion de la particula (STEPS)
			part_type_life(particula0, 10,20);
			// efecto de disipación
			part_type_alpha3(particula0, 0.5, 1, 0);
			// tamaño(importa)
			part_type_size(particula0, 0.05,0.05,0.01,1);	;
			part_particles_create(global.particleSystem, o_player.bbox_right, o_player.y, particula0, 1);
			part_particles_create(global.particleSystem, o_player.bbox_left, o_player.y, particula0, 1);
		}
	}
	// Al impactar un enemigo
	if(place_meeting(self.x, self.y, o_enemy) or place_meeting(self.x, self.y, o_enemy_c))
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
	

}