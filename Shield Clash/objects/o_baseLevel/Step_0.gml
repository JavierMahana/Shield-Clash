
#region PERMITIR SPAWN DE ENEMIGOS MAS PODEROSOS

_counterLevelTime += 1;
if(_counterLevelTime >= _timeStartSpawnMediumEnemies)
{
	_canSpawnMedium = true;
}

if(_counterLevelTime >= _timeStartSpawnBigEnemies)
{
	_canSpawnBig = true;
}

if(_counterLevelTime >= _timeStartSpawnHugeEnemies)
{
	_canSpawnHuge = true;
}

#endregion


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

//SI ENTRA ACÁ SIGNIFICA QUE SE DEBE GENERAR UN SPAWN
if(_counterSpawnEnemy >= _currentSpawnTime)
{
	_counterSpawnEnemy = 0;
	
	
	#region SELECIONAR QUE TIPO DE ENMIGO SE VA A ESPAWNEAR
	
	var enemyTypeToSpawn = EnemyType.SMALL;
	
	var w = _smallEnemiesSpawnWeight;
	if(_canSpawnHuge)
	{
		w += _mediumEnemiesSpawnWeight;
		w += _bigEnemiesSpawnWeight;
		w += _hugeEnemiesSpawnWeight;		
	}
	else if(_canSpawnBig)
	{
		w += _mediumEnemiesSpawnWeight;
		w += _bigEnemiesSpawnWeight;
	}
	else if(_canSpawnMedium)
	{
		w += _mediumEnemiesSpawnWeight;
	}
	
	
	var w_selector = random_range(1 , w);
	
	if(w_selector > _smallEnemiesSpawnWeight + _mediumEnemiesSpawnWeight + _bigEnemiesSpawnWeight)
	{
		enemyTypeToSpawn = EnemyType.HUGE;
	}
	else if(w_selector > _smallEnemiesSpawnWeight + _mediumEnemiesSpawnWeight)
	{
		enemyTypeToSpawn = EnemyType.BIG;
	}
	else if(w_selector > _smallEnemiesSpawnWeight)
	{
		enemyTypeToSpawn = EnemyType.MEDIUM;
	}
	else
	{
		enemyTypeToSpawn = EnemyType.SMALL;
	}

	#endregion
	
	
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
	
	
	
	var spawnerArrayToUse = _smallEnemiesSpawners;
	switch(enemyTypeToSpawn)
	{
		case EnemyType.SMALL:
		{
			spawnerArrayToUse = _smallEnemiesSpawners;
			break;
		}
		case EnemyType.MEDIUM:
		{
			spawnerArrayToUse = _mediumEnemiesSpawners;
			break;
		}
		case EnemyType.BIG:
		{
			spawnerArrayToUse = _bigEnemiesSpawners;
			break;
		}
		case EnemyType.HUGE:
		{
			spawnerArrayToUse = _hugeEnemiesSpawners;
			break;
		}		
		default:
		{
			//show_error("TRYNG TO SPAWN A INVALID TYPE OF ENEMY", true);
			break;
		}
	}
	
	var spawnersCount = array_length_1d(spawnerArrayToUse);
	if(spawnersCount <= 0)
	{
		//show_error("YOU NEED TO ASSIGN A LIST OF SPAWNERS TO THE LEVEL. THAT LIST CONTAINS THE POSIBLES ENEMIES", true);
	}
	else
	{
		var spawnerToCreate = spawnerArrayToUse[random_range(0, spawnersCount - 1)];
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