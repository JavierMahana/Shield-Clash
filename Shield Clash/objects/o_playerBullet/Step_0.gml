/// Efecto de pixeles
if (!place_meeting(x, y, o_enemy) or !place_meeting(x,y, o_enemy_c))
	{		
		part_particles_create(global.particleSystem, x, y, particula2, 1);
	}
