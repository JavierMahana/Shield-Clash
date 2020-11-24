if(Time >= 20)
{
	var Dust = part_type_create();
	// particula a usar
	part_type_shape(Dust,pt_shape_square);
	// escala
	part_type_scale(Dust,0.1,0.1);
	// duracion de la particula (STEPS)
	part_type_life(Dust, 100,500);
	// efecto de disipación
	part_type_alpha3(Dust, 1, 0.1, 0);
	// color
	part_type_color1(Dust, c_ltgrey);
	// velocidad
	part_type_speed(Dust,0.01,0.1,0,0);
	// dirección
	part_type_direction(Dust,0,240,0,true);
	// rotación
	part_type_orientation(Dust,0,180,1,0,true);
	// gravedad
	part_type_gravity(Dust,0.01,240);
	// mezcla
	part_type_blend(Dust,true);
	// el efecto
	var DustX = x + random_range(-400,0);
	part_particles_create(global.particleSystem, DustX, y, Dust, 1);
	Time = 0;
}
else
{
	Time++
}
