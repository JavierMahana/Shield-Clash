/// Sin terminar
_reflectionSprite = Lowmage_missile_player;
particulas = 0;
// flechas 
if(sprite_get_name(self) == Spearman_missile or Archer_missile)
{
	particulas = 1;
}
// fireballs 
if(sprite_get_name(self) == Piromano_missile)
{
	particulas = 2;
}
// lowmage 
if(sprite_get_name(self) == Lowmage_missile)
{
	particulas = 3;
}
// conjurador
if(sprite_get_name(self) == Conjurador_missile)
{
	particulas = 4;
}
	
