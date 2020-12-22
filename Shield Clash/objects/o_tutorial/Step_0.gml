/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (do_once)
{
	if (file_exists(file))
	{
		ini_open(file);
		tutorial = ini_read_real("tutorial","num", 1);
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
	
	do_once = false;
}
