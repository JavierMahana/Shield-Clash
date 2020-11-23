
var isHover = get_hover();
var clicked = isHover && mouse_check_button_pressed(mb_left);


_hover = lerp(_hover, isHover, 0.1);

if(clicked && _script >= 0)
{
	script_execute(_script);
}