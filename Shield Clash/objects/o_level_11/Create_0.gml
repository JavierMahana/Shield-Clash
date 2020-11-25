
event_inherited();

global._pointMultiplier = 1;

_maxIncreaseRatio = 10;

_currentMaxEnemies = 15; //starter
_levelMaxEnemies = 50;
_timeToIncreaseMaxEnemies = 100;

//NO ES EN 1/10 de segs, YA QUE HAY UN MODIFICADOR.
_currentSpawnTime = 700;//starter
_levelLowestSpawnTime = 100;
//_ticksToDecreaseSpawnTime = 20;
_timeToDecreaseSpawnTime = 10;



_timeStartSpawnMediumEnemies = 300;
_timeStartSpawnBigEnemies = 700;
_timeStartSpawnHugeEnemies = 1400;

_smallEnemiesSpawnWeight = 12;
_mediumEnemiesSpawnWeight = 6;
_bigEnemiesSpawnWeight = 3;
_hugeEnemiesSpawnWeight = 1;
