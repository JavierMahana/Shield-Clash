/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!_invul)
{
	with(other)
	{
		if(distance_to_point(other.x, other.y) <= other._hurtRadius)
		{
			instance_destroy(other);
		}
	}
		
}
