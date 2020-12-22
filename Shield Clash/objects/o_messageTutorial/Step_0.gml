/// REEEEE
if (global.currentMessage == 1)
{
	cunt++;
	if( cunt == 20)
	{
		global.currentMessage = 2;
		cunt = 0;
	}
}

if (global.currentMessage == 5 and global.player_usingShield)
{
	global.currentMessage = 6;
}

if(global.currentMessage = 6)
{
	if(!instance_exists(o_ballestero))
	{
		global.currentMessage = 7;	
	}
}


if(global.currentMessage = 7)
{
	cunt++;
	if( cunt == 500)
	{
		global.currentMessage = 8;	
		instance_deactivate_object(inst_270646C3);
		instance_deactivate_object(inst_2D78804B);
		spawnAmulet = true;
		cunt = 0;
	}
}

if (spawnAmulet)
	{
		if(!instance_exists(o_salvavidasDrop))
		{
			global.currentMessage = 9;	
			instance_create_layer(inst_248D9566.x,inst_248D9566.y,"Instances",o_salvavidasDrop);
		}
	}

//TEXT 
switch(global.currentMessage)
{
	case 1:_text = "'Wake up knight. Time to keep trying to leave this prision'."
	break;
	case 2:_text = "'Move around using the keys: < W A S D >'"
	break;
	case 3:_text = "'Jump over the pit pressing < right click >'"
	break;
	case 4:_text = "'Dodge the sentinel's bullets by pressing < right click >'"
	break;
	case 5:_text = "'Activate your shield using < left click >.'"
	break;
	case 6:_text = "'Activate the shield to reflect the enemy's bullets.'"
	break;
	case 7:_text = "'Pay attention to the blue bar, if it empties you can't use the shield.'"
	break;
	case 8:_text = "'Move on and pick up the Amulet of amulvaro.'"
	break;
	case 9:_text = "'Activate the amulet to destroy all the enemy bullets.'"
	break;
	case 10:_text = "'Now leave. Kill as many enemies as you can, so you may escape this prision.'"
	break;
	default: _text = "'Fear overcame him, the mindkiller won'"
}
	