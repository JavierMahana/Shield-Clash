if(!_showing && !global.playerIsAlive)
{
	_showing = true;
	instance_create_layer(300, 200, "Instances", o_button_restarLevel);
	instance_create_layer(300, 400, "Instances", o_button_goto_mainMenu);
	instance_create_layer(800, 200, "Instances", o_message);
}