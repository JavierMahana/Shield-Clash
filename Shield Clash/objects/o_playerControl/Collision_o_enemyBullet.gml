/// muere al colisionar con una bala

if(!_invul)
{
	instance_destroy(other);
	room_restart();
	// instance_destroy crashea el juego por ahora
	// instance_destroy();
	_speed = 0;
}
