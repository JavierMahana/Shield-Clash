/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (cont <= 30)
{
	cont++;
	 draw_sprite_stretched(s_energyBar,frame,x+1046,y,(global._shieldCurrCharge/global._shieldMaxCharge)*_barWidth, _barHeight);	
}
if (cont >= 30)
{
	if(frame == 9)
	{
		frame = 0;
	}
	else
	{
		frame++;
	}
	cont = 0;
}
	



draw_sprite_stretched(s_energyOutline,0,x+1046,y,_barWidth, _barHeight);