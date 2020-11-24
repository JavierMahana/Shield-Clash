var Particula = part_type_create();
// particula a usar
part_type_shape(Particula,pt_shape_square);
// escala
part_type_scale(Particula,0.02,0.02);
// duracion de la particula (STEPS)
part_type_life(Particula, 1,20);
// efecto de disipación
part_type_alpha3(Particula, 0.1, 1, 0);
// color
part_type_color3(Particula, c_red,c_orange,c_yellow);
// velocidad
part_type_speed(Particula,0.1,0.5,0,0);
// dirección
part_type_direction(Particula,0,359,0,true);
// rotación
part_type_orientation(Particula,0,359,0.1,0,true);
// gravedad

//angulo
var ang = -point_direction(x, y, global.player_x, global.player_y);

part_type_gravity(Particula,0.1,ang);
// mezcla
part_type_blend(Particula,true);


var xPos = x + random_range(-4,4);
var yPos = y + random_range(-4,4);
// el efecto
part_particles_create(global.particleSystem, xPos, yPos, Particula, 5);