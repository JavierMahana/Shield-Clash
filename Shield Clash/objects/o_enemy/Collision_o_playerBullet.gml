/// Al colisionar con un proyectil básico recibe 1 de daño y el proyectil es destruido

health -= 1;
instance_destroy(other);

if(health <= 0)
{
	instance_destroy();
}
