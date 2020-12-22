/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_frameCounter += 1;
if(_frameCounter >= _framesToCreateBullet)
{
	_frameCounter = 0;
	var instance = instance_create_layer(x,y+16,"Instances", o_piromanoBullet);
	instance.speed = _bulletSpeed;
	instance.direction = 270;
	instance.image_angle = 270;
}