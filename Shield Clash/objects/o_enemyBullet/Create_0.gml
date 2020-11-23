
_reflectionSprite = Lowmage_missile_player;
show_debug_message(sprite_index);
particulas = 0;
// flechas 
if(sprite_index == Archer_missile or Spearman_missile)
{
	
	particulas = 1;
}
// fireballs 
if(asset_get_index(sprite_index) == asset_get_index(Piromano_missile))
{
	particulas = 2;
}
// lowmage 
if(asset_get_index(sprite_index) == asset_get_index(Lowmage_missile))
{
	particulas = 3;
}
// conjurador
if(asset_get_index(sprite_index) == asset_get_index(Conjurador_missile))
{
	particulas = 4;
}
	
