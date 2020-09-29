// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function position_to_node_x()
{
	var movementMap = instance_find(o_movementMap, 0);
	if(movementMap == noone)
	{
		show_debug_message("THERE IS NO MOVWEMENT MAP IN THE ROOM!")
		return;
	}
	var origin = movementMap.x;
	return floor( (x - origin) / movementMap._nodeWidth) - 1;
}



function position_to_node_y()
{
	var movementMap = instance_find(o_movementMap, 0);
	if(movementMap == noone)
	{
		show_debug_message("THERE IS NO MOVWEMENT MAP IN THE ROOM!")
		return;
	}
	var origin = movementMap.y;
	return floor( (y - origin) / movementMap._nodeWidth) - 1;
}

function position_to_node()
{
	var nodeX = position_to_node_x();
	var nodeY = position_to_node_y();
	 
	return new Vector2( nodeX, nodeY );
}



function get_map_value(nodeX, nodeY)
{
	var movementMap = instance_find(o_movementMap, 0);
	if(movementMap == noone)
	{
		show_debug_message("THERE IS NO MOVWEMENT MAP IN THE ROOM!")
		return;
	}
	
	if(movementMap._nodesX <= nodeX || nodeX < 0)
	{
		show_debug_message("THE MOVEMENT MAP DONT HAVE THE " + string(nodeX) + "|" + string(nodeY) + " NODE!")
		return;
	}
	else if(movementMap._nodesY <= nodeY || nodeY < 0)
	{
		show_debug_message("THE MOVEMENT MAP DONT HAVE THE " + string(nodeX) + "|" + string(nodeY) + " NODE!")
		return;
	}
	else
	{
		return movementMap._movementMap[nodeX, nodeY];
	}
}