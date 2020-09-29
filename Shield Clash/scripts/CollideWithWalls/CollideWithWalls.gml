// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function collide_x (desiredX, objIndex)
{
	
	with(objIndex)
	{
		
		var checkingX = desiredX;
		
		var directionX = desiredX - x;

			
		while(place_meeting(checkingX, y, o_wall))
		{
			if(directionX == 0)
			{
				var wall = instance_place(checkingX, y, o_wall);
				directionX = sign(wall.x - x);
			}
			checkingX -= directionX;
		}
		
		
		return checkingX;
	}
	
}


function collide_y (desiredY, objIndex)
{
	
	with(objIndex)
	{
		
		var checkingY = desiredY;
		
		var directionY = desiredY - y;

			
		while(place_meeting(x, checkingY, o_wall))
		{
			if(directionY == 0)
			{
				var wall = instance_place(x, checkingY, o_wall);
				directionY = sign(wall.x - x);
			}
			checkingY -= directionY;
		}
		
		
		return checkingY;
	}
	
}
