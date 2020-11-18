
//room_restart();
if(!_invul)
{
	if(distance_to_object(other) <= _hurtRadius)
	{
		instance_destroy(other);
		instance_destroy();
	}	
}
