// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
function collide(xInput)
{
	if(place_meeting(x + xInput ,y,o_wall))
	{
		x = xprevious;
		y = yprevious;
	}
	else
	{
	
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
