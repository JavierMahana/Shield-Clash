/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_health -= 1;

if(_health <= 0)
{
	instance_destroy(other);
	instance_create_layer(x,y,"Instances",o_corpse);
	instance_destroy(self);
}
