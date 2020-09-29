/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_mapWidth = 1000;
_mapHeight = 1000;

_nodesX = 12;
_nodesY = 12;


_nodeWidth = _mapWidth / _nodesX;
_nodeHeigth = _mapHeight / _nodesY;

for(var yy = 0; yy < _nodesY; yy++)
{
	for(var xx = 0; xx < _nodesX; xx++)
	{
		var minX = _nodeWidth * xx;
		var maxX = _nodeWidth * (xx + 1);
		var minY = _nodeHeigth * yy;
		var maxY = _nodeHeigth * (yy + 1);
		
		var wallInst = collision_rectangle(minX, minY, maxX, maxY, o_notWalkable, false, true);
		if(wallInst == noone)
		{
			_movementMap[xx, yy] = true;
			show_debug_message(string(xx) + "|" + string(yy) + " is clear");
			
		}
		else
		{
			_movementMap[xx, yy] = false;
			show_debug_message(string(xx) + "|" + string(yy) + " have a wall");
		}
	}
}

