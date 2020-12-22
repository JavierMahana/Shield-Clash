/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// 1 para tutorial completado
// 0 para tutorial sin completar :)

do_once = true;
file = "saves/file.ini";

if (file_exists(file))
{
	ini_open(file);
	tutorial = ini_read_real("tutorial","num", 1);
	show_debug_message("TUTORIAL: ");
	show_debug_message(tutorial);
	ini_close();
	if(tutorial == 0)
	{
		show_debug_message("Cargando Tutorial");
		room_goto(r_tutorial);
	}
	else
	{
		show_debug_message("Tutorial completado");
	}
		
}
else
{
	ini_open(file);
	ini_write_real("tutorial", "num", 0);
	show_debug_message("CREANDO");
	ini_close();	
}