
var Particula = part_type_create();
// particula a usar
part_type_sprite(Particula,Conjurador_missile, image_number,1,true);
// escala
part_type_scale(Particula,0.5,0.5);
// duracion de la particula (STEPS)
part_type_life(Particula, 0.5,5);
// efecto de disipación
part_type_alpha3(Particula, 0.01, 1, 0);
// color
part_type_color1(Particula, c_green);
// velocidad
part_type_speed(Particula, 2, 2 ,0 ,0);
// mezcla
part_type_blend(Particula,true);
// el efecto
part_particles_create(global.particleSystem, x, y, Particula, 1);