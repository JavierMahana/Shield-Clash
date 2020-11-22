/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_xSalvavidas = 10;
_ySalvavidas = 10;

_salvavidasSprite = s_salvavidas2;

var salvavidasOffset =54;

for(var i = 0; i < global.playerSalvavidas; i++)
{
	draw_sprite(_salvavidasSprite, 0, _xSalvavidas + salvavidasOffset*i, _ySalvavidas); 
}
