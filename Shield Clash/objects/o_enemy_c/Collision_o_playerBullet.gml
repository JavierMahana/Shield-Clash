
_health -= 1;
instance_destroy(other);

if(_health <= 0)
{
	instance_create_layer(x,y,"Instances",o_corpse);
	instance_destroy(self);
}