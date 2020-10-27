
ban_salir = true;

while(ban_salir)
{

	show_debug_message("Busca wn busca");
 
	sign_x = irandom(2);
	sign_y = irandom(2);
	num_pos = irandom(2);
 
	#region //sign of the times
	 if(sign_x == 0)
	 {
		sign_x = -1;
	 } 
	 else 
	 {
		sign_x = 1;
	 }
 
	 if(sign_y == 0)
	 {
		sign_y = -1;
	 }
	 else 
	 {
		sign_y = 1;
	 }
	 #endregion
 
	#region //Posicion

	if(num_pos == 0)
	{
		num_x = irandom(9);
		if(num_x==9)
		{
			num_y = irandom(9);
		}
		else
		{
			num_y = 9;
		}
	
	}
	else
	{
		num_y = irandom(9);
		if(num_y == 9)
		{
			num_x = irandom(9);
		}
		else
		{
			num_x = 9;
		}
	}
 
	#endregion 

	col_pared = place_meeting(global.player_x + (16*num_x*sign_x), global.player_y + (16*num_y*sign_y), o_wall);

	if(!col_pared)
	{
		x = global.player_x + (16*num_x*sign_x);
		y = global.player_y + (16*num_y*sign_y);
		ban_salir = false;
	}
	else
	{
		ban_salir = true;
	}
}

