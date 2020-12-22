event_inherited();

height = 200;
width = 700;
global.currentMessage = 0;
cunt = 0;
spawnAmulet = false;

switch(global.currentMessage)
{
	case 1:_text = "'Wake up knight. Time to keep trying to leave this prision'."
	break;
	case 2:_text = "'Move around using the keys: < W A S D >'"
	break;
	case 3:_text = "'Jump over the pit pressing < space bar >'"
	break;
	case 4:_text = "'Dodge the sentinel's bullets by pressing < space bar >'"
	break;
	case 5:_text = "'Activate your shield using < left click >'"
	break;
	case 6:_text = "'Activate the shield to reflect their bullets to themselves.'"
	break;
	case 7:_text = "'Now leave this room and face your enemies.'"
	break;
	default: _text = ""
	break;
}
	


_script = room_restart;