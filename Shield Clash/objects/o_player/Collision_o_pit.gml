
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
