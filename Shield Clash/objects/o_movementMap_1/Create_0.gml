global.grid = mp_grid_create(0,0,room_width/16,room_height/16,16,16);
mp_grid_add_instances(global.grid,o_notWalkable,true);
_debugObj = false;

//_mapWidth = 1000;
//_mapHeight = 1000;

_nodesX = 36;
_nodesY = 21;


_nodeWidth = 32;//_mapWidth / _nodesX;
_nodeHeigth = 32;//_mapHeight / _nodesY;

for(var yy = 0; yy < _nodesY; yy++)
{
	for(var xx = 0; xx < _nodesX; xx++)
	{
		var minX = x + _nodeWidth * xx;
		var maxX = x + _nodeWidth * (xx + 1);
		var minY = y + _nodeHeigth * yy;
		var maxY = y + _nodeHeigth * (yy + 1);
		
		var inst = collision_rectangle(minX, minY, maxX, maxY, o_notWalkable, false, true);
		if(inst == noone)
		{
			
			if(_debugObj)
			{
				var markInst = instance_create_layer((minX + maxX)/2 , (minY + maxY)/2, "Debug", o_markWalkable);
				//instance_
				markInst.image_xscale = _nodeWidth/2;
				markInst.image_yscale = _nodeHeigth/2;
			}
			_movementMap[xx, yy] = true;
			//show_debug_message(string(xx) + "|" + string(yy) + " is clear");
			
		}
		else
		{
			if(_debugObj)
			{
				var markInst = instance_create_layer((minX + maxX)/2 , (minY + maxY)/2, "Debug", o_markNotWalkable);
				markInst.image_xscale = _nodeWidth/2;
				markInst.image_yscale = _nodeHeigth/2;
			}
			
			_movementMap[xx, yy] = false;
			//show_debug_message(string(xx) + "|" + string(yy) + " have a wall");
		}
	}
}

