/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(_spawnCounter >= _spawnTime)
{
	instance_create_layer(x,y,"Instances", _entityToSpawn);
	instance_destroy();
}
else
{
	_spawnCounter += delta_time/100000;
}