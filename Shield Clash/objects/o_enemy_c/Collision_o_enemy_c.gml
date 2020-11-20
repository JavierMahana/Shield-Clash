
var desiredX;
var desiredY;

var desiredDirection = point_direction(other.x, other.y, x,y);

var rad = degtorad(desiredDirection);

var dirX = cos(rad);
var dirY = sin(rad);

desiredX = x + dirX;
desiredY = y + dirY;

if(! place_meeting(desiredX, desiredY, o_notWalkable))
{
	x = desiredX;
	y = desiredY;
}