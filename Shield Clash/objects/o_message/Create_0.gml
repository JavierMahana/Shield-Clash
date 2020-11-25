event_inherited();

height = 300;
width = 500;

switch(global.DefeatString)
{
	case 1:_text = "'Seldom did the Knight pay attention of his energy bar'."
	break;
	case 2:_text = "'Not even Amulvaro's amulet was enough to save him from the bullet hell'"
	break;
	case 3:_text = "'The conjurer's laugh and dance style seemed oddly familiar to the cursed Knight...'"
	break;
	case 4:_text = "'His sentence, eternal suffering. His torment was the false hope that drove him.'"
	break;
	case 5:_text = "'The little light that showered his carcass in that forgotten cell gave him hope...'"
	break;
	case 6:_text = "'If the flow of time keeps it's course in this prision, then how come the Knight's armor remains free of any signs of rust?''"
	break;
	case 7:_text = "'The energy shield was not his, he remembered that much. However he had forgotten the face of whomever gave him this precious gift'"
	break;
	case 8:_text = "'His crime was dooming the land, he made a selfish decision and look where it took him. Such a pitful sight.'"
	break;
	case 9:_text = "'Even this torment wasn't enough to compensate for the damaged he caused, no torment would ever be enough.'"
	break;
	case 10:_text = "'The cursed Knight was an expert arrow catcher... with his face that is.'"
	break;
	default: _text = "'Once again he fell. There was no point on counting anymore.'"
}
	
_script = room_restart;