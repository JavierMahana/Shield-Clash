


#region SPAWN ENEMIES

var currEnemyCount = instance_number(o_enemy) + instance_number(o_spawner);
var increaseRatio = max((_maxIncreaseRatio - currEnemyCount), 1);
//var increaseRatio = max(_maxIncreaseRatio - (15*log2(currEnemyCount - 1)), 1);
//increaseRatio = 15*log2(currEnemyCount);
show_debug_message("ratio: "+ string(increaseRatio) + " cantidad de enemigos: " + string(currEnemyCount));

if(_currentMaxEnemies >= currEnemyCount)
{
	_counterSpawnEnemy += increaseRatio;
}
else
{
	_counterSpawnEnemy = 0;
}


//show_debug_message("contador: "+ string(_counterSpawnEnemy) + " tiempo de spawn: " + string(_currentSpawnTime));

if(_counterSpawnEnemy >= _currentSpawnTime)
{
	_counterSpawnEnemy = 0;
	
	
	var spawnNodeX = 0;
	var spawnNodeY = 0;
	do
	{
		spawnNodeX = random_range(0, _movmentMapInst._nodesX - 1);
		spawnNodeY = random_range(0, _movmentMapInst._nodesY - 1);
	}
	until(_movmentMapInst._movementMap[spawnNodeX,spawnNodeY]);
	
	
	
	var spawnX = _movmentMapInst.x + spawnNodeX * _movmentMapInst._nodeWidth;
	var spawnY = _movmentMapInst.y + spawnNodeY * _movmentMapInst._nodeHeigth;
	
	var spawnersCount = array_length_1d(_spawnersToSpawn);
	if(spawnersCount <= 0)
	{
		show_error("YOU NEED TO ASSIGN A LIST OF SPAWNERS TO THE LEVEL. THAT LIST CONTAINS THE POSIBLES ENEMIES", true);
	}
	else
	{
		var spawnerToCreate = _spawnersToSpawn[random_range(0, spawnersCount - 1)];
		instance_create_layer(spawnX, spawnY, "Instances", spawnerToCreate);
	}
}

#endregion 






#region increase dificulty


//INCREASE SPAWN RATE

_counterToDecreaseSpawnTime += 1;
if(_counterToDecreaseSpawnTime >= _ticksToDecreaseSpawnTime)
{
	_counterToDecreaseSpawnTime = 0;
	
	if(! _currentSpawnTime <= _levelLowestSpawnTime)
	{
		_currentSpawnTime -= 1;
	}
}


//INCREASE MAX ENEMIES

_counterIncreaseMaxEnemies += 1;
if(_counterIncreaseMaxEnemies >= _ticksIncreaseMaxEnemies)
{
	_counterIncreaseMaxEnemies = 0;
	
	if(! _currentMaxEnemies >= _levelMaxEnemies)
	{
		_currentMaxEnemies += 1;
	}
	
}



#endregion