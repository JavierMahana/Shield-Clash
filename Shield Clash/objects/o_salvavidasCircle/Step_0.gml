Size *= Speed;
colorIntesity += 0.1;
if Size > room_width and Size > room_height
{
	instance_destroy();
}
/*
sprite_collision_mask(NewSprite, 0, 2, left*Size, top*Size, right*Size, bottom*Size, 2, 0);
sprite_index = NewSprite;
*/