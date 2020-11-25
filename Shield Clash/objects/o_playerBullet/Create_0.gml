
particula2 = part_type_create();
// particula a usar
part_type_shape( particula2, pt_shape_pixel);
// duracion de la particula (STEPS)
part_type_life(particula2, 10,20);
// efecto de disipación
part_type_alpha3(particula2, 0.5, 1, 1);
// color
//part_type_colour_rgb(particula2, 100, 100, 200, 200, 255, 255);
part_type_color1(particula2, c_white);
// tamaño(importa)
part_type_size(particula2, 0,1,0.1,0);