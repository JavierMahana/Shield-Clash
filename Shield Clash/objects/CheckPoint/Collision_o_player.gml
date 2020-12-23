/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
show_debug_message(number);
show_debug_message(activate);

if(number == 1 && activate)
{
	global.currentMessage = 1;
	activate = false;
}

if(number == 2 && activate)
{
	global.currentMessage = 3;
	activate = false;
}

if(number == 3 && activate)
{
	global.currentMessage = 4;
	activate = false;
}

if(number == 4 && activate)
{
	global.currentMessage = 5;
	activate = false;
}

if(number == 5 && activate)
{
	global.currentMessage = 10;
	activate = false;
}


if(number == 1 or 2 or 3 or 4)
{
	global.playerSalvavidas = 0;
}


// Termina el tutorial y se guarda la variable para que la proxima vez, solo cargue el menú
// El archivo ini, se lee en el objeto "Systems/o_tutorial"
if(number == 6 && activate)
{
	room_goto(r_MainMenu);
	/*
	file = "saves/file.ini";
	if (file_exists(file))
	{
	ini_open(file);
	ini_write_real("tutorial","num", 1);
	ini_close();
	
	show_debug_message("Tutorial completado");
	room_goto(r_MainMenu);
		
	}
	else
	{
		ini_open(file);
		ini_write_real("tutorial", "num", 1);
		ini_close();
	
		show_debug_message("Tutorial completado");
		room_goto(r_MainMenu);	
		
	}
	*/
}


