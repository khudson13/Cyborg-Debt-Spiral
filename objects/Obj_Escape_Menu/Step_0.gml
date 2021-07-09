if (menu_access == -1)
{
	switch(keyboard_key)
	{
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			if (selected_index < 0)
			{
				selected_index = menu_items - 1;
			}
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			if (selected_index >= menu_items)
			{
				selected_index = 0;
			}
			io_clear(); break;
		case Obj_Control_Definitions.control_right:
			io_clear();
			menu_access = selected_index; break;
	}
}

if (menu_access != -1)
{
	if (menu_array[menu_access] == "RESUME")
	{
		io_clear();
		Obj_Player.control = true;
		instance_destroy(self);
	}

	if (menu_array[menu_access] == "QUIT")
	{
		game_end();
	}
}