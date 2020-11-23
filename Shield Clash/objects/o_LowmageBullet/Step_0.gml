
var Particula = part_type_create();
// particula a usar
part_type_shape(Particula,pt_shape_flare);
// escala
part_type_scale(Particula,0.5,0.5);
// duracion de la particula (STEPS)
part_type_life(Particula, 1,10);
// efecto de disipación
part_type_alpha3(Particula, 0.1, 1, 0);
// color
part_type_color1(Particula,c_green);
// velocidad
part_type_speed(Particula, 0.01, 0.05 ,0, 0);
// orientacion
part_type_orientation(Particula,0,359,0,0,true);
// mezcla
part_type_blend(Particula,true);
// el efecto
part_particles_create(global.particleSystem, x, y,Particula, 1);