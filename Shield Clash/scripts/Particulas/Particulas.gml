// Script que genera particula, oh wow!
function Particulas(String)
{
	
	// flechas, virotes y lanzas
	if(String == Spearman_missile or Archer_missile)
	{
		var particula1 = part_type_create();
		// particula a usar
		part_type_shape( particula1, pt_shape_line);
		// duracion de la particula (STEPS)
		part_type_life(particula1, 10,20);
		// efecto de disipación
		part_type_alpha3(particula1, 0.5, 1, 0);
		// color
		part_type_colour_rgb(particula1, 255, 255, 255, 255, 255, 255);
		// tamaño(importa)
		part_type_size(particula1, 0.05,0.05,0,0);
		// orientación
		// direccion
		part_type_direction(particula1, 0, 359, 0, 0);
		return particula1;
	}
	// fireballs 
	if(String == Piromano_missile)
	{
		var particula1 = part_type_create();
		// particula a usar
		part_type_shape( particula1, pt_shape_line);
		// duracion de la particula (STEPS)
		part_type_life(particula1, 10,20);
		// efecto de disipación
		part_type_alpha3(particula1, 0.5, 1, 0);
		// color
		part_type_colour_rgb(particula1, 255, 255, 255, 255, 255, 255);
		// tamaño(importa)
		part_type_size(particula1, 0.05,0.05,0,0);
		// orientación
		// direccion
		part_type_direction(particula1, 0, 359, 0, 0);
		return particula1;
	}
	// lowmage 
	if(String == Lowmage_missile)
	{
		var particula1 = part_type_create();
		// particula a usar
		part_type_shape( particula1, pt_shape_line);
		// duracion de la particula (STEPS)
		part_type_life(particula1, 10,20);
		// efecto de disipación
		part_type_alpha3(particula1, 0.5, 1, 0);
		// color
		part_type_colour_rgb(particula1, 255, 255, 255, 255, 255, 255);
		// tamaño(importa)
		part_type_size(particula1, 0.05,0.05,0,0);
		// orientación
		// direccion
		part_type_direction(particula1, 0, 359, 0, 0);
		return particula1;
	}
	// conjurador
		if(String == Conjurador_missile)
	{
		var particula1 = part_type_create();
		// particula a usar
		part_type_shape( particula1, pt_shape_line);
		// duracion de la particula (STEPS)
		part_type_life(particula1, 10,20);
		// efecto de disipación
		part_type_alpha3(particula1, 0.5, 1, 0);
		// color
		part_type_colour_rgb(particula1, 255, 255, 255, 255, 255, 255);
		// tamaño(importa)
		part_type_size(particula1, 0.05,0.05,0,0);
		// orientación
		// direccion
		part_type_direction(particula1, 0, 359, 0, 0);
		return particula1;
	}
	

}