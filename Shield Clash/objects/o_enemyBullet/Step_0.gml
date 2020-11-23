
switch(particulas)
{
	case 1: 
		#region flechas
		show_debug_message("ArrowLOAD");
		var Particula = part_type_create();
		// particula a usar
		part_type_shape(Particula,pt_shape_pixel);
		// escala
		part_type_scale(Particula,1,1);
		// duracion de la particula (STEPS)
		part_type_life(Particula, 10,50);
		// efecto de disipación
		part_type_alpha3(Particula, 0.1, 1, 0);
		// color
		part_type_color1(Particula, c_white);
		// velocidad
		part_type_speed(Particula,0.1,0.5,0,0);
		// gravedad
		//part_type_gravity(Particula,0.1,90);
		// mezcla
		part_type_blend(Particula,true);
		// el efecto
		part_particles_create(global.particleSystem, x, y, Particula, 1);
		#endregion
		break;
	case 2:
		#region piro
	
		#endregion
		break;
	case 3:
		#region lowmage
		
		#endregion
		break;
	case 4:
		#region conjurador
	
		#endregion
		break;
	default:
}
