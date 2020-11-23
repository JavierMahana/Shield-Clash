
var Particula = part_type_create();
// particula a usar
part_type_shape(Particula,pt_shape_square);
// escala
part_type_scale(Particula,0.01,0.01);
// duracion de la particula (STEPS)
part_type_life(Particula, 20,20);
// efecto de disipación
part_type_alpha3(Particula, 0.5, 1, 0);
// color
part_type_color1(Particula, c_white);
// mezcla
part_type_blend(Particula,true);
// el efecto
part_particles_create(global.particleSystem, x, y, Particula, 1);