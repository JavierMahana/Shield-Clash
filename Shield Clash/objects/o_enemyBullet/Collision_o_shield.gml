/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var newBulletDir = global.player_shieldDirection;//((2 * global.player_shieldDirection) - (direction + 180)) % 360;
var instance = instance_create_layer(x,y,"Instances", o_playerBullet);
instance.sprite_index = Lowmage_missile_player;
instance.speed = speed * global._playerBulletSpeed;
instance.direction = newBulletDir;



instance_destroy();